{ ***************************************************************
  *
  * Unit Name: FVfrmuKTLUhrady
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit FVfrmuKTLUhrady;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ActnList, StdCtrls, Buttons,
  rsStorage, rsPropSaver, uCustomForms,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxButtons, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxDBEdit,  dxLayoutcxEditAdapters, dxLayoutContainer,
  dxBarDBNav, dxBarExtItems, Vcl.DBActns, dxLayoutControl, fCustKtlUnit;

type
  TFVfrmKTLUhrady = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogUHRADA: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    edPopis: TcxDBTextEdit;
    edUhrada: TcxDBTextEdit;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    dxlgHlavniGroup2: TdxLayoutGroup;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    dxlgHlavniGroup3: TdxLayoutGroup;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure jfsCustomEvidFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVfrmKTLUhrady: TFVfrmKTLUhrady;

implementation

uses
  FVdmdu, appdmduSystem, fMessageDlg, FVfrmuModule,
  fKatalogyModul;

{$R *.DFM}
{ ****************************************************************
  *
  *  V e r i f y I n p u t D a t a()
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:   23.5.2001
  *
  *  Input:  nic
  *
  *  Return: true pokud probehne kontrola v poradku
  *
  *  Description:
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

procedure TFVfrmKTLUhrady.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    with AppCompsDM do
    begin
      try
        KTLFVUhrada.Delete;
        // inherited;
      except
        on e: exception do
          DisplayError(SERR_DELETE, e.Message);
      end;
    end;
end;

procedure TFVfrmKTLUhrady.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.KTLFVUhrada;
  dsZaznam.DataSet.Active := true;

end;

end.
