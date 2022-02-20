unit appfrauPathOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uAppControler, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, cxGroupBox, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TappfraPathOptions = class(TjfsCustomSettingFrame)
    edPracDB: TcxButtonEdit;
    edBackuFolder: TcxButtonEdit;
    edReportFolder: TcxButtonEdit;
    edDocsFolder: TcxButtonEdit;
    dxl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxl1Group1: TdxLayoutGroup;
    dxl1Item2: TdxLayoutItem;
    dxl1Item3: TdxLayoutItem;
    dxl1Item4: TdxLayoutItem;
    dxl1Item5: TdxLayoutItem;
    dxl1Group2: TdxLayoutGroup;
    edFirebirdDateFormat: TcxTextEdit;
    dxl1Item1: TdxLayoutItem;
    procedure GetPathDialog(Sender: TObject; AbsoluteIndex: Integer);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
  end;

var
  appfraPathOptions: TappfraPathOptions;

implementation

uses appdmduSystem, fMessageDlg, appIniOptionsUnit, uFileUtils, appfrmuGlobal;

{$R *.DFM}

procedure TappfraPathOptions.GetPathDialog(Sender: TObject; AbsoluteIndex: Integer);
var
  tmpFolder: string;
begin
  if Sender = edBackuFolder then
  begin
    tmpFolder := edBackuFolder.Text;
    if BrowseDirectory(tmpFolder, 'Složka pro zálohy') then
      edBackuFolder.Text := tmpFolder;
  end
  else if Sender = edReportFolder then
  begin
    tmpFolder := edReportFolder.Text;
    if BrowseDirectory(tmpFolder, 'Složka se sestavami') then
      edReportFolder.Text := tmpFolder;
  end
  else if Sender = edDocsFolder then
  begin
    tmpFolder := edDocsFolder.Text;
    if BrowseDirectory(tmpFolder, 'Složka s dokumenty') then
      edDocsFolder.Text := tmpFolder;
  end
end;

constructor TappfraPathOptions.Create(AOwner: TComponent);
begin
  inherited;
  dxl1.LayoutLookAndFeel := getdmdGlobal.GetCurrLayoutStyle;

end;

procedure TappfraPathOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin
  IniOptions.SetWorkData             := edPracDB.Text;
  dmdSystem.BckBackupFolder          := edBackuFolder.Text;
  IniOptions.SetReportFolder         := edReportFolder.Text;
  IniOptions.SetDocFolder            := edDocsFolder.Text;
  dmdSystem.gbFirebirdDateTimeFormat := edFirebirdDateFormat.Text;
  IniOptions.SaveValues;
end;

procedure TappfraPathOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  edPracDB.Text             := IniOptions.SetWorkData;
  edBackuFolder.Text        := GetdmdSystem.BckBackupFolder;
  edReportFolder.Text       := IniOptions.SetReportFolder;
  edDocsFolder.Text         := IniOptions.SetDocFolder;
  edFirebirdDateFormat.Text := dmdSystem.gbFirebirdDateTimeFormat;
end;

end.
