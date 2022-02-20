unit ZSfrmuKTLAuta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,  ActnList, StdCtrls, Buttons,
  uCustomForms, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxButtons, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, dxBar,
  cxLabel, Db, cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxDBEdit, dxBarDBNav,
  dxBarExtItems, Vcl.DBActns, dxLayoutControl, fCustKtlUnit;

type
  TZSfrmKTLAuta = class(TfrmCusKtl)
    tvKatalogTYP: TcxGridDBColumn;
    edZkratka: TcxDBTextEdit;
    dliHlavniItem1: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
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
   ZSdmdu, fMessageDlg, ZSfrmuModule, ZSConstDefUnit, appdmduSystem,  fKatalogyModul;

{$R *.DFM}

procedure TZSfrmKTLAuta.actRecCopyExecute(Sender: TObject);
const
  DataCopyList = 'TYP';
begin
  dmdSystem.spProc.Close;
  dmdSystem.spProc.SQL.Text := 'select * from LKW_TYPY WHERE TYP = :TYP';
  dmdSystem.spProc.ParamByName('TYP').AsString    := AppCompsDM.KTLAutaTYP.AsString;
  dmdSystem.spProc.Open;

  AppCompsDM.KTLAuta.Insert;
  AppCompsDM.KTLAuta.FieldValues[DataCopyList] := dmdSystem.spProc.FieldValues[DataCopyList];
end;

procedure TZSfrmKTLAuta.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    with AppCompsDM do
    begin
      try
        KTLAuta.Delete;
        //inherited;
      except
        on e: exception do
          DisplayError(SERR_UPDATE, e.Message);
      end;
    end;
end;

procedure TZSfrmKTLAuta.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet := AppCompsDM.KTLAuta;
  dsZaznam.DataSet.Active := true;

end;

end.



