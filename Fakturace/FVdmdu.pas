unit FVdmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, FVfrmuModule, fMessageDlg, cxEdit, cxDBEditRepository,
  IB_Components, IBODataset;

type

  TFVdmd = class(TDataModule)
    dsFAPolozky: TDataSource;
    dsFaktury: TDataSource;
    dsFakturySeznam: TDataSource;
    FakturySeznam: TIBOQuery;
    FakturySeznamSID: TStringField;
    FakturySeznamFAKTURA: TStringField;
    FakturySeznamNAZEV: TStringField;
    FakturySeznamADRESA3: TStringField;
    FakturySeznamZEME: TStringField;
    FakturySeznamICO: TStringField;
    FakturySeznamDIC: TStringField;
    FakturySeznamDATVYSTAVENI: TDateTimeField;
    FakturySeznamDATDANPOV: TDateTimeField;
    FakturySeznamDATSPLATNOST: TDateTimeField;
    FakturySeznamCENALIKV: TFloatField;
    FakturySeznamCENAMENA: TStringField;
    FakturySeznamDatUhrazeno: TDateTimeField;
    FakturySeznamSTAV: TIntegerField;
    FakturySeznamSTATEUSER: TIntegerField;
    FakturySeznamUPDID: TStringField;
    FakturySeznamUPDDATE: TDateTimeField;
    FakturySeznamCREAID: TStringField;
    FakturySeznamCREADATE: TDateTimeField;
    FakturySeznamVYBER: TStringField;
    FakturySeznamLIKVOK: TStringField;
    Faktury: TIBOQuery;
    FakturySID: TStringField;
    FakturyFAKTURA: TStringField;
    FakturyVYBER: TStringField;
    FakturyFAKTTYP: TStringField;
    FakturyTYP: TSmallintField;
    FakturyREFPLATCE: TIntegerField;
    FakturyAOPKOD: TStringField;
    FakturyNAZEV: TStringField;
    FakturyADRESA1: TStringField;
    FakturyADRESA2: TStringField;
    FakturyADRESA3: TStringField;
    FakturyPSC: TStringField;
    FakturyZEME: TStringField;
    FakturyICO: TStringField;
    FakturyDIC: TStringField;
    FakturyUCETZKR: TStringField;
    FakturySYMBVARIA: TStringField;
    FakturySYMBKONST: TStringField;
    FakturyOBJEDNAVKA: TStringField;
    FakturyOBJEDDATUM: TDateField;
    FakturyDATVYSTAVENI: TDateField;
    FakturyDATDANPOV: TDateField;
    FakturyDATSPLATNOST: TDateField;
    FakturyFORMUHRADY: TStringField;
    FakturyPRILOHY: TStringField;
    FakturySUMA00: TBCDField;
    FakturySUMA05: TBCDField;
    FakturySUMA22: TBCDField;
    FakturySUMAZAKLAD: TBCDField;
    FakturyDPH05: TBCDField;
    FakturyDPH22: TBCDField;
    FakturySUMADPH: TBCDField;
    FakturyCENAMENA: TStringField;
    FakturyCELKEM: TBCDField;
    FakturyCENAZALOHY: TBCDField;
    FakturyCENALIKV: TBCDField;
    FakturyCENAUHRAZENO: TBCDField;
    FakturyCENAZAOKR: TBCDField;
    FakturyCENAKURS: TBCDField;
    FakturyCENASUMAKC: TBCDField;
    FakturyLIKVOK: TStringField;
    FakturyDATUHRAZENO: TDateField;
    FakturyDOKLAD: TStringField;
    FakturyUCTODATUM: TDateField;
    FakturyFAKTTEXT: TBlobField;
    FakturyTEXTAFTER: TSmallintField;
    FakturyPOZNAMKA: TBlobField;
    FakturyNPOZ: TStringField;
    FakturyVPOZ: TStringField;
    FakturySPZ: TStringField;
    FakturyDATNAKL: TDateField;
    FakturyDATVYKL: TDateField;
    FakturyMNAKL: TStringField;
    FakturyMVYKL: TStringField;
    FakturySUBSTRAT: TStringField;
    FakturyCREADATE: TDateTimeField;
    FakturyCREAID: TStringField;
    FakturyUPDID: TStringField;
    FakturyUPDDATE: TDateTimeField;
    FakturySTAV: TSmallintField;
    FakturySTATEUSER: TIntegerField;
    FakturyKODBANKY: TStringField;
    FakturyBANKA: TStringField;
    FakturyBANKAWORLD: TStringField;
    FakturyIBAN: TStringField;
    FakturyPATATEXT: TMemoField;
    FAPolozky: TIBOQuery;
    FAPolozkyID: TIntegerField;
    FAPolozkyREFFV: TStringField;
    FAPolozkyPOLTEXT: TStringField;
    FAPolozkyCENASMLUVNI: TFloatField;
    FAPolozkyCENAJEDNOTKY: TFloatField;
    FAPolozkyCENAJEDNOTKA: TStringField;
    FAPolozkyCENASUMA: TFloatField;
    FAPolozkyCENADPH: TFloatField;
    FAPolozkyCENADPHPROC: TBCDField;
    FAPolozkyZALOHA: TStringField;
    FVCenaUpdate: TIBOQuery;
    FVPlatceUpdate: TIBOQuery;
    FVViewAOP: TIBOQuery;
    FVViewAOPSID: TStringField;
    FVViewAOPFAKTURA: TStringField;
    FVViewAOPAOPKOD: TStringField;
    FVViewAOPNAZEV: TStringField;
    FVViewAOPDATVYSTAVENI: TDateTimeField;
    FVViewAOPDATSPLATNOST: TDateTimeField;
    FVViewAOPDatUhrazeno: TDateTimeField;
    FVViewAOPCELKEM: TFloatField;
    FVViewAOPCENALIKV: TFloatField;
    FVViewAOPLIKVOK: TStringField;
    FVViewAOPCENAUHRAZENO: TBCDField;
    FVViewZasilka: TIBOQuery;
    FVViewZasilkaSID: TStringField;
    FVViewZasilkaFAKTURA: TStringField;
    FVViewZasilkaAOPKOD: TStringField;
    FVViewZasilkaNAZEV: TStringField;
    FVViewZasilkaDATVYSTAVENI: TDateTimeField;
    FVViewZasilkaDATSPLATNOST: TDateTimeField;
    FVViewZasilkaDatUhrazeno: TDateTimeField;
    FVViewZasilkaCELKEM: TFloatField;
    FVViewZasilkaCENALIKV: TFloatField;
    FVViewZasilkaLIKVOK: TStringField;
    FVViewZasilkaCENAUHRAZENO: TBCDField;
    spLikvidace: TIBOQuery;
    FakturyZASILKA: TStringField;
    FakturySeznamZASILKA: TStringField;
    FakturyREF_ZASILKA: TStringField;
    FakturySeznamREF_ZASILKA: TStringField;
    FakturySeznamSYMBVARIA: TStringField;
    FakturySeznamTYP: TSmallintField;
    FVViewAOPREF_ZASILKA: TStringField;
    FAPolozkyREFTABULKA: TStringField;
    FakturySeznamCELKEM: TBCDField;
    FakturySeznamCENAZALOHY: TBCDField;
    FakturySeznamUCTODATUM: TDateField;
    FakturySeznamDOKLAD: TStringField;
    FakturySeznamSUMAZAKLAD: TBCDField;
    FakturySeznamSUMADPH: TBCDField;
    FakturySeznamCENAKURS: TBCDField;
    FakturySeznamCENASUMAKC: TBCDField;
    FakturyUCET: TStringField;
    FAPolozkyCENASAZBADPH: TSmallintField;
    FAPolozkyREFZASILKA: TStringField;
    FAPolozkyISDOPROVIZE: TStringField;
    FakturyCENA22SDPH: TCurrencyField;
    FakturyCENA05SDPH: TCurrencyField;
    FakturyCALCDPHZAKL: TCurrencyField;
    FakturyCALCDPHSNIZ: TCurrencyField;
    dtsCalcPol: TIBOQuery;
    dtsCalcPolCENASMLUVNI: TBCDField;
    dtsCalcPolCENAJEDNOTKY: TBCDField;
    dtsCalcPolCENADPHPROC: TBCDField;
    dtsCalcPolCENASAZBADPH: TSmallintField;
    dtsCalcPolCENADPH: TBCDField;
    dtsCalcPolCENASUMA: TBCDField;
    dtsCalcPolISDOPROVIZE: TStringField;
    dtsCalcPolID: TIntegerField;
    dtsCalcPolZALOHA: TStringField;
    FakturyPLA_EMAILS: TStringField;
    FakturyTEXTBEFORE: TSmallintField;
    FakturyBEFORETEXT: TMemoField;
    FakturySeznamSTATEUSERCOLOR: TIntegerField;
    FAPolozkyREFPLATCE: TIntegerField;
    dtsGetPol: TIBOQuery;
    dtsGetPolCENATEXT: TStringField;
    dtsGetPolCENAPOPIS: TMemoField;
    dtsGetPolCENAZAKLAD: TBCDField;
    dtsGetPolCENAJEDNOTKA: TStringField;
    dtsGetPolCENAJEDNOTKY: TBCDField;
    dtsGetPolCENASLEVA: TBCDField;
    dtsGetPolCENASUMA: TBCDField;
    dtsGetPolCENASAZBADPH: TSmallintField;
    dtsGetPolCENADPHPROC: TBCDField;
    dtsGetPolCENADPH: TBCDField;
    dtsGetPolISDOPROVIZE: TStringField;
    FakturySeznamVPOZ: TStringField;
    FakturySeznamVYBER2: TStringField;
    FakturySeznamAOPKOD: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FakturyNewRecord(DataSet: TDataSet);
    procedure FAPolozkyNewRecord(DataSet: TDataSet);
    procedure FakturySeznamAfterPost(DataSet: TDataSet);
    procedure FaPolCalcCena(Sender: TField);
    procedure FakturyCalcFields(DataSet: TDataSet);
    procedure FVPOLUpdateSoucty(DataSet: TDataSet);
    procedure PostFaktura(DataSet: TDataSet);
    procedure FakturyCENAMENAChange(Sender: TField);
    procedure FakturyDATVYSTAVENIChange(Sender: TField);
    procedure FakturyBeforeDelete(DataSet: TDataSet);
    procedure FakturyBeforePost(DataSet: TDataSet);
    procedure FakturyCENAKURSChange(Sender: TField);
    procedure FakturyAfterPost(DataSet: TDataSet);

  private
    { Private declarations }

  public
    { Public declarations }
    LastDatLikvidace: TDateTime;
    procedure FVCalcDetailCena(aSID: string);

    function FVCopyFaktura(AFaktura: string): string;
    function FVRemoveFaktura(AFaktura: string): boolean;
    function FVLikvidace(AFaktura: string; ALikvidace: boolean): boolean;

    function mod_OpenRecord(AKeyIDValue: string): boolean;
  end;

