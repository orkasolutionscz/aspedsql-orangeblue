unit appfrmuKTLJednotky;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ActnList, StdCtrls, Buttons, rsStorage,
  rsPropSaver, uCustomForms, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxButtons, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxDBEdit, dxBarDBNav,
  dxBarExtItems, Vcl.DBActns, dxLayoutControl, fCustKtlUnit;

type
  TfrmKTLJednotky = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogJEDNOTKA: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    edZkratka: TcxDBTextEdit;
    edPopis: TcxDBTextEdit;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actRecDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKTLJednotky: TfrmKTLJednotky;

implementation

uses
  appdmduSystem, fMessageDlg, appfrmuGlobal,
  fKatalogyModul;

{$R *.DFM}

procedure TfrmKTLJednotky.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    with AppCompsDM do
    begin
      try
        KTLJednotky.Delete;
        // inherited;
      except
        raise;
      end;
    end;
end;

procedure TfrmKTLJednotky.FormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.KTLJednotky;
  dsZaznam.DataSet.Active := true;
end;

end.
