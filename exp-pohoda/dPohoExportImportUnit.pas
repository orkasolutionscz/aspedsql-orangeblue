unit dPohoExportImportUnit;

interface

uses
  SysUtils, Classes, DB, dxmdaset, JclSimpleXml, xmldom, XMLIntf, msxmldom, XMLDoc, IBODataset;

type
  TdmdPohoExpImp = class(TDataModule)
    EVF_PohodaData: TdxMemData;
    EVF_PohodaDataID: TStringField;
    EVF_PohodaDataRelPk: TIntegerField;
    EVF_PohodaDataRelTpDPH: TIntegerField;
    EVF_PohodaDataRelTpFak: TIntegerField;
    EVF_PohodaDataRelForUh: TIntegerField;
    EVF_PohodaDataZaokrFV: TIntegerField;
    EVF_PohodaDataSel: TIntegerField;
    EVF_PohodaDataPolozky: TIntegerField;
    EVF_PohodaDataRelCR: TIntegerField;
    EVF_PohodaDataCislo: TStringField;
    EVF_PohodaDataVarSym: TStringField;
    EVF_PohodaDataSText: TMemoField;
    EVF_PohodaDataDatum: TDateField;
    EVF_PohodaDataDatUcP: TDateField;
    EVF_PohodaDataDatSplat: TDateField;
    EVF_PohodaDataTpStorn: TIntegerField;
    EVF_PohodaDataDatZdPln: TDateField;
    EVF_PohodaDataKc0: TCurrencyField;
    EVF_PohodaDataKc1: TCurrencyField;
    EVF_PohodaDataKcDPH1: TCurrencyField;
    EVF_PohodaDataKc2: TCurrencyField;
    EVF_PohodaDataKcDPH2: TCurrencyField;
    EVF_PohodaDataKcZaloha: TCurrencyField;
    EVF_PohodaDataKcCelkem: TCurrencyField;
    EVF_PohodaDataKcLikv: TCurrencyField;
    EVF_PohodaDataKcU: TCurrencyField;
    EVF_PohodaDataKcZaokr: TCurrencyField;
    EVF_PohodaDataKcP: TCurrencyField;
    EVF_PohodaDataDenEUR: TCurrencyField;
    EVF_PohodaDataCm0: TCurrencyField;
    EVF_PohodaDataCmCelkem: TCurrencyField;
    EVF_PohodaDataCmLikv: TCurrencyField;
    EVF_PohodaDataCmU: TCurrencyField;
    EVF_PohodaDataCmZaokr: TCurrencyField;
    EVF_PohodaDataFirma: TStringField;
    EVF_PohodaDataUtvar: TStringField;
    EVF_PohodaDataUlice: TStringField;
    EVF_PohodaDataObec: TStringField;
    EVF_PohodaDatapsc: TStringField;
    EVF_PohodaDataico: TStringField;
    EVF_PohodaDatadic: TStringField;
    EVF_PohodaDataUcetni: TStringField;
    EVF_PohodaDataCisloObj: TStringField;
    EVF_PohodaDataCmKurs: TCurrencyField;
    EVF_PohodaDataCmMnoz: TCurrencyField;
    EVF_PohodaDataRefCM: TFloatField;
    EVF_PohodaDataRefAD: TWordField;
    EVF_PohodaDataMena: TStringField;
    xmlFVExportxx: TXMLDocument;
    dtsFVP: TIBOQuery;
    dtsFVPSID: TStringField;
    dtsFVPFAKTURA: TStringField;
    dtsFVPVYBER: TStringField;
    dtsFVPFAKTTYP: TStringField;
    dtsFVPTYP: TSmallintField;
    dtsFVPREF_ZASILKA: TStringField;
    dtsFVPREFPLATCE: TIntegerField;
    dtsFVPAOPKOD: TStringField;
    dtsFVPNAZEV: TStringField;
    dtsFVPADRESA1: TStringField;
    dtsFVPADRESA2: TStringField;
    dtsFVPADRESA3: TStringField;
    dtsFVPPSC: TStringField;
    dtsFVPZEME: TStringField;
    dtsFVPICO: TStringField;
    dtsFVPDIC: TStringField;
    dtsFVPPLA_EMAILS: TStringField;
    dtsFVPUCETZKR: TStringField;
    dtsFVPSYMBVARIA: TStringField;
    dtsFVPSYMBKONST: TStringField;
    dtsFVPOBJEDNAVKA: TStringField;
    dtsFVPOBJEDDATUM: TDateField;
    dtsFVPDATVYSTAVENI: TDateField;
    dtsFVPDATDANPOV: TDateField;
    dtsFVPDATSPLATNOST: TDateField;
    dtsFVPFORMUHRADY: TStringField;
    dtsFVPPRILOHY: TStringField;
    dtsFVPSUMA00: TBCDField;
    dtsFVPSUMA05: TBCDField;
    dtsFVPSUMA22: TBCDField;
    dtsFVPSUMAZAKLAD: TBCDField;
    dtsFVPDPH05: TBCDField;
    dtsFVPDPH22: TBCDField;
    dtsFVPSUMADPH: TBCDField;
    dtsFVPCENAMENA: TStringField;
    dtsFVPCELKEM: TBCDField;
    dtsFVPCENAZALOHY: TBCDField;
    dtsFVPCENALIKV: TBCDField;
    dtsFVPCENAUHRAZENO: TBCDField;
    dtsFVPCENAZAOKR: TBCDField;
    dtsFVPCENAKURS: TBCDField;
    dtsFVPCENASUMAKC: TBCDField;
    dtsFVPLIKVOK: TStringField;
    dtsFVPDATUHRAZENO: TDateField;
    dtsFVPDOKLAD: TStringField;
    dtsFVPUCTODATUM: TDateField;
    dtsFVPFAKTTEXT: TMemoField;
    dtsFVPTEXTBEFORE: TSmallintField;
    dtsFVPTEXTAFTER: TSmallintField;
    dtsFVPPOZNAMKA: TMemoField;
    dtsFVPNPOZ: TStringField;
    dtsFVPVPOZ: TStringField;
    dtsFVPSPZ: TStringField;
    dtsFVPDATNAKL: TDateField;
    dtsFVPDATVYKL: TDateField;
    dtsFVPMNAKL: TStringField;
    dtsFVPMVYKL: TStringField;
    dtsFVPSUBSTRAT: TStringField;
    dtsFVPCREADATE: TDateTimeField;
    dtsFVPCREAID: TStringField;
    dtsFVPUPDID: TStringField;
    dtsFVPUPDDATE: TDateTimeField;
    dtsFVPSTATEUSER: TIntegerField;
    dtsFVPSTAV: TSmallintField;
    EVF_PohodaDataUcetZkr: TStringField;
    dtsFD: TIBOQuery;
    dsdsFV: TDataSource;
    EDF_PohodaData: TdxMemData;
    EDF_PohodaDataID: TStringField;
    EDF_PohodaDataRelPk: TIntegerField;
    EDF_PohodaDataRelTpDPH: TIntegerField;
    EDF_PohodaDataRelTpFak: TIntegerField;
    EDF_PohodaDataRelForUh: TIntegerField;
    EDF_PohodaDataZaokrFV: TIntegerField;
    EDF_PohodaDataSel: TIntegerField;
    EDF_PohodaDataPolozky: TIntegerField;
    EDF_PohodaDataRelCR: TIntegerField;
    EDF_PohodaDataCislo: TStringField;
    EDF_PohodaDataVarSym: TStringField;
    EDF_PohodaDataSText: TMemoField;
    EDF_PohodaDataDatum: TDateField;
    EDF_PohodaDataDatUcP: TDateField;
    EDF_PohodaDataDatSplat: TDateField;
    EDF_PohodaDataTpStorn: TIntegerField;
    EDF_PohodaDataDatZdPln: TDateField;
    EDF_PohodaDataKc0: TCurrencyField;
    EDF_PohodaDataKc1: TCurrencyField;
    EDF_PohodaDataKcDPH1: TCurrencyField;
    EDF_PohodaDataKc2: TCurrencyField;
    EDF_PohodaDataKcDPH2: TCurrencyField;
    EDF_PohodaDataKcZaloha: TCurrencyField;
    EDF_PohodaDataKcCelkem: TCurrencyField;
    EDF_PohodaDataKcLikv: TCurrencyField;
    EDF_PohodaDataKcU: TCurrencyField;
    EDF_PohodaDataKcZaokr: TCurrencyField;
    EDF_PohodaDataKcP: TCurrencyField;
    EDF_PohodaDataDenEUR: TCurrencyField;
    EDF_PohodaDataCm0: TCurrencyField;
    EDF_PohodaDataCmCelkem: TCurrencyField;
    EDF_PohodaDataCmLikv: TCurrencyField;
    EDF_PohodaDataCmU: TCurrencyField;
    EDF_PohodaDataCmZaokr: TCurrencyField;
    EDF_PohodaDataFirma: TStringField;
    EDF_PohodaDataUtvar: TStringField;
    EDF_PohodaDataUlice: TStringField;
    EDF_PohodaDataObec: TStringField;
    EDF_PohodaDatapsc: TStringField;
    EDF_PohodaDataico: TStringField;
    EDF_PohodaDatadic: TStringField;
    EDF_PohodaDataUcetni: TStringField;
    EDF_PohodaDataCisloObj: TStringField;
    EDF_PohodaDataCmKurs: TCurrencyField;
    EDF_PohodaDataCmMnoz: TCurrencyField;
    EDF_PohodaDataRefCM: TFloatField;
    EDF_PohodaDataRefAD: TWordField;
    EDF_PohodaDataMena: TStringField;
    EDF_PohodaDataUcetZkr: TStringField;
    dtsFDSID: TStringField;
    dtsFDFAKTURADO: TStringField;
    dtsFDVYBER: TStringField;
    dtsFDVARIABILNI: TStringField;
    dtsFDREF_ZASILKA: TStringField;
    dtsFDDATDORUCENI: TDateField;
    dtsFDDATVYSTAVENI: TDateField;
    dtsFDDATSPLATNOST: TDateField;
    dtsFDDATDANPOV: TDateField;
    dtsFDAOPKOD: TStringField;
    dtsFDNAZEV: TStringField;
    dtsFDADRESA1: TStringField;
    dtsFDADRESA2: TStringField;
    dtsFDADRESA3: TStringField;
    dtsFDPSC: TStringField;
    dtsFDZEME: TStringField;
    dtsFDICO: TStringField;
    dtsFDDIC: TStringField;
    dtsFDFORMUHRADY: TStringField;
    dtsFDSUMA00: TBCDField;
    dtsFDSUMA05: TBCDField;
    dtsFDSUMA22: TBCDField;
    dtsFDSUMAZAKLAD: TBCDField;
    dtsFDDPH05: TBCDField;
    dtsFDDPH22: TBCDField;
    dtsFDSUMADPH: TBCDField;
    dtsFDCENAMENA: TStringField;
    dtsFDCENAKURZ: TBCDField;
    dtsFDCELKEM: TBCDField;
    dtsFDCELKEMKC: TBCDField;
    dtsFDCENAZALOHY: TBCDField;
    dtsFDCENALIKV: TBCDField;
    dtsFDCENAUHRAZENO: TBCDField;
    dtsFDDATUHRAZENO: TDateField;
    dtsFDLIKVOK: TStringField;
    dtsFDDOKLAD: TStringField;
    dtsFDUCTODATUM: TDateField;
    dtsFDPOZNAMKA: TMemoField;
    dtsFDCREADATE: TDateTimeField;
    dtsFDCREAID: TStringField;
    dtsFDUPDID: TStringField;
    dtsFDUPDDATE: TDateTimeField;
    dtsFDUCET_CISLO: TStringField;
    dtsFDUCET_BANKA: TStringField;
    dtsFDUCET_IBAN: TStringField;
    dtsFDUCET_SWIFT: TStringField;
    dtsFDUCET_SPECIF: TStringField;
    dtsFDSTATEUSER: TSmallintField;
    dtsFDSTAV: TSmallintField;
    dtsFDPREVOD: TStringField;
    dtsFDISPOLOZKY: TStringField;
    EVF_PohodaDataTuzKlient: TSmallintField;
    EDF_PohodaDataUcetNo: TStringField;
    EDF_PohodaDataUcetBanka: TStringField;
    EVF_PohodaDataPohodaID: TIntegerField;
    EDF_PohodaDataPohodaID: TIntegerField;
    dtsFVPKOD_ADPOHODA: TIntegerField;
    dtsFDKOD_ADPOHODA: TIntegerField;
    EDF_PohodaDataDatKH: TDateField;
    dtsFDDATDANPOVDOD: TDateField;
    procedure EVF_PohodaDataNewRecord(DataSet: TDataSet);
    procedure EDF_PohodaDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function FilterVS(aOldVS: string): ShortString;
  public
    procedure ExportToXml(AFileName: string);
    procedure ExportFDToXml(AFileName: string);
    procedure AddFVPRecord(AID: string);
    procedure AddFDRecord(AID: string);
  end;

