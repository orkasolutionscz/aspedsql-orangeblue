{-----------------------------------------------------------------------------
 Unit Name: _frmuKTLMeny
 Author:    Administrator
 Purpose:
 History:
   24.5.2001 - provedeno osetreni chyb pri zapisu
               a doplnena kontrolni funkce pred pokusem o zapis
-----------------------------------------------------------------------------}

unit appfrmuKTLMeny;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, StdCtrls,   Buttons, rsStorage, rsPropSaver,  uCustomForms,
  cxCurrencyEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxButtons, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, dxBar,
  cxLabel, ExtCtrls, cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxBarDBNav, dxBarExtItems, Vcl.DBActns, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxDBEdit, fCustKtlUnit;

type
  TfrmKTLMeny = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogKOD: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    tvKatalogKURS: TcxGridDBColumn;
    edPopis: TcxDBTextEdit;
    edZkratka: TcxDBTextEdit;
    edKurs: TcxDBCurrencyEdit;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    dliHlavniItem3: TdxLayoutItem;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    dxlgHlavniGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actRecDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKTLMeny: TfrmKTLMeny;

implementation

uses
  appdmduSystem, fMessageDlg, appfrmuGlobal,  fKatalogyModul;

{$R *.DFM}

procedure TfrmKTLMeny.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    with AppCompsDM do
    begin
      try
        KTLMeny.Delete;
        //inherited;
      except
        on e: exception do
          DisplayError(SERR_DELETE, e.Message);
      end;
    end;
end;

procedure TfrmKTLMeny.FormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet := AppCompsDM.KTLMeny;
  dsZaznam.DataSet.Active := true;
end;

end.



