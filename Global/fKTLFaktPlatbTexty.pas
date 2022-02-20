unit fKTLFaktPlatbTexty;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms,
  Dialogs, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  StdCtrls, cxButtons, cxGridLevel, cxControls,
  cxGridCustomView, cxGrid, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, DB, cxDBData, cxClasses, cxLookAndFeelPainters,
  cxContainer, cxLabel, rsStorage, rsPropSaver, cxLookAndFeels, cxDataStorage,
  cxNavigator, Vcl.Menus, uCustomForms;

type
  TfrmKTLPlatbyTypy = class(TjfsDefaultForm)
    tvTexty: TcxGridDBTableView;
    lvTexty: TcxGridLevel;
    GridCities: TcxGrid;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    tvTextyPLATBA_TEXT: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    rsp1: TrsPropSaver;
    procedure tvTextyKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvTextyDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function GetValue: Variant;
  public
    property Value: Variant read GetValue;
  end;

implementation

uses fKatalogyModul, appfrmuGlobal, appdmduSystem;

{$R *.dfm}

function TfrmKTLPlatbyTypy.GetValue: Variant;
begin
  Result := tvTexty.Controller.FocusedRecord.Values[0];
end;

procedure TfrmKTLPlatbyTypy.tvTextyKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) and not tvTexty.Controller.IsEditing then
    ModalResult := mrOk;
end;

procedure TfrmKTLPlatbyTypy.tvTextyDblClick(Sender: TObject);
begin
  if (not tvTexty.Controller.IsEditing) then
    ModalResult := mrOk;
end;

procedure TfrmKTLPlatbyTypy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if tvTexty.Controller.IsEditing then
    tvTexty.DataController.Post;
end;

end.
