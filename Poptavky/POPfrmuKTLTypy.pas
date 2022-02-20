unit POPfrmuKTLTypy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, StdCtrls, ExtCtrls, cxButtons, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, ucustomforms, cxContainer, cxEdit, cxLabel, cxTextEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, dxBarDBNav, dxBarExtItems,
  Vcl.DBActns, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  cxDBEdit, cxCurrencyEdit, fCustKtlUnit, rsStorage, rsPropSaver;

type
  TPOPfrmKTLTypy = class(TfrmCusKtl)
    tvKatalogKOD: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    dliHlavniItem3: TdxLayoutItem;
    edPopis: TcxDBTextEdit;
    dliHlavniItem1: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    edKodI: TcxDBCurrencyEdit;
    rsPropSaver1: TrsPropSaver;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure jfsCustomEvidFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses POPdmdu, fMessageDlg, fKatalogyModul, appdmduSystem;

{$R *.DFM}

procedure TPOPfrmKTLTypy.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := GetAppCompsDM.POPKTLTypy;
  dsZaznam.DataSet.Active := true;
end;

procedure TPOPfrmKTLTypy.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    with AppCompsDM do
    begin
      try
        POPKTLTypy.Delete;
      except
        on e: exception do
          DisplayError(SERR_DELETE, e.Message);
      end;
    end;

end;


end.
