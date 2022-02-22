{ -----------------------------------------------------------------------------
  Unit Name: AOPfrauJMPrehled
  Author:    Administrator
  Purpose:
  History:   28.4.2002 prvni verze
  ----------------------------------------------------------------------------- }

unit AOPfrauJMPrehled;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, rsStorage, rsPropSaver, Menus, ExtCtrls, uCustomForms,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  Db, cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TAOPfraJMPrehled = class(TFrame)
    ActionList2: TActionList;
    actSendMail: TAction;
    dsView: TDataSource;
    cxGridKtl1: TcxGrid;
    tvPrehled: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton3: TdxBarButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    tvPrehledID: TcxGridDBColumn;
    tvPrehledPRIJMENI: TcxGridDBColumn;
    tvPrehledJMENO: TcxGridDBColumn;
    tvPrehledEMAIL: TcxGridDBColumn;
    tvPrehledFUNKCE: TcxGridDBColumn;
    tvPrehledTELEFON1: TcxGridDBColumn;
    tvPrehledTELEFON2: TcxGridDBColumn;
    tvPrehledMOBIL: TcxGridDBColumn;
    tvPrehledFAX: TcxGridDBColumn;
    rsPropSaver1: TrsPropSaver;
    procedure actSendMailExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  uAOPConstDefUnit, fMessageDlg, jclMapi, AOPdmdu, appdmduSystem, appfrmuGlobal;

{$R *.DFM}

constructor TAOPfraJMPrehled.Create(AOwner: TComponent);
begin
  inherited;
  rsPropSaver1.LoadValues;
  dsView.DataSet := AOPdmd.ViewAOPJmena;
  tvPrehled.Styles.StyleSheet   := dmdGlobal.ModStyleSheet;
end;

destructor TAOPfraJMPrehled.Destroy;
begin
  rsPropSaver1.SaveValues;
  inherited;
end;

procedure TAOPfraJMPrehled.actSendMailExecute(Sender: TObject);
var
  sEmail: AnsiString;
begin
  sEmail := AnsiString( AOPdmd.ViewAOPJmenaEmail.AsString);
  if sEmail <> '' then
    JclSimpleSendMail(sEmail, '', '', '', )
  else
    DisplayError(SERR_AOP_EMAILCHYBIUDAJE, '');
end;

end.
