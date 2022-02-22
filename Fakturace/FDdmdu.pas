unit FDdmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IB_Components, IBODataset;

type
  TFDdmd = class(TDataModule)
    dsFDSeznam: TDataSource;
    dsFakturyDO: TDataSource;
    FDSeznam: TIBOQuery;
    FDSeznamFakturaDO: TStringField;
    FDSeznamVariabilni: TStringField;
    FDSeznamZASILKA: TStringField;
    FDSeznamDATSPLATNOST: TDateTimeField;
    FDSeznamDATDANPOV: TDateTimeField;
    FDSeznamNAZEV: TStringField;
    FDSeznamICO: TStringField;
    FDSeznamCELKEM: TFloatField;
    FDSeznamCENALIKV: TFloatField;
    FDSeznamCENAMENA: TStringField;
    FDSeznamDATUHRAZENO: TDateTimeField;
    FDSeznamDOKLAD: TStringField;
    FDSeznamUCTODATUM: TDateTimeField;
    FDSeznamCREADATE: TDateTimeField;
    FDSeznamCREAID: TStringField;
    FDSeznamUPDID: TStringField;
    FDSeznamUPDDATE: TDateTimeField;
    FDSeznamSTAV: TIntegerField;
    FDSeznamSTATEUSER: TIntegerField;
    FDSeznamVYBER: TStringField;
    FDSeznamLIKVOK: TStringField;
    FakturyDO: TIBOQuery;
    FDSeznamSID: TStringField;
    FDSeznamREF_ZASILKA: TStringField;
    FakturyDOSID: TStringField;
    FakturyDOFAKTURADO: TStringField;
    FakturyDOVYBER: TStringField;
    FakturyDOVARIABILNI: TStringField;
    FakturyDOREF_ZASILKA: TStringField;
    FakturyDODATVYSTAVENI: TDateField;
    FakturyDODATSPLATNOST: TDateField;
    FakturyDODATDANPOV: TDateField;
    FakturyDOAOPKOD: TStringField;
    FakturyDONAZEV: TStringField;
    FakturyDOADRESA1: TStringField;
    FakturyDOADRESA2: TStringField;
    FakturyDOADRESA3: TStringField;
    FakturyDOPSC: TStringField;
    FakturyDOZEME: TStringField;
    FakturyDOICO: TStringField;
    FakturyDODIC: TStringField;
    FakturyDOFORMUHRADY: TStringField;
    FakturyDOSUMA00: TBCDField;
    FakturyDOSUMA05: TBCDField;
    FakturyDOSUMA22: TBCDField;
    FakturyDOSUMAZAKLAD: TBCDField;
    FakturyDODPH05: TBCDField;
    FakturyDODPH22: TBCDField;
    FakturyDOSUMADPH: TBCDField;
    FakturyDOCENAMENA: TStringField;
    FakturyDOCELKEM: TBCDField;
    FakturyDOCELKEMKC: TBCDField;
    FakturyDOCENAZALOHY: TBCDField;
    FakturyDOCENALIKV: TBCDField;
    FakturyDOCENAUHRAZENO: TBCDField;
    FakturyDODATUHRAZENO: TDateField;
    FakturyDOLIKVOK: TStringField;
    FakturyDODOKLAD: TStringField;
    FakturyDOUCTODATUM: TDateField;
    FakturyDOPOZNAMKA: TBlobField;
    FakturyDOCREADATE: TDateTimeField;
    FakturyDOCREAID: TStringField;
    FakturyDOUPDID: TStringField;
    FakturyDOUPDDATE: TDateTimeField;
    FakturyDOUCET_CISLO: TStringField;
    FakturyDOUCET_BANKA: TStringField;
    FakturyDOUCET_IBAN: TStringField;
    FakturyDOUCET_SWIFT: TStringField;
    FakturyDOUCET_SPECIF: TStringField;
    FakturyDOSTATEUSER: TSmallintField;
    FakturyDOZASILKA: TStringField;
    FDViewAOP: TIBOQuery;
    FDViewAOPSID: TStringField;
    FDViewAOPFAKTURADO: TStringField;
    FDViewAOPVARIABILNI: TStringField;
    FDViewAOPZASILKA: TStringField;
    FDViewAOPDATVYSTAVENI: TDateTimeField;
    FDViewAOPDATSPLATNOST: TDateTimeField;
    FDViewAOPDATUHRAZENO: TDateTimeField;
    FDViewAOPAOPKOD: TStringField;
    FDViewAOPNAZEV: TStringField;
    FDViewAOPFORMUHRADY: TStringField;
    FDViewAOPCELKEM: TFloatField;
    FDViewAOPCENALIKV: TFloatField;
    FDViewAOPDOKLAD: TStringField;
    FDViewAOPUCTODATUM: TDateTimeField;
    FDViewAOPLIKVOK: TStringField;
    ZSRecord: TIBOQuery;
    ZSRecordSID: TStringField;
    ZSRecordZASILKA: TStringField;
    ZSRecordVYBER: TStringField;
    ZSRecordREF_ZSPODMINKY: TIntegerField;
    ZSRecordREF_POTVRZENI: TIntegerField;
    ZSRecordINTTYPZAZNAMU: TSmallintField;
    ZSRecordTYP: TStringField;
    ZSRecordAOPKOD_OBJ: TStringField;
    ZSRecordAOPKOD_DOP: TStringField;
    ZSRecordINTOBJ: TStringField;
    ZSRecordDISPECER: TStringField;
    ZSRecordINTSTREDISKO: TStringField;
    ZSRecordDATUM: TDateField;
    ZSRecordMESIC: TStringField;
    ZSRecordSUBSTRATINFO: TStringField;
    ZSRecordSUBSTRAT: TBlobField;
    ZSRecordHMBRUTTO: TBCDField;
    ZSRecordHMTEXT: TStringField;
    ZSRecordPRIKAZ: TStringField;
    ZSRecordVOZIDLO: TStringField;
    ZSRecordAUTOSPZ: TStringField;
    ZSRecordCLO: TBlobField;
    ZSRecordNMISTO: TStringField;
    ZSRecordNPSC: TStringField;
    ZSRecordNSTAT: TStringField;
    ZSRecordVMISTO: TStringField;
    ZSRecordVPSC: TStringField;
    ZSRecordVSTAT: TStringField;
    ZSRecordVDATUM: TDateField;
    ZSRecordCENASMLUVNI: TBCDField;
    ZSRecordCENAJEDNOTKY: TBCDField;
    ZSRecordCENAJEDNOTKA: TStringField;
    ZSRecordCENASRAZKY: TBCDField;
    ZSRecordCENADPHPROC: TBCDField;
    ZSRecordCENADPH: TBCDField;
    ZSRecordCENASUMA: TBCDField;
    ZSRecordCENAMENA: TStringField;
    ZSRecordCENAKURS: TBCDField;
    ZSRecordPODMINKY: TStringField;
    ZSRecordCENADOPRAVCE: TBCDField;
    ZSRecordCENAPLATCI: TBCDField;
    ZSRecordCENAPROVIZE: TBCDField;
    ZSRecordPOZNAMKA: TBlobField;
    ZSRecordJEFAKTURA: TStringField;
    ZSRecordCREADATE: TDateTimeField;
    ZSRecordCREAID: TStringField;
    ZSRecordUPDDATE: TDateTimeField;
    ZSRecordUPDID: TStringField;
    ZSRecordSTAV: TSmallintField;
    ZSRecordINTPOZNAMKA: TBlobField;
    ZSRecordSTATEUSER: TIntegerField;
    ZSRecordD_NAZEV: TStringField;
    ZSRecordP_NAZEV: TStringField;
    ZSRecordPODMINKY_DOPRAVCE: TBlobField;
    ZSRecordD_POBOCKA: TStringField;
    ZSRecordD_ADRESA: TStringField;
    ZSRecordD_MESTO: TStringField;
    ZSRecordD_PSC: TStringField;
    ZSRecordD_KODZEME: TStringField;
    ZSRecordD_ICO: TStringField;
    ZSRecordD_DIC: TStringField;
    ZSRecordD_TELEFON: TStringField;
    ZSRecordD_FAX: TStringField;
    ZSRecordD_GSM: TStringField;
    ZSRecordD_EMAIL: TStringField;
    ZSRecordD_KODSTBS: TStringField;
    ZSRecordD_SPLATNOST: TSmallintField;
    ZSRecordP_POBOCKA: TStringField;
    ZSRecordP_ADRESA: TStringField;
    ZSRecordP_MESTO: TStringField;
    ZSRecordP_PSC: TStringField;
    ZSRecordP_KODZEME: TStringField;
    ZSRecordP_ICO: TStringField;
    ZSRecordP_DIC: TStringField;
    ZSRecordP_SPLATNOST: TSmallintField;
    ZSRecordP_TELEFON: TStringField;
    ZSRecordP_FAX: TStringField;
    ZSRecordP_GSM: TStringField;
    ZSRecordP_EMAIL: TStringField;
    ZSRecordP_KODSTBS: TStringField;
    FakturyDOSTAV: TSmallintField;
    FDSeznamDIC: TStringField;
    FDSeznamADRESA3: TStringField;
    FDSeznamZEME: TStringField;
    FDSeznamCELKEMKC: TBCDField;
    FakturyDOCENAKURZ: TBCDField;
    dtsFDPol: TIBOQuery;
    dtsFDPolID: TIntegerField;
    dtsFDPolREFFD: TStringField;
    dtsFDPolPOLTEXT: TStringField;
    dtsFDPolZALOHA: TStringField;
    dtsFDPolCENASMLUVNI: TBCDField;
    dtsFDPolCENAJEDNOTKY: TBCDField;
    dtsFDPolCENAJEDNOTKA: TStringField;
    dtsFDPolCENADPHPROC: TBCDField;
    dtsFDPolCENADPH: TBCDField;
    dtsFDPolCENASUMA: TBCDField;
    dtsFDPolCENADPHSAZBA: TSmallintField;
    dtsFDPolISDOPROVIZE: TStringField;
    FakturyDOCALCDPHZAKL: TIntegerField;
    FakturyDOCALCDPHSNIZ: TIntegerField;
    FakturyDOCENA22SDPH: TCurrencyField;
    FakturyDOCENA05SDPH: TCurrencyField;
    dtsCalcPol: TIBOQuery;
    dtsCalcPolCENASMLUVNI: TBCDField;
    dtsCalcPolCENASUMA: TBCDField;
    dtsCalcPolCENADPH: TBCDField;
    dtsCalcPolCENADPHSAZBA: TSmallintField;
    dtsCalcPolID: TIntegerField;
    dtsCalcPolZALOHA: TStringField;
    dtsFDPolREFZASILKA: TStringField;
    dtsFDPolZASILKA: TStringField;
    ZSRecordCENASAZBADPH: TSmallintField;
    FakturyDODATDORUCENI: TDateField;
    FDSeznamSTATEUSERCOLOR: TIntegerField;
    FDSeznamAOPKOD: TStringField;
    FakturyDODATDANPOVDOD: TDateField;
    dtsFDPolPOLOZKA: TSmallintField;
    procedure FDSeznamAfterPost(DataSet: TDataSet);
    procedure dtsFDPolNewRecord(DataSet: TDataSet);
    procedure FakturyDOBeforePost(DataSet: TDataSet);
    procedure FakturyDONewRecord(DataSet: TDataSet);
    procedure FakturyDOSUMA22Change(Sender: TField);
    procedure FakturyDOCalcFields(DataSet: TDataSet);
    procedure FakturyDOSUMA05Change(Sender: TField);
    procedure FakturyDOSUMA00Change(Sender: TField);
    procedure DPHChange(Sender: TField);
    procedure dtsFDPolAfterPost(DataSet: TDataSet);
    procedure ZmenaCastky(Sender: TField);
    procedure FakturyDOAfterPost(DataSet: TDataSet);
    procedure dtsFDPolBeforeInsert(DataSet: TDataSet);
    procedure dtsFDPolAfterDelete(DataSet: TDataSet);
    procedure dsFakturyDODataChange(Sender: TObject; Field: TField);
    procedure dtsFDPolBeforeDelete(DataSet: TDataSet);
    procedure dtsFDPolBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RecalcPolozky;
  public
    { Public declarations }
    procedure mod_OpenDataSets;
    function mod_OpenRecord(AKeyIDValue: string): boolean;
    function CreateNewFromZs(AIDZasilka: string): string;
  end;

