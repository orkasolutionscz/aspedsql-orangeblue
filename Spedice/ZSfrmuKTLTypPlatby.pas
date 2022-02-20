unit ZSfrmuKTLTypPlatby;

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
  dxBarDBNav, dxBarExtItems, Vcl.DBActns, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters, cxDBEdit, fCustKtlUnit;

type
  TZSfrmKTLTypPlatby = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogKOD: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    tvKatalogTEXTFAKTURA: TcxGridDBColumn;
    edTextFV: TcxDBTextEdit;
    edPopis: TcxDBTextEdit;
    edZkratka: TcxDBTextEdit;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    dliHlavniItem3: TdxLayoutItem;
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
  ZSdmdu, fMessageDlg, ZSfrmuModule, appdmduSystem, ZSConstDefUnit,
  fKatalogyModul;

{$R *.DFM}

procedure TZSfrmKTLTypPlatby.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.KTLDruhPlatby;
  dsZaznam.DataSet.Active := true;
end;

procedure TZSfrmKTLTypPlatby.actRecCopyExecute(Sender: TObject);
const
  DataCopyList = 'KOD;POPIS;TEXTFAKTURA';
begin
  dmdSystem.spProc.Close;
  dmdSystem.spProc.SQL.Text := 'select * from ZSPLATCO WHERE KOD = :KOD';
  dmdSystem.spProc.ParamByName('KOD').AsString    := AppCompsDM.KTLDruhPlatbyKOD.AsString;
  dmdSystem.spProc.Open;

  AppCompsDM.KTLDruhPlatby.Insert;
  AppCompsDM.KTLDruhPlatby.FieldValues[DataCopyList] := dmdSystem.spProc.FieldValues[DataCopyList];

end;

procedure TZSfrmKTLTypPlatby.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
  begin
    try
      AppCompsDM.KTLDruhPlatby.Delete;
    except
      on e: exception do
        DisplayError(SERR_DELETE, e.Message);
    end;
  end;
end;

end.
