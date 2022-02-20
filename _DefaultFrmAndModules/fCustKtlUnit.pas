unit fCustKtlUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Db, uCustomForms, ExtCtrls, DBActns, cxButtons,
  dxBar, cxClasses, cxGridLevel, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxBarExtItems, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  dxBarDBNav, dxLayoutContainer, dxLayoutControl, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCusKtl = class(TjfsCustomEvidForm)
    ActionList1: TActionList;
    actRecCancel: TDataSetCancel;
    actRecEdit: TDataSetEdit;
    actRecPost: TDataSetPost;
    actRecCopy: TAction;
    actOk: TAction;
    actRecDelete: TDataSetDelete;
    actRecNew: TDataSetInsert;
    actCancel: TAction;
    dsZaznam: TDataSource;
    pnlGlobalData: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxbcTop: TdxBarDockControl;
    dxbOk: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    pnlSeznam: TPanel;
    cxGridKtl1: TcxGrid;
    tvKatalog: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxlHlavni: TdxLayoutControl;
    dxlgLayoutControl1Group_Root: TdxLayoutGroup;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxb3: TdxBarLargeButton;
    pnlTlacitka: TPanel;
    actSelect: TAction;
    pnlButtons: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure actOkExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCancelExecute(Sender: TObject);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure dsZaznamStateChange(Sender: TObject);
    private
      FCopyFieldList: string;
      //FKeyField     : string;
      FLookupMode   : Boolean;
      { Private declarations }
    protected
      // Pokud neni dataset ve stavuEDIT nebo INSERT nastavi jej na EDIT
      procedure StoreViewSettings(AView: TcxCustomGridView);
      procedure ReStoreViewSettings(AView: TcxCustomGridView);
      property IsLookupMode: Boolean read FLookupMode;
      procedure InitLook; virtual;
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
      procedure SetLookupMode(aMode: Boolean = True);
      // Vlastnosti pro potomkz
      property CopyFieldList: string read FCopyFieldList write FCopyFieldList;
      // property KeyField: string read FKeyField write FKeyField;
      function intLookupFnc(ASender: TObject): Boolean;
      function Look(var AKeyValue: variant): Boolean; override;
      function LookFld(const AField: TField): Boolean; virtual;
      function GetResultKeyValue: variant; virtual;
  end;

implementation

uses fMessageDlg, uVarClass, appdmduSystem, appfrmuGlobal, fKatalogyModul;

{$R *.DFM}

constructor TfrmCusKtl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  dxBarManager1.Style               := GetdmdGlobal.GetCurrBarStyle;
  dxBarManager1.ImageOptions.Images := GetdmdGlobal.imglDefault;
  ActionList1.Images                := dmdGlobal.imglDefault;
  dxlHlavni.Align                   := alClient;
  pnlSeznam.Align                   := alClient;
  pnlGlobalData.Align               := alClient;
  cxGridKtl1.Left                   := 16;
  cxGridKtl1.top                    := 16;
  cxGridKtl1.Height                 := pnlSeznam.Height - 32;
  cxGridKtl1.Width                  := pnlSeznam.Width - 32;
  tvKatalog.Styles.StyleSheet       := dmdGlobal.ModStyleSheet;
  dxlHlavni.LayoutLookAndFeel       := dmdGlobal.GetCurrLayoutStyle;
  FCopyFieldList := '';
  // FKeyField      := '';
  FLookupMode    := False;
end;

procedure TfrmCusKtl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

{ ********************************************************* }
{ Actions }
{ ********************************************************* }

{ Actions: Formular }

procedure TfrmCusKtl.actOkExecute(Sender: TObject);
begin
  // Automaticky zapisujeme pokud jsme v editu
  if dsZaznam.DataSet.State in [dsEdit, dsInsert] then
    dsZaznam.DataSet.Post;
  ModalResult := mrOk;
end;