var
  FDdmd: TFDdmd;

function GetFDdmd: TFDdmd; // Pomocna funkce testujici existenci modulu

implementation

uses
  appdmduSystem, FDfrmuModule, fMessageDlg, FDConstDefunit, uVarClass,
  appGenIdUnit, appDPHunit, uAppUtils, appfrmuGlobal, AOPfrmuModule, uaopfirmaclass;

{$R *.DFM}

function GetFDdmd: TFDdmd; // Pomocna funkce testujici existenci modulu
begin
  if not Assigned(FDdmd) then
    Application.CreateForm(TFDdmd, FDdmd);
  Result := FDdmd;
end;

procedure TFDdmd.mod_OpenDataSets;
begin
  if not dmdSystem.CheckRegisteredNumLine(FDfrmModule.ModuleName, FDfrmModule.NewNumRadaJmeno) then
    dmdSystem.RegisterNewNumLine(FDfrmModule.ModuleName, FDfrmModule.NewNumRadaJmeno, '13', 'FD', 4);

  dmdSystem.GetAviableNumLines(FDfrmModule.ModuleName, FDfrmModule.ExistCisRady);
end;

function TFDdmd.mod_OpenRecord(AKeyIDValue: string): boolean;
begin
  FakturyDO.close;
  FakturyDO.ParamByName(SFDKEYPARAMNAME).AsString := AKeyIDValue;
  try
    FakturyDO.Open;
    dtsFDPol.Open;
  except
  end;
  Result := not FakturyDO.IsEmpty;
