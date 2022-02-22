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
  uAOPConstDefUnit,
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
  cxDBData, IBODataset, cxImageComboBox, cxPCdxBarPopupMenu, cxPC;

type
  TfrmAOPSelectUser = class(TfrmCustomPick)
    TabControl1: TTabControl;
    rsPropSaver1: TrsPropSaver;
    dsKontakty: TDataSource;
    tvViewAOPKOD: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    tvViewKODZEME: TcxGridDBColumn;
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
    tvViewPSC: TcxGridDBColumn;
    tvViewADRESA1: TcxGridDBColumn;
    tvViewK1: TcxGridDBColumn;
    tvViewKOD_TIMO: TcxGridDBColumn;
    tvViewKOD_RAAL: TcxGridDBColumn;
    dtsAOPLook: TIBOQuery;
    dtsAOPLookPSC: TStringField;
    dtsAOPLookAOPKOD: TStringField;
    dtsAOPLookICO: TStringField;
    dtsAOPLookNAZEV: TStringField;
    dtsAOPLookADRESA1: TStringField;
    dtsAOPLookADRESA3: TStringField;
    dtsAOPLookKODZEME: TStringField;
    dtsAOPLookSKUPINA: TStringField;
    dtsAOPLookK1: TStringField;
    dtsAOPLookKOD_TIMO: TStringField;
    dtsAOPLookKOD_RAAL: TStringField;
    dtsAOPLookSTATEUSER: TIntegerField;
    dtsAOPLookDIC: TStringField;
    dtsAOPLookJSOUKONTAKTY: TStringField;
    dtsAOPLookCOLOR: TIntegerField;
    dtsAOPLookBANKAKOD: TStringField;
    dtsAOPLookSPLATNOST: TSmallintField;
    dtsAOPLookUCET: TStringField;
    dtsKontakty: TIBOQuery;
    dtsKontaktyID: TIntegerField;
    dtsKontaktyAOPKOD: TStringField;
    dtsKontaktyPrijmeni: TStringField;
    dtsKontaktyJmeno: TStringField;
    dtsKontaktyEmail: TStringField;
    dtsKontaktyFAX: TStringField;
    dtsKontaktyMOBIL: TStringField;
    dtsKontaktyTELEFON1: TStringField;
    pgcDetaily: TcxPageControl;
    tbsKontakty: TcxTabSheet;
    grdKontakty: TcxGrid;
    tv1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    tvKontaktyFUNKCE: TcxGridDBColumn;
    tvKontaktyTELEFON1: TcxGridDBColumn;
    tvKontaktyTELEFON2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    tvKontaktyCOMMTYP: TcxGridDBColumn;
    tvKontaktyISVYCHOZI: TcxGridDBColumn;
    glKontaktyLevel1: TcxGridLevel;
    dckKontakty: TdxBarDockControl;
    tbsUcty: TcxTabSheet;
    dtsAOPLookWWW: TStringField;
    dtsAOPLookADRESA2: TStringField;
    dtsAOPLookZEME_POPIS: TStringField;
    dtsKontaktyISVYCHOZI: TStringField;
    procedure TabControl1Change(Sender: TObject);
    procedure actSQLCancelExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure grdPickupDblClick(Sender: TObject);
    procedure actRecDetailExecute(Sender: TObject);
    procedure actVybratExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRestoreGridsExecute(Sender: TObject);
    procedure MasterDsDataChange(Sender: TObject; Field: TField);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    FSelectKontakt: boolean;
    FMs1          : TMemoryStream;
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property IsSelectKontakt: boolean read FSelectKontakt;
  end;


implementation

uses
  appdmduSystem,
  variants,
  AOPfrmuModule,
  fKatalogyModul,
  appfrmuGlobal,
  uSendFaxMail,
  AOPfrmuEdit,

  fGetGridStyle;

{$R *.DFM}

var
  lcAOPKod: string; // Pomocna promenna pro editaci detailu AOP


constructor TfrmAOPSelectUser.Create(AOwner: TComponent);
var
  I: integer;
const
  sTabABC = '*ABC»DœEFGHIJKLMNOPQRÿSäTçUVWXYZé1234567890';
begin
  inherited Create(AOwner);
  FSelectKontakt := false;
  FMs1           := TMemoryStream.Create;
  tvView.StoreToStream(FMs1);
  SqlControler.DataSet := dtsAOPLook;
  dsKontakty.DataSet   := dtsKontakty;
  ReStoreViewSettings(tvView);

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
  lcAOPKod := '';

  if AopGetDetail(lcAOPKod, True) then
  begin
    actRecRefresh.Execute;

    if dtsAOPLook.Locate(SAOPKEYFIELDNAME, lcAOPKod, []) = false then
    begin
      SqlControler.ShowAllRecords;
      dtsAOPLook.Locate(SAOPKEYFIELDNAME, lcAOPKod, []);
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
  lcAOPKod := dtsAOPLookAOPKOD.AsString;
  if AopGetDetail(lcAOPKod) then
  begin
    actRecRefresh.Execute;
    if lcAOPKod <> dtsAOPLookAOPKOD.AsString then
      dtsAOPLook.Locate('AOPKOD', lcAOPKod, []);
  end;
end;

procedure TfrmAOPSelectUser.actVybratExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmAOPSelectUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;

end;

destructor TfrmAOPSelectUser.Destroy;
begin
  FreeAndNil(FMs1);
  inherited;

end;

procedure TfrmAOPSelectUser.actRestoreGridsExecute(Sender: TObject);
begin
  FMs1.Position := 0;
  tvView.RestoreFromStream(FMs1);
end;

procedure TfrmAOPSelectUser.MasterDsDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then
  begin
    dtsKontakty.Close;
    dtsKontakty.ParamByName('AOPKOD').AsString := dtsAOPLookAOPKOD.AsString;
    dtsKontakty.Open;
  end;

end;

end.
