unit ZSfrauUdalosti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db, ExtCtrls, StdCtrls, Menus, cxControls, cxContainer, cxEdit, cxTextEdit, dxBar,
  cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, DBActns, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData;

type
  TZSfraUdalosti = class(TFrame)
    ActionList2: TActionList;
    actNew: TAction;
    actDelete: TAction;
    dsView: TDataSource;
    cxGridKtl1: TcxGrid;
    tvPrehled: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    tvPrehledID: TcxGridDBColumn;
    tvPrehledZasilka: TcxGridDBColumn;
    tvPrehledHisttyp: TcxGridDBColumn;
    tvPrehledHisttext: TcxGridDBColumn;
    tvPrehledCreaid: TcxGridDBColumn;
    tvPrehledCreadate: TcxGridDBColumn;
    tvPrehledUpdid: TcxGridDBColumn;
    tvPrehledUpddate: TcxGridDBColumn;
    tvPrehledState: TcxGridDBColumn;
    actEdit: TDataSetEdit;
    actCancel: TDataSetCancel;
    actPost: TDataSetPost;
    procedure actNewExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  end;

implementation

uses
   fMessageDlg, appdmduSystem, ZSdmdu, ZSfrmuModule,
  ZSConstDefUnit, appfrmuGlobal;

{$R *.DFM}

constructor TZSfraUdalosti.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dsView.DataSet                := ZSdmd.ZAViewHistorie;
  tvPrehled.Styles.StyleSheet   := dmdGlobal.ModStyleSheet;
end;

procedure TZSfraUdalosti.actNewExecute(Sender: TObject);
var
  iRecUdalost: TRecZSKTLUdalost;
begin
  { pridani zaznamu historie }
  if zsfrmmodule.ShowKTLUdalosti(iRecUdalost) then
  begin
    ZSdmd.ZSAddHistoryObject(ZSdmd.ZasilkySeznamSID.AsString, iRecUdalost.FUdalost, iRecUdalost.FDalsiText, false);
    dsView.DataSet.Refresh;
  end
end;


procedure TZSfraUdalosti.actDeleteExecute(Sender: TObject);
begin
  if ZSdmd.ZAViewHistorie.RecordCount > 0 then
  begin
    // Pokud je zaznam historie systemovy nelze jej odstranit
    if ZSdmd.ZAViewHistorieSTAV.AsInteger = histStateSystem then
    begin
      DisplayError(SERR_ZS_HI_DELETE, SSystMovZZnamySlouKEvidenciDLeItChZmNVDatabZi);
      sysutils.abort;
    end;

    if DisplayConfirm(sZSOkDeleteHistory) then
      ZSdmd.ZAViewHistorie.Delete;
  end;
end;


end.



