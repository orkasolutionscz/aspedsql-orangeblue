{***************************************************************
 *
 * Unit Name: AOPfrmuKTLPsc
 * Purpose  :
 * Author   :
 * History  :
 *
   Misto KeyIDValue se pouzivaji pole KODZEME + PSC
 ****************************************************************}

unit fAOPscUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rsStorage, rsPropSaver,  Db, ActnList, StdCtrls,  Buttons, ExtCtrls,
  uCustomForms, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, dxBar,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxDBEdit,
  DBActns, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl, dxBarExtItems, dxBarDBNav, fCustKtlUnit;

type
  TfrmAopPsc = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogKODZEME: TcxGridDBColumn;
    tvKatalogPSC: TcxGridDBColumn;
    tvKatalogMESTO: TcxGridDBColumn;
    edKodStatu: TcxDBTextEdit;
    dliKodStatu: TdxLayoutItem;
    edPsc: TcxDBTextEdit;
    dliHlavniItem2: TdxLayoutItem;
    edMesto: TcxDBTextEdit;
    dliHlavniItem3: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    procedure actRecDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  end;

const
  sAopPscKeyFiledName = '';

implementation

uses
  AOPdmdu, fMessageDlg, appdmduSystem, appfrmuGlobal, AOPfrmuModule, fKatalogyModul;


{$R *.DFM}


constructor TfrmAopPsc.Create(AOwner: TComponent);
begin
  inherited;
  dsZaznam.DataSet                      := AOPdmd.KTLPSC;
  tvKatalogKODZEME.RepositoryItem       := GetAOPmodul.repStaty;

end;

procedure TfrmAopPsc.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    try
      dsZaznam.DataSet.Delete;
    except
      on e: exception do
        DisplayError(SERR_DELETE, e.Message);
    end;
end;

end.
