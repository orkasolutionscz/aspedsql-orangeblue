{ ***************************************************************
  *
  * Unit Name: FVfrmuKTLTexty
  * Purpose  :
  * Author   :  Jiri Fait
  * History  :
  *
  **************************************************************** }

unit ZSfrmuKTLPodminky;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Db, ActnList,
  StdCtrls, ExtCtrls,
  rsStorage, rsPropSaver, uCustomForms, cxMemo,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxButtons, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxBarDBNav, dxBarExtItems, Vcl.DBActns, dxLayoutContainer,
  dxLayoutControl, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, cxDBEdit, dxLayoutcxEditAdapters, fCustKtlUnit;

type
  TZSfrmKTLPodminky = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogID: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    tvKatalogOBSAH: TcxGridDBColumn;
    edPopis: TcxDBTextEdit;
    meObsah: TcxDBMemo;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure gbCustomEditDBVerifyDataInput(Sender: TObject; var VerifyOk: Boolean);
    procedure jfsCustomEvidFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fMessageDlg, appdmduSystem, ZSdmdu, ZSfrmuModule, ZSConstDefUnit, fKatalogyModul;

{$R *.DFM}

procedure TZSfrmKTLPodminky.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    with AppCompsDM do
    begin
      try
        KTLPodminky.Delete;
      except
        on e: exception do
          DisplayError(SERR_DELETE, e.Message);
      end;
    end;
end;

procedure TZSfrmKTLPodminky.gbCustomEditDBVerifyDataInput(Sender: TObject; var VerifyOk: Boolean);
begin
  inherited;
  if Trim(edPopis.Text) = EmptyStr then
  begin
    DisplayError(SERR_REQUIED, 'Pole Název musí obsahovat text.');
    edPopis.SetFocus;
    VerifyOk := false;
    Exit;
  end;

end;

procedure TZSfrmKTLPodminky.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.KTLPodminky;
  dsZaznam.DataSet.Active := true;
end;

end.