var
  dmdPohoExpImp: TdmdPohoExpImp;

function GetdmdPohoExpImp: TdmdPohoExpImp;

const
  FVXMLPOHODAFILENAME = 'fvpoh.xml';
  FDXMLPOHODAFILENAME = 'fdpoh.xml';

implementation

uses
  Vcl.Forms, fMainUnit, dConnectUnit, System.StrUtils, dSQLPohodaConnect,
  cxControls, JclStrings;

{$R *.dfm}

function GetdmdPohoExpImp: TdmdPohoExpImp;
begin
  if not Assigned(dmdPohoExpImp) then
    Application.CreateForm(TdmdPohoExpImp, dmdPohoExpImp);
  Result := dmdPohoExpImp;

end;

procedure TdmdPohoExpImp.EDF_PohodaDataNewRecord(DataSet: TDataSet);
begin
  { Vychozi (konstantni) hodnoty pro radek exportu }
  // SELECT
  { (* }
  EDF_PohodaDataRelPk.AsInteger    := 2;
  EDF_PohodaDataRelTpDPH.AsInteger := 0;
  EDF_PohodaDataRelTpFak.AsInteger := 1;
  EDF_PohodaDataRelForUh.AsInteger := 1;
  EDF_PohodaDataZaokrFV.AsInteger  := 0;
  EDF_PohodaDataSel.AsInteger      := 1;
  EDF_PohodaDataPolozky.AsInteger  := 0;
  EDF_PohodaDataRelCR.AsInteger    := 75;
  EDF_PohodaDataTpStorn.AsInteger  := 0;
  EDF_PohodaDataKcP.AsInteger      := 0;
  EDF_PohodaDataDenEUR.AsInteger   := -1;
  { *) }

