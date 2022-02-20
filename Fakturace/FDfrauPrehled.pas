unit FDfrauPrehled;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db, Menus, uCustomForms,
  dxBar, cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TFDfraPrehled = class(TFrame)
    actlFDPrehled: TActionList;
    actFDNew: TAction;
    actFDEdit: TAction;
    dsView: TDataSource;
    cxGridKtl1: TcxGrid;
    tvPrehled: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    tvPrehledID: TcxGridDBColumn;
    tvPrehledFAKTURADO: TcxGridDBColumn;
    tvPrehledPOLTEXT: TcxGridDBColumn;
    tvPrehledVARIABILNI: TcxGridDBColumn;
    tvPrehledDATSPLATNOST: TcxGridDBColumn;
    tvPrehledLIKVOK: TcxGridDBColumn;
    tvPrehledCENASUMA: TcxGridDBColumn;
    tvPrehledREFFD: TcxGridDBColumn;
    tvPrehledISDOPROVIZE: TcxGridDBColumn;
    tvPrehledCENAMENA: TcxGridDBColumn;
    tvPrehledCENASUMASDPH: TcxGridDBColumn;
    procedure actFDEditExecute(Sender: TObject);
    procedure actFDEditUpdate(Sender: TObject);
    procedure grdViewDblClick(Sender: TObject);
    procedure actFDNewExecute(Sender: TObject);
  private
    { Private declarations }
    FZdrZasilka: string;
    procedure intRefreshAndFind(AKeyIdValue: string);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property ZdrZasilka: string read FZdrZasilka write FZdrZasilka;
  end;

implementation

uses
  fMessageDlg, appdmduSystem, FDConstDefunit,
  appfrmuGlobal, fGetDateDlg, FDfrmuEdit, ZSdmdu, FDdmdu;

{$R *.DFM}

procedure TFDfraPrehled.actFDEditExecute(Sender: TObject);
var
  tmpFaktura: string;
begin
  if dsView.DataSet.fieldbyname('REFFD').AsString <> EmptyStr then
  begin

    tmpFaktura := dsView.DataSet.fieldbyname('REFFD').AsString;

    FDGetDetail(tmpFaktura);

    intRefreshAndFind(tmpFaktura);
  end;

end;

procedure TFDfraPrehled.actFDEditUpdate(Sender: TObject);
begin
  actFDEdit.Enabled := dsView.DataSet.fieldbyname('REFFD').AsString <> EmptyStr;
end;

procedure TFDfraPrehled.grdViewDblClick(Sender: TObject);
begin
  actFDEdit.Execute;
end;

procedure TFDfraPrehled.actFDNewExecute(Sender: TObject);
var
  tmpFaktura: string;
begin
  tmpFaktura := FDdmd.CreateNewFromZs(ZSdmd.ZasilkySeznamSID.AsString);
  if tmpFaktura <> '' then
  begin
    FDGetDetail(tmpFaktura);
    tvPrehled.DataController.RefreshExternalData;
  end;
end;

procedure TFDfraPrehled.intRefreshAndFind(AKeyIdValue: string);
begin
  if AKeyIdValue = EmptyStr then
    AKeyIdValue := dsView.DataSet.fieldbyname('ID').AsString;
  with dsView.DataSet do
  begin
    DisableControls;
    close;
    open;
    if not IsEmpty then
      Locate('ID', AKeyIdValue, []);
    EnableControls;
  end;

end;

constructor TFDfraPrehled.Create(AOwner: TComponent);
begin
  inherited;
  tvPrehled.Styles.StyleSheet      := dmdGlobal.ModStyleSheet;
  tvPrehledLIKVOK.RepositoryItem   := dmdGlobal.repBoolChar;
  tvPrehledCENAMENA.RepositoryItem := dmdGlobal.repMena;
end;

end.