end;

procedure TFDdmd.FDSeznamAfterPost(DataSet: TDataSet);
begin
  FDSeznam.RefreshRows;
end;

procedure TFDdmd.dtsFDPolNewRecord(DataSet: TDataSet);
begin
  dtsFDPolREFFD.AsString          := FakturyDOSID.AsString;
  dtsFDPolCENAJEDNOTKY.AsCurrency := 1;
  dtsFDPolCENADPHSAZBA.AsInteger  := dmdSystem.gbDPHSazba;
  dtsFDPolZALOHA.AsString         := 'F';
  dtsFDPolISDOPROVIZE.AsString    := 'T';
  dtsFDPolCENAJEDNOTKA.AsVariant  := dmdSystem.gbJednotka;

end;

procedure TFDdmd.FakturyDOBeforePost(DataSet: TDataSet);
begin
  FakturyDOFAKTURADO.AsString := FDfrmModule.GetNewKeyIdValue(FakturyDOFAKTURADO.AsString);
  FakturyDOUPDID.AsString     := jfaUserInfo.UserZnacka;
end;

procedure TFDdmd.FakturyDONewRecord(DataSet: TDataSet);
begin
  FakturyDOSID.AsString    := GenGUIDID22;
  FakturyDOCREAID.AsString := jfaUserInfo.UserZnacka;
  if FDfrmModule.NewNumRadaVybrat then
    FakturyDOFAKTURADO.AsString := dmdSystem.SelectNumLine(FDfrmModule.ModuleName)
  else
    FakturyDOFAKTURADO.AsString    := FDfrmModule.NewNumRadaJmeno;
  FakturyDODATVYSTAVENI.AsDateTime := date;
  FakturyDODATDANPOV.AsDateTime    := date;
  FakturyDODATDORUCENI.AsDateTime  := date;
  FakturyDODATSPLATNOST.AsDateTime := date + 14;
  FakturyDOFORMUHRADY.AsVariant    := dmdSystem.gbUhrada;
  FakturyDOCENAMENA.AsVariant      := dmdSystem.gbMena;

  FakturyDOSUMA00.AsCurrency       := 0;
  FakturyDOSUMA05.AsCurrency       := 0;
  FakturyDOSUMA22.AsCurrency       := 0;
  FakturyDOCENAUHRAZENO.AsCurrency := 0;
  FakturyDOCENAKURZ.AsCurrency     := 1;

