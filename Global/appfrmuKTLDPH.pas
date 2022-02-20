{ ***************************************************************
  *
  * Unit Name: ASWfrmuKTLDPH
  * Purpose  :
  * Author   : Jiri Fait
  * History  :
  *            24.5.2001
  - osetreny chyby pri zapisu a mazani zaznamu
  - pridana funkce pro kontrolu pred pokusem o zapis do tabulky
  *
  **************************************************************** }

unit APPfrmuKTLDPH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ActnList, StdCtrls, Buttons, rsStorage, rsPropSaver,
  uCustomForms, cxCurrencyEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxButtons, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, dxBar, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData,  dxLayoutcxEditAdapters,
  dxLayoutContainer, dxBarDBNav, dxBarExtItems, Vcl.DBActns, dxLayoutControl,
  cxDBEdit, fCustKtlUnit;

type
  TfrmKTLDPH = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogDPH_ID: TcxGridDBColumn;
    tvKatalogPROCDPH: TcxGridDBColumn;
    edPopis: TcxDBTextEdit;
    dliHlavniItem3: TdxLayoutItem;
    edDPHProc: TcxDBCurrencyEdit;
    dliHlavniItem1: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actRecDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  appdmduSystem, fMessageDlg, appfrmuGlobal, fKatalogyModul;

{$R *.DFM}

procedure TfrmKTLDPH.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
  begin
    try
      AppCompsDM.KTLDPH.Delete;
      // inherited;
    except
      on e: exception do
        DisplayError(SERR_DELETE, e.Message);
    end;
  end;
end;

procedure TfrmKTLDPH.FormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.KTLDPH;
  dsZaznam.DataSet.Active := true;
end;

end.
