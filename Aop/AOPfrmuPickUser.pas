unit AOPfrmuPickUser;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ComCtrls,
  Menus,
  DBActns,
  ActnList,
  Db,
  StdCtrls,
  Buttons,
  ExtCtrls,
  Grids,
  _frmuCustomPick,
  rsStorage,
  rsPropSaver,
  uCustomForms,
  dxBar,
  cxClasses,
  cxButtons,
  cxGridLevel,
  cxControls,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  uSqlParser,
  cxStyles,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  AOPConstDefUnit,
  frxClass,
  dxBarExtItems,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDBData;

type
  TfrmAOPSelectUser = class(TfrmCustomPick)
    TabControl1: TTabControl;
    rsPropSaver1: TrsPropSaver;
    dsKontakty: TDataSource;
    tvViewAOPKOD: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    glvKontakty: TcxGridLevel;
    tvKontakty: TcxGridDBTableView;
    tvKontaktyID: TcxGridDBColumn;
    tvKontaktyAOPKOD: TcxGridDBColumn;
    tvKontaktyPRIJMENI: TcxGridDBColumn;
    tvKontaktyJMENO: TcxGridDBColumn;
    tvKontaktyEMAIL: TcxGridDBColumn;
    tvKontaktyFAX: TcxGridDBColumn;
    tvKontaktyMOBIL: TcxGridDBColumn;
    tvViewKODZEME: TcxGridDBColumn;
    tvViewEMAIL: TcxGridDBColumn;
    tvViewSKUPINA: TcxGridDBColumn;
    tvViewJSOUKONTAKTY: TcxGridDBColumn;
    tvViewSTATEUSER: TcxGridDBColumn;
    actRestoreGrids: TAction;
    dxBarButton9: TdxBarButton;
    tvViewICO: TcxGridDBColumn;
    tvViewDIC: TcxGridDBColumn;
    btnNew: TcxButton;
    btnEdit: TcxButton;
    dxbrManager1Bar: TdxBar;
    dxb1: TdxBarButton;
    tvViewCOLOR: TcxGridDBColumn;
    tvViewFAX: TcxGridDBColumn;
    tvViewGSM: TcxGridDBColumn;
    tvViewPSC: TcxGridDBColumn;
    tvViewADRESA1: TcxGridDBColumn;
    tvViewK1: TcxGridDBColumn;
    tvViewKOD_TIMO: TcxGridDBColumn;
    tvViewKOD_RAAL: TcxGridDBColumn;
    procedure TabControl1Change(Sender: TObject);
    procedure actSQLCancelExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure grdPickupDblClick(Sender: TObject);
    procedure actRecDetailExecute(Sender: TObject);
    procedure actVybratExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRestoreGridsExecute(Sender: TObject);
    procedure jfsCustomMDIShow(Sender: TObject);
    procedure dxb1Click(Sender: TObject);
    procedure actGridStyleExecute(Sender: TObject);
    procedure MasterDsDataChange(Sender: TObject; Field: TField);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    FSelectKontakt: boolean;
    FGetAdresa    : string;
    FMs1, FMs2    : TMemoryStream;

    function IsSelectedKontakty: boolean;
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property IsSelectKontakt: boolean read FSelectKontakt;
  end;

function mgGetAop: TfrxCustomSendingAddress;

function AopGetKontakt(var aFirma: TFirmaObject): boolean;

implementation

uses
  appdmduSystem,
  variants,
  AOPdmdu,
  AOPfrmuModule,
  fKatalogyModul,
  appfrmuGlobal,
  uSendFaxMail,
  AOPfrmuEdit,
  fGetGridStyle;

{$R *.DFM}

var
  lcAOPKod: string; // Pomocna promenna pro editaci detailu AOP

function mgGetAop: TfrxCustomSendingAddress;
var
  aFirmaInfo: TFirmaObject;
begin
  Result     := nil;
  aFirmaInfo := TFirmaObject.Create;

  try
    if AopGetKontakt(aFirmaInfo) then
    begin
      Result            := TfrxCustomSendingAddress.Create;
      Result.SendAdress := aFirmaInfo.SendingAdress;
      // Result.SendType           := dlg.GetTyp;
    end;
  finally
    aFirmaInfo.Free;
  end;
end;

function AopGetKontakt(var aFirma: TFirmaObject): boolean;
var
  dlg: TfrmAOPSelectUser;
begin
  dlg := TfrmAOPSelectUser.Create(nil);
  try
    dlg.glvKontakty.visible := true;
    dlg.MasterDs.DataSet.Locate('AOPKOD', aFirma.AopKod, []);

    Result := (dlg.ShowModal = mrOk);

    if Result then
    begin
      aFirma := AOPdmd.GetAopInfo(AOPdmd.dtsAOPLookAOPKOD.AsString);

      if dlg.IsSelectedKontakty then
        aFirma.SendingAdress := AOPdmd.dtsKontaktyEmail.AsString
      else
        aFirma.SendingAdress := AOPdmd.dtsAOPLookEMAIL.AsString;
    end;
  finally
    dlg.Free;
  end;
end;

constructor TfrmAOPSelectUser.Create(AOwner: TComponent);
var
  I: integer;
const
  sTabABC = '*ABC»DœEFGHIJKLMNOPQRÿSäTçUVWXYZé1234567890';