end;

procedure TFDdmd.FakturyDOSUMA22Change(Sender: TField);
begin
  FakturyDODPH22.AsCurrency      := (FakturyDOSUMA22.AsCurrency / 100) * FakturyDOCALCDPHZAKL.AsCurrency;
  FakturyDOSUMAZAKLAD.AsCurrency := FakturyDOSUMA22.AsCurrency + FakturyDOSUMA05.AsCurrency + FakturyDOSUMA00.AsCurrency;
end;

procedure TFDdmd.FakturyDOCalcFields(DataSet: TDataSet);
var
  DPHZakl: integer;
  DPHSniz: integer;
begin
  appGetDPHSazba(FakturyDODATDANPOV.AsDateTime, DPHZakl, DPHSniz);
  FakturyDOCALCDPHZAKL.AsCurrency := DPHZakl;
  FakturyDOCALCDPHSNIZ.AsCurrency := DPHSniz;
  FakturyDOCENA22SDPH.AsCurrency  := numRound(FakturyDOSUMA22.AsCurrency + FakturyDODPH22.AsCurrency, 2);
  FakturyDOCENA05SDPH.AsCurrency  := numRound(FakturyDOSUMA05.AsCurrency + FakturyDODPH05.AsCurrency, 2);
end;

procedure TFDdmd.FakturyDOSUMA05Change(Sender: TField);
begin
  FakturyDODPH05.AsCurrency      := (FakturyDOSUMA05.AsCurrency / 100) * FakturyDOCALCDPHSNIZ.AsCurrency;
  FakturyDOSUMAZAKLAD.AsCurrency := FakturyDOSUMA22.AsCurrency + FakturyDOSUMA05.AsCurrency + FakturyDOSUMA00.AsCurrency;

