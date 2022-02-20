unit fZSDokumenty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ActnList, Db, uCustomForms, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TfraZSDokumenty = class(TFrame)
    acltDOCPrehled: TActionList;
    actDOCEdit: TAction;
    actDOCNew: TAction;
    dsView: TDataSource;
    actDOCCopy: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxGridKtl1: TcxGrid;
    tvPrehled: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    tvPrehledZNACKA: TcxGridDBColumn;
    tvPrehledAOPKOD: TcxGridDBColumn;
    tvPrehledOWNER: TcxGridDBColumn;
    tvPrehledNAZEV: TcxGridDBColumn;
    tvPrehledDATUM: TcxGridDBColumn;
    tvPrehledVEC: TcxGridDBColumn;
    dxBarButton4: TdxBarButton;
    actAVizo: TAction;
    procedure actDOCEditExecute(Sender: TObject);
    procedure actDOCNewExecute(Sender: TObject);
    procedure actDOCEditUpdate(Sender: TObject);
    procedure grdDOCPrehledDblClick(Sender: TObject);
    procedure actDOCSablonyExecute(Sender: TObject);
    procedure actDOCCopyExecute(Sender: TObject);
    procedure actAVizoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  end;

implementation

uses
  fMessageDlg,   appdmduSystem, ZSdmdu,
  DOCfrmuModule, DOCConstDefUnit, ZSfrmuModule, ZSConstDefUnit,
  appfrmuGlobal, fZSSablony;

{$R *.DFM}

procedure TfraZSDokumenty.actDOCEditExecute(Sender: TObject);
begin
  DOCfrmModule.ShowDetail(dsView.DataSet.fieldbyname(SDOCKEYFIELDNAME).AsString, fsmEdit);
  tvPrehled.DataController.RefreshExternalData;
end;

procedure TfraZSDokumenty.actDOCNewExecute(Sender: TObject);
begin
  DOCfrmModule.ShowDetail(
    dsView.DataSet.fieldbyname(SDOCKEYFIELDNAME).AsString,
    fsmInsert,
    ZSdmd.ZasilkySeznam.fieldbyname(SZSKEYFIELDNAME).AsString  );
  tvPrehled.DataController.RefreshExternalData;
end;

procedure TfraZSDokumenty.actDOCEditUpdate(Sender: TObject);
begin
  actDOCEdit.Enabled := (not dsView.DataSet.IsEmpty);
end;

procedure TfraZSDokumenty.grdDOCPrehledDblClick(Sender: TObject);
begin
  actDOCEdit.Execute;
end;

procedure TfraZSDokumenty.actDOCSablonyExecute(Sender: TObject);
begin
  { Aspon neco}
  if fZSSablony.ZSShowKTLSablony(ZSdmd.ZasilkySeznamSID.AsString, False) then
    tvPrehled.DataController.RefreshExternalData;
end;

procedure TfraZSDokumenty.actDOCCopyExecute(Sender: TObject);
var
  tmpZnacka: string;
begin
  tmpZnacka := DOCfrmModule.ShowDetail(dsView.DataSet.fieldbyname(SDOCKEYFIELDNAME).AsString,
    fsmCopy);
  tvPrehled.DataController.RefreshExternalData;

end;

procedure TfraZSDokumenty.actAVizoExecute(Sender: TObject);
begin
  if ZSShowKTLSablony(ZSdmd.ZasilkySeznamSID.AsString, true)  then
    tvPrehled.DataController.RefreshExternalData;
end;

constructor TfraZSDokumenty.Create(AOwner: TComponent);
begin
  inherited;
  tvPrehled.Styles.StyleSheet   := dmdGlobal.ModStyleSheet;

end;

end.