end;

procedure TdmdPohoExpImp.EVF_PohodaDataNewRecord(DataSet: TDataSet);
begin
  { Vychozi (konstantni) hodnoty pro radek exportu }
  // SELECT
  { (* }
  EVF_PohodaDataRelPk.AsInteger     := 2;
  EVF_PohodaDataRelTpDPH.AsInteger  := 0;
  EVF_PohodaDataRelTpFak.AsInteger  := 1;
  EVF_PohodaDataRelForUh.AsInteger  := 1;
  EVF_PohodaDataZaokrFV.AsInteger   := 0;
  EVF_PohodaDataSel.AsInteger       := 1;
  EVF_PohodaDataPolozky.AsInteger   := 0;
  EVF_PohodaDataRelCR.AsInteger     := 75;
  EVF_PohodaDataTpStorn.AsInteger   := 0;
  EVF_PohodaDataKcP.AsInteger       := 0;
  EVF_PohodaDataDenEUR.AsInteger    := -1;
  EVF_PohodaDataTuzKlient.AsInteger := 1;
  { *) }
end;

procedure TdmdPohoExpImp.ExportFDToXml(AFileName: string);
var
  ae, xDat, xInv, xInvHeader, xInvItems, xInvSummary: TjclSimpleXMLElem;
  smxml                                             : TjclSimpleXML;
  OldDeciSepa                                       : Char;
  sICO                                              : string;
