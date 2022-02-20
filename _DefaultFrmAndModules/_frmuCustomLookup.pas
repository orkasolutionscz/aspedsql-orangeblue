unit _frmuCustomLookup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxEdit, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxButtons, uCustomForms, ActnList,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData;

type
  TfrmCustomLookup = class(TjfsCustomEvidForm)
    Panel1: TPanel;
    dsLook: TDataSource;
    Panel2: TPanel;
    tvLook: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lbCaption: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    btnCancel: TcxButton;
    btnOk: TcxButton;
    aclLook: TActionList;
    actOk: TAction;
    actStorno: TAction;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actStornoExecute(Sender: TObject);
  private
    FKeyValue: variant;
    { Private declarations }
  protected
    procedure StoreViewSettings(AView: TcxCustomGridView);
    procedure ReStoreViewSettings(AView: TcxCustomGridView);
    property InputKeyValue: variant read FKeyValue write FKeyValue;
    procedure InitLook; virtual;
  public
    function intLookupFnc(ASender: TObject): Boolean;
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetResultKeyValue: variant; virtual;
    function Look(var AKeyValue: variant): Boolean; override;
    function LookFld(const AField: TField): Boolean; virtual;
  end;

implementation

{$R *.DFM}

uses
  variants, fMessageDlg, appfrmuGlobal, cxDBLookupComboBox, cxDBLookupEdit,
  appdmduSystem;

constructor TfrmCustomLookup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  tvLook.DataController.DataSource := dsLook;
  btnOk.Caption                    := 'Vybrat';
  tvLook.Styles.StyleSheet         := dmdGlobal.ModStyleSheet;
  aclLook.Images                   := dmdGlobal.imglDefault;
end;

destructor TfrmCustomLookup.Destroy;
begin
  StoreViewSettings(tvLook);
  inherited Destroy;
end;

procedure TfrmCustomLookup.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Assigned(dsLook.DataSet) and (dsLook.DataSet.State in [dsEdit, dsInsert]) then
    dsLook.DataSet.post;
end;

procedure TfrmCustomLookup.FormShow(Sender: TObject);
var
  LookRes: Boolean;
begin

  if dsLook.DataSet <> nil then
  begin
    dsLook.DataSet.Active := True;
    // dbNavigator.Visible := dsLook.DataSet.CanModify;

    // Pokusime se dohleda ID ktere je (mozna) ulozeno v InputKeyValue
    if VarToStr(InputKeyValue) <> EmptyStr then
    begin
      LookRes := tvLook.DataController.LocateByKey(InputKeyValue);

      if not LookRes and (tvLook.DataController.Filter.IsFiltering) then
      begin
        tvLook.DataController.Filter.Clear;
        tvLook.DataController.LocateByKey(InputKeyValue);
      end;
    end;
  end;
end;

function TfrmCustomLookup.GetResultKeyValue: variant;
var
  sKeyFiledName: string;
begin
  sKeyFiledName := tvLook.DataController.KeyFieldNames;
  if sKeyFiledName = EmptyStr then
    DisplayError('Není definován primární klíè!')
  else
    result := tvLook.DataController.GetKeyFieldsValues;
end;

procedure TfrmCustomLookup.InitLook;
begin
  if not Assigned(dsLook.DataSet) then
  begin
    DisplayError('Není nadefinován dataset ve formuláøi: ' + Self.name + ' /' + Self.Caption);
    Exit;
  end
  else
    dsLook.DataSet.Active := True;
end;

function TfrmCustomLookup.Look(var AKeyValue: variant): Boolean;
begin
  InitLook;
  result := ShowModal = mrOk;
  if result then
    AKeyValue := GetResultKeyValue;
end;

function TfrmCustomLookup.LookFld(const AField: TField): Boolean;
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

function TfrmCustomLookup.intLookupFnc(ASender: TObject): Boolean;
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

procedure TfrmCustomLookup.ReStoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewStoreToDb(AView);
end;

procedure TfrmCustomLookup.StoreViewSettings(AView: TcxCustomGridView);
begin
  GetdmdSystem.AppViewRestoreFromDB(AView);
end;

procedure TfrmCustomLookup.actOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCustomLookup.actStornoExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
