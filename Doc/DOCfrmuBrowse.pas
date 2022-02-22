{ ***************************************************************
  *
  * Unit Name: DOCBrowse
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit DOCfrmuBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ImgList, DBActns, ActnList, Db, ExtCtrls, rsStorage, rsPropSaver,
  uCustomForms, fModulBrowse, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, uSqlParser, cxStyles,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TDocBrowseFrm = class(TfrmModulBrowse)
    actExportData: TAction;
    rspPropForm: TrsPropSaver;
    tvViewSID: TcxGridDBColumn;
    tvViewZNACKA: TcxGridDBColumn;
    tvViewVYBER: TcxGridDBColumn;
    tvViewDATUM: TcxGridDBColumn;
    tvViewVEC: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    tvViewZEME: TcxGridDBColumn;
    tvViewCREAID: TcxGridDBColumn;
    tvViewCREADATE: TcxGridDBColumn;
    tvViewUPDID: TcxGridDBColumn;
    tvViewUPDDATE: TcxGridDBColumn;
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
    dxpPodm: TdxBarPopupMenu;
    tvViewSTATEUSER: TcxGridDBColumn;
    dxbgAdmins: TdxBarGroup;
    dxbPrintMng: TdxBarButton;
    dxbPrintPreview: TdxBarButton;
    dxbGrdRestore: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    actSetUS: TAction;
    dxBarButton4: TdxBarButton;
    tvViewSTATEUSERCOLOR: TcxGridDBColumn;
    actSetUSClear: TAction;
    dxBarButton5: TdxBarButton;
    dxbExportGrid: TdxBarButton;
    dxbSubSeznam: TdxBarSubItem;
    dxbGridStyle: TdxBarButton;
    rspSQL: TrsPropSaver;
    dxbPrintToEmail: TdxBarButton;
    procedure actRecKopieExecute(Sender: TObject);
    procedure actRecDetailExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure gbCustomMDIFormPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSetUSExecute(Sender: TObject);
    procedure actSetUSClearExecute(Sender: TObject);
    procedure actPrintToEmailExecute(Sender: TObject);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  variants, uVarClass, appdmduSystem, DOCdmdu, DOCfrmuModule, DOCConstDefUnit, appfrmuGlobal,
  fKatalogyModul, FDdmdu, fStatusLook, appReportModule, AOPdmdu, JclMapi, appReportUtils;

{$R *.DFM}

constructor TDocBrowseFrm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SqlControler.DataSet           := DOCdmd.DOCSeznam;
  MasterDs.DataSet               := SqlControler.DataSet;
  dxBarManager1.Style            := GetdmdGlobal.GetCurrBarStyle;
  tvViewVYBER.RepositoryItem     := dmdGlobal.repBoolChar;
  tvViewSTATEUSER.RepositoryItem := dmdGlobal.repDOCStatus;

  if not jfaUserInfo.AdminsUser then
    dxbgAdmins.Visible := ivNever;

  ReStoreViewSettings(tvView);

  rspSQL.Active := true;
  rspSQL.LoadValues;

end;

procedure TDocBrowseFrm.actRecKopieExecute(Sender: TObject);
var
  iResult: string;
begin
  iResult := DOCdmd.CopyRecord(DOCdmd.DOCSeznamSID.AsString);
  DOCfrmModule.showdetail(iResult, fsmEdit);
  IntRefreshAndFind(iResult);
end;

procedure TDocBrowseFrm.actRecDetailExecute(Sender: TObject);
var
  iResult: string;
begin
  iResult := DOCfrmModule.showdetail(DOCdmd.DOCSeznamSID.AsString, fsmEdit);
  IntRefreshAndFind(iResult);
end;

procedure TDocBrowseFrm.actRecNewExecute(Sender: TObject);
var
  iResult: string;
begin
  iResult := DOCfrmModule.showdetail(DOCdmd.DOCSeznamSID.AsString, fsmInsert);
  IntRefreshAndFind(iResult);
end;

procedure TDocBrowseFrm.gbCustomMDIFormPrint(Sender: TObject);
begin
  inherited;
  DOCfrmModule.PrintModule(IsDefaultReport, DOCdmd.DOCSeznamSID.AsString);
end;

procedure TDocBrowseFrm.tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord is TcxGridDataRow then
  begin
    if VarToStr(ARecord.Values[tvViewSTATEUSERCOLOR.Index]) <> '' then
    begin
      RowStyle.Color := ARecord.Values[tvViewSTATEUSERCOLOR.Index];
      AStyle         := RowStyle;
    end
  end;
end;

procedure TDocBrowseFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;
end;

procedure TDocBrowseFrm.actSetUSExecute(Sender: TObject);
var
  lcKeyValue: variant;
  dlg       : TfrmAppStausLook;
begin
  dlg := appGetStatusUserLook(AppCompsDM.dtsDocSU, 'Dopisy');
  try
    if dlg.Look(lcKeyValue) then
    begin
      DOCdmd.DOCSeznam.Edit;
      DOCdmd.DOCSeznamSTATEUSER.AsVariant := lcKeyValue;
      DOCdmd.DOCSeznam.Post;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TDocBrowseFrm.actSetUSClearExecute(Sender: TObject);
begin
  DOCdmd.DOCSeznam.Edit;
  DOCdmd.DOCSeznamSTATEUSER.Clear;
  DOCdmd.DOCSeznam.Post;
end;

procedure TDocBrowseFrm.actPrintToEmailExecute(Sender: TObject);
var
  aReportFile: string;
  aPdfFile   : string;
begin
  DOCdmd.mod_OpenRecord(DOCdmd.DOCSeznamSID.AsString);
  dmReport.frxMailExport.Address := DOCdmd.DOCDOCEMAILY.AsString;
  dmReport.frxMailExport.Subject := DOCdmd.DOCSeznamVEC.AsString;
  aReportFile                    := DOCfrmModule.GetDefaultReport;
  dmReport.ExportAndSendEmail(aReportFile, DOCfrmModule.frrDoc, aPdfFile);
end;

end.