end;

procedure TFDdmd.FakturyDOSUMA00Change(Sender: TField);
begin
  FakturyDOSUMAZAKLAD.AsCurrency := FakturyDOSUMA22.AsCurrency + FakturyDOSUMA05.AsCurrency + FakturyDOSUMA00.AsCurrency;
end;

procedure TFDdmd.DPHChange(Sender: TField);
begin
  FakturyDOSUMADPH.AsCurrency := FakturyDODPH05.AsCurrency + FakturyDODPH22.AsCurrency;

end;

procedure TFDdmd.RecalcPolozky;
var
  zakl0, zakl1, zakl2: currency;
  DPH0, DPH1, DPH2   : currency;

  ZALOHY: currency;
begin
  DPH0   := 0;
  DPH1   := 0;
  DPH2   := 0;
  zakl0  := 0;
  zakl1  := 0;
  zakl2  := 0;
  ZALOHY := 0;

  // Mame to sice i v procdure na FDB ale budeme to delat cele tadz.
  dtsCalcPol.close;
  dtsCalcPol.ParamByName('REFFD').AsString := FakturyDOSID.AsString;
  dtsCalcPol.Open;

  while not dtsCalcPol.Eof do
  begin

    // if dtsCalcPolCN_DPH_SAZBA.AsVariantis null) then CN_DPH_SAZBA = 0;
    // if (:CN_SUMA is null) then CN_SUMA = 0;
    // if (:CN_DPH is null) then CN_DPH = 0;

    if (dtsCalcPolZALOHA.AsString = 'T') then
    begin
      ZALOHY := ZALOHY + dtsCalcPolCENASUMA.AsCurrency;
    end
    else
    begin
      if (dtsCalcPolCENADPHSAZBA.AsInteger = 0) then
      begin
        zakl0 := zakl0 + dtsCalcPolCENASUMA.AsCurrency;
        DPH0  := DPH0 + dtsCalcPolCENADPH.AsCurrency;
      end
      else if (dtsCalcPolCENADPHSAZBA.AsInteger = 1) then
      begin
        zakl1 := zakl1 + dtsCalcPolCENASUMA.AsCurrency;
        DPH1  := DPH1 + dtsCalcPolCENADPH.AsCurrency;
      end
      else if (dtsCalcPolCENADPHSAZBA.AsInteger = 2) then
      begin
        zakl2 := zakl2 + dtsCalcPolCENASUMA.AsCurrency;
        DPH2  := DPH2 + dtsCalcPolCENADPH.AsCurrency;
      end
    end;
    dtsCalcPol.Next;
  end;

  if not(FakturyDO.State in [dsEdit, dsInsert]) then
    FakturyDO.Edit;

  // Modifikace
  // 2016-01-13 01:39:35
  // upraveno zaokroulování na 2 desetinná místa

  FakturyDOSUMA00.AsCurrency     := numRound(zakl0, dmdSystem.RecDesMista);
  FakturyDOSUMA05.AsCurrency     := numRound(zakl1, dmdSystem.RecDesMista);
  FakturyDOSUMA22.AsCurrency     := numRound(zakl2, dmdSystem.RecDesMista);
  FakturyDOSUMAZAKLAD.AsCurrency := zakl0 + zakl1 + zakl2;

  FakturyDODPH05.AsCurrency   := numRound(DPH1, dmdSystem.RecDesMista);
  FakturyDODPH22.AsCurrency   := numRound(DPH2, dmdSystem.RecDesMista);
  FakturyDOSUMADPH.AsCurrency := DPH1 + DPH2;

  FakturyDOCENAZALOHY.AsCurrency := ZALOHY;

  FakturyDOCELKEM.AsCurrency   := FakturyDOSUMAZAKLAD.AsCurrency + FakturyDOSUMADPH.AsCurrency;
  FakturyDOCENALIKV.AsCurrency := FakturyDOCELKEM.AsCurrency - ZALOHY - FakturyDOCENAUHRAZENO.AsCurrency;

  FakturyDO.Post;
