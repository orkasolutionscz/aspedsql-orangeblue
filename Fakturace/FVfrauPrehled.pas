unit FVfrauPrehled;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, Grids, Menus, rsStorage, rsPropSaver,  uCustomForms,
  dxBar, cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TFVfraPrehled = class(TFrame)
    actlFVPrehled: TActionList;
    actFVEdit: TAction;
    dsView: TDataSource;
    cxGridKtl1: TcxGrid;
    tvPrehled: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    tvPrehledFAKTURA: TcxGridDBColumn;
    tvPrehledNAZEV: TcxGridDBColumn;
    tvPrehledDATVYSTAVENI: TcxGridDBColumn;
    tvPrehledDATSPLATNOST: TcxGridDBColumn;
    tvPrehledDatUhrazeno: TcxGridDBColumn;
    tvPrehledCELKEM: TcxGridDBColumn;
    tvPrehledCENALIKV: TcxGridDBColumn;
    tvPrehledCENAUHRAZENO: TcxGridDBColumn;
    tvPrehledLIKVOK: TcxGridDBColumn;
    procedure actFVEditExecute(Sender: TObject);
    procedure actFVEditUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure intRefreshAndFind(AFaktura: string);
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;

  end;

implementation

uses
  fMessageDlg, FVfrmuModule, FVdmdu, appdmduSystem,
  FVConstDefUnit, appfrmuGlobal;

{$R *.DFM}

procedure TFVfraPrehled.actFVEditExecute(Sender: TObject);
var
  tmpFaktura: string;
begin
  tmpFaktura := dsView.DataSet.fieldbyname('SID').AsString;
  if tmpFaktura <> EmptyStr then
  begin
    if FVfrmModule.ShowDetail(tmpFaktura, fsmEdit) then
      intRefreshAndFind(tmpFaktura);
  end;

end;

procedure TFVfraPrehled.actFVEditUpdate(Sender: TObject);
begin
  if assigned(dsView.DataSet) then
    actFVEdit.Enabled     := dsView.DataSet.fieldbyname('SID').AsString <> EmptyStr;

end;

procedure TFVfraPrehled.intRefreshAndFind(AFaktura: string);
begin
  dsView.DataSet.DisableControls;
  dsView.DataSet.Refresh;
  if not dsView.DataSet.IsEmpty then
    dsView.DataSet.Locate('SID', AFaktura, []);
  dsView.DataSet.EnableControls;
end;

constructor TFVfraPrehled.Create(AOwner: TComponent);
begin
  inherited;
  tvPrehled.Styles.StyleSheet   := dmdGlobal.ModStyleSheet;

end;

end.

