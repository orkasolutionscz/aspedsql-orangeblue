{ ***************************************************************
  *
  * Unit Name: FVfrmuKTLTypy
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit FVfrmuKTLTypy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ActnList, StdCtrls, Buttons, rsStorage, rsPropSaver,
  uCustomForms, cxControls, cxContainer, cxEdit, cxTextEdit, cxButtons,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, dxBar, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData,  Vcl.DBActns, cxDBEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, dxBarDBNav,
  dxBarExtItems, fCustKtlUnit;

type
  TFVfrmKTLTypy = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogTYPFV: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    edTyp: TcxDBTextEdit;
    dliHlavniItem1: TdxLayoutItem;
    edPopis: TcxDBTextEdit;
    dliHlavniItem2: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  FVdmdu, appdmduSystem, fMessageDlg, FVfrmuModule,
  fKatalogyModul;

{$R *.DFM}

procedure TFVfrmKTLTypy.FormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.KTLFVTyp;
  dsZaznam.DataSet.Active := true;
end;

procedure TFVfrmKTLTypy.actRecCopyExecute(Sender: TObject);
begin
  dmdSystem.CopyRecord('FVTYPY','TYPFV','TYPFV;POPIS',dsZaznam.DataSet);
end;

procedure TFVfrmKTLTypy.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
  begin
    try
      AppCompsDM.KTLFVTyp.Delete;
      // inherited;
    except
      on e: exception do
        DisplayError(SERR_UPDATE, e.Message);
    end;
  end;
end;


end.
