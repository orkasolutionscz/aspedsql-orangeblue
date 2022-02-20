unit FDfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rsStorage, rsPropSaver, ActnList, uCustomModule, uCustomForms, FDfrauOptions,
  frxClass, frxDBSet;

type
  TFDfrmModule = class(TjfsEvidenceModule)
    rsPropModule: TrsPropSaver;
    ActionList1: TActionList;
    actFDBrowse: TAction;
    actlBGModule: TActionList;
    actBGBrowse: TAction;
    frrFD: TfrxReport;
    frxFDSeznam: TfrxDBDataset;
    frxFD: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure actFDBrowseExecute(Sender: TObject);
    procedure rsPropModuleAfterLoad(Sender: TObject);
    procedure rsPropModuleAfterSave(Sender: TObject);
    procedure jfsEvidenceModuleFinalModule(Sender: TObject);
    procedure frrFDGetValue(const VarName: String; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    gbEnableRucniLikvidace: boolean;
    gbRychlaLikvidace     : boolean; // Pokud chceme likvidovat s aktualnim datem, nastavme na TRUE
    function GetNewKeyIdValue(ARada: string): string;
    procedure PrintModule(ADefaultReport: boolean = false; AKeyIdValue: string = ''); override;
    function GetDefaultReport:string;
    procedure ShowBrowse(AWhere: string);
    { Pohledy }
    procedure ViewShowAOP(AZnacka: string);
    function FDLikvidace(ALikvidace: boolean; AFDosla: string; ADatum: TDate): boolean;
  end;

var
  FDfrmModule: TFDfrmModule;

implementation

uses
  uVarClass, _frmuCustomBrowse, fMessageDlg, appdmduSystem, FDdmdu, FVdmdu,
  FDfrmuBrowse, FDfrmuEdit, FDConstDefunit, uAppControler, appReportModule,
  appIniOptionsUnit, appReportManagerForm;

{$R *.DFM}

const
  SClrDluh          = 'ClrDluh';
  SClrDluhText      = 'ClrDluhText';
  SClrZaplaceno     = 'ClrZaplaceno';
  SClrZaplacenoText = 'ClrZaplacenoText';

function TFDfrmModule.GetDefaultReport: string;
begin
  if (DefaultReport = '') or (not FileExists(DefaultReport)) then
    DefaultReport := RMselectSestava(dmReport.GenEvidenceFolder(ModuleName), frrFD);
  Result := DefaultReport;
end;

function TFDfrmModule.GetNewKeyIdValue(ARada: string): string;
begin
  Result := ARada;
  if ExistCisRady.IndexOf(ARada) >= 0 then
    Result := dmdSystem.GetNewNum(ModuleName, ARada, true);
end;

procedure TFDfrmModule.ShowBrowse(AWhere: string);
begin
  FindShowFormWhereOrder(TFDfrmBrowse, AWhere, '');
end;

procedure TFDfrmModule.DataModuleCreate(Sender: TObject);
begin
  gbRychlaLikvidace   := false;
end;

procedure TFDfrmModule.ViewShowAOP(AZnacka: string);
begin
  FDdmd.FDViewAOP.Close;
  FDdmd.FDViewAOP.ParamByName('AOPKOD').AsString := AZnacka;
  FDdmd.FDViewAOP.open;
end;

procedure TFDfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin
  if GetdmdSystem.gbAktivace.GetModulFakturace then
  begin
    { Inicialiyace nastaveni }
    rsPropModule.LoadValues;
    { Otevreni prislusnych tabulek }
    FDdmd.mod_OpenDataSets;
  end;
  actFDBrowse.Visible := dmdSystem.gbAktivace.GetModulFakturace and jfaUserInfo.ShowFD;;
  actBGBrowse.Visible := actFDBrowse.Visible;
end;

procedure TFDfrmModule.actFDBrowseExecute(Sender: TObject);
begin
  ShowBrowse('');
end;

procedure TFDfrmModule.rsPropModuleAfterLoad(Sender: TObject);
begin
  { DONE : Dodelat }
  gbEnableRucniLikvidace := rsPropModule.Storage.ReadBoolean('gbEnableRucniLikvidace', true);
  gbRychlaLikvidace      := rsPropModule.Storage.ReadBoolean('gbRychlaLikvidace', gbRychlaLikvidace);

end;

procedure TFDfrmModule.rsPropModuleAfterSave(Sender: TObject);
begin
  rsPropModule.Storage.WriteBoolean('gbEnableRucniLikvidace', gbEnableRucniLikvidace);
  rsPropModule.Storage.WriteBoolean('gbRychlaLikvidace', gbRychlaLikvidace);
end;

function TFDfrmModule.FDLikvidace(ALikvidace: boolean; AFDosla: string; ADatum: TDate): boolean;
const
  FD_SQL_LIKVIDACE   = 'UPDATE FADOSLE  SET LIKVOK = :LIKVOK, CENAUHRAZENO =CELKEM, CENALIKV = 0, DATUHRAZENO = :DATUHRAZENO WHERE SID = :SID';
  FD_SQL_RELIKVIDACE = 'UPDATE FADOSLE  SET LIKVOK = :LIKVOK, CENALIKV = CELKEM, CENAUHRAZENO = 0, DATUHRAZENO = NULL WHERE SID = :SID';
begin
  dmdSystem.spProc.SQL.Clear;
  if ALikvidace then
  begin
    dmdSystem.spProc.SQL.Add(FD_SQL_LIKVIDACE);
    dmdSystem.spProc.ParamByName('DATUHRAZENO').AsDate := ADatum;
  end
  else
    dmdSystem.spProc.SQL.Add(FD_SQL_RELIKVIDACE);

  dmdSystem.spProc.ParamByName('LIKVOK').AsBoolean := ALikvidace;
  dmdSystem.spProc.ParamByName('SID').AsString     := AFDosla;
  try
    dmdSystem.spProc.ExecSQL;
    Result := true;
  except
    on e: exception do
    begin
      DisplayError(SERR_FD_LIKVIDACE, e.Message);
      Result := false;
    end;
  end;

end;

procedure TFDfrmModule.jfsEvidenceModuleFinalModule(Sender: TObject);
begin
  rsPropModule.SaveValues;
end;

procedure TFDfrmModule.PrintModule(ADefaultReport: boolean; AKeyIdValue: string);
begin
  FDdmd.mod_OpenRecord(AKeyIdValue);
  if ADefaultReport then
    dmReport.ShowReport(GetDefaultReport, frrFD)
  else
    dmReport.ShowManager(dmReport.GenEvidenceFolder('FDošlé'), frrFD);
end;

procedure TFDfrmModule.frrFDGetValue(const VarName: String; var Value: Variant);
begin
  if CompareText(VarName, vnOtherRecId) = 0 then
  begin
    Value := FDdmd.FDSeznamSID.AsString;
  end;

end;

end.