end;

procedure TFDdmd.dtsFDPolAfterPost(DataSet: TDataSet);
begin
  RecalcPolozky;
end;

procedure TFDdmd.ZmenaCastky(Sender: TField);
var
  iSazba     : integer;
  iDphProc   : integer;
  iCalcCastka: currency;
begin
  if dtsFDPol.State in [dsEdit, dsInsert] then
  begin
    { Pouze pro typ 1,2 a 3 }

    iSazba := dtsFDPolCENADPHSAZBA.AsInteger;

    // Docasne odpojeno
    // { Naètení sazby DPH }
    // iDphProc := GetCompsKat.GetSazbaDPHDatum(lDatum, iSazba);

    if iSazba = 0 then
      iDphProc := 0
    else if iSazba = 1 then
      iDphProc := FakturyDOCALCDPHSNIZ.AsInteger
    else
      iDphProc := FakturyDOCALCDPHZAKL.AsInteger;

    { Vypocet zakladni cxastky. Jednotkova cena * pocet jednotek }
    iCalcCastka := dtsFDPolCENASMLUVNI.AsCurrency * dtsFDPolCENAJEDNOTKY.AsCurrency;

    dtsFDPolCENASUMA.AsCurrency   := numRound(iCalcCastka, 2);
    dtsFDPolCENADPHPROC.AsInteger := iDphProc;

    dtsFDPolCENADPH.AsCurrency := numRound((dtsFDPolCENASUMA.AsCurrency / 100) * iDphProc, 2);
  end;
end;

procedure TFDdmd.FakturyDOAfterPost(DataSet: TDataSet);
begin
  FakturyDO.ParamByName(SFDKEYPARAMNAME).AsString := FakturyDOSID.AsString;
  FakturyDO.Refresh;
end;

function TFDdmd.CreateNewFromZs(AIDZasilka: string): string;
var
  cFirma: TAOPFirmaClass;
  procedure NaplnFirmu;
  begin
    cFirma := TAOPFirmaClass.Create(FDdmd.ZSRecordAOPKOD_DOP.AsString, false);
    if cFirma.NaselAdresu then
    begin
      FDdmd.FakturyDOAOPKOD.AsVariant    := cFirma.AOPKod;
      FDdmd.FakturyDONAZEV.AsString      := cFirma.Nazev;
      FDdmd.FakturyDOUCET_CISLO.AsString := cFirma.Ucet_Cislo;
      FDdmd.FakturyDOUCET_BANKA.AsString := cFirma.Ucet_Banka;

      FDdmd.FakturyDOADRESA1.AsString := cFirma.Adresa1;
      FDdmd.FakturyDOADRESA2.AsString := cFirma.Adresa2;
      FDdmd.FakturyDOADRESA3.AsString := cFirma.Adresa3;
      FDdmd.FakturyDOPSC.AsString     := cFirma.Psc;
      FDdmd.FakturyDOZEME.AsString    := cFirma.Zeme;
      FDdmd.FakturyDOICO.AsString     := cFirma.ICO;
      FDdmd.FakturyDODIC.AsString     := cFirma.DIC;

      FDdmd.FakturyDODATSPLATNOST.AsDateTime := date + cFirma.Splatnost;
    end;

  end;

