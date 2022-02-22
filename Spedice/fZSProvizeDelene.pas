unit fZSProvizeDelene;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, uCustomForms,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxBar, Db, DBActns,
  ActnList, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxSpinEdit;

type
  TfraZSProvize = class(TFrame)
    actlst1: TActionList;
    DataSetPost1: TDataSetPost;
    act2: TDataSetDelete;
    DataSetCancel1: TDataSetCancel;
    dsView: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    dxb3: TdxBarButton;
    dxb4: TdxBarButton;
    cxGridKtl1: TcxGrid;
    tvPrehled: TcxGridDBTableView;
    cxGridKtl1Level1: TcxGridLevel;
    tvPrehledID: TcxGridDBColumn;
    tvPrehledREF_ZASILKA: TcxGridDBColumn;
    tvPrehledDISPECER: TcxGridDBColumn;
    tvPrehledPROC_Z_PROV: TcxGridDBColumn;
    tvPrehledISMASTER: TcxGridDBColumn;
    tvPrehledPROPLACENO: TcxGridDBColumn;
    tvPrehledPROPLACENO_DATUM: TcxGridDBColumn;
    tvPrehledPROPLACENO_IDSESTAVY: TcxGridDBColumn;
    tvPrehledCALC_PROC_PROC: TcxGridDBColumn;
    dxb5: TdxBarButton;
    actNewRadek: TAction;
    procedure actNewRadekExecute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses ZSdmdu, uAOPConstDefUnit, appfrmuGlobal, fMessageDlg, AOPdmdu;

{$R *.DFM}
{ TfraZSProvize }

constructor TfraZSProvize.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dsView.DataSet                     := ZSdmd.dtsZSProvize;
  tvPrehled.Styles.StyleSheet        := dmdGlobal.ModStyleSheet;
  tvPrehledISMASTER.RepositoryItem   := dmdGlobal.repBoolChar;
  tvPrehledPROPLACENO.RepositoryItem := dmdGlobal.repBoolChar;
  tvPrehledDISPECER.RepositoryItem   := dmdGlobal.repUsers;

end;

procedure TfraZSProvize.actNewRadekExecute(Sender: TObject);
begin
  if dsView.DataSet.RecordCount = 0 then
  begin
    // Nejprve pridame master zaznam
    ZSdmd.dtsZSProvize.Insert;
    ZSdmd.dtsZSProvizeISMASTER.AsString     := 'T';
    ZSdmd.dtsZSProvizeDISPECER.AsString     := ZSdmd.ZasilkyDISPECER.AsString;
    ZSdmd.dtsZSProvizePROC_Z_PROV.AsInteger := 100;
    ZSdmd.dtsZSProvize.Post;
  end;

  ZSdmd.dtsZSProvize.Append;
  cxGridKtl1.SetFocus;
end;

procedure TfraZSProvize.act2Execute(Sender: TObject);
begin
  if DisplayConfirm('Opravdu chcete odstranit rozdìlení provize?', 'Tento pøíkaz odstraní všechny øádky rozdìlení provize.') then
  begin
    ZSdmd.dtsZSProvize.First;
    while not ZSdmd.dtsZSProvize.Eof do
      ZSdmd.dtsZSProvize.Delete;
  end;

end;

end.