begin
  OldDeciSepa                     := FormatSettings.DecimalSeparator;
  FormatSettings.DecimalSeparator := '.';
  sICO                            := gbXMLIc;
  EDF_PohodaData.First;

  smxml := TjclSimpleXML.Create;
  smxml.Root.Clear;
  try
    smxml.Prolog.Version  := '1.0';
    smxml.Prolog.Encoding := 'Windows-1250';
    // smxml.Prolog.StandAlone := True;

    ae := smxml.Root.Items.Add('dat:dataPack');
    with ae.Properties do
    begin
      Add('id', 'fa001');
      Add('ico', sICO);
      Add('application', 'AspedSQL');
      Add('version', '2.0');
      Add('note', 'Import FD');
      // Parametry
      Add('xmlns:dat', 'http://www.stormware.cz/schema/version_2/data.xsd');
      Add('xmlns:inv', 'http://www.stormware.cz/schema/version_2/invoice.xsd');
      Add('xmlns:typ', 'http://www.stormware.cz/schema/version_2/type.xsd');
    end;

    EDF_PohodaData.First;
    while not EDF_PohodaData.Eof do
    begin
      xDat := ae.Items.Add('dat:dataPackItem');
      with xDat.Properties do
      begin
        Add('id', EDF_PohodaDataCislo.AsString);
        Add('version', '2.0');
      end;
      xDat.Items.AddComment('Comment1', 'faktura bez polozky a bez adresy');

      // Faktura
      xInv := xDat.Items.Add('inv:invoice');
      with xInv.Properties do
      begin
        Add('version', '2.0');
      end;

      // Faktura Header
      xInvHeader := xInv.Items.Add('inv:invoiceHeader');
      xInvHeader.Items.Add('inv:invoiceType', 'receivedInvoice');

      // -----------------------------------------------------------------------
      // Data vystaveni, slatnosti atd
      // -----------------------------------------------------------------------
      xInvHeader.Items.Add('inv:date', FormatDateTime('yyyy-mm-dd', EDF_PohodaDataDatum.AsDateTime));
      xInvHeader.Items.Add('inv:dateTax', FormatDateTime('yyyy-mm-dd', EDF_PohodaDataDatZdPln.AsDateTime));
      xInvHeader.Items.Add('inv:dateKHDPH', FormatDateTime('yyyy-mm-dd', EDF_PohodaDataDatKH.AsDateTime));
      xInvHeader.Items.Add('inv:dateAccounting', FormatDateTime('yyyy-mm-dd', EDF_PohodaDataDatZdPln.AsDateTime));
      xInvHeader.Items.Add('inv:dateDue', FormatDateTime('yyyy-mm-dd', EDF_PohodaDataDatSplat.AsDateTime));
      // -----------------------------------------------------------------------

      with xInvHeader.Items.Add('inv:number') do
        Items.Add('typ:numberRequested', EDF_PohodaDataCislo.AsString);

      xInvHeader.Items.Add('inv:symVar', EDF_PohodaDataVarSym.AsString);
      xInvHeader.Items.Add('inv:originalDocument', EDF_PohodaDataVarSym.AsString);
      // Parovaci szmbol, shodnz s variabilnim
      // xInvHeader.Items.Add('inv:symPar', EDF_PohodaDataVarSym.AsString);

      with xInvHeader.Items.Add('inv:accounting') do
      begin
        Items.Add('typ:ids', gbXMLFDPredkontace);
      end;

      with xInvHeader.Items.Add('inv:classificationVAT') do
      begin
        Items.Add('typ:ids', gbXMLFDDPHPredkontace);
      end;

      xInvHeader.Items.Add('inv:text', EDF_PohodaDataSText.AsString);

      // ID partnera v tabulce AD
      with xInvHeader.Items.Add('inv:partnerIdentity') do
      begin
        if EDF_PohodaDataRefAD.AsString <> '0' then
          Items.Add('typ:id', EDF_PohodaDataRefAD.AsString)
        else if gbXMLShowNonExist then
        begin
          with Items.Add('typ:address') do
          begin
            Items.Add('typ:company', Trim(EDF_PohodaDataFirma.AsString));
            if gbXMLFullAdresExport then
            begin
              Items.Add('typ:division', EDF_PohodaDataUtvar.AsString);
              Items.Add('typ:city', EDF_PohodaDataObec.AsString);
              Items.Add('typ:street', EDF_PohodaDataUlice.AsString);
              Items.Add('typ:zip', EDF_PohodaDatapsc.AsString);
              Items.Add('typ:ico', EDF_PohodaDataico.AsString);
              Items.Add('typ:dic', EDF_PohodaDatadic.AsString);
            end;

          end;

        end;
      end;
      // Typ platby
      with xInvHeader.Items.Add('inv:paymentType') do
      begin
        // if EVF_PohodaDataRelForUh.AsString
        // Prikazem
        Items.Add('typ:paymentType', 'draft');
        // Hotove
      end;

      if EDF_PohodaDataRefAD.AsString = '0' then
        with xInvHeader.Items.Add('inv:paymentAccount') do
        begin
          Items.Add('typ:accountNo', EDF_PohodaDataUcetNo.AsString);
          Items.Add('typ:bankCode', EDF_PohodaDataUcetBanka.AsString);
        end;

      {
        with xInvHeader.Items.Add('inv:account') do
        begin
        Items.Add('typ:ids', EVF_PohodaDataUcetZkr.AsString);
        end;
      }
      // Poznamka
      xInvHeader.Items.Add('inv:note', 'Naèteno z XML.');
      xInvHeader.Items.Add('inv:intNote', 'Tento doklad byl vytvoøen importem pøes XML.');

      // Inv Summary
      xInvSummary := xInv.Items.Add('inv:invoiceSummary');
      // Zaokrouhlení celkové èástky dokladu + typ zaokrouhlení. Pokud není uvedeno zaokrouhlení, nastaví se hodnoty z Globálního nastavení.
      // xInvSummary.Items.Add('inv:roundingDocument', gbXMLroundingDocument);
      // Zaokrouhlení DPH. Pokud není uvedeno zaokrouhlení, nastaví se hodnoty z Globálního nastavení.
      // xInvSummary.Items.Add('inv:roundingVAT', gbXMLroundingVAT);
      // Budeme kontrolvat menu
      if EDF_PohodaDataMena.AsString = 'CZK' then
      begin
        with xInvSummary.Items.Add('inv:homeCurrency') do
        begin
          Items.Add('typ:priceNone', CurrToStr(EDF_PohodaDataKc0.AsCurrency));
          Items.Add('typ:priceLow', CurrToStr(EDF_PohodaDataKc1.AsCurrency));
          Items.Add('typ:priceHigh', CurrToStr(EDF_PohodaDataKc2.AsCurrency));
          with Items.Add('typ:round') do
          begin
            Items.Add('typ:priceRound', CurrToStr(EDF_PohodaDataKcZaokr.AsCurrency));
          end;
        end;
      end
      else // Nejaka cizi mena
      begin
        with xInvSummary.Items.Add('inv:foreignCurrency') do
        begin
          with Items.Add('typ:currency') do
          begin
            Items.Add('typ:ids', EDF_PohodaDataMena.AsString);
          end;
          Items.Add('typ:rate', CurrToStr(EDF_PohodaDataCmKurs.AsCurrency));
          Items.Add('typ:amount', CurrToStr(1));
          Items.Add('typ:priceSum', CurrToStr(EDF_PohodaDataCmCelkem.AsCurrency));
        end;
      end;
      EDF_PohodaData.Next;
    end;

    if FileExists(AFileName) then
      DeleteFile(AFileName);

    smxml.SaveToFile(AFileName);
  finally
    smxml.Free;
    FormatSettings.DecimalSeparator := OldDeciSepa;
  end;