begin
  Result := GenGUIDID22;
  { Oprava 24.02.2006 }
  if AIDZasilka <> EmptyStr then
  begin
    FDdmd.ZSRecord.Active                              := false;
    FDdmd.ZSRecord.ParamByName('REF_ZASILKA').AsString := AIDZasilka;
    FDdmd.ZSRecord.Active                              := true;

    mod_OpenRecord(Result);

    FDdmd.FakturyDO.Insert;

    FDdmd.FakturyDOSID.AsString := Result;

    { TODO : Zkontrolavat jaky datum jde do faktury }
    if dmdSystem.gbGenFVZDP = zdpDnes then
      FDdmd.FakturyDODATDANPOV.AsDateTime := date()
    else if dmdSystem.gbGenFVZDP = zdpNakladka then
      FDdmd.FakturyDODATDANPOV.AsDateTime := FDdmd.ZSRecordDATUM.AsDateTime
    else if FDdmd.ZSRecordVDATUM.AsDateTime > 0 then
      FDdmd.FakturyDODATDANPOV.AsDateTime := FDdmd.ZSRecordVDATUM.AsDateTime
    else
      FDdmd.FakturyDODATDANPOV.AsDateTime := date();

    NaplnFirmu;
    FDdmd.FakturyDOPOZNAMKA.Text       := FDdmd.ZSRecordPODMINKY.AsString;
    FDdmd.FakturyDOCENAMENA.AsVariant  := FDdmd.ZSRecordCENAMENA.AsVariant;
    FDdmd.FakturyDOCENAKURZ.AsCurrency := FDdmd.ZSRecordCENAKURS.AsCurrency;
    FDdmd.FakturyDO.Post;

    // Polozka faktury
    FDdmd.dtsFDPol.Insert;
    FDdmd.dtsFDPolREFZASILKA.AsString     := AIDZasilka;
    FDdmd.dtsFDPolPOLTEXT.AsString        := 'Pozice: ' + FDdmd.ZSRecordZASILKA.AsString;
    FDdmd.dtsFDPolCENASMLUVNI.AsCurrency  := numRound((FDdmd.ZSRecordCENASMLUVNI.Value * FDdmd.ZSRecordCENAJEDNOTKY.Value) + FDdmd.ZSRecordCENASRAZKY.Value, 1);
    FDdmd.dtsFDPolCENAJEDNOTKY.AsCurrency := 1;
    case FDdmd.ZSRecordCENADPHPROC.AsInteger of
      0:
        FDdmd.dtsFDPolCENADPHSAZBA.AsInteger := 0;
      5, 9:
        FDdmd.dtsFDPolCENADPHSAZBA.AsInteger := 1;
    else
      FDdmd.dtsFDPolCENADPHSAZBA.AsInteger := 2;
    end;
    // Ddmd.dtsFDPolCENADPHSAZBA.AsInteger  := FDdmd.ZSRecordCENASAZBADPH.AsInteger;
    FDdmd.dtsFDPol.Post;
    FDdmd.dtsFDPol.Refresh;
    if FDdmd.ZSRecordCENASRAZKY.AsCurrency <> 0 then
      DisplayInfo('V pøíplatcích je evidovaná hodnota: ' + IntToStr(FDdmd.ZSRecordCENASRAZKY.AsInteger), 'Pravdìpodobnì bude nutno tuto èástku doúètovat.');

  end;
end;

procedure TFDdmd.dtsFDPolBeforeDelete(DataSet: TDataSet);
begin
  if dtsFDPol.State in [dsEdit, dsInsert] then
    dtsFDPol.Post;
end;

procedure TFDdmd.dtsFDPolBeforeInsert(DataSet: TDataSet);
begin
  if FakturyDO.State in [dsEdit, dsInsert] then
    FakturyDO.Post;
end;

procedure TFDdmd.dtsFDPolBeforePost(DataSet: TDataSet);
begin
  if dtsFDPol.State = dsInsert then
    dtsFDPolPOLOZKA.AsInteger       := dtsFDPol.RecordCount;
end;

procedure TFDdmd.dsFakturyDODataChange(Sender: TObject; Field: TField);
begin
  // if Field = nil then
  // begin
  // dtsFDPol.ParamByName('SID').AsString := FakturyDOSID.AsString;
  // end;
end;

procedure TFDdmd.dtsFDPolAfterDelete(DataSet: TDataSet);
begin
  RecalcPolozky;
end;

end.
