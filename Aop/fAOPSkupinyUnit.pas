unit fAOPSkupinyUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, rsStorage, rsPropSaver, Db, ActnList, StdCtrls, ExtCtrls,
  uCustomForms, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxButtons, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, DBActns, cxDBEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, Vcl.Menus, dxBarExtItems,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, dxBarDBNav,
  fCustKtlUnit;

type
  TAOPfrmKTLSkupiny = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogPOPIS: TcxGridDBColumn;
    edSkupina: TcxDBTextEdit;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
  private

  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  fMessageDlg, appdmduSystem, uAOPConstDefUnit, AOPdmdu;

{$R *.DFM}

constructor TAOPfrmKTLSkupiny.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dsZaznam.DataSet        := GetAOPdmd.KTLSkupiny;
  dsZaznam.DataSet.Active := true;
end;


procedure TAOPfrmKTLSkupiny.actRecCopyExecute(Sender: TObject);
begin
  dmdSystem.CopyRecord('AOPSKUP', 'POPIS', 'POPIS', dsZaznam.DataSet);
end;

procedure TAOPfrmKTLSkupiny.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    try
      dsZaznam.DataSet.Delete;
      inherited;
    except
      raise;
    end;
end;

end.
