unit uFVExportSkodaXml;

interface

function fvExportSkodaXml(aFVSID: string): boolean;

implementation

uses appdmduSystem, JclStrings, JclSimpleXml, xmldom, XMLIntf, SysUtils,
  IBODataset, fMessageDlg, uAppUtils, appDPHunit, appIniOptionsUnit, uFileUtils;

function xmlCurrToStr(aValue: Currency; const aDigit: Integer = 2): string;
begin
  Result := CurrToStrF(aValue, ffFixed, aDigit);
end;

function xmlNumToStr(aValue: Real; const aDigit: Integer = 2): string;
begin
  Result := CurrToStrF(aValue, ffFixed, aDigit);
end;

function fvExportSkodaXml(aFVSID: string): boolean;
var
  ae: TjclSimpleXMLElem;
  // , xDat, xInv, xInvHeader, xInvItems, xInvSummary: TjclSimpleXMLElem;
  smxml                            : TjclSimpleXML;
  OldDeciSepa                      : Char;
  sICO                             : string;
  lcFVHlavicka, lcFVPolozky        : TIBOQuery;
  lcPreprava                       : TIBOQuery;
  AFileName                        : string;
  lcSymbVariab                     : string;
  lcSplatnost                      : Extended;
  lcLineCounter                    : Integer;
  lcMena                           : string;
  lcCiziMena                       : boolean;
  lcHomeTotal, lcHomeNet, lcHomeVAT: Currency;
  lcKurs                           : Currency;
  vykStat                          : string;
  vykladka                         : string;
  vykPsc                           : string;
  vykMesto                         : string;
  posznak                          : Integer;

  function CheckDataOk: boolean;
  begin
    Result := True;
    if (lcFVHlavicka.FieldByName('DATSPLATNOST').AsDateTime <= 0) then
    begin
      DisplayError('Není nastaven datum splatnosti faktury');
      Result := False;
    end;
    if (lcFVHlavicka.FieldByName('DATVYSTAVENI').AsDateTime <= 0) then
    begin
      DisplayError('Není nastaven datum vystavení faktury');
      Result := False;
    end;
    if (lcFVHlavicka.FieldByName('DATVYSTAVENI').AsDateTime > lcFVHlavicka.FieldByName('DATSPLATNOST').AsDateTime) then
    begin
      DisplayError('Datum vystavení je nižší než datum splatnosti');
      Result := False;
    end;

  end;
  procedure UpdateFVStatus(aSID: string);
  var
    lcSQLText: string;
  begin
    lcSQLText := 'update FV set STATEUSER = ' + IniOptions.seStatusKod + ' where sid = ' + QuotedStr(aSID);
    dmdSystem.IBOMainDB.ExecSQL(lcSQLText);
  end;
  function OpenFVData(aSID: string): boolean;
  begin
    lcFVHlavicka := TIBOQuery.create(nil);
    with lcFVHlavicka do
    begin
      IB_Connection      := dmdSystem.IBOMainDB;
      IB_Transaction     := dmdSystem.IBTMainTrans;
      SQL.Text           := 'SELECT * FROM SP_FVZAZNAM(:SID)';
      Params[0].AsString := aFVSID;
    end;

    lcFVPolozky := TIBOQuery.create(nil);
    with lcFVPolozky do
    begin
      IB_Connection      := dmdSystem.IBOMainDB;
      IB_Transaction     := dmdSystem.IBTMainTrans;
      SQL.Text           := 'SELECT * FROM FVPol WHERE REFFV = :SID';
      Params[0].AsString := aFVSID;
    end;
    lcFVHlavicka.Open;
    lcFVPolozky.Open;
    Result := not lcFVHlavicka.IsEmpty;
  end;
  function OpenZSData(aSID: string): boolean;
  begin
    lcPreprava := TIBOQuery.create(nil);
    with lcPreprava do
    begin
      IB_Connection      := dmdSystem.IBOMainDB;
      IB_Transaction     := dmdSystem.IBTMainTrans;
      SQL.Text           := 'SELECT * FROM SP_ZSZAZNAM(:SID)';
      Params[0].AsString := aSID;
    end;
    lcPreprava.Open;
    Result := not lcPreprava.IsEmpty;
  end;

  procedure SaveResult;
  begin
    AFileName := NormalDir(IniOptions.seExportFolder) + lcFVHlavicka.FieldByName('FAKTURA').AsString + '.xml';

    if FileExists(AFileName) then
    begin
      if DisplayConfirm('Soubor: ' + AFileName + ' již existuje.', 'Chcete jej pøepsat?') then
        DeleteFile(AFileName)
      else
        exit;
    end;
    smxml.SaveToFile(AFileName);
    if IniOptions.seStatusKod <> '' then
      UpdateFVStatus(aFVSID);
    DisplayInfo(Format('Umístìní exportní dávky: %s', [AFileName]), Format('Export faktury: %s by úspìšnì proveden.', [lcSymbVariab]));

  end;

