{***************************************************************
 *
 * Unit Name: ZSfrmuKTLTypy
 * Purpose  : Ciselnik typu preprav
 * Author   : Jiri Fait
 * History  :
 *
 ****************************************************************}

unit ZSfrmuKTLTypy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Db, ActnList, Buttons,   uCustomForms,
  cxControls, cxContainer, cxEdit,
  cxTextEdit, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  dxBar, cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxBarDBNav, dxBarExtItems, Vcl.DBActns, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxDBEdit, fCustKtlUnit, rsStorage, rsPropSaver;

type
  TZSfrmKTLTypy = class(TfrmCusKtl)
    tvKatalogTYP: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    edPopis: TcxDBTextEdit;
    edTyp: TcxDBTextEdit;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    dxlgHlavniGroup2: TdxLayoutGroup;
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
   ZSdmdu, fMessageDlg, ZSfrmuModule, fKatalogyModul, appdmduSystem;

{$R *.DFM}


procedure TZSfrmKTLTypy.actRecCopyExecute(Sender: TObject);
const
  DataCopyList = 'TYP;POPIS';
begin
  dmdSystem.spProc.Close;
  dmdSystem.spProc.SQL.Text := 'select * from ZSTYPY WHERE TYP = :TYP';
  dmdSystem.spProc.ParamByName('TYP').AsString    := AppCompsDM.KTLTypyTyp.AsString;
  dmdSystem.spProc.Open;

  AppCompsDM.KTLTypy.Insert;
  AppCompsDM.KTLTypy.FieldValues[DataCopyList] := dmdSystem.spProc.FieldValues[DataCopyList];

end;

procedure TZSfrmKTLTypy.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    begin
      try
        AppCompsDM.KTLTypy.Delete;
      except
        on e: exception do
          DisplayError(SERR_DELETE, e.Message);
      end;
    end;
end;

procedure TZSfrmKTLTypy.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet := AppCompsDM.KTLTypy;
  dsZaznam.DataSet.Active := true;

end;

end.


