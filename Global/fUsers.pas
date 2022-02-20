unit fUsers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, ExtCtrls, StdCtrls, Db, Mask, Grids, DBGrids, Buttons,
  uCustomForms, cxMaskEdit,
  cxButtonEdit, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxButtons, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, dxBar, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, DBActns, cxDBEdit,
  cxDropDownEdit, cxColorComboBox, cxDBColorComboBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxBarDBNav, dxBarExtItems,
  dxLayoutControl, cxImage, fCustKtlUnit, rsStorage, rsPropSaver;

type
  TfrmUsers = class(TfrmCusKtl)
    actZmenaHesla: TAction;
    tvKatalogUSERID: TcxGridDBColumn;
    tvKatalogJMENO: TcxGridDBColumn;
    tvKatalogADMINISTRATOR: TcxGridDBColumn;
    edUserId: TcxDBTextEdit;
    edJmeno: TcxDBTextEdit;
    edTelefon1: TcxDBTextEdit;
    edTelefon2: TcxDBTextEdit;
    edMobil: TcxDBTextEdit;
    edEmail: TcxDBTextEdit;
    edZnacka: TcxDBTextEdit;
    chkAdministrator: TcxDBCheckBox;
    chkShowFV: TcxDBCheckBox;
    chkShowFD: TcxDBCheckBox;
    chkShowStatistiky: TcxDBCheckBox;
    chkShowPoptavky: TcxDBCheckBox;
    chkShowPU: TcxDBCheckBox;
    edHeslo: TcxDBButtonEdit;
    cxDBColorComboBox1: TcxDBColorComboBox;
    tvKatalogBARVA: TcxGridDBColumn;
    dliHlavniItem3: TdxLayoutItem;
    dliHlavniItem4: TdxLayoutItem;
    dliHlavniItem5: TdxLayoutItem;
    dliHlavniItem6: TdxLayoutItem;
    dliHlavniItem7: TdxLayoutItem;
    dliHlavniItem8: TdxLayoutItem;
    dliHlavniItem9: TdxLayoutItem;
    dliHlavniItem10: TdxLayoutItem;
    dliHlavniItem11: TdxLayoutItem;
    dliHlavniItem12: TdxLayoutItem;
    dliHlavniItem13: TdxLayoutItem;
    dliHlavniItem14: TdxLayoutItem;
    dliHlavniItem15: TdxLayoutItem;
    dliHlavniItem16: TdxLayoutItem;
    dliHlavniItem17: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dxlgHlavniGroup4: TdxLayoutGroup;
    dxlgHlavniGroup7: TdxLayoutGroup;
    dxlgHlavniGroup6: TdxLayoutGroup;
    dxlgHlavniGroup5: TdxLayoutGroup;
    dxlgHlavniGroup2: TdxLayoutGroup;
    dxlgHlavniGroup3: TdxLayoutGroup;
    dxlgHlavniGroup9: TdxLayoutGroup;
    dxlgHlavniGroup8: TdxLayoutGroup;
    dxlytsprtrtmHlavniSeparatorItem1: TdxLayoutSeparatorItem;
    rsPropSaver1: TrsPropSaver;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure edHesloButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure actRecCopyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.DFM}

uses
  fUserChangePwd, fMessageDlg, appdmduSystem, appfrmuGlobal, IBODataset;

resourcestring
  SPoleUIvatelMusObsahovatText = 'Pole Uživatel musí obsahovat text.';
  SPoleZnaKaMusObsahovatText = 'Pole Znaèka musí obsahovat text.';
  SPotvrTe = 'Potvrïte';

constructor TfrmUsers.Create(AOwner: TComponent);
begin
  inherited;
  dsZaznam.DataSet                      := dmdSystem.dtsUsers;
  tvKatalogADMINISTRATOR.RepositoryItem := dmdGlobal.repBoolChar;
  chkAdministrator.RepositoryItem       := dmdGlobal.repBoolChar;
  dsZaznam.DataSet.Open;
end;

procedure TfrmUsers.actRecDeleteExecute(Sender: TObject);
var
  Result: Integer;
begin
  Result := MessageBox(Handle, PChar(sMsgConfirmDelete), PChar(SPotvrTe), 292);

  if Result = mrYes then
    try
      dmdSystem.dtsUsers.Delete;
      // inherited;
    except
      raise;
    end;

end;

procedure TfrmUsers.edHesloButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  nHewlo: string;
begin
  nHewlo := edHeslo.Text;
  if ftZmenaHesla(nHewlo) then
    edHeslo.Text := nHewlo;

end;

procedure TfrmUsers.actRecCopyExecute(Sender: TObject);
const
  SCOPYFLDS = 'email;telefon1;telefon2;mobil;nastaveni;form_settings;sql_settings; right_settings;stredisko;showfv;showfd;showstat;showpopt;showpu;barva';
var
  spProc: TIBOQuery;
begin

  spProc := TIBOQuery.Create(nil);
  try
    spProc.IB_Connection                  := dmdSystem.IBOMainDB;
    spProc.SQL.Text                       := 'SELECT * FROM sysUsers where userid = :userid ';
    spProc.ParamByName('userid').AsString := dmdSystem.dtsUsersUSERID.AsString;
    spProc.Open;

    dmdSystem.dtsUsers.Insert;
    dmdSystem.dtsUsers.FieldValues[SCOPYFLDS] := spProc.FieldValues[SCOPYFLDS];
  finally
    spProc.free;
  end;
end;

end.