end;

procedure TdmdPohoExpImp.ExportToXml(AFileName: string);
var
  ae, xDat, xInv, xInvHeader, xInvItems, xInvSummary: TjclSimpleXMLElem;
  smxml                                             : TjclSimpleXML;
  OldDeciSepa                                       : Char;
  sICO                                              : string;
begin
  OldDeciSepa                     := FormatSettings.DecimalSeparator;
  FormatSettings.DecimalSeparator := '.';
  sICO                            := gbXMLIc;
  EVF_PohodaData.First;

  smxml := TjclSimpleXML.Create;
  smxml.Root.Clear;
  try
    smxml.Prolog.Version  := '1.0';
    smxml.Prolog.Encoding := 'Windows-1250';
    // smxml.Prolog.StandAlone := True;

    ae := smxml.Root.Items.Add('dat:dataPack');
    with ae.Properties do
    begin
      Add('id', 'fa001');
      Add('ico', sICO);
      Add('application', 'AspedSQL');
      Add('version', '2.0');
      Add('note', 'Import FA');
      // Parametry
      Add('xmlns:dat', 'http://www.stormware.cz/schema/version_2/data.xsd');
      Add('xmlns:inv', 'http://www.stormware.cz/schema/version_2/invoice.xsd');
      Add('xmlns:typ', 'http://www.stormware.cz/schema/version_2/type.xsd');
    end;

    EVF_PohodaData.First;
    while not EVF_PohodaData.Eof do
    begin
      xDat := ae.Items.Add('dat:dataPackItem');
      with xDat.Properties do
      begin
        Add('id', EVF_PohodaDataCislo.AsString);
        Add('version', '2.0');
      end;
      xDat.Items.AddComment('Comment1', 'faktura bez polozky a bez adresy');

      // Faktura
      xInv := xDat.Items.Add('inv:invoice');
      with xInv.Properties do
      begin
        Add('version', '2.0');
      end;

      // Faktura Header
      xInvHeader := xInv.Items.Add('inv:invoiceHeader');
      xInvHeader.Items.Add('inv:invoiceType', 'issuedInvoice');

      // -----------------------------------------------------------------------
      // Data vystaveni, slatnosti atd
      // -----------------------------------------------------------------------
      xInvHeader.Items.Add('inv:date', FormatDateTime('yyyy-mm-dd', EVF_PohodaDataDatum.AsDateTime));
      xInvHeader.Items.Add('inv:dateTax', FormatDateTime('yyyy-mm-dd', EVF_PohodaDataDatZdPln.AsDateTime));
      xInvHeader.Items.Add('inv:dateAccounting', FormatDateTime('yyyy-mm-dd', EVF_PohodaDataDatZdPln.AsDateTime));
      xInvHeader.Items.Add('inv:dateDue', FormatDateTime('yyyy-mm-dd', EVF_PohodaDataDatSplat.AsDateTime));
      // -----------------------------------------------------------------------

      with xInvHeader.Items.Add('inv:number') do
        Items.Add('typ:numberRequested', EVF_PohodaDataCislo.AsString);

      xInvHeader.Items.Add('inv:symVar', EVF_PohodaDataVarSym.AsString);
      // Parovaci szmbol, shodnz s variabilnim
      xInvHeader.Items.Add('inv:symPar', EVF_PohodaDataVarSym.AsString);

      with xInvHeader.Items.Add('inv:accounting') do
      begin
        if EVF_PohodaDataTuzKlient.AsInteger = 1 then
          Items.Add('typ:ids', gbXMLPredkontace)
        else
          Items.Add('typ:ids', gbXMLEUPredkontace);
      end;

      // Typ DPH
      with xInvHeader.Items.Add('inv:classificationVAT') do
      begin
        Items.Add('typ:classificationVATType', 'inland');
        if EVF_PohodaDataTuzKlient.AsInteger = 1 then
          Items.Add('typ:ids', gbXMLDPHPredkontace)
        else
          Items.Add('typ:ids', gbXMLDPHEUPredkontace);
      end;

      // Text faktury
      xInvHeader.Items.Add('inv:text', EVF_PohodaDataSText.AsString);

      // ID partnera v tabulce AD
      with xInvHeader.Items.Add('inv:partnerIdentity') do
      begin
        if EVF_PohodaDataRefAD.AsString <> '0' then
          Items.Add('typ:id', EVF_PohodaDataRefAD.AsString)
        else if gbXMLShowNonExist then
        begin
          with Items.Add('typ:address') do
          begin
            Items.Add('typ:company', Trim(EVF_PohodaDataFirma.AsString));
            if gbXMLFullAdresExport then
            begin
              Items.Add('typ:division', EVF_PohodaDataUtvar.AsString);
              Items.Add('typ:city', EVF_PohodaDataObec.AsString);
              Items.Add('typ:street', EVF_PohodaDataUlice.AsString);
              Items.Add('typ:zip', EVF_PohodaDatapsc.AsString);
              Items.Add('typ:ico', EVF_PohodaDataico.AsString);
              Items.Add('typ:dic', EVF_PohodaDatadic.AsString);
            end;
          end;

        end;
      end;
      // Typ platby
      with xInvHeader.Items.Add('inv:paymentType') do
      begin
        // if EVF_PohodaDataRelForUh.AsString
        // Prikazem
        Items.Add('typ:paymentType', 'draft');
        // Hotove
        // Items.Add('typ:paymentType', 'cash');

      end;

      xInvHeader.Items.Add('inv:numberOrder', EVF_PohodaDataCisloObj.AsString);

      with xInvHeader.Items.Add('inv:account') do
      begin
        Items.Add('typ:ids', EVF_PohodaDataUcetZkr.AsString);
      end;
      // Poznamka
      xInvHeader.Items.Add('inv:note', 'Naèteno z XML.');
      xInvHeader.Items.Add('inv:intNote', 'Tento doklad byl vytvoøen importem pøes XML.');

      // Inv Summary
      xInvSummary := xInv.Items.Add('inv:invoiceSummary');
      // Zaokrouhlení celkové èástky dokladu + typ zaokrouhlení. Pokud není uvedeno zaokrouhlení, nastaví se hodnoty z Globálního nastavení.
      xInvSummary.Items.Add('inv:roundingDocument', gbXMLroundingDocument);
      // Zaokrouhlení DPH. Pokud není uvedeno zaokrouhlení, nastaví se hodnoty z Globálního nastavení.
      xInvSummary.Items.Add('inv:roundingVAT', gbXMLroundingVAT);
      // Budeme kontrolvat menu
      if EVF_PohodaDataMena.AsString = 'CZK' then
      begin
        with xInvSummary.Items.Add('inv:homeCurrency') do
        begin
          Items.Add('typ:priceNone', CurrToStr(EVF_PohodaDataKc0.AsCurrency));
          Items.Add('typ:priceLow', CurrToStr(EVF_PohodaDataKc1.AsCurrency));
          Items.Add('typ:priceHigh', CurrToStr(EVF_PohodaDataKc2.AsCurrency));
          with Items.Add('typ:round') do
          begin
            Items.Add('typ:priceRound', CurrToStr(EVF_PohodaDataKcZaokr.AsCurrency));
          end;
        end;
      end
      else // Nejaka cizi mena
      begin
        with xInvSummary.Items.Add('inv:foreignCurrency') do
        begin
          with Items.Add('typ:currency') do
          begin
            Items.Add('typ:ids', EVF_PohodaDataMena.AsString);
          end;
          Items.Add('typ:rate', CurrToStr(EVF_PohodaDataCmKurs.AsCurrency));
          Items.Add('typ:amount', CurrToStr(1));
          Items.Add('typ:priceSum', CurrToStr(EVF_PohodaDataCmCelkem.AsCurrency));
        end;
      end;
      EVF_PohodaData.Next;
    end;

    if FileExists(AFileName) then
      DeleteFile(AFileName);

    smxml.SaveToFile(AFileName);
  finally
    smxml.Free;
    FormatSettings.DecimalSeparator := OldDeciSepa;
  end;
