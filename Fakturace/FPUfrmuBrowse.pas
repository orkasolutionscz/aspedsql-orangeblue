unit FPUfrmuBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DBActns, ActnList, Db, ExtCtrls, rsStorage, rsPropSaver,
  uCustomForms, fModulBrowse, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, uSqlParser, cxStyles,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TFPUfrmBrowse = class(TfrmModulBrowse)
    rspForm: TrsPropSaver;
    ActionListFD: TActionList;
    actFDShowZasilka: TAction;
    actFDLikvidace: TAction;
    tvViewID: TcxGridDBColumn;
    tvViewREF_UCET: TcxGridDBColumn;
    tvViewUCET: TcxGridDBColumn;
    tvViewBANKA: TcxGridDBColumn;
    tvViewDAT_ZAPISU: TcxGridDBColumn;
    tvViewDAT_PLATBY: TcxGridDBColumn;
    tvViewPRIK_TEXT: TcxGridDBColumn;
    tvViewPRIKAZ_UDAJ: TcxGridDBColumn;
    tvViewSYMB_KONST: TcxGridDBColumn;
    tvViewCELKEM: TcxGridDBColumn;
    tvViewPOZNAMKA: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxbrMain: TdxBar;
    dxbModulZavrit: TdxBarButton;
    dxbGrdFirst: TdxBarButton;
    dxbGrdLast: TdxBarButton;
    dxbGrdNext: TdxBarButton;
    dxbGrdPrior: TdxBarButton;
    dxbGrdHledej: TdxBarButton;
    dxbGrdRefresh: TdxBarButton;
    dxbGrdOznacit: TdxBarButton;
    dxbGrdOznacitZrusit: TdxBarButton;
    dxbGrdSaveSetting: TdxBarButton;
    dxbRecCopy: TdxBarButton;
    dxbRecNew: TdxBarButton;
    dxbRecDetail: TdxBarButton;
    dxbAdmUpravitVse: TdxBarButton;
    dxbAdministrator: TdxBarSubItem;
    dxbFltDnesOpravene: TdxBarButton;
    dxbFltDnesNove: TdxBarButton;
    dxbFltClear: TdxBarButton;
    dxbFltHistory: TdxBarButton;
    dxbFltDialog: TdxBarButton;
    dxbFltSave: TdxBarButton;
    dxbFltManager: TdxBarButton;
    dxbFltHodnota: TdxBarButton;
    dxbFltStored: TdxBarButton;
    dxbFltSpeed: TdxBarButton;
    dxbFltGenerator: TdxBarButton;
    dxiZaznam: TdxBarSubItem;
    dxiVybery: TdxBarSubItem;
    dxpSeznam: TdxBarPopupMenu;
    dxbPrintMng: TdxBarButton;
    dxbPrintPreview: TdxBarButton;
    dxbGrdRestore: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxb1: TdxBarButton;
    dxbExportGrid: TdxBarButton;
    rspSQL: TrsPropSaver;
    procedure actRecDetailExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure gbCustomMDIFormPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rspFormAfterLoad(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
  end;

implementation

uses

  uVarClass, appdmduSystem, FPUdmdu, FPUfrmuModule, FPUConstDefUnit,
  appfrmuGlobal;

{$R *.DFM}

constructor TFPUfrmBrowse.Create(AOwner: TComponent);
begin
  inherited;
  SqlControler.DataSet := FPUdmd.FPUSeznam;
  MasterDs.DataSet     := SqlControler.DataSet;
  fraSQLCondition.Initialize;
  ReStoreViewSettings(tvView);
  dxBarManager1.Style := GetdmdGlobal.GetCurrBarStyle;
  rspSQL.Active       := true;
  rspSQL.LoadValues;
end;

procedure TFPUfrmBrowse.actRecDetailExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := FPUdmd.FPUSeznamID.Asstring;
  if FPUfrmModule.ShowDetail(iresult, fsmEdit) then
    IntRefreshAndFind(iresult);

end;

procedure TFPUfrmBrowse.actRecNewExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := ''; // MasterDs.DataSet.FieldByName(SFPU_F_ID).asstring;
  if FPUfrmModule.ShowDetail(iresult, fsmInsert) then
    IntRefreshAndFind(iresult);

end;

procedure TFPUfrmBrowse.gbCustomMDIFormPrint(Sender: TObject);
begin
  inherited;
  FPUfrmModule.PrintModule(IsDefaultReport, FPUdmd.FPUSeznamID.Asstring);
end;

procedure TFPUfrmBrowse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;

end;

procedure TFPUfrmBrowse.rspFormAfterLoad(Sender: TObject);
begin
  inherited;
  if Assigned(fraSQLCondition) then
    fraSQLCondition.Visible := actShowSQLPanel.Checked;

end;

end.