var
  FVdmd: TFVdmd;

function GetFVdmd: TFVdmd; // Pomocna funkce testujici existenci modulu

implementation

uses
  uVarClass, uAppUtils, fGetDateDlg, appunconst, appdmduSystem, AOPfrmuModule, ZSdmdu,
  appfrmuGlobal, appGenIdUnit, FVConstDefUnit, appDPHunit, fKatalogyModul;

{$R *.DFM}

function GetFVdmd: TFVdmd; // Pomocna funkce testujici existenci modulu
begin
  if not Assigned(FVdmd) then
    Application.CreateForm(TFVdmd, FVdmd);
  Result := FVdmd;
end;

procedure TFVdmd.DataModuleCreate(Sender: TObject);
begin
  LastDatLikvidace := date;
end;

procedure TFVdmd.FVCalcDetailCena(aSID: string);
var
  pC22     : double;
  pC05     : double;
  pC00     : double;
  pDPHZAKL : real;
  pDPHSNIZ : real;
  pZaloha  : double;
  pCNCelkem: real;
  pCNZaokr : real;
  // iDPZ,iDPS:integer;
begin
  pC22     := 0;
  pC05     := 0;
  pC00     := 0;
  pDPHZAKL := 0;
  pDPHSNIZ := 0;
  pZaloha  := 0;
  pCNZaokr := 0;

  dtsCalcPol.Close;
  dtsCalcPol.ParamByName('REFFV').AsString := aSID;
  dtsCalcPol.Open;


  // appGetDPHSazba(FakturyDATDANPOV.AsDateTime,iDPZ,iDPS);

  if dtsCalcPol.RecordCount > 0 then
  begin
    dtsCalcPol.First;

    while dtsCalcPol.EOF = false do
    begin
      if dtsCalcPolZALOHA.AsString = 'T' then
        pZaloha := pZaloha + (dtsCalcPolCENASUMA.AsCurrency + dtsCalcPolCENADPH.AsCurrency)
      else
      begin
        if dtsCalcPolCENADPHPROC.AsInteger = 0 then
        begin
          pC00 := pC00 + dtsCalcPolCENASUMA.AsCurrency;
        end
        { Uprava sniyene sazby DPH }
        else if dtsCalcPolCENADPHPROC.AsInteger in [5, 9, 10, 15] then
        begin
          pC05     := pC05 + dtsCalcPolCENASUMA.AsCurrency;
          pDPHSNIZ := pDPHSNIZ + dtsCalcPolCENADPH.AsCurrency;
        end
        else
        begin
          pC22     := pC22 + dtsCalcPolCENASUMA.AsCurrency;
          pDPHZAKL := pDPHZAKL + dtsCalcPolCENADPH.AsCurrency;
        end;
      end;
      dtsCalcPol.Next;
    end;
  end;

  pCNCelkem := pC00 + pC05 + pC22 + pDPHZAKL + pDPHSNIZ;
  numZaokrouhli(pCNCelkem, pCNZaokr, dmdSystem.gbZaokrouhleni);

  FVCenaUpdate.ParamByName('SUMA00').AsCurrency     := numRound(pC00, dmdSystem.RecDesMista);
  FVCenaUpdate.ParamByName('SUMA05').AsCurrency     := numRound(pC05, dmdSystem.RecDesMista);
  FVCenaUpdate.ParamByName('SUMA22').AsCurrency     := numRound(pC22, dmdSystem.RecDesMista);
  FVCenaUpdate.ParamByName('SUMAZAKLAD').AsCurrency := pC00 + pC05 + pC22;                        // pReak.calcSumaSuma;
  FVCenaUpdate.ParamByName('DPH05').AsCurrency      := numRound(pDPHSNIZ, dmdSystem.RecDesMista); // pReak.calcDPHSnizena;
  FVCenaUpdate.ParamByName('DPH22').AsCurrency      := numRound(pDPHZAKL, dmdSystem.RecDesMista); // pReak.calcDPHZakladni;
  FVCenaUpdate.ParamByName('SUMADPH').AsCurrency    := pDPHZAKL + pDPHSNIZ;                       // pReak.calcSumaDPH;

  FVCenaUpdate.ParamByName('CENAZAOKR').AsCurrency  := pCNZaokr; // pReak.calcZaokrouhleni;
  FVCenaUpdate.ParamByName('CENAZALOHY').AsCurrency := pZaloha;

  FVCenaUpdate.ParamByName('CELKEM').AsCurrency     := pCNCelkem; // pReak.calcCelkem;
  FVCenaUpdate.ParamByName('CENALIKV').AsCurrency   := pCNCelkem { pReak.calcCelkem } + pZaloha;
  FVCenaUpdate.ParamByName('CENASUMAKC').AsCurrency := numRound(pCNCelkem * FakturyCENAKURS.AsCurrency, dmdSystem.RecDesMista);
  FVCenaUpdate.ParamByName('SID').AsString          := aSID;
  try

    FVCenaUpdate.ExecSQL;
    Faktury.Refresh;

  except
    on e: exception do
      DisplayError(SERR_FV_UPDATECENA, e.Message);
  end;
