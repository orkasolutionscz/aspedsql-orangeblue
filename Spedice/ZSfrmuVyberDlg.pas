unit ZSfrmuVyberDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DBActns, ActnList, Db, ExtCtrls, _frmuCustomPick,
  rsStorage, rsPropSaver, StdCtrls, dxBar, cxClasses, cxButtons,
  cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, uSqlParser, cxStyles,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, dxBarExtItems, IBODataset;

type
  TZSfrmVyberDlg = class(TfrmCustomPick)
    rsPropSaver1: TrsPropSaver;
    tvViewZASILKA: TcxGridDBColumn;
    tvViewAOPKOD_DOP: TcxGridDBColumn;
    tvViewDATUM: TcxGridDBColumn;
    tvViewDOPRAVCE: TcxGridDBColumn;
    tvViewPRIKAZCE: TcxGridDBColumn;
    tvViewAUTOSPZ: TcxGridDBColumn;
    tvViewNAKLADKA: TcxGridDBColumn;
    tvViewVYKLADKA: TcxGridDBColumn;
    tvViewCENASUMA: TcxGridDBColumn;
    tvViewCENAMENA: TcxGridDBColumn;
    tvViewCENADOPRAVCE: TcxGridDBColumn;
    dxBarManager1Bar1: TdxBar;
    tvViewDISPECER: TcxGridDBColumn;
    dtsSelDopr: TIBOQuery;
    dtsSelDoprSID: TStringField;
    dtsSelDoprZASILKA: TStringField;
    dtsSelDoprDISPECER: TStringField;
    dtsSelDoprAOPKOD_DOP: TStringField;
    dtsSelDoprDATUM: TDateTimeField;
    dtsSelDoprDopravce: TStringField;
    dtsSelDoprPrikazce: TStringField;
    dtsSelDoprNAKLADKA: TStringField;
    dtsSelDoprAUTOSPZ: TStringField;
    dtsSelDoprCENASUMA: TFloatField;
    dtsSelDoprCENAMENA: TStringField;
    dtsSelDoprCENADOPRAVCE: TFloatField;
    dtsSelDoprVYKLADKA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  ZSdmdu, appdmduSystem;

{$R *.DFM}

constructor TZSfrmVyberDlg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  MasterDs.DataSet                      := SQLControler.DataSet;
  tvView.DataController.KeyFieldNames   := 'SID';
  SQLControler.DataSet.close;
  SQLControler.ShowAllRecords;
  MasterDs.DataSet.active               := true;
  ReStoreViewSettings(tvView);
end;

destructor TZSfrmVyberDlg.Destroy;
begin
  inherited;
end;

procedure TZSfrmVyberDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;
end;

end.