begin
  // Nastaveni desetinne carky
  OldDeciSepa                     := FormatSettings.DecimalSeparator;
  FormatSettings.DecimalSeparator := '.';
  if OpenFVData(aFVSID) and CheckDataOk then
  begin

    lcFVHlavicka.First;
    // Musime upravit nejake hodnoty
    lcSymbVariab := strFilterStr(lcFVHlavicka.FieldByName('SYMBVARIA').AsString, ['-', '.', ',']);
    // Mena
    lcMena     := UpperCase(lcFVHlavicka.FieldByName('CENAMENA').AsString);
    lcCiziMena := lcMena <> 'CZK';
    lcKurs     := lcFVHlavicka.FieldByName('CENAKURS').AsCurrency;

    lcSplatnost := lcFVHlavicka.FieldByName('DATSPLATNOST').AsDateTime - lcFVHlavicka.FieldByName('DATVYSTAVENI').AsDateTime;
    smxml       := TjclSimpleXML.create;
    smxml.Root.Clear;
    try
      smxml.Prolog.Version  := '1.0';
      smxml.Prolog.Encoding := 'Windows-1250';
      // smxml.Prolog.StandAlone := True;

      ae := smxml.Root.Items.Add('EDIfile');
      with ae.Items.Add('Communication') do
      begin
        with Items.Add('InterchangeRef') do
          Value := lcSymbVariab;
        with Items.Add('From') do
          with Items.Add('EdiID') do
            Value := IniOptions.sePartCode;
        with Items.Add('To') do
          with Items.Add('EdiID') do
            Value := 'O0013000001VW      R3A';
      end;

      with ae.Items.Add('Interchange') do
      begin
        with Items.Add('Message') do
        begin
          Properties.Add('TypeIdentifier', '380'); // Typ dokumentu
          // Hlavicka faktury
          with Items.Add('Header') do
          begin
            with Items.Add('UniqDocNo') do
              Value := lcSymbVariab;
            if IniOptions.seTRACode <> '' then
            begin
              with Items.Add('DocumentName') do
                Value := IniOptions.seTRACode;
            end;
            with Items.Add('IssueDate') do
              Value := FormatDateTime('yyyy-mm-dd', lcFVHlavicka.FieldByName('DATVYSTAVENI').AsDateTime);
            with Items.Add('ValidityDate') do
              Value := FormatDateTime('yyyy-mm-dd', lcFVHlavicka.FieldByName('DATDANPOV').AsDateTime);
            with Items.Add('DueDate') do
              Value := FormatDateTime('yyyy-mm-dd', lcFVHlavicka.FieldByName('DATSPLATNOST').AsDateTime);

            with Items.Add('InvoiceCurrency') do
              Value := lcMena;
            // Kontrola cizi meny
            if lcMena <> 'CZK' then
            begin
              with Items.Add('HomeCurrency') do
                Value := 'CZK';
              with Items.Add('HomeToInvRate') do
                Value := xmlCurrToStr(lcKurs, 5);
              with Items.Add('H2IRateDate') do
                Value := FormatDateTime('yyyy-mm-dd', lcFVHlavicka.FieldByName('DATVYSTAVENI').AsDateTime);
            end;

            with Items.Add('MaterialIndication') do
              Value := 'S'; // S - sluzby
            // Registrace
            with Items.Add('Registration') do
            begin
              with Items.Add('TextLine1') do
                Value := strTranslateStr(dmdSystem.FirmaUREGISTRUDAJE.AsString);
              with Items.Add('TextLine2') do
                Value := '';
              with Items.Add('TextLine3') do
                Value := '';
            end;
            // Informace o danich
            with Items.Add('TaxInformation') do
            begin
              with Items.Add('TextLine1') do
                Value := strTranslateStr(lcFVHlavicka.FieldByName('patatext').AsString);
            end;

            // Partner dodavatel
            with Items.Add('Partner') do
            begin
              with Items.Add('PartTypeCode') do
                Value := IniOptions.sePartTypeCode;
              with Items.Add('PartCode') do
                Value := IniOptions.sePartCode;
              with Items.Add('PartCodeIssuer') do
                Value := IniOptions.sePartCodeIssuer;
              with Items.Add('PartName') do
                Value := strTranslateStr(dmdSystem.FirmaUNAME.AsString);
              with Items.Add('PartStreet') do
                Value := strTranslateStr(dmdSystem.FirmaUADDRES.AsString);
              with Items.Add('PartCity') do
                Value := strTranslateStr(dmdSystem.FirmaUCITY.AsString);
              with Items.Add('PartZIP') do
                Value := strFilterStr(dmdSystem.FirmaUZIP.AsString, [' ']);
              // IC a DIC
              with Items.Add('RegistrationDetails') do
              begin
                with Items.Add('GovID') do
                  Value := dmdSystem.gbAktivace.ICO;
                with Items.Add('VATregID') do
                  Value := dmdSystem.FirmaUDIC.AsString;
              end;
              with Items.Add('Bank') do
              begin
                with Items.Add('BankName') do
                  Value := strTranslateStr(lcFVHlavicka.FieldByName('BANKA').AsString);
                with Items.Add('AccountNumber') do
                  Value := lcFVHlavicka.FieldByName('UCET').AsString;
                with Items.Add('BankCode') do
                  Value := lcFVHlavicka.FieldByName('KODBANKY').AsString;
                with Items.Add('IBAN') do
                  Value := lcFVHlavicka.FieldByName('IBAN').AsString;
                with Items.Add('SWIFT') do
                  Value := lcFVHlavicka.FieldByName('BANKAWORLD').AsString;
                with Items.Add('VarSym') do
                  Value := lcSymbVariab;
              end;
            end;
            // Partner SKODA
            with Items.Add('Partner') do
            begin
              with Items.Add('PartTypeCode') do
                Value := IniOptions.sePartTypeCodeSkoda;
              with Items.Add('PartCode') do
                Value := IniOptions.sePartCodeSkoda;
              with Items.Add('PartCodeIssuer') do
                Value := IniOptions.sePartCodeIssuerSkoda;
              with Items.Add('PartName') do
                Value := strTranslateStr(lcFVHlavicka.FieldByName('NAZEV').AsString);
              with Items.Add('PartStreet') do
                Value := strTranslateStr(lcFVHlavicka.FieldByName('ADRESA2').AsString);
              with Items.Add('PartCity') do
                Value := strTranslateStr(lcFVHlavicka.FieldByName('ADRESA3').AsString);
              with Items.Add('PartZIP') do
                Value := strFilterStr(lcFVHlavicka.FieldByName('PSC').AsString, [' ']);
              // IC a DIC
              with Items.Add('RegistrationDetails') do
              begin
                with Items.Add('GovID') do
                  Value := lcFVHlavicka.FieldByName('ICO').AsString;
                with Items.Add('VATregID') do
                  Value := lcFVHlavicka.FieldByName('DIC').AsString;
              end;
            end;
            // Platebni podminky
            with Items.Add('PaymentTerms') do
            begin
              with Items.Add('PaymentTermsType') do
                Value := IniOptions.sePaymentTermsType;
              with Items.Add('PaymentTimeRef') do
                Value := FloatToStr(lcSplatnost);
              with Items.Add('RelatedDate') do
                Value := FormatDateTime('yyyy-mm-dd', lcFVHlavicka.FieldByName('DATSPLATNOST').AsDateTime);
            end;
            // Tadz budou polozky
            lcLineCounter := 0;
            while not lcFVPolozky.Eof do
            begin
              Inc(lcLineCounter);
              // inc(lcLineCounter);
              with Items.Add('LineItem') do
              begin
                with Items.Add('LineNo') do
                  Value := IntToStr(lcLineCounter);
                with Items.Add('ArticleNo') do
                  Value := '';
                with Items.Add('ArtDescript') do
                  Value := strTranslateStr(lcFVPolozky.FieldByName('POLTEXT').AsString);
                with Items.Add('InvoicedQty') do
                  Value := xmlCurrToStr(lcFVPolozky.FieldByName('CENAJEDNOTKY').AsCurrency);
                with Items.Add('MeaUnit') do
                  Value := lcFVPolozky.FieldByName('CENAJEDNOTKA').AsString;
                with Items.Add('GrossItemAmount') do
                  Value := xmlCurrToStr(lcFVPolozky.FieldByName('CENASUMA').AsCurrency);
                // DocumentsRefs
                with Items.Add('DocumentRefs') do
                begin
                  with Items.Add('DeliveryNoteNo') do
                    Value := '0';
                  with Items.Add('DeliveryNoteDate') do
                    Value := '';
                  with Items.Add('OrderNo') do
                    Value := lcFVHlavicka.FieldByName('OBJEDNAVKA').AsString;
                end;
                with Items.Add('UnitPrice') do
                begin
                  with Items.Add('UnitGross') do
                    Value := xmlCurrToStr(lcFVPolozky.FieldByName('CENASMLUVNI').AsCurrency);
                  with Items.Add('UnitGrossBasis') do
                    Value := '1';
                end;
                with Items.Add('VAT') do
                begin
                  with Items.Add('VATrate') do
                    Value := xmlCurrToStr(lcFVPolozky.FieldByName('CENADPHPROC').AsCurrency);
                  with Items.Add('VATperItem') do
                    Value := xmlCurrToStr(lcFVPolozky.FieldByName('CENADPH').AsCurrency);
                end;
                // Misto vykladky
                if OpenZSData(lcFVHlavicka.FieldByName('REF_ZASILKA').AsString) then
                begin
                  with Items.Add('Partner') do
                  begin
                    with Items.Add('PartTypeCode') do
                      Value := 'ST';
                    with Items.Add('PartCode') do
                      Value := IniOptions.sePartCodeLocationSkoda;
                    {
                      with Items.Add('PartName') do
                      Value := '';
                      with Items.Add('PartStreet') do
                      Value := '';
                    }
                    // Tady rozklicujeme vykladku z pole FV.VMISTO
                    // Format popisu mista MUSI byt XX-55555 Mesto, kde XX je kod statu
                    // Prevedeme na velka pismena
                    vykladka := Trim(UpperCase(lcFVHlavicka.FieldByName('MVYKL').AsString));
                    // Najdeme prvni pomlcku, tam konci STAT
                    posznak := Pos('-', vykladka);
                    // Yjistime kod statu
                    vykStat := StrLeft(vykladka, posznak - 1);
                    // Ukousneme retezec s vzkladkou o stat a pomlcku
                    vykladka := Copy(vykladka, posznak + 1);
                    // Ted yjistime kde je pomelcka meyi PSC a mestem, pripadne yjistime ze tam mesto neni, tak je
                    // cely zbytek PSC
                    posznak := Pos(' ', vykladka);
                    // Pokud je vetsi nez 0 tak je tam i mesto
                    if posznak > 0 then
                    begin
                      vykPsc   := StrLeft(vykladka, posznak - 1);
                      vykladka := Copy(vykladka, posznak + 1);
                      vykMesto := vykladka;
                    end
                    else
                    begin
                      vykPsc   := Trim(vykladka);
                      vykMesto := '';
                    end;

                    with Items.Add('PartCity') do
                      Value := strFilterStr(vykMesto, [' ']);
                    with Items.Add('PartZIP') do
                      Value := strFilterStr(vykPsc, [' ']);
                    // IC a DIC
                    with Items.Add('Location') do
                    begin
                      with Items.Add('PartCountry') do
                        Value := vykStat;
                    end;

                    // with Items.Add('PartCity') do
                    // Value := strFilterStr(lcPreprava.FieldByName('VMISTO').AsString, [' ']);
                    // with Items.Add('PartZIP') do
                    // Value := strFilterStr(lcPreprava.FieldByName('VPSC').AsString, [' ']);
                    // // IC a DIC
                    // with Items.Add('Location') do
                    // begin
                    // with Items.Add('PartCountry') do
                    // Value := lcPreprava.FieldByName('VSTAT').AsString;
                    // end;
                  end;
                end;

              end;

              lcFVPolozky.Next;
            end;
            //
            // Celkove soucty
            with Items.Add('InvCurrencyTotal') do
            begin
              with Items.Add('InvoiceTotal') do
                Value := xmlCurrToStr(lcFVHlavicka.FieldByName('CELKEM').AsCurrency);
              with Items.Add('InvoiceNetTotal') do
                Value := xmlCurrToStr(lcFVHlavicka.FieldByName('SUMAZAKLAD').AsCurrency);
              with Items.Add('TotalLineItems') do
                Value := IntToStr(lcLineCounter);
              with Items.Add('TotalVAT') do
                Value := xmlCurrToStr(lcFVHlavicka.FieldByName('SUMADPH').AsCurrency);
              with Items.Add('Rounding') do
                Value := xmlCurrToStr(lcFVHlavicka.FieldByName('CENAZAOKR').AsCurrency);
            end;
            //
            if lcCiziMena then
            begin
              lcHomeNet   := numRound(lcFVHlavicka.FieldByName('SUMAZAKLAD').AsCurrency * lcKurs, 2);
              lcHomeVAT   := numRound(lcFVHlavicka.FieldByName('SUMADPH').AsCurrency * lcKurs, 2);
              lcHomeTotal := lcHomeNet + lcHomeVAT;

              // Celkove soucty v domaci mene
              with Items.Add('HomeCurrencyTotal') do
              begin
                with Items.Add('InvoiceTotal') do
                  Value := xmlCurrToStr(lcHomeTotal);
                with Items.Add('InvoiceNetTotal') do
                  Value := xmlCurrToStr(lcHomeNet);
                with Items.Add('TotalVAT') do
                  Value := xmlCurrToStr(lcHomeVAT);
              end;
            end;
            //

            // Celkove prehledz DPH
            if lcFVHlavicka.FieldByName('SUMA00').AsCurrency > 0 then
            begin
              // Mam nejakou cenu v sazbe 0
              with Items.Add('InvoiceTax') do
              begin
                with Items.Add('Qualifier') do
                  Value := 'VAT';
                with Items.Add('TaxCategory') do
                  Value := 'Z';
                with Items.Add('TaxRate') do
                  Value := xmlNumToStr(0, 1);
                with Items.Add('InvCurrTaxableAmount') do
                  Value := xmlCurrToStr(lcFVHlavicka.FieldByName('SUMA00').AsCurrency);
                with Items.Add('InvCurrTaxAmount') do
                  Value := '0.00';
                if lcCiziMena then
                begin
                  with Items.Add('HomeCurrTaxableAmount') do
                    Value := xmlCurrToStr(numRound(lcFVHlavicka.FieldByName('SUMA00').AsCurrency * lcKurs, 2));
                  with Items.Add('HomeCurrTaxAmount') do
                    Value := '0.00';
                end;
              end;
            end;
            if lcFVHlavicka.FieldByName('SUMA05').AsCurrency > 0 then
            begin
              // Mam nejakou cenu v sazbe 0
              with Items.Add('InvoiceTax') do
              begin
                with Items.Add('Qualifier') do
                  Value := 'VAT';
                with Items.Add('TaxCategory') do
                  Value := 'L';
                with Items.Add('TaxRate') do
                  Value := xmlNumToStr(dphsazbasnizena, 1);
                with Items.Add('InvCurrTaxableAmount') do
                  Value := xmlCurrToStr(lcFVHlavicka.FieldByName('SUMA05').AsCurrency);
                with Items.Add('InvCurrTaxAmount') do
                  Value := xmlCurrToStr(lcFVHlavicka.FieldByName('DPH05').AsCurrency);
                if lcCiziMena then
                begin
                  with Items.Add('HomeCurrTaxableAmount') do
                    Value := xmlCurrToStr(numRound(lcFVHlavicka.FieldByName('SUMA05').AsCurrency * lcKurs, 2));
                  with Items.Add('HomeCurrTaxAmount') do
                    Value := xmlCurrToStr(numRound(lcFVHlavicka.FieldByName('DPH05').AsCurrency * lcKurs, 2));
                end;
              end;
            end;
            if lcFVHlavicka.FieldByName('SUMA22').AsCurrency > 0 then
            begin
              // Mam nejakou cenu v sazbe 0
              with Items.Add('InvoiceTax') do
              begin
                with Items.Add('Qualifier') do
                  Value := 'VAT';
                with Items.Add('TaxCategory') do
                  Value := 'S';
                with Items.Add('TaxRate') do
                  Value := xmlNumToStr(dphsazbazakladni, 1);
                with Items.Add('InvCurrTaxableAmount') do
                  Value := xmlCurrToStr(lcFVHlavicka.FieldByName('SUMA22').AsCurrency);
                with Items.Add('InvCurrTaxAmount') do
                  Value := xmlCurrToStr(lcFVHlavicka.FieldByName('DPH22').AsCurrency);
                if lcCiziMena then
                begin
                  with Items.Add('HomeCurrTaxableAmount') do
                    Value := xmlCurrToStr(numRound(lcFVHlavicka.FieldByName('SUMA22').AsCurrency * lcKurs, 2));
                  with Items.Add('HomeCurrTaxAmount') do
                    Value := xmlCurrToStr(numRound(lcFVHlavicka.FieldByName('DPH22').AsCurrency * lcKurs, 2));
                end;
              end;
            end;

          end;
        end;
      end;

      SaveResult;

    finally
      smxml.free;
      FormatSettings.DecimalSeparator := OldDeciSepa;
      lcFVHlavicka.Close;
      lcFVHlavicka.free;
      lcFVPolozky.Close;
      lcFVPolozky.free;
      lcPreprava.Close;
      lcPreprava.free;
    end;
  end;
end;

end.
