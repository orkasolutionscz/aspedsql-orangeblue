unit ZSfrauOstNaklad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db, ExtCtrls, StdCtrls, Menus, cxControls, cxContainer, cxEdit, cxTextEdit, dxBar,
  cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, DBActns, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData;

type
  TZSfraOstNakl = class(TFrame)
    ActionList2: TActionList;
    dsView: TDataSource;
    cxGridKtl1: TcxGrid;
    tvPrehled: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    tvPrehledRADEK: TcxGridDBColumn;
    tvPrehledPOPIS: TcxGridDBColumn;
    tvPrehledCENAPROVIZE: TcxGridDBColumn;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    DataSetDelete1: TDataSetDelete;
    DataSetCancel1: TDataSetCancel;
    dxBarButton6: TdxBarButton;
    tvPrehledColumn1: TcxGridDBColumn;
    actMutiSelect: TAction;
    dxb1: TdxBarButton;
    actInsert: TAction;
    procedure actMutiSelectExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  appdmduSystem, ZSdmdu, appfrmuGlobal;

{$R *.DFM}

constructor TZSfraOstNakl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dsView.DataSet                := ZSdmd.ZAOstNakl;
  tvPrehled.Styles.StyleSheet   := dmdGlobal.ModStyleSheet;
  tvPrehledPOPIS.RepositoryItem := dmdGlobal.repFaktPolTextyCombo;
end;

procedure TZSfraOstNakl.actMutiSelectExecute(Sender: TObject);
var
  ASummary: TcxDataSummary;
begin
  if not Assigned(cxGridKtl1.FocusedView) then
    Exit;
  actMutiSelect.Checked                  := not actMutiSelect.Checked;
  tvPrehled.OptionsSelection.MultiSelect := actMutiSelect.Checked;
  ASummary                               := cxGridKtl1.FocusedView.DataController.Summary;

  if (Sender as TAction).Checked then
    ASummary.Options := ASummary.Options + [soSelectedRecords]
  else
    ASummary.Options := ASummary.Options - [soSelectedRecords];

end;

procedure TZSfraOstNakl.actInsertExecute(Sender: TObject);
begin
  cxGridKtl1.SetFocus;
  ZSdmd.ZAOstNakl.Insert;
end;

end.