begin
  inherited Create(AOwner);
  FSelectKontakt               := false;
  FMs1                         := TMemoryStream.Create;
  FMs2                         := TMemoryStream.Create;
  tvKontakty.Styles.StyleSheet := dmdGlobal.ModStyleSheet;
  tvView.StoreToStream(FMs1);
  tvKontakty.StoreToStream(FMs2);
  SqlControler.DataSet := AOPdmd.dtsAOPLook;
  glvKontakty.visible  := true;
  MasterDs.DataSet     := SqlControler.DataSet;
  dsKontakty.DataSet   := AOPdmd.dtsKontakty;
  ReStoreViewSettings(tvView);
  ReStoreViewSettings(tvKontakty);

  // NativeIncSearch               := True;

  with TabControl1 do
  begin
    Tabs.Clear;
    for I := 1 to Length(sTabABC) do
      Tabs.Add(sTabABC[I])
  end;

  MasterDs.DataSet.Open;
  dsKontakty.DataSet.Open;

end;

procedure TfrmAOPSelectUser.TabControl1Change(Sender: TObject);
var
  znak: string;
const
  AllZnak = '%';
begin
  if TabControl1.TabIndex <> -1 then
    znak := TabControl1.Tabs[TabControl1.TabIndex];

  if znak <> '*' then
  begin
    znak := znak + AllZnak;
    SqlControler.SetWhere('UPPER(NAZEV) LIKE ' + '''' + znak + '''');
  end
  else
    SqlControler.SetWhere('0=0');

end;

procedure TfrmAOPSelectUser.tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord is TcxGridDataRow then
  begin
    if VarToStr(ARecord.Values[tvViewCOLOR.Index]) <> '' then
    begin
      RowStyle.Color := ARecord.Values[tvViewCOLOR.Index];
      AStyle         := RowStyle;
    end;
  end;

end;

procedure TfrmAOPSelectUser.actSQLCancelExecute(Sender: TObject);
begin
  inherited;
  TabControl1.TabIndex := 0;
end;

procedure TfrmAOPSelectUser.actRecNewExecute(Sender: TObject);
begin
  if IsSelectedKontakty then
    AOPdmd.dtsKontakty.Insert
  else
  begin
    lcAOPKod := '';

    if AopGetDetail(lcAOPKod, true) then
    begin
      actRecRefresh.Execute;

      if MasterDs.DataSet.Locate(SAOPKEYFIELDNAME, lcAOPKod, []) = false then
      begin
        SqlControler.ShowAllRecords;
        SqlControler.DataSet.Locate(SAOPKEYFIELDNAME, lcAOPKod, []);
      end;
    end;
  end;
end;

procedure TfrmAOPSelectUser.grdPickupDblClick(Sender: TObject);
begin
  inherited;
  actVybrat.Execute;
end;

procedure TfrmAOPSelectUser.actRecDetailExecute(Sender: TObject);
begin
  lcAOPKod := AOPdmd.dtsAOPLookAOPKOD.AsString;
  if AopGetDetail(lcAOPKod) then
  begin
    actRecRefresh.Execute;
    if lcAOPKod <> AOPdmd.dtsAOPLookAOPKOD.AsString then
      AOPdmd.dtsAOPLook.Locate('AOPKOD', lcAOPKod, []);
  end;
end;

procedure TfrmAOPSelectUser.actVybratExecute(Sender: TObject);
begin
  FSelectKontakt := IsSelectedKontakty;
  // NeedPost;
  if TcxCustomGridView(cxGrid1.FocusedView) = tvView then
  begin
    FGetAdresa := AOPdmd.dtsAOPLookEMAIL.AsString;
  end
  else
  begin
    FGetAdresa := AOPdmd.dtsKontaktyEmail.AsString;
  end;

  ModalResult := mrOk;

end;

function TfrmAOPSelectUser.IsSelectedKontakty: boolean;
begin
  Result := (cxGrid1.FocusedView = tvKontakty);
end;

procedure TfrmAOPSelectUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvKontakty);
  StoreViewSettings(tvView);
  inherited;

end;

destructor TfrmAOPSelectUser.Destroy;
begin
  FreeAndNil(FMs1);
  FreeAndNil(FMs2);
  inherited;

end;

procedure TfrmAOPSelectUser.actRestoreGridsExecute(Sender: TObject);
begin
  FMs1.Position := 0;
  tvView.RestoreFromStream(FMs1);

  FMs2.Position := 0;
  tvKontakty.RestoreFromStream(FMs2);

end;

procedure TfrmAOPSelectUser.jfsCustomMDIShow(Sender: TObject);
begin
  inherited;
  dsKontakty.DataSet.active := glvKontakty.visible;

end;

procedure TfrmAOPSelectUser.dxb1Click(Sender: TObject);
begin
  tvKontakty.Styles.StyleSheet := GetUsersStyleSheet(tvKontakty.Styles.StyleSheet);

end;

procedure TfrmAOPSelectUser.actGridStyleExecute(Sender: TObject);
begin
  inherited;
  tvKontakty.Styles.StyleSheet := tvView.Styles.StyleSheet;

end;

procedure TfrmAOPSelectUser.MasterDsDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then
  begin
    AOPdmd.dtsKontakty.Close;
    AOPdmd.dtsKontakty.ParamByName('AOPKOD').AsString := MasterDs.DataSet.FieldByName('AOPKOD').AsString;
    AOPdmd.dtsKontakty.Open;
  end;

end;

end.
