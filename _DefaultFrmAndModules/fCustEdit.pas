unit fCustEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Db, uCustomForms, ExtCtrls, DBActns, cxButtons,
  dxBar, cxClasses, cxGridLevel, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxBarExtItems,
  Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg;

type
  TfrmCustEdit = class(TjfsCustomEvidForm)
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
    pnlGlobalData: TPanel;
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
    dxBarStatic1: TdxBarStatic;
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
  private
    FCopyFieldsList: String;
    { Private declarations }
    procedure DoPost;
    procedure SetCopyFieldsList(Value:string);
  protected
    // Pokud neni dataset ve stavuEDIT nebo INSERT nastavi jej na EDIT
    function LoadToolbars: Boolean;
    procedure SetEditsState;
    procedure StoreViewSettings(AView: TcxCustomGridView);
    procedure ReStoreViewSettings(AView: TcxCustomGridView);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property CopyFieldsList:String  read FCopyFieldsList write SetCopyFieldsList;
  end;

implementation

uses uVarClass, appdmduSystem, JclRegistry, appfrmuGlobal;

{$R *.DFM}

constructor TfrmCustEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dxBarManager1.Style               := GetdmdGlobal.GetCurrBarStyle;
  dxBarManager1.ImageOptions.Images := dmdGlobal.imglDefault;
  ActionList1.Images                := dmdGlobal.imglDefault;
  pnlGlobalData.Align               := alClient;
end;

procedure TfrmCustEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

{ ********************************************************* }
{ Actions }
{ ********************************************************* }

{ Actions: Formular }

procedure TfrmCustEdit.actOkExecute(Sender: TObject);
begin
  DoPost;
  ModalResult := mrOk;
end;

procedure TfrmCustEdit.actRecDeleteExecute(Sender: TObject);
begin
  IsDataChanged := true;
  Close;
end;

procedure TfrmCustEdit.actRecCopyExecute(Sender: TObject);
begin
  { Kopie aktualniho zaznamu }
  if CopyFieldsList <> '' then
  begin


  end;

end;

procedure TfrmCustEdit.actPrintExecute(Sender: TObject);
begin
  PrintModule;
end;

procedure TfrmCustEdit.actNahledExecute(Sender: TObject);
begin
  PrintDefReport;
end;

procedure TfrmCustEdit.actHelpExecute(Sender: TObject);
begin
  { Aspon neco }
end;

procedure TfrmCustEdit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Assigned(dsZaznam.DataSet) then
  begin
    if (dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
    begin
      dsZaznam.DataSet.Post;
    end;
  end;
end;

procedure TfrmCustEdit.actRecordMove(Sender: TObject);
begin
  { Aspon neco }
  // dsDet.DataSet.Next;
end;

procedure TfrmCustEdit.actSendMailExecute(Sender: TObject);
begin
  // Funkce neobsazena

end;

procedure TfrmCustEdit.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCustEdit.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  actRecCopy.Enabled := not(dsZaznam.DataSet.State in [dsEdit, dsInsert]);
  actPrint.Enabled   := not(dsZaznam.DataSet.State in [dsEdit, dsInsert]);

  actNahled.Enabled := actPrint.Enabled;

  actRecPrior.Enabled := not(dsZaznam.DataSet.IsEmpty) and (actPrint.Enabled);
  actRecNext.Enabled  := not(dsZaznam.DataSet.IsEmpty) and (actPrint.Enabled);

end;

procedure TfrmCustEdit.DoPost;
begin
  if Assigned(dsZaznam.DataSet) then
  begin
    if (dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
      dsZaznam.DataSet.Post;
  end;
end;

procedure TfrmCustEdit.ReStoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewRestoreFromDB(AView);
end;

procedure TfrmCustEdit.StoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewStoreToDb(AView);
end;



procedure TfrmCustEdit.SetCopyFieldsList(Value: string);
begin
  FCopyFieldsList := Value;
end;

procedure TfrmCustEdit.SetEditsState;
begin
  if dsZaznam.DataSet <> nil then
    if not(dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
      dsZaznam.DataSet.Edit;
end;

function TfrmCustEdit.LoadToolbars: Boolean;
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

