{ ***************************************************************
  *
  * Unit Name: DOCModule
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit FVfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, fMessageDlg, appunConst, rsStorage, rsPropSaver,
  uCustomModule, uCustomForms, uVarClass, frxClass,
  frxDBSet, frxExportPDF;

type
  TfvRecCena = record  // Record pro vypocteny soucet
    cZaklad00,         // polozek faktury
    cZaklad05,         //
      cZaklad22: real; //
  end;                 //

  TaswCenaRK = class
    private
      fDPHZakladni, fSumaZakladni, fDPHSnizena, fSumaSnizena, fZaokrouhleni, fSumaSuma, fSumaDPH, fCelkem: real;
    public
      constructor CreateAndRecalc(AZakladni, ASnizena, ANulova: real; AZaokroulheni: TjfsZaokrouhleni; ADanPovinnost: Tdate);
      property calcDPHZakladni: real read fDPHZakladni;
      property calcSumaZakladni: real read fSumaZakladni;
      property calcDPHSnizena: real read fDPHSnizena;
      property calcSumaSnizena: real read fSumaSnizena;
      property calcZaokrouhleni: real read fZaokrouhleni;
      property calcSumaSuma: real read fSumaSuma;
      property calcSumaDPH: real read fSumaDPH;
      property calcCelkem: real read fCelkem;
  end;

  TFVfrmModule = class(TjfsEvidenceModule)
    actModule: TActionList;
    rsPropModule: TrsPropSaver;
    actKTLTypy: TAction;
    actKTLUcty: TAction;
    actKTLUhrady: TAction;
    actKTLTexty: TAction;
    actFVBrowse: TAction;
    actlBGModule: TActionList;
    actBGBrowse: TAction;
    frrFV: TfrxReport;
    frxFVSeznam: TfrxDBDataset;
    procedure Sho(Sender: TObject);
    procedure Load(Sender: TObject);
    procedure Save(Sender: TObject);
    procedure fvKTLExecute(Sender: TObject);
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure actFVBrowseExecute(Sender: TObject);
    procedure jfsEvidenceModuleFinalModule(Sender: TObject);
    procedure frrFVGetValue(const VarName: String; var Value: Variant);
    private
      { Private declarations }
    public
      { Public declarations }
      gbusrAUCenaZasilky: boolean; // Automaticky aktualizovat cenu v zasilce
      gbFVBefore        : Integer;
      gbRychlaLikvidace  : boolean; // Pokud chceme likvidovat s aktualnim datem, nastavme na TRUE

      procedure PrintModule(ADefaultReport: boolean = false; AKeyIdValue: string = ''); override;
      function GetDefaultReport: string;
      procedure ShowBrowse(AWhere: string);
      function ShowDetail(var AFaktura: string; Mode: TFormShowMode): boolean;
      function GetNewKeyIdValue(ARada: string): string;

      { Katalogy }
      { FV Katalogy }
      procedure ShowKTLTypFaktury;
      procedure ShowKTLTypUhrady;
      procedure ShowKTLUcty;
      procedure ShowKTLTexty;
      { Pohledy }
      procedure ViewShowAOP(AZnacka: string);
      procedure ViewShowZasilka(AZasilka: string);
      { Odpojeni prepravy }
      procedure FVFreeOnZS(AFaktura: string);
      // procedure FVUpdateFakturaAndCenaKc(AFaktura: string);
  end;

var
  FVfrmModule: TFVfrmModule;

implementation

uses
  uAppUtils, appdmduSystem, FVdmdu, _frmuCustomBrowse, FVfrmuBrowse, FVfrmuEdit, AOPfrmuModule,
  FVfrmuKTLTexty, FVfrmuKTLUhrady, FVfrmuKTLTypy, FVfrauOptions,
  appfrmuGlobal, appDPHunit, FVConstDefUnit, ZSConstDefUnit, uAppControler,
  appReportModule, frxPreview, appIniOptionsUnit, appGenIdUnit,
  fUctyKtl, appReportManagerForm;

{$R *.DFM}

const
  // SClrDluh = 'ClrDluh';
  // SClrDluhText = 'ClrDluhText';
  // SClrHromadna = 'ClrHromadna';
  // SClrHromadnaText = 'ClrHromadnaText';
  // SClrVolna = 'ClrVolna';
  // SClrVolnaText = 'ClrVolnaText';
  // SClrZaplaceno = 'ClrZaplaceno';
  // SClrZaplacenoText = 'ClrZaplacenoText';
  //
  { Ini Hodnoty }
  RV_DANPOVNAKL   = 'DanPov.nakladka';
  RV_ZAOKROUHLENI = 'Zaokrouhlovani';
  RV_AUCENAZS     = 'Automaticky.update.CenaZS';
  RV_KORUNANAZEV  = 'Znacka.meny.KC';
  { TaswCenaRK }

constructor TaswCenaRK.CreateAndRecalc(AZakladni, ASnizena, ANulova: real; AZaokroulheni: TjfsZaokrouhleni; ADanPovinnost: Tdate);
var
  iDphZakladni: Integer;
  iDphSnizena : Integer;
begin
  inherited Create;

  appGetDPHSazba(ADanPovinnost, iDphZakladni, iDphSnizena);

  fDPHZakladni  := numRound(AZakladni * (0.01 * iDphZakladni), dmdSystem.recDesMista);
  fDPHSnizena   := numRound(ASnizena * (0.01 * iDphSnizena), dmdSystem.recDesMista);
  fSumaZakladni := AZakladni + fDPHZakladni;
  fSumaSnizena  := ASnizena + fDPHSnizena;
  fSumaSuma     := AZakladni + ASnizena + ANulova;
  fSumaDPH      := fDPHZakladni + fDPHSnizena;

  fCelkem := fSumaSuma + fSumaDPH;
  numZaokrouhli(fCelkem, fZaokrouhleni, AZaokroulheni);
end;

procedure TFVfrmModule.ShowBrowse(AWhere: string);
begin
  FindShowFormWhereOrder(TFVfrmBrowse, AWhere, '');
end;

function TFVfrmModule.ShowDetail(var AFaktura: string; Mode: TFormShowMode): boolean;
var
  frm: TfrmFVEdit;
begin
  frm := TfrmFVEdit.Create(nil);
  try
    if Mode = fsmInsert then
    begin
      AFaktura := GenGUIDID22;
      FVdmd.mod_OpenRecord(AFaktura);
      FVdmd.Faktury.Insert;
      FVdmd.FakturySID.AsString := AFaktura;
    end
    else
    begin
      FVdmd.mod_OpenRecord(AFaktura);
    end;

    Result   := (frm.ShowModal = mrOk);
    AFaktura := FVdmd.FakturySID.AsString;
  finally
    frm.free;
  end;
end;

function TFVfrmModule.GetDefaultReport: string;
begin
  if (DefaultReport = '') or (not FileExists(DefaultReport)) then
    DefaultReport := RMselectSestava(dmReport.GenEvidenceFolder(ModuleName), frrFV);
  Result := DefaultReport;
end;

function TFVfrmModule.GetNewKeyIdValue(ARada: string): string;
begin
  Result := ARada;
  if ExistCisRady.IndexOf(ARada) >= 0 then
    Result := dmdSystem.GetNewNum(ModuleName, ARada, true);
end;

procedure TFVfrmModule.Sho(Sender: TObject);
begin
  gbusrAUCenaZasilky  := false;
  gbRychlaLikvidace   := false;
end;

procedure TFVfrmModule.ShowKTLTypFaktury;
var
  dlg: TFVfrmKTLTypy;
begin
  dlg := TFVfrmKTLTypy.Create(Application);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

procedure TFVfrmModule.ShowKTLTypUhrady;
var
  dlg: TFVfrmKTLUhrady;
begin
  dlg := TFVfrmKTLUhrady.Create(nil);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

procedure TFVfrmModule.ShowKTLUcty;
var
  dlg: TfrmUcty;
begin
  dlg := TfrmUcty.Create(nil);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

procedure TFVfrmModule.ShowKTLTexty;
var
  dlg: TFVfrmKTLTexty;
begin
  dlg := TFVfrmKTLTexty.Create(Application);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

procedure TFVfrmModule.Load(Sender: TObject);
begin
  { DONE : Dodelat }
  gbusrAUCenaZasilky  := rsPropModule.Storage.ReadBoolean(RV_AUCENAZS, gbusrAUCenaZasilky);
  gbRychlaLikvidace   := rsPropModule.Storage.ReadBoolean('gbRychlaLikvidace', gbRychlaLikvidace);
  gbFVBefore          := rsPropModule.Storage.ReadInteger('gbFVBefore', gbFVBefore);
end;

procedure TFVfrmModule.Save(Sender: TObject);
begin
  rsPropModule.Storage.WriteBoolean(RV_AUCENAZS, gbusrAUCenaZasilky);
  rsPropModule.Storage.WriteBoolean('gbRychlaLikvidace', gbRychlaLikvidace);
  rsPropModule.Storage.WriteInteger('gbFVBefore', gbFVBefore);
end;

procedure TFVfrmModule.fvKTLExecute(Sender: TObject);
begin
  if Sender = actKTLTypy then
    ShowKTLTypFaktury
  else if Sender = actKTLUhrady then
    ShowKTLTypUhrady
  else if Sender = actKTLTexty then
    ShowKTLTexty
  else if Sender = actKTLUcty then
    ShowKTLUcty;

end;

procedure TFVfrmModule.ViewShowAOP(AZnacka: string);
begin
  with FVdmd.FVViewAOP do
  begin
    Close;
    ParamByName('AOPKOD').AsString := AZnacka;
    open;
  end

end;

procedure TFVfrmModule.ViewShowZasilka(AZasilka: string);
begin
  with FVdmd.FVViewZasilka do
  begin
    Close;
    ParamByName('REF_ZASILKA').AsString := AZasilka;
    open;
  end

end;

procedure TFVfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin
  if GetdmdSystem.gbAktivace.GetModulFakturace then
  begin
    { Inicialiyace nastaveni }
    rsPropModule.LoadValues;
    { Registrace a Nastaveni èíslené øady }
    if not dmdSystem.CheckRegisteredNumLine(ModuleName, NewNumRadaJmeno) then
      dmdSystem.RegisterNewNumLine(ModuleName, NewNumRadaJmeno, '20', 'FV', 4);
    dmdSystem.GetAviableNumLines(ModuleName, ExistCisRady);

    { Otevreni prislusnych tabulek }
    GetFVdmd.FAPolozky.active := true;
  end;

  actBGBrowse.Visible  := dmdSystem.gbAktivace.GetModulFakturace and jfaUserInfo.ShowFV;
  actFVBrowse.Visible  := actBGBrowse.Visible;
  actKTLTypy.Visible   := actBGBrowse.Visible;
  actKTLUcty.Visible   := actBGBrowse.Visible;
  actKTLUhrady.Visible := actBGBrowse.Visible;
  actKTLTexty.Visible  := actBGBrowse.Visible;

end;

procedure TFVfrmModule.actFVBrowseExecute(Sender: TObject);
begin
  ShowBrowse('');
end;

procedure TFVfrmModule.FVFreeOnZS(AFaktura: string);
begin
  dmdSystem.IBTMainTrans.AutoCommit := false;
  dmdSystem.IBTMainTrans.StartTransaction;
  try
    try
      // Uvolnime odkazy na zasilku ve fakture
      dmdSystem.spProc.SQL.Text                    :=   'UPDATE FV SET REF_ZASILKA = NULL, REFPLATCE = NULL, TYP = 0 WHERE SID = :SID';
      dmdSystem.spProc.ParamByName('SID').AsString := AFaktura;
      dmdSystem.spProc.ExecSQL;

      // Uvolnime odkazy na fakturu v platcich
      dmdSystem.spProc.SQL.Text                    := 'UPDATE ZSPLATCI SET REFFV = NULL WHERE REFFV = :SID';
      dmdSystem.spProc.ParamByName('SID').AsString := AFaktura;
      dmdSystem.spProc.ExecSQL;

      // Uvolnime odkazy na zasilku v polozkach faktury
      dmdSystem.spProc.SQL.Text                    := 'UPDATE FVPOL SET REFZASILKA = NULL WHERE REFFV = :SID';
      dmdSystem.spProc.ParamByName('SID').AsString := AFaktura;
      dmdSystem.spProc.ExecSQL;

      dmdSystem.IBTMainTrans.CommitRetaining;
    except
      dmdSystem.IBTMainTrans.RollbackRetaining;
      raise;
    end;
  finally
    dmdSystem.IBTMainTrans.AutoCommit := true;
  end;
end;

// procedure TFVfrmModule.FVUpdateFakturaAndCenaKc(AFaktura: string);
// var
// nCenaPl: Currency;
// sPlatciId: string;
//
// begin
// with FVdmd do
// begin
// if Faktury.Active = False then
// mod_OpenRecord(AFaktura)
// else
// begin
// Faktury.DisableControls;
// Faktury.Refresh;
// Faktury.EnableControls;
// end;
// nCenaPl := numround(FakturySUMAZAKLAD.Value * FakturyCENAKURS.Value, 0);
// sPlatciId := FVdmd.FakturyRefPlatce.AsString;
//
// // Zapiseme cenu do zsplatci
//
// with spproc {FVPlatceUpdate} do
// begin
// SQL.Text := FVSQL_UPDATE_PLATCE;
// //Prepare;
// ParamByName(ZSConstDefUnit.SZSP_P_CENASUMAKC).AsCurrency := nCenaPl;
// ParamByName(ZSConstDefUnit.SZSP_P_ID).AsString := sPlatciId;
// try
// ExecSQL;
// // Asi je treba aktualizovat i celkovou cenu zasilky
// except
// on e: exception do
// DisplayError(SERR_FV_UPDATEPLATCE, e.Message);
// end;
// end;
// end;
// end;

procedure TFVfrmModule.jfsEvidenceModuleFinalModule(Sender: TObject);
begin
  if dmdSystem.gbAktivace.GetModulFakturace then
  begin
    rsPropModule.SaveValues;
  end;
end;

procedure TFVfrmModule.PrintModule(ADefaultReport: boolean; AKeyIdValue: string);
begin
  FVdmd.mod_OpenRecord(AKeyIdValue);
  frrFV.Recipient.SendAdress := GetAOPmodul.GetKommEmail(FVdmd.FakturyAOPKOD.AsString);
  frrFV.Recipient.Subject    := 'Faktura: ' + FVdmd.FakturyFAKTURA.AsString;

  dmReport.frxMailExport.Subject := 'Faktura: ' + FVdmd.FakturyFAKTURA.AsString;
  dmReport.frxPDFMail.FileName   := FVdmd.FakturyFAKTURA.AsString + '.pdf';

  dmReport.frxMailExport.UseMAPI    := true;
  dmReport.frxMailExport.Address    := AOPfrmModule.GetKommEmail(FVdmd.FakturyAOPKOD.AsString);
  dmReport.frxMailExport.ShowDialog := false;

  if ADefaultReport then
  begin
    dmReport.ShowReport(GetDefaultReport, frrFV);
  end
  else
    dmReport.ShowManager(dmReport.GenEvidenceFolder(ModuleName), frrFV);
end;

procedure TFVfrmModule.frrFVGetValue(const VarName: String; var Value: Variant);
begin
  if CompareText(VarName, vnOtherRecId) = 0 then
  begin
    Value := FVdmd.FakturySID.AsString;
  end;
end;

end.