end;

{ ****************************************************************
  *
  *  m f v _ C o p y F a k t u r a ()
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:   23.5.2001
  *
  *  Input:  AFaktura - cislo faktury
  *
  *  Return: Nove cislo faktury
  *
  *  Description: Kopirovani nove faktury
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

function TFVdmd.FVCopyFaktura(AFaktura: string): string;
var
  NovaFaktura: string;
  iRada      : string;
  aWorkDs    : TIBOQuery;
const
  sAviFldFV    = 'FAKTTYP;SYMBKONST;AOPKOD;NAZEV;ADRESA2;ADRESA1;ADRESA3;PSC;ZEME;ICO;DIC;OBJEDNAVKA;OBJEDDATUM;FORMUHRADY;CENAMENA;PRILOHY;FAKTTEXT;TEXTAFTER;UCETZKR;POZNAMKA';
  sAviFldFVPol = 'POLTEXT;CENASMLUVNI;CENAJEDNOTKY;CENAJEDNOTKA;CENADPHPROC;CENASUMA';
begin
  Result                 := EmptyStr;
  aWorkDs                := TIBOQuery.Create(nil);
  aWorkDs.IB_Transaction := Faktury.IB_Transaction;

  aWorkDs.SQL.Text                    := 'select * from FV where sid = :sid';
  aWorkDs.ParamByName('SID').AsString := AFaktura;
  aWorkDs.Open;

  if aWorkDs.IsEmpty then
    Exit;

  Result := GenGUIDID22;
  mod_OpenRecord(Result);

  { Kontrola zda nechce uzivatel vybrat alternativni radu }
  with FVfrmModule do
  begin
    iRada := NewNumRadaJmeno;
    if NewNumRadaVybrat then
      iRada := dmdSystem.SelectNumLine(ModuleName);
  end;

  if iRada = EmptyStr then
    iRada := FVfrmModule.NewNumRadaJmeno;

  NovaFaktura := FVfrmModule.GetNewKeyIdValue(iRada);

  try
    // Nova Faktura
    Faktury.Insert;
    Faktury.FieldValues[sAviFldFV] := aWorkDs.FieldValues[sAviFldFV];
    FakturySID.AsString            := Result;
    FakturyTYP.AsInteger           := fvTypText;
    FakturyFAKTURA.AsString        := NovaFaktura;
    FakturySYMBVARIA.AsString      := NovaFaktura;
    FakturyCENAKURS.AsCurrency     := mgGetActualKurs(aWorkDs.fieldbyname('CENAMENA').AsString);
    Faktury.Post;

    // Polozky
    aWorkDs.Close; // Pracovni dataset platcu
    aWorkDs.SQL.Text                    := 'select * from FVPOL where REFFV = :SID';
    aWorkDs.ParamByName('SID').AsString := AFaktura;
    aWorkDs.Open;

    while not aWorkDs.EOF do
    begin

      FAPolozky.Insert;
      FAPolozky.FieldValues[sAviFldFVPol] := aWorkDs.FieldValues[sAviFldFVPol];
      FAPolozky.Post;

      aWorkDs.Next;
    end;

    FVCalcDetailCena(Result);
  except
    on e: exception do
    begin
      Result := AFaktura;
      DisplayError(SERR_COPY, e.Message);
    end;
  end;
end;

function TFVdmd.FVRemoveFaktura(AFaktura: string): boolean;
begin
  try
    // Odstraneni faktury
    dmdSystem.spProc.SQL.Text                    := 'DELETE FROM FV WHERE SID =:SID';
    dmdSystem.spProc.ParamByName('SID').AsString := AFaktura;
    dmdSystem.spProc.ExecSQL;
    Result := true

  except
    on e: exception do
    begin
      DisplayError(SERR_DELETE, e.Message);
      Result := false;
    end;
  end;
end;

{ Tabulka FAKTURA }

function TFVdmd.mod_OpenRecord(AKeyIDValue: string): boolean;
begin
  Result := false;
  if AKeyIDValue <> EmptyStr then
  begin
    Faktury.Close;
    Faktury.ParamByName('SID').AsString := AKeyIDValue;
    FAPolozky.Close;
    FAPolozky.ParamByName('REFFV').AsString := AKeyIDValue;
    try
      Faktury.Open;
      FAPolozky.Open;
    except
    end;
    Result := not Faktury.IsEmpty;
  end;
end;

function TFVdmd.FVLikvidace(AFaktura: string; ALikvidace: boolean): boolean;
const
  SQL_LIKVIDACE   = 'UPDATE FV SET LIKVOK = :LIKVOK, CENALIKV = 0, DATUHRAZENO = :DATUMLIKV, DOKLAD = :DOKLAD, UCTODATUM = :DATUMLIKV WHERE SID = :SID';
  SQL_RELIKVIDACE = 'UPDATE FV SET LIKVOK = :LIKVOK, CENALIKV = CELKEM + CENAZALOHY, DATUHRAZENO = NULL, DOKLAD = NULL, UCTODATUM = NULL WHERE SID = :SID';
var
  adate: TDateTime;
begin
  Result := false;
  adate  := LastDatLikvidace;

  if not FVfrmModule.gbRychlaLikvidace then
    if ALikvidace then
      if dateGetMaxDate(adate) then
        LastDatLikvidace := adate
      else
        Exit;

  dmdSystem.spProc.SQL.Clear;
  if ALikvidace then
  begin
    dmdSystem.spProc.SQL.Add(SQL_LIKVIDACE);
    dmdSystem.spProc.ParamByName('datumlikv').AsDate := adate;
    dmdSystem.spProc.ParamByName('DOKLAD').AsString  := 'Ruèní';
    dmdSystem.spProc.ParamByName('LIKVOK').AsString  := 'T';
  end
  else
  begin
    dmdSystem.spProc.SQL.Add(SQL_RELIKVIDACE);
    dmdSystem.spProc.ParamByName('LIKVOK').AsString := 'F';
  end;
  dmdSystem.spProc.ParamByName('SID').AsString := AFaktura;

  try
    dmdSystem.spProc.ExecSQL;
    Result := true;
  except
    on e: exception do
    begin
      DisplayError(SERR_FV_LIKVIDACE, e.Message);
      Result := false;
    end;
  end;

end;

procedure TFVdmd.FakturyNewRecord(DataSet: TDataSet);
begin
  FakturySID.AsString     := GenGUIDID22;
  FakturyTYP.AsInteger    := 0;
  FakturyFAKTURA.AsString := FVfrmModule.NewNumRadaJmeno;

  FakturyDATVYSTAVENI.AsDateTime := date;
  FakturyDATDANPOV.AsDateTime    := date;
  FakturyDATSPLATNOST.AsDateTime := date + 14;

  FakturyFORMUHRADY.AsString := dmdSystem.gbUhrada;
  FakturySYMBKONST.AsString  := dmdSystem.gbKonstantni;

  FakturyCENAMENA.AsVariant := dmdSystem.gbMena;

  FakturyCENAMENA.AsVariant  := SYS_KORUNA_NAZEV;
  FakturyCENAKURS.AsCurrency := 1;
  FakturyCREAID.AsString     := jfaUserInfo.UserZnacka;
  FakturyFAKTTYP.AsString    := dmdSystem.gbTypFaktury;

  FakturyUCETZKR.AsString     := dmdSystem.gbUcet;
  FakturyTEXTAFTER.AsVariant  := dmdSystem.gbPata;
  FakturyTEXTBEFORE.AsVariant := FVfrmModule.gbFVBefore;
  FakturyCREAID.AsString      := jfaUserInfo.UserZnacka;

end;

procedure TFVdmd.FAPolozkyNewRecord(DataSet: TDataSet);
begin
  FAPolozkyREFFV.AsString          := FakturySID.AsString;
  FAPolozkyZALOHA.AsString         := 'F';
  FAPolozkyISDOPROVIZE.AsString    := 'T';
  FAPolozkyCENASMLUVNI.AsCurrency  := 0;
  FAPolozkyCENAJEDNOTKY.AsCurrency := 1;
  FAPolozkyCENAJEDNOTKA.AsVariant  := dmdSystem.gbJednotka;
  FAPolozkyCENADPHPROC.AsCurrency  := 0;

end;

procedure TFVdmd.FakturySeznamAfterPost(DataSet: TDataSet);
begin
  FakturySeznam.RefreshRows;
end;

procedure TFVdmd.FaPolCalcCena(Sender: TField);
begin
  FAPolozkyCENASUMA.AsCurrency := numRound(FAPolozkyCENASMLUVNI.AsCurrency * FAPolozkyCENAJEDNOTKY.AsCurrency, dmdSystem.RecDesMista);
  FAPolozkyCENADPH.AsCurrency  := numRound(FAPolozkyCENASUMA.AsCurrency * (FAPolozkyCENADPHPROC.AsCurrency * 0.01), dmdSystem.RecDesMista);
end;

procedure TFVdmd.FakturyCalcFields(DataSet: TDataSet);
var
  DPHZakl: integer;
  DPHSniz: integer;
begin
  appGetDPHSazba(FakturyDATDANPOV.AsDateTime, DPHZakl, DPHSniz);
  FakturyCALCDPHZAKL.AsCurrency := DPHZakl;
  FakturyCALCDPHSNIZ.AsCurrency := DPHSniz;
  FakturyCENA22SDPH.AsCurrency  := numRound(FakturySUMA22.AsCurrency + FakturyDPH22.AsCurrency, dmdSystem.RecDesMista);
  FakturyCENA05SDPH.AsCurrency  := numRound(FakturySUMA05.AsCurrency + FakturyDPH05.AsCurrency, dmdSystem.RecDesMista);
end;

procedure TFVdmd.FVPOLUpdateSoucty(DataSet: TDataSet);
begin
  FVCalcDetailCena(FAPolozkyREFFV.AsString);
end;

procedure TFVdmd.PostFaktura(DataSet: TDataSet);
begin
  if Faktury.State in [dsEdit, dsInsert] then
    Faktury.Post;
end;

procedure TFVdmd.FakturyCENAMENAChange(Sender: TField);
begin
  if (Faktury.State in dsEditModes) then
  begin
    if FakturyCENAMENA.AsVariant = SYS_KORUNA_NAZEV then
      FakturyCENAKURS.AsCurrency := 1
    else
      FakturyCENAKURS.AsCurrency := mgGetActualKurs(FakturyCENAMENA.AsVariant);
  end;
end;

procedure TFVdmd.FakturyDATVYSTAVENIChange(Sender: TField);
var
  cFirma : TAOPFirmaClass;
  sAopKod: string;
begin
  if (Faktury.State in dsEditModes) and (FakturyDATVYSTAVENI.AsDateTime > 0) then
  begin
    sAopKod := FakturyAOPKOD.AsString;
    if sAopKod = '' then
      Exit;

    cFirma := TAOPFirmaClass.CreateCustom(sAopKod, false);
    try
      if cFirma.NaselAdresu then
        FakturyDATSPLATNOST.AsDateTime := FakturyDATVYSTAVENI.AsDateTime + cFirma.Splatnost
      else
        FakturyDATSPLATNOST.AsDateTime := FakturyDATVYSTAVENI.AsDateTime + 14;

    finally
      cFirma.Free;
    end;
  end;
end;

procedure TFVdmd.FakturyBeforeDelete(DataSet: TDataSet);
begin
  if FakturyTYP.AsInteger = 1 { Spojeni s prepravou } then
  begin
    DisplayError('Faktura je spojena s pøepravou, nelze ji odstranit');
    SysUtils.Abort;
  end;
end;

procedure TFVdmd.FakturyBeforePost(DataSet: TDataSet);
begin
  if Faktury.State = dsEdit then
  begin
    FakturyUPDID.AsString := jfaUserInfo.UserZnacka;
    if not AppCompsDM.GetKoserUcet(FakturyCENAMENA.AsString, FakturyUCETZKR.AsString) then
      DisplayError('Použili jste úèet s rozdílnou mìnou než je mìna dokladu!');

  end;

  FakturyFAKTURA.AsString := FVfrmModule.GetNewKeyIdValue(FakturyFAKTURA.AsString);

end;

procedure TFVdmd.FakturyCENAKURSChange(Sender: TField);
begin
  FakturyCENASUMAKC.AsCurrency := numRound(FakturyCELKEM.AsCurrency * FakturyCENAKURS.AsCurrency, dmdSystem.RecDesMista);
end;

procedure TFVdmd.FakturyAfterPost(DataSet: TDataSet);
begin
  // Pokud do3lo k nov0mu zaznamu, potrebujeme aktualiyovat paramater SID dle skutecnosti
  Faktury.ParamByName('SID').AsString := FakturySID.AsString;
  Faktury.Refresh;
end;

end.