end;

function TdmdPohoExpImp.FilterVS(aOldVS: string): ShortString;
var
  index: integer;
begin
  Result := '';
  if (aOldVS = '') then
    Exit;
  for index := low(0) to Length(aOldVS) do
  begin
    if aOldVS[index] in ['0' .. '9'] then
      Result := Result + aOldVS[index];
  end;
end;

procedure TdmdPohoExpImp.AddFDRecord(AID: string);
var
  Newkod_adpohoda: integer;
  aKurs          : Currency;
begin
  dtsFD.Close;
  dtsFD.ParamByName('SID').AsString := AID;
  dtsFD.Open;

  EDF_PohodaData.Insert;
  EDF_PohodaDataCislo.AsString      := dtsFDFAKTURADO.AsString;
  EDF_PohodaDataVarSym.AsString     := dtsFDVARIABILNI.AsString;
  EDF_PohodaDataSText.AsString      := gbXMLNahrText;
  EDF_PohodaDataDatum.AsDateTime    := dtsFDDATVYSTAVENI.AsDateTime;
  EDF_PohodaDataDatUcP.AsDateTime   := dtsFDDATDANPOV.AsDateTime;
  EDF_PohodaDataDatSplat.AsDateTime := dtsFDDATSPLATNOST.AsDateTime;
  EDF_PohodaDataDatZdPln.AsDateTime := dtsFDDATDANPOV.AsDateTime;
  EDF_PohodaDataDatKH.AsDateTime    := dtsFDDATDANPOVDOD.AsDateTime;

  // Kontrola meny
  EDF_PohodaDataKc0.AsCurrency      := dtsFDSUMA00.AsCurrency;
  EDF_PohodaDataKc1.AsCurrency      := dtsFDSUMA05.AsCurrency;
  EDF_PohodaDataKc2.AsCurrency      := dtsFDSUMA22.AsCurrency;
  EDF_PohodaDataKcDPH1.AsCurrency   := dtsFDDPH05.AsCurrency;
  EDF_PohodaDataKcDPH2.AsCurrency   := dtsFDDPH22.AsCurrency;
  EDF_PohodaDataKcZaloha.AsCurrency := dtsFDCENAZALOHY.AsCurrency;
  EDF_PohodaDataKcCelkem.AsCurrency := dtsFDCELKEM.AsCurrency;
  EDF_PohodaDataKcLikv.AsCurrency   := dtsFDCENALIKV.AsCurrency;
  EDF_PohodaDataKcU.AsCurrency      := dtsFDCENAUHRAZENO.AsCurrency;
  EDF_PohodaDataKcZaokr.AsCurrency  := 0;
  EDF_PohodaDataMena.AsString       := dtsFDCENAMENA.AsString;
  if (dtsFDCENAMENA.AsString <> 'CZK') and gbXMLFDNacitatKurs then
  begin
    aKurs                           := dmdSqlPohoda.GetKursPohoda(dtsFDCENAMENA.AsString, dtsFDDATDANPOV.AsDateTime);
    EDF_PohodaDataCmKurs.AsCurrency := aKurs;
  end
  else
    EDF_PohodaDataCmKurs.AsCurrency := dtsFDCENAKURZ.AsCurrency;

  EDF_PohodaDataCmCelkem.AsCurrency := dtsFDCELKEM.AsCurrency;
  EDF_PohodaDataRefAD.AsInteger     := dtsFDKOD_ADPOHODA.AsInteger;

  // Dohledadni a dopleni id aop do aspedu
  if EDF_PohodaDataRefAD.AsInteger <= 0 then
  begin
    Newkod_adpohoda := dmdSqlPohoda.GetAopId(dtsFDDIC.AsString);
    if Newkod_adpohoda > 0 then
    begin
      EDF_PohodaDataRefAD.AsInteger := Newkod_adpohoda;
      // Dohledany kod posleme do AOP
      try
        dmdConnect.IBOMainDB.ExecSQL('update aop set kod_adpohoda = ' + IntToStr(Newkod_adpohoda) + ' where aop.aopkod = ' + QuotedStr(dtsFDAOPKOD.AsString));
      except
      end;
    end;
  end;

  EDF_PohodaDataFirma.AsString     := dtsFDNAZEV.AsString;
  EDF_PohodaDataUtvar.AsString     := dtsFDADRESA1.AsString;
  EDF_PohodaDataUlice.AsString     := dtsFDADRESA2.AsString;
  EDF_PohodaDataObec.AsString      := dtsFDADRESA3.AsString;
  EDF_PohodaDatapsc.AsString       := dtsFDPSC.AsString;
  EDF_PohodaDataico.AsString       := dtsFDICO.AsString;
  EDF_PohodaDatadic.AsString       := dtsFDDIC.AsString;
  EDF_PohodaDataCisloObj.AsString  := StrLeft(dtsFDDOKLAD.AsString, 32);
  EDF_PohodaDataUcetNo.AsString    := dtsFDUCET_CISLO.AsString;
  EDF_PohodaDataUcetBanka.AsString := dtsFDUCET_BANKA.AsString;

  EDF_PohodaData.post;

  {
    dtsFD.Edit;
    dtsFDSTAV.AsInteger := 9;
    dtsFD.post;
  }
