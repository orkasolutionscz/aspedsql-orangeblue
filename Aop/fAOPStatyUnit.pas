unit fAOPStatyUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, rsStorage, rsPropSaver, Db,
  ActnList, StdCtrls, ExtCtrls, Grids,
  DBGrids, uCustomForms, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxButtons, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, DBActns, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, Vcl.Menus,   dxLayoutcxEditAdapters, dxLayoutContainer, cxDBEdit, dxBarExtItems,
  dxLayoutControl, dxBarDBNav, fCustKtlUnit;

type
  TAOPfrmKTLZeme = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogKOD: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    tvKatalogKODTEL: TcxGridDBColumn;
    edKod: TcxDBTextEdit;
    dliHlavniItem1: TdxLayoutItem;
    edPopis: TcxDBTextEdit;
    dliHlavniItem2: TdxLayoutItem;
    edTelPred: TcxDBTextEdit;
    dliHlavniItem3: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dxlgHlavniGroup2: TdxLayoutGroup;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    dxlytspltrtmHlavniSplitterItem1: TdxLayoutSplitterItem;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  AOPdmdu, fMessageDlg, AOPfrmuModule, appdmduSystem,
  uAOPConstDefUnit, fKatalogyModul;

{$R *.DFM}

constructor TAOPfrmKTLZeme.Create(AOwner: TComponent);
begin
  inherited;
  dsZaznam.DataSet              := GetAOPdmd.KTLZeme;
  dsZaznam.DataSet.Active       := true;
end;


procedure TAOPfrmKTLZeme.actRecCopyExecute(Sender: TObject);
begin
  dmdSystem.CopyRecord('AOPZEME','KOD','KOD;POPIS;KODTEL',dsZaznam.DataSet);
end;

procedure TAOPfrmKTLZeme.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    try
      dsZaznam.DataSet.Delete;
      //inherited;
    except
      on e: exception do
        DisplayError(SERR_UPDATE, e.Message);
    end;
end;

end.

