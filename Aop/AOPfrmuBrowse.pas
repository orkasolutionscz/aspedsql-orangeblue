{ ***************************************************************
  *
  * Unit Name: AOPfrmuBrowse
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit AOPfrmuBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ImgList, DBActns, ActnList, Db, ExtCtrls, rsStorage,
  rsPropSaver, Buttons, ComCtrls, AOPfrauJMPrehled,
  uCustomForms, cxPC, cxControls, fModulBrowse,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, cxSplitter, uSqlParser, cxStyles,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxPCdxBarPopupMenu;

type
  TAOPBrowseFrm = class(TfrmModulBrowse)
    actSendMail: TAction;
    rspForm: TrsPropSaver;
    pnlKontakty: TPanel;
    pgAOPInfo: TcxPageControl;
    tbsKontakty: TcxTabSheet;
    actPrevedAdresu: TAction;
    tvViewAOPKOD: TcxGridDBColumn;
    tvViewVYBER: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewADRESA1: TcxGridDBColumn;
    tvViewADRESA2: TcxGridDBColumn;
    tvViewPSC: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    tvViewKODZEME: TcxGridDBColumn;
    tvViewICO: TcxGridDBColumn;
    tvViewDIC: TcxGridDBColumn;
    tvViewSPLATNOST: TcxGridDBColumn;
    tvViewTELEFON: TcxGridDBColumn;
    tvViewFAX: TcxGridDBColumn;
    tvViewGSM: TcxGridDBColumn;
    tvViewEMAIL: TcxGridDBColumn;
    tvViewSKUPINA: TcxGridDBColumn;
    tvViewK1: TcxGridDBColumn;
    tvViewK2: TcxGridDBColumn;
    tvViewUPDDATE: TcxGridDBColumn;
    tvViewUPDID: TcxGridDBColumn;
    tvViewPOPIS: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
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
    dxpSeznam: TdxBarPopupMenu;
    dxpPodm: TdxBarPopupMenu;
    dxbAopPrevodAdresy: TdxBarButton;
    dxbAopSendMail: TdxBarButton;
    actRecAdministrator: TAction;
    dxiZaznam: TdxBarSubItem;
    dxiVybery: TdxBarSubItem;
    dxbrMain: TdxBar;
    cxSplitter1: TcxSplitter;
    dxbgAdmins: TdxBarGroup;
    tvViewSTATEUSER: TcxGridDBColumn;
    dxbPrintMng: TdxBarButton;
    dxbPrintPreview: TdxBarButton;
    tvViewSTATEUSERCOLOR: TcxGridDBColumn;
    tvViewSTAV: TcxGridDBColumn;
    dxbGrdRestore: TdxBarButton;
    actSetUS: TAction;
    dxBarButton1: TdxBarButton;
    actSetUSClear: TAction;
    dxb1: TdxBarButton;
    dxbExportGrid: TdxBarButton;
    tvViewKOD_RAAL: TcxGridDBColumn;
    tvViewKOD_TIMO: TcxGridDBColumn;
    dxbSubSeznam: TdxBarSubItem;
    dxb3: TdxBarButton;
    rspSQL: TrsPropSaver;
    actZmenNaKontakt: TAction;
    dxBarButton2: TdxBarButton;
    procedure actSendMailExecute(Sender: TObject);
    procedure actRecDetailExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure MasterDsDataChange(Sender: TObject; Field: TField);
    procedure gbCustomMDIModulePrint(Sender: TObject);
    procedure actPrevedAdresuExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRecAdministratorExecute(Sender: TObject);
    procedure actSetUSExecute(Sender: TObject);
    procedure actSetUSClearExecute(Sender: TObject);
    procedure actGridStyleExecute(Sender: TObject);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure actZmenNaKontaktExecute(Sender: TObject);
    private
      { Private declarations }
      frameKontakty: TAOPfraJMPrehled;
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  variants, uVarClass, fMessageDlg, AOPdmdu, jclMapi, AOPfrmuModule, appdmduSystem,
  DOCfrmuModule, DOCdmdu, FVdmdu, FVfrmuModule, FDdmdu, FDfrmuModule,
  fAOPPrevodAdresyUnit, AOPConstDefUnit, appfrmuGlobal, fStatusLook, fKatalogyModul,
  _frmuCustomLookup, AOPfrmuEdit, appReportModule, fAOPPrevedNaKontaktUnit;

{$R *.DFM}

var
  lcAOPKod: string; // Pomocna promenna pro editaci detailu AOP

constructor TAOPBrowseFrm.Create(AOwner: TComponent);
begin
  inherited;
  frameKontakty                     := TAOPfraJMPrehled.Create(self);
  frameKontakty.Parent              := tbsKontakty;
  frameKontakty.Align               := alClient;
  frameKontakty.dsView.DataSet      := AOPdmd.ViewAOPJmena;
  frameKontakty.dxBarManager1.Style := dxBarManager1.Style;
  AOPdmd.ViewAOPJmena.Active        := true;
  dxBarManager1.Style               := GetdmdGlobal.GetCurrBarStyle;
  SqlControler.DataSet              := AOPdmd.AOPSeznam;
  MasterDs.DataSet                  := SqlControler.DataSet;

  ReStoreViewSettings(frameKontakty.tvPrehled);
  ReStoreViewSettings(tvView);

  tvViewVYBER.RepositoryItem     := dmdGlobal.repBoolChar;
  tvViewSTATEUSER.RepositoryItem := GetAopModul.repAOPStatus;

  actRecAdministrator.Visible := jfaUserInfo.AdminsUser;

  rspSQL.Active := true;
  rspSQL.LoadValues;
end;

procedure TAOPBrowseFrm.actSendMailExecute(Sender: TObject);
begin
  if trim(AOPdmd.AOPSeznamEMAIL.asstring) <> EmptyStr then
    JclSimpleSendMail(AnsiString(AOPdmd.AOPSeznamEMAIL.asstring), '', '', '', )
  else
    DisplayError(SERR_AOP_EMAILCHYBIUDAJE, '');
end;

procedure TAOPBrowseFrm.actRecDetailExecute(Sender: TObject);
begin
  lcAOPKod := AOPdmd.AOPSeznamAOPKOD.asstring;
  if AopGetDetail(lcAOPKod) then
    IntRefreshAndFind(lcAOPKod);
end;

procedure TAOPBrowseFrm.actRecNewExecute(Sender: TObject);
begin
  AOPdmd.mod_OpenRecord(AOPdmd.AOPSeznamAOPKOD.asstring);

  lcAOPKod := '';

  if AopGetDetail(lcAOPKod, true) then
    IntRefreshAndFind(lcAOPKod);
end;

procedure TAOPBrowseFrm.MasterDsDataChange(Sender: TObject; Field: TField);
begin
  AOPfrmModule.JMShowViewAOP(AOPdmd.AOPSeznamAOPKOD.asstring);
end;

procedure TAOPBrowseFrm.tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  inherited;
  if ARecord is TcxGridDataRow then
  begin
    if VarToStr(ARecord.Values[tvViewSTATEUSERCOLOR.Index]) <> '' then
    begin
      RowStyle.Color := ARecord.Values[tvViewSTATEUSERCOLOR.Index];
      AStyle         := RowStyle;
    end
    else if ARecord.Values[tvViewSTAV.Index] = 2 then
      AStyle := dmdGlobal.cxsRecStorno
    else if ARecord.Values[tvViewSTAV.Index] = 3 then
      AStyle := dmdGlobal.cxsRecArchive
  end;

end;

procedure TAOPBrowseFrm.gbCustomMDIModulePrint(Sender: TObject);
begin
  inherited;
  AOPfrmModule.PrintModule(IsDefaultReport, AOPdmd.AOPSeznamAOPKOD.asstring);
end;

procedure TAOPBrowseFrm.actPrevedAdresuExecute(Sender: TObject);
var
  sLookKod: string;
begin
  if aopPrevodKodu(AOPdmd.AOPSeznamAOPKOD.asstring, sLookKod) then
    IntRefreshAndFind(sLookKod);

end;

procedure TAOPBrowseFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(frameKontakty.tvPrehled);
  StoreViewSettings(tvView);
  inherited;

end;

procedure TAOPBrowseFrm.actRecAdministratorExecute(Sender: TObject);
begin
  //
end;

procedure TAOPBrowseFrm.actSetUSExecute(Sender: TObject);
var
  lcKeyValue: variant;
  dlg       : TfrmAppStausLook;
begin
  dlg := appGetStatusUserLook(AOPdmd.dtsAopSU, 'Uživatelský stav pro modul Adresy');
  try
    if dlg.Look(lcKeyValue) then
    begin
      AOPdmd.AOPSeznam.Edit;
      AOPdmd.AOPSeznamSTATEUSER.AsVariant := lcKeyValue;
      AOPdmd.AOPSeznam.Post;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TAOPBrowseFrm.actZmenNaKontaktExecute(Sender: TObject);
var
  sLookKod: string;
begin
  if aopPripojKontakt(AOPdmd.AOPSeznamAOPKOD.asstring, sLookKod) then
    IntRefreshAndFind(sLookKod);

end;

procedure TAOPBrowseFrm.actSetUSClearExecute(Sender: TObject);
begin
  AOPdmd.AOPSeznam.Edit;
  AOPdmd.AOPSeznamSTATEUSER.Clear;
  AOPdmd.AOPSeznam.Post;
end;

procedure TAOPBrowseFrm.actGridStyleExecute(Sender: TObject);
begin
  inherited;
  frameKontakty.tvPrehled.Styles.StyleSheet := tvView.Styles.StyleSheet;
end;

end.
