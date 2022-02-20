unit fCustEditLay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Db, uCustomForms, ExtCtrls, DBActns, cxButtons,
  dxBar, cxClasses, cxGridLevel, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxBarExtItems,
  dxLayoutContainer, dxLayoutControl;

type
  TfrmCustEditLay = class(TjfsCustomEvidForm)
    ActionList1: TActionList;
    actRecCancel: TDataSetCancel;
    actRecEdit: TDataSetEdit;
    actRecPost: TDataSetPost;
    actPrint: TAction;
    actRecCopy: TAction;
    actOk: TAction;
    actHelp: TAction;
    actRecDelete: TDataSetDelete;
    actNahled: TAction;
    actRecRefresh: TDataSetRefresh;
    actRecNew: TDataSetInsert;
    actRecPrior: TAction;
    actRecNext: TAction;
    actCancel: TAction;
    dsZaznam: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxbcTop: TdxBarDockControl;
    dxbOk: TdxBarButton;
    actSendMail: TAction;
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
    actLayRestoreDefault: TAction;
    actLayCustomize: TAction;
    actLayCustomizeSave: TAction;
    dxiDesign: TdxBarSubItem;
    dxbLayDesign: TdxBarButton;
    dxbLayDesignSave: TdxBarButton;
    dxbLayRestoreDefault: TdxBarButton;
    actAutoSize: TAction;
    dxBarButton9: TdxBarButton;
    dxiNabidka: TdxBarSubItem;
    procedure actOkExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actNahledExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actRecordMove(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure actSendMailExecute(Sender: TObject);
    procedure actLayRestoreDefaultExecute(Sender: TObject);
    procedure actLayCustomizeExecute(Sender: TObject);
    procedure actLayCustomizeSaveExecute(Sender: TObject);
    procedure actAutoSizeExecute(Sender: TObject);
    private
      { Private declarations }
      FCopyFieldsList: String;
      FDefDesign     : TStream;
      procedure DoPost;
      procedure SetCopyFieldsList(Value: string);
    protected
      // Pokud neni dataset ve stavuEDIT nebo INSERT nastavi jej na EDIT
      function LoadToolbars: Boolean;
      procedure SetEditsState;
      procedure StoreViewSettings(AView: TcxCustomGridView);
      procedure ReStoreViewSettings(AView: TcxCustomGridView);
      procedure DesignLoad;
      procedure DesignSave;
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
      property CopyFieldsList: String read FCopyFieldsList write SetCopyFieldsList;
  end;

implementation

uses uVarClass, appdmduSystem, JclRegistry, appfrmuGlobal, fMessageDlg;

{$R *.DFM}

constructor TfrmCustEditLay.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDefDesign                        := TMemoryStream.Create;
  dxBarManager1.Style               := GetdmdGlobal.GetCurrBarStyle;
  dxBarManager1.ImageOptions.Images := dmdGlobal.imglDefault;
  ActionList1.Images                := dmdGlobal.imglDefault;
  lcMain.Align                      := alClient;
  actLayCustomizeSave.Enabled       := false;
  lcMain.LayoutLookAndFeel          := dmdGlobal.GetCurrLayoutStyle;
  lcMain.SaveToStream(FDefDesign); // Uloyime vychoyi nastaveni designu do streamu pro pripad voleni
end;

procedure TfrmCustEditLay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

{ ********************************************************* }
{ Actions }
{ ********************************************************* }

{ Actions: Formular }

procedure TfrmCustEditLay.actOkExecute(Sender: TObject);
begin
  DoPost;
  ModalResult := mrOk;
end;

procedure TfrmCustEditLay.actRecDeleteExecute(Sender: TObject);
begin
  IsDataChanged := true;
  Close;
end;

procedure TfrmCustEditLay.actRecCopyExecute(Sender: TObject);
begin
  { Kopie aktualniho zaznamu }
end;

procedure TfrmCustEditLay.actPrintExecute(Sender: TObject);
begin
  PrintModule;
end;

procedure TfrmCustEditLay.actNahledExecute(Sender: TObject);
begin
  PrintDefReport;
end;

procedure TfrmCustEditLay.actHelpExecute(Sender: TObject);
begin
  { Aspon neco }
end;

procedure TfrmCustEditLay.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Assigned(dsZaznam.DataSet) then
  begin
    if (dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
    begin
      dsZaznam.DataSet.Post;
    end;
  end;
end;

procedure TfrmCustEditLay.actRecordMove(Sender: TObject);
begin
  { Aspon neco }
  // dsDet.DataSet.Next;
end;

procedure TfrmCustEditLay.actLayCustomizeExecute(Sender: TObject);
begin
  lcMain.Customization        := true;
  actLayCustomizeSave.Enabled := true;
end;

procedure TfrmCustEditLay.actLayCustomizeSaveExecute(Sender: TObject);
begin
  // Ulozeni nastaveni
  DesignSave;
end;

procedure TfrmCustEditLay.actLayRestoreDefaultExecute(Sender: TObject);
begin
  if displayConfirm('Opravdu chcete vrátit vzhled formuláøe do výchozího nastavení?') then
  begin
    FDefDesign.Position := 0;
    lcMain.LoadFromStream(FDefDesign);

  end;
end;

procedure TfrmCustEditLay.actSendMailExecute(Sender: TObject);
begin
  // Funkce neobsazena

end;

procedure TfrmCustEditLay.actAutoSizeExecute(Sender: TObject);
begin
  if actAutoSize.Checked then
  begin
    lcMain.Align               := alNone;
    lcMainGroup_Root.AlignHorz := ahLeft;
    lcMainGroup_Root.AlignVert := avTop;
    lcMain.AutoSize            := true;
    Self.AutoSize                   := true;
  end
  else
  begin
    Self.AutoSize                   := false;
    lcMain.AutoSize            := false;
    lcMainGroup_Root.AlignHorz := ahClient;
    lcMainGroup_Root.AlignVert := avClient;
    lcMain.Align               := alClient;
  end;
end;

procedure TfrmCustEditLay.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCustEditLay.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  actRecCopy.Enabled := not(dsZaznam.DataSet.State in [dsEdit, dsInsert]);
  actPrint.Enabled   := not(dsZaznam.DataSet.State in [dsEdit, dsInsert]);

  actNahled.Enabled := actPrint.Enabled;

  actRecPrior.Enabled := not(dsZaznam.DataSet.IsEmpty) and (actPrint.Enabled);
  actRecNext.Enabled  := not(dsZaznam.DataSet.IsEmpty) and (actPrint.Enabled);

end;

procedure TfrmCustEditLay.DesignLoad;
var
  FStream: TStream;
begin
  FStream := TMemoryStream.Create;
  dmdSystem.FormLoadFromStream(self.Name, jfaUserInfo.UserId, FStream);
  if FStream.Size > 0 then
  begin
    FStream.Position := 0;
    lcMain.LoadFromStream(FStream);
  end;
  FreeAndNil(FStream);
end;

procedure TfrmCustEditLay.DesignSave;
var
  FStream: TStream;
begin
  FStream          := TMemoryStream.Create;
  FStream.Position := 0;
  lcMain.SaveToStream(FStream);
  dmdSystem.FormSaveToStream(self.Name, jfaUserInfo.UserId, FStream);
  FreeAndNil(FStream);
end;

destructor TfrmCustEditLay.Destroy;
begin
  FreeAndNil(FDefDesign);
  inherited;
end;

procedure TfrmCustEditLay.DoPost;
begin
  if Assigned(dsZaznam.DataSet) then
  begin
    if (dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
      dsZaznam.DataSet.Post;
  end;
end;

procedure TfrmCustEditLay.ReStoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewRestoreFromDB(AView);
end;

procedure TfrmCustEditLay.StoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewStoreToDb(AView);
end;

procedure TfrmCustEditLay.SetCopyFieldsList(Value: string);
begin
  FCopyFieldsList := Value;
end;

procedure TfrmCustEditLay.SetEditsState;
begin
  if dsZaznam.DataSet <> nil then
    if not(dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
      dsZaznam.DataSet.Edit;
end;

function TfrmCustEditLay.LoadToolbars: Boolean;
begin
  try
    dxBarManager1.RegistryPath := RegistryKeyToolBarsName;
    dxBarManager1.LoadFromRegistry(dxBarManager1.RegistryPath);
    dxBarManager1.StoreInRegistry := true;
    // Vydz
    dxBarManager1Bar1.Visible := true;
    Result                    := true;
  except
    RegDeleteKeyTree(HKCU, dxBarManager1.RegistryPath);
    dxBarManager1.StoreInRegistry := false;
    Result                        := false;
  end;
end;

end.
