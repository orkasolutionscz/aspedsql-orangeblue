unit ZSfrmuVyberPlatceDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _frmuCustomPick, Menus,  DBActns,
  ActnList, Db, StdCtrls, Grids,   ExtCtrls, rsStorage, rsPropSaver,
  dxBar, cxClasses, cxButtons,
  cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, uSqlParser, cxStyles,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, dxBarExtItems;

type
  TZSfrmVyberPlatceDlg = class(TfrmCustomPick)
    rsPropSaver1: TrsPropSaver;
    tvViewID: TcxGridDBColumn;
    tvViewAOPKOD: TcxGridDBColumn;
    tvViewZASILKA: TcxGridDBColumn;
    tvViewCO: TcxGridDBColumn;
    tvViewPOZICE: TcxGridDBColumn;
    tvViewCENASUMA: TcxGridDBColumn;
    tvViewCENAMENA: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    tvViewDATUM: TcxGridDBColumn;
    tvViewNAKLADKA: TcxGridDBColumn;
    tvViewVYKLADKA: TcxGridDBColumn;
    tvViewAUTOSPZ: TcxGridDBColumn;
    tvViewSTATE: TcxGridDBColumn;
    tvViewCENASMLUVNI: TcxGridDBColumn;
    tvViewCENAJEDNOTKY: TcxGridDBColumn;
    tvViewCENADPHPROC: TcxGridDBColumn;
    tvViewCENAJEDNOTKA: TcxGridDBColumn;
    tvViewSUBSTRATINFO: TcxGridDBColumn;
    tvViewSUBSTRAT: TcxGridDBColumn;
    tvViewHMBRUTTO: TcxGridDBColumn;
    tvViewHMTEXT: TcxGridDBColumn;
    tvViewPRIKAZ: TcxGridDBColumn;
    tvViewNSTAT: TcxGridDBColumn;
    tvViewNPSC: TcxGridDBColumn;
    tvViewNMISTO: TcxGridDBColumn;
    tvViewVSTAT: TcxGridDBColumn;
    tvViewVPSC: TcxGridDBColumn;
    tvViewVMISTO: TcxGridDBColumn;
    dxBarManager1Bar1: TdxBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
    destructor Destroy;override;
  end;


implementation

uses ZSdmdu, appdmduSystem;

{$R *.DFM}

constructor TZSfrmVyberPlatceDlg.Create(AOwner: TComponent);
begin
  inherited;
  MasterDs.DataSet := SqlControler.DataSet;

  ReStoreViewSettings(tvView);

  MasterDs.DataSet.Open;

end;

destructor TZSfrmVyberPlatceDlg.Destroy;
begin
  inherited;

end;

procedure TZSfrmVyberPlatceDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;

end;

end.
