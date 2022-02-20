unit FPUfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rsStorage, rsPropSaver, ActnList, uCustomForms, uCustomModule, FPUfrauOptions;

type
  TFPUfrmModule = class(TjfsEvidenceModule)
    rsPropModule: TrsPropSaver;
    ActionList1: TActionList;
    actFPUBrowse: TAction;
    actlBGModule: TActionList;
    actBGBrowse: TAction;
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure actFPUBrowseExecute(Sender: TObject);
    procedure gbEvidenceModulePrintModule(Sender: TObject; const EvKeyIDValue: string);
    procedure rsPropModuleAfterLoad(Sender: TObject);
    procedure rsPropModuleAfterSave(Sender: TObject);
    procedure jfsEvidenceModuleFinalModule(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      gbAxportType       : string;
      gbABOExportPath    : string;
      gbABOFileName      : string;
      gbABODokladDoSpecif: boolean;
      gbABODoplnNulVar   : boolean;
      gbDefaultKonstatni : string;

      gbMTCExportPath: string;
      gbMTCFileName  : string;

      function GetNewKeyIdValue(ARada: string): string;
      procedure ShowBrowse(AWhere: string);
      function ShowDetail(var AID: string; Mode: TFormShowMode): boolean;
  end;

var
  FPUfrmModule: TFPUfrmModule;

implementation

uses
  uVarClass, _frmuCustomBrowse, fMessageDlg, appdmduSystem, FPUdmdu,
  FPUfrmuBrowse, FPUConstDefUnit, FPULookFakturuForm, FDConstDefunit,
  uAppControler, fPUDetail;

{$R *.DFM}

function TFPUfrmModule.GetNewKeyIdValue(ARada: string): string;
begin
  Result := ARada;
  if ExistCisRady.IndexOf(ARada) >= 0 then
    Result := dmdSystem.GetNewNum(ModuleName, ARada, true);
end;

procedure TFPUfrmModule.jfsEvidenceModuleFinalModule(Sender: TObject);
begin
   rsPropModule.SaveValues;
end;

procedure TFPUfrmModule.ShowBrowse(AWhere: string);
begin
  FindShowFormWhereOrder(TFPUfrmBrowse, AWhere, '');
end;

function TFPUfrmModule.ShowDetail(var AID: string; Mode: TFormShowMode): boolean;
var
  frm: TfrmPUDetail;
begin
  frm := TfrmPUDetail.Create(nil);
  try
    FPUdmd.mod_OpenRecord(AID);
    if Mode = fsmInsert then
    begin
      FPUdmd.FPURecord.Insert;
      AID := FPUdmd.FPURecordID.AsString;
    end;
    Result := (frm.ShowModal = mrOk);
    AID    := FPUdmd.FPURecordID.AsString;
  finally
    frm.Destroy;
  end;

end;

procedure TFPUfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin
  if GetdmdSystem.gbAktivace.GetModulFakturace then
  begin
    if not dmdSystem.CheckRegisteredNumLine(ModuleName, NewNumRadaJmeno) then
      dmdSystem.RegisterNewNumLine(ModuleName, NewNumRadaJmeno, '13', 'PU', 4);
    dmdSystem.GetAviableNumLines(ModuleName, ExistCisRady);
    { Inicialiyace nastaveni }
    rsPropModule.LoadValues;
  end;
  actFPUBrowse.Visible := dmdSystem.gbAktivace.GetModulFakturace and jfaUserInfo.ShowPU;
  actBGBrowse.Visible  := actFPUBrowse.Visible;
end;

procedure TFPUfrmModule.actFPUBrowseExecute(Sender: TObject);
begin
  ShowBrowse('');
end;

procedure TFPUfrmModule.gbEvidenceModulePrintModule(Sender: TObject; const EvKeyIDValue: string);
begin
  FPUdmd.mod_OpenRecord(EvKeyIDValue);
  //
end;

procedure TFPUfrmModule.rsPropModuleAfterLoad(Sender: TObject);
begin
  { DONE : Dodelat }
  with rsPropModule.Storage do
  begin
    gbAxportType        := ReadString('gbAxportType', 'ABO');
    gbABOExportPath     := ReadString('gbABOExportPath', 'C:\');
    gbABOFileName       := ReadString('gbABOFileName', 'prikaz.kpc');
    gbABODoplnNulVar    := ReadBoolean('gbABODoplnNulVar', false);
    gbABODokladDoSpecif := ReadBoolean('gbABODokladDoSpecif', false);
    gbDefaultKonstatni  := ReadString('gbDefaultKonstatni', '0008');
    gbMTCExportPath     := ReadString('gbMTCExportPath', 'C:\');
    gbMTCFileName       := ReadString('gbMTCFileName', 'prikaz.cdf');
  end;

end;

procedure TFPUfrmModule.rsPropModuleAfterSave(Sender: TObject);
begin
  with rsPropModule.Storage do
  begin
    WriteString('gbAxportType', gbAxportType);
    WriteString('gbABOExportPath', gbABOExportPath);
    WriteString('gbABOFileName', gbABOFileName);
    WriteString('gbDefaultKonstatni', gbDefaultKonstatni);
    WriteBoolean('gbABODoplnNulVar', gbABODoplnNulVar);
    WriteBoolean('gbABODokladDoSpecif', gbABODokladDoSpecif);
    WriteString('gbMTCExportPath', gbMTCExportPath);
    WriteString('gbMTCFileName', gbMTCFileName);
  end;

end;

end.