end;

procedure TdmdPohoExpImp.AddFVPRecord(AID: string);
var
  Newkod_adpohoda: integer;
  NewVariab      : string;
begin
  dtsFVP.Close;
  dtsFVP.ParamByName('SID').AsString := AID;
  dtsFVP.Open;

  EVF_PohodaData.Insert;
  EVF_PohodaDataCislo.AsString := dtsFVPSYMBVARIA.AsString;
  if gbXMLFiltrovatVS then
    EVF_PohodaDataVarSym.AsString := FilterVS(dtsFVPSYMBVARIA.AsString)
  else
    EVF_PohodaDataVarSym.AsString := dtsFVPSYMBVARIA.AsString;

  EVF_PohodaDataSText.Assign(dtsFVPFAKTTEXT);

  if Trim(gbXMLNahrText) <> '' then
    EVF_PohodaDataSText.AsString := gbXMLNahrText
  else
    EVF_PohodaDataSText.AsString := dtsFVPFAKTTEXT.AsString;

  EVF_PohodaDataDatum.AsDateTime    := dtsFVPDATVYSTAVENI.AsDateTime;
  EVF_PohodaDataDatUcP.AsDateTime   := dtsFVPDATDANPOV.AsDateTime;
  EVF_PohodaDataDatSplat.AsDateTime := dtsFVPDATSPLATNOST.AsDateTime;
  EVF_PohodaDataDatZdPln.AsDateTime := dtsFVPDATDANPOV.AsDateTime;

  // Kontrola meny
  EVF_PohodaDataKc0.AsCurrency      := dtsFVPSUMA00.AsCurrency;
  EVF_PohodaDataKc1.AsCurrency      := dtsFVPSUMA05.AsCurrency;
  EVF_PohodaDataKc2.AsCurrency      := dtsFVPSUMA22.AsCurrency;
  EVF_PohodaDataKcDPH1.AsCurrency   := dtsFVPDPH05.AsCurrency;
  EVF_PohodaDataKcDPH2.AsCurrency   := dtsFVPDPH22.AsCurrency;
  EVF_PohodaDataKcZaloha.AsCurrency := dtsFVPCENAZALOHY.AsCurrency;
  EVF_PohodaDataKcCelkem.AsCurrency := dtsFVPCELKEM.AsCurrency;
  EVF_PohodaDataKcLikv.AsCurrency   := dtsFVPCENALIKV.AsCurrency;
  EVF_PohodaDataKcU.AsCurrency      := dtsFVPCENAUHRAZENO.AsCurrency;
  EVF_PohodaDataKcZaokr.AsCurrency  := dtsFVPCENAZAOKR.AsCurrency;
  EVF_PohodaDataMena.AsString       := dtsFVPCENAMENA.AsString;
  EVF_PohodaDataCmKurs.AsCurrency   := dtsFVPCENAKURS.AsCurrency;
  EVF_PohodaDataCmCelkem.AsCurrency := dtsFVPCELKEM.AsCurrency;

  EVF_PohodaDataRefAD.AsInteger := dtsFVPKOD_ADPOHODA.AsInteger;

  // Dohledadni a dopleni id aop do aspedu
  if EVF_PohodaDataRefAD.AsInteger <= 0 then
  begin
    Newkod_adpohoda := dmdSqlPohoda.GetAopId(dtsFVPDIC.AsString);
    if Newkod_adpohoda > 0 then
    begin
      EVF_PohodaDataRefAD.AsInteger := Newkod_adpohoda;
      // Dohledany kod posleme do AOP
      try
        dmdConnect.IBOMainDB.ExecSQL('update aop set kod_adpohoda = ' + IntToStr(Newkod_adpohoda) + ' where aop.aopkod = ' + QuotedStr(dtsFVPAOPKOD.AsString));
      except
      end;
    end;
  end;

  // EVF_PohodaDataRefAD.AsInteger     := 0; // dtsFVPUCTO_AOP_ID.AsInteger;
  EVF_PohodaDataFirma.AsString := dtsFVPNAZEV.AsString;
  EVF_PohodaDataUtvar.AsString := dtsFVPADRESA1.AsString;
  EVF_PohodaDataUlice.AsString := dtsFVPADRESA2.AsString;
  EVF_PohodaDataObec.AsString  := dtsFVPADRESA3.AsString;
  EVF_PohodaDatapsc.AsString   := dtsFVPPSC.AsString;
  EVF_PohodaDataico.AsString   := dtsFVPICO.AsString;
  EVF_PohodaDatadic.AsString   := dtsFVPDIC.AsString;

  if UpperCase(LeftStr(dtsFVPDIC.AsString, 2)) = 'CZ' then
    EVF_PohodaDataTuzKlient.AsInteger := 1
  else
    EVF_PohodaDataTuzKlient.AsInteger := 0;

  if gbXMLCoDoObjednavky = 0 then
    EVF_PohodaDataCisloObj.AsString := StrLeft(dtsFVPOBJEDNAVKA.AsString, 32) // maximalni delka pole v POHODA je 32znaku
  else if gbXMLCoDoObjednavky = 1 then
    EVF_PohodaDataCisloObj.AsString := StrLeft(dtsFVPNPOZ.AsString, 32); // maximalni delka pole v POHODA je 32znaku

  EVF_PohodaData.post;

  dtsFVP.Edit;
  dtsFVPSTAV.AsInteger := 9;
  dtsFVP.post;
end;

end.
