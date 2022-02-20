unit frCustomDocsFrame;

interface

uses
  Windows, Messages, SysUtils, Classes,
  Graphics, Controls, Forms, Dialogs, ActnList, DB,
  IBODataset, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxButtons, cxMemo,   dxBar, cxNavigator, uCustomForms;

type
  TfraCustomDocs = class(TjfsCustomAttachFrame)
    actlForm: TActionList;
    actPridat: TAction;
    actZapsat: TAction;
    actOtevrit: TAction;
    OpenDialog1: TOpenDialog;
    dtsDokumenty: TIBOQuery;
    dtsDokumentyREF_OWNER: TStringField;
    dtsDokumentyDATUM: TDateField;
    dtsDokumentyINT_OBJECT_FILENAME: TStringField;
    RowsSource: TDataSource;
    RowGridPopup: TcxGridPopupMenu;
    RowsGrid: TcxGrid;
    tvDokumenty: TcxGridDBTableView;
    Lev1RG: TcxGridLevel;
    actOdebrat: TAction;
    dxmDocs: TdxBarManager;
    dxbManager1Bar: TdxBar;
    dxbOpen: TdxBarButton;
    dxbAdd: TdxBarButton;
    dxbDelete: TdxBarButton;
    dxbPost: TdxBarButton;
    dtsDokumentySID: TStringField;
    dtsDokumentyPOPIS: TStringField;
    dtsDokumentyCREAID: TStringField;
    tvDokumentySID: TcxGridDBColumn;
    tvDokumentyREF_OWNER: TcxGridDBColumn;
    tvDokumentyDATUM: TcxGridDBColumn;
    tvDokumentyINT_OBJECT_FILENAME: TcxGridDBColumn;
    tvDokumentyPOPIS: TcxGridDBColumn;
    tvDokumentyCREAID: TcxGridDBColumn;

    procedure actPridatExecute(Sender: TObject);
    procedure actOtevritExecute(Sender: TObject);
    procedure actZapsatExecute(Sender: TObject);

    procedure dtsDokumentyBeforeDelete(DataSet: TDataSet);
    procedure dtsDokumentyNewRecord(DataSet: TDataSet);

    procedure RowsSourceDataChange(Sender: TObject; Field: TField);
    procedure actOdebratExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
    destructor Destroy;override;
    procedure ConnectToEvid(AField:TField;ADataSource:TDataSource; AParent:TWinControl);

  end;

implementation

{$R *.dfm}

uses
  JclFileUtils,  JclShell, appdmduSystem, uSysDocUtils, appIniOptionsUnit,
  appGenIdUnit, uVarClass, appfrmuGlobal;

procedure TfraCustomDocs.actPridatExecute(Sender: TObject);
var
  i: integer;
  aFile, aDBFile: string;
begin

  if OpenDialog1.Execute then
    for i := 0 to OpenDialog1.Files.Count - 1 do
    begin
      dtsDokumenty.Active := True;
      dtsDokumenty.Insert;
      aDBFile := DOCGenPrilohaFileName(OpenDialog1.Files[i], aFile, date());

      // Novy system uloyeni souboru
      ForceDirectories(ExtractFilePath(aFile));

      FileCopy(OpenDialog1.Files[i], aFile, True);

      dtsDokumentyINT_OBJECT_FILENAME.AsString := aDBFile;

      // DTrINT_OBJECT.LoadFromFile(OpenDialog1.Files[i]);
      dtsDokumentyPOPIS.AsString := ExtractFileName(OpenDialog1.Files[i]);

      // DTrINT_OBJECT_TYPE.AsInteger := GetDocType(OpenDialog1.Files[i]);

      dtsDokumenty.post;

      // Pokud pridavame v Browse modu, coz u dokumentace lze, tak musime commitnot
      // transakci

    end;
end;

procedure TfraCustomDocs.actOdebratExecute(Sender: TObject);
begin
  if Application.MessageBox('Opravdu chcete odstranit vybrané záznamy?',
    'Potvrïte operaci', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDYES then
  begin
    tvDokumenty.DataController.DeleteSelection;
  end;

end;

procedure TfraCustomDocs.actOtevritExecute(Sender: TObject);
var
  aFile: string;
begin
  inherited;
  aFile := PathAddSeparator(IniOptions.SetDocFolder) + dtsDokumentyINT_OBJECT_FILENAME.AsString;
  if DocFileExist(aFile) then
    ShellExecEx(aFile)
  else
    MessageDlg('Nemohu najít soubor: ' + aFile, mtError, [mbOK], 0);

end;

procedure TfraCustomDocs.actZapsatExecute(Sender: TObject);
begin
  if dtsDokumenty.State in [dsEdit, dsInsert] then
    dtsDokumenty.post;
end;

constructor TfraCustomDocs.Create(AOwner: TComponent);
begin
  inherited;
  tvDokumenty.Styles.StyleSheet   := dmdGlobal.ModStyleSheet;
  // Automaticke ukladani nastaveni
  // appViewRestoreFromDB(tvDokumenty);
end;

destructor TfraCustomDocs.Destroy;
begin
  //AppViewStoreToDb(tvDokumenty);
  inherited;
end;

procedure TfraCustomDocs.dtsDokumentyBeforeDelete(DataSet: TDataSet);
var
  aFile: string;
begin
  aFile := PathAddSeparator(IniOptions.SetDocFolder) + dtsDokumentyINT_OBJECT_FILENAME.AsString;
  if DocFileExist(aFile) then
    FileDelete(aFile);
end;

procedure TfraCustomDocs.dtsDokumentyNewRecord(DataSet: TDataSet);
begin
  dtsDokumentySID.AsString      := GenGUIDID22;
  dtsDokumentyCREAID.AsString   := jfaUserInfo.UserZnacka;
  dtsDokumentyDATUM.AsDateTime  := Now;

  if Assigned(mxMasterField) then
    dtsDokumentyREF_OWNER.AsVariant := mxMasterField.AsVariant;

end;

procedure TfraCustomDocs.RowsSourceDataChange(Sender: TObject; Field: TField);
begin
  actOtevrit.Enabled := not dtsDokumenty.IsEmpty;
  actOdebrat.Enabled := not dtsDokumenty.IsEmpty;
end;

procedure TfraCustomDocs.ConnectToEvid(AField: TField;
  ADataSource: TDataSource; AParent: TWinControl);
begin
  Parent                        := AParent;
  Align                         := alClient;
  mxMasterField                 := AField;
  dtsDokumenty.DataSource       := ADataSource;
  dtsDokumenty.Active           := True;
end;

end.
