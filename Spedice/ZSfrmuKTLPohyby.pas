{ ***************************************************************
  *
  * Unit Name: ZSfrmuKTLTypy
  * Purpose  : Ciselnik typu preprav
  * Author   : Jiri Fait
  * History  :
  *
  **************************************************************** }

unit ZSfrmuKTLPohyby;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Db, Grids,
  DBGrids, ActnList, Buttons, uCustomForms, cxControls,
  cxContainer, cxEdit,
  cxTextEdit, cxButtons, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, dxBar,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, dxBarDBNav, dxBarExtItems,
  Vcl.DBActns, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  cxDBEdit, fCustKtlUnit, rsStorage, rsPropSaver;

type
  TZSfrmKTLPohyby = class(TfrmCusKtl)
    tvKatalogKOD: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    tvKatalogNOMODIFY: TcxGridDBColumn;
    edPopis: TcxDBTextEdit;
    edKod: TcxDBTextEdit;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    rsPropSaver1: TrsPropSaver;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure jfsCustomEvidFormCreate(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ZSdmdu, fMessageDlg, ZSfrmuModule, ZSConstDefUnit,
  fKatalogyModul, appdmduSystem;

{$R *.DFM}

procedure TZSfrmKTLPohyby.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.ZSKTLNakVyk;
  dsZaznam.DataSet.Active := true;
end;

procedure TZSfrmKTLPohyby.actRecCopyExecute(Sender: TObject);
const
  DataCopyList = 'KOD;POPIS';
begin
  dmdSystem.spProc.Close;
  dmdSystem.spProc.SQL.Text                    := 'SELECT * FROM ZSKTLNAKVYK WHERE KOD = :KOD';
  dmdSystem.spProc.ParamByName('KOD').AsString := AppCompsDM.ZSKTLNakVykKod.AsString;
  dmdSystem.spProc.Open;

  AppCompsDM.ZSKTLNakVyk.Insert;
  AppCompsDM.ZSKTLNakVyk.FieldValues[DataCopyList] := dmdSystem.spProc.FieldValues[DataCopyList];
end;

procedure TZSfrmKTLPohyby.actRecDeleteExecute(Sender: TObject);
begin
  if AppCompsDM.ZSKTLNakVykNOMODIFY.AsString = 'T' then
    DisplayError('Systémový typ nelze vymazat')
  else if DisplayConfirm(sMsgConfirmDelete) then
    with AppCompsDM do
    begin
      try
        ZSKTLNakVyk.Delete;
      except
        on e: exception do
          DisplayError(SERR_DELETE, e.Message);
      end;
    end;
end;

end.