procedure TfrmCusKtl.actRecDeleteExecute(Sender: TObject);
begin
  IsDataChanged := True;
  Close;
end;

procedure TfrmCusKtl.actRecCopyExecute(Sender: TObject);
begin
  { Kopie aktualniho zaznamu }
end;

procedure TfrmCusKtl.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Assigned(dsZaznam.DataSet) then
  begin
    if (dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
    begin
      dsZaznam.DataSet.Post;
    end;
  end;
end;

function TfrmCusKtl.GetResultKeyValue: variant;
var
  sKeyFiledName: string;
begin
  sKeyFiledName := tvKatalog.DataController.KeyFieldNames;
  if sKeyFiledName = EmptyStr then
    DisplayError('Není definován primární klíè!')
  else
    result := tvKatalog.DataController.GetKeyFieldsValues;
end;

procedure TfrmCusKtl.InitLook;
begin
  if not Assigned(dsZaznam.DataSet) then
  begin
    DisplayError('Není nadefinován dataset ve formuláøi: ' + Self.name + ' /' + Self.Caption);
    Exit;
  end
  else
    dsZaznam.DataSet.Active := True;

  SetLookupMode(true);
end;

function TfrmCusKtl.intLookupFnc(ASender: TObject): Boolean;
var
  AKeyValue: variant;
begin
  result := False;
  try
    { Pro komponentu DBLookup }
    if ASender is TcxDBLookupComboBox then
    begin
      // if TcxDBLookupComboBox(ASender).DataBinding.DataSource.state
      // in [dsEdit, dsInsert] then
      // Result := LookFld(TcxDBLookupComboBox(ASender).DataBinding.Field);
      if TcxDBLookupComboBox(ASender).DataBinding.DataSource.AutoEdit then
        result := LookFld(TcxDBLookupComboBox(ASender).DataBinding.Field);
    end
    { Pro komponentu DBLookup v gridu }
    else if ASender is TcxCustomDBLookupEdit then
    begin
      AKeyValue := TcxCustomDBLookupEdit(ASender).EditValue;
      if Look(AKeyValue) then
      begin
        TcxCustomDBLookupEdit(ASender).EditValue := AKeyValue;
        TcxCustomDBLookupEdit(ASender).PostEditValue;
        result := True;
      end;
    end
    else
      result := Look(AKeyValue);
  except
    result := False;
  end;
end;

function TfrmCusKtl.Look(var AKeyValue: variant): Boolean;
begin
  InitLook;
  result := ShowModal = mrOk;
  if result then
    AKeyValue := GetResultKeyValue;
end;

function TfrmCusKtl.LookFld(const AField: TField): Boolean;
var
  AKeyValue: variant;
begin
  AKeyValue := AField.Value;
  result    := Look(AKeyValue);
  if result then
  begin
    AField.DataSet.Edit;
    AField.Value := AKeyValue;
  end;
end;

procedure TfrmCusKtl.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCusKtl.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  actRecCopy.Enabled := not(dsZaznam.DataSet.State in [dsEdit, dsInsert]);
end;

procedure TfrmCusKtl.dsZaznamStateChange(Sender: TObject);
begin
  if dsZaznam.DataSet <> nil then
    if dsZaznam.DataSet.State in [dsEdit, dsInsert] then
    begin
      pnlSeznam.Visible     := False;
      pnlGlobalData.Visible := True;
      // pnlGlobalData.SetFocus;
    end
    else
    begin
      pnlSeznam.Visible     := True;
      pnlGlobalData.Visible := False;
    end

end;

procedure TfrmCusKtl.ReStoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewRestoreFromDB(AView);
end;

procedure TfrmCusKtl.SetLookupMode(aMode: Boolean);
begin
  FLookupMode         := aMode;
  pnlTlacitka.Visible := aMode;
  actOk.Visible       := not aMode;
end;

procedure TfrmCusKtl.StoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewStoreToDb(AView);
end;

end.
