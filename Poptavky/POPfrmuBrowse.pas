unit POPfrmuBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DBActns, ActnList, Db, ExtCtrls, rsStorage,
  rsPropSaver, fModulBrowse, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxEdit, cxTextEdit, cxMemo, dxBar, cxSplitter, uSqlParser, uCustomForms,
  cxStyles, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, Vcl.Grids, Vcl.DBGrids;

type
  TPOPfrmBrowse = class(TfrmModulBrowse)
    rspForm: TrsPropSaver;
    ActionList2: TActionList;
    actAktualizuj: TAction;
    actZobrazPrepravy: TAction;
    spnlPoznamka: TPanel;
    actDocVytvor: TAction;
    actDocVytvorMulti: TAction;
    dsPopDopisy: TDataSource;
    tvViewSID: TcxGridDBColumn;
    tvViewZNACKA: TcxGridDBColumn;
    tvViewVYBER: TcxGridDBColumn;
    tvViewZNRAMCOVKA: TcxGridDBColumn;
    tvViewDATUM: TcxGridDBColumn;
    tvViewDAT_PLATNOST: TcxGridDBColumn;
    tvViewTYP: TcxGridDBColumn;
    tvViewPOPIS: TcxGridDBColumn;
    tvViewREF_AOPKOD: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewKONTAKT: TcxGridDBColumn;
    tvViewVOZIDLO: TcxGridDBColumn;
    tvViewNSTAT: TcxGridDBColumn;
    tvViewNPSC: TcxGridDBColumn;
    tvViewNMISTO: TcxGridDBColumn;
    tvViewVSTAT: TcxGridDBColumn;
    tvViewVPSC: TcxGridDBColumn;
    tvViewVMISTO: TcxGridDBColumn;
    tvViewCENAJEDNOTKA: TcxGridDBColumn;
    tvViewCENAMENA: TcxGridDBColumn;
    tvViewCENAPOPIS: TcxGridDBColumn;
    tvViewPOZNAMKA: TcxGridDBColumn;
    tvViewCREAID: TcxGridDBColumn;
    tvViewCREADATE: TcxGridDBColumn;
    tvViewUPDID: TcxGridDBColumn;
    tvViewUPDDATE: TcxGridDBColumn;
    tvViewCENASMLUVNI: TcxGridDBColumn;
    tvDokumenty: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    tvDokumentyID: TcxGridDBColumn;
    tvDokumentyREF_DOC: TcxGridDBColumn;
    tvDokumentyVEC: TcxGridDBColumn;
    tvDokumentyNAZEV: TcxGridDBColumn;
    tvDokumentyDATUM: TcxGridDBColumn;
    mePoznamka: TcxMemo;
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
    cxs1: TcxSplitter;
    tvDokumentyZNACKA: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    Splitter1: TcxSplitter;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    tvViewSTAV: TcxGridDBColumn;
    tvViewSTATEUSER: TcxGridDBColumn;
    tvViewSTATEUSERCOLOR: TcxGridDBColumn;
    dxbGrdRestore: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    dxpPodm: TdxBarPopupMenu;
    dxpSeznam: TdxBarPopupMenu;
    dxbExportGrid: TdxBarButton;
    dxbSubSeznam: TdxBarSubItem;
    dxbGridStyle: TdxBarButton;
    rspSQL: TrsPropSaver;
    procedure actRecDetailExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure actRecKopieExecute(Sender: TObject);
    procedure actAktualizujExecute(Sender: TObject);
    procedure gbCustomMDIFormPrint(Sender: TObject);
    procedure actZobrazPrepravyExecute(Sender: TObject);
    procedure MasterDsDataChange(Sender: TObject; Field: TField);
    procedure actDocVytvorExecute(Sender: TObject);
    procedure actDocVytvorMultiExecute(Sender: TObject);
    procedure tvDokumentyCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGridStyleExecute(Sender: TObject);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    private
      { Private declarations }
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
  end;

var
  POPfrmBrowse: TPOPfrmBrowse;

implementation

uses
  variants, uVarClass, fMessageDlg, uSqlUtils, JclStrings,
  POPdmdu, POPfrmuModule, appdmduSystem, ZSfrmuModule, DOCfrmuModule,
  POPConstDefUnit, appfrmuGlobal, POPfrmuEdit, appGenIdUnit, fPOPSablony,
  fDOCCustomSablony;

{$R *.DFM}

constructor TPOPfrmBrowse.Create(AOwner: TComponent);
begin
  inherited;
  SqlControler.DataSet                := POPdmd.POPSeznam;
  MasterDs.DataSet                    := SqlControler.DataSet;
  dxBarManager1.Style                 := GetdmdGlobal.GetCurrBarStyle;;
  tvView.DataController.KeyFieldNames := 'SID';
  tvViewVYBER.RepositoryItem          := dmdGlobal.repBoolChar;
  tvViewSTATEUSER.RepositoryItem      := dmdGlobal.repPOPStatus;
  tvViewSTATEUSERCOLOR.RepositoryItem := dmdGlobal.repColor;
  dsPopDopisy.DataSet := POPdmd.qrPOPDopisy;
  POPdmd.qrPOPDopisy.Active := true;
  ReStoreViewSettings(tvView);
  ReStoreViewSettings(tvDokumenty);
  rspSQL.Active := true;
  rspSQL.LoadValues;
end;

procedure TPOPfrmBrowse.actRecDetailExecute(Sender: TObject);
var
  iResult: string;
begin
  iResult := POPdmd.POPSeznamSID.AsString;
  if POPGetDetail(iResult) then
    IntRefreshAndFind(iResult);
end;

procedure TPOPfrmBrowse.actRecNewExecute(Sender: TObject);
var
  iResult: string;
begin
  iResult := GenGUIDID22;
  if POPGetDetail(iResult, true) then
    IntRefreshAndFind(iResult);

end;

procedure TPOPfrmBrowse.actRecKopieExecute(Sender: TObject);
var
  iResult: string;
begin
  inherited;
  iResult := GenGUIDID22;

  dmdSystem.spProc.SQL.Text                    := POPdmd.POPRecord.SQL.Text;
  dmdSystem.spProc.ParamByName('SID').AsString := POPdmd.POPSeznamSID.AsString;
  dmdSystem.spProc.Open;

  POPdmd.mod_OpenRecord(iResult);
  POPdmd.POPRecord.Insert;
  POPdmd.POPRecord.FieldValues[POPfrmModule.gbPopCopyList] := dmdSystem.spProc.FieldValues[POPfrmModule.gbPopCopyList];
  POPdmd.POPRecordSID.AsString                             := iResult;
  POPdmd.POPRecord.Post;
  POPdmd.POPRecord.Refresh; // Musi se nacist data ze serveru

  if POPGetDetail(iResult) then
    IntRefreshAndFind(iResult);

end;

procedure TPOPfrmBrowse.actAktualizujExecute(Sender: TObject);
begin
  POPdmd.UpdateStavy;
  actRecRefresh.Execute;

end;

procedure TPOPfrmBrowse.gbCustomMDIFormPrint(Sender: TObject);
begin
  inherited;
  POPfrmModule.PrintModule(IsDefaultReport, POPdmd.POPSeznamSID.AsString);

end;

{ -----------------------------------------------------------------------------
  Procedure: TPOPfrmBrowse.actZobrazPrepravyExecute
  Author:    fait
  Date:      14-III-2004
  Arguments: Sender: TObject
  Result:    None
  Procedure zavola modul pøepravy se stejnou trasou
  ----------------------------------------------------------------------------- }

procedure TPOPfrmBrowse.actZobrazPrepravyExecute(Sender: TObject);
const
  S_SQLWHERE = 'NSTAT = "%s" AND NPSC LIKE "%s*" AND VSTAT = "%s" AND VPSC LIKE "%s*"';
var
  sPodminka: string;
begin
  sPodminka := sqlFormatSQLCondition('NSTAT', 'LIKE', POPdmd.POPSeznamNSTAT.AsString, ftString, false);
  sPodminka := sPodminka + ' AND ' + sqlFormatSQLCondition('NPSC', 'LIKE', strLeft(POPdmd.POPSeznamNPSC.AsString, POPfrmModule.gbPocetZnaku),
    ftString, false);
  sPodminka := sPodminka + ' AND ' + sqlFormatSQLCondition('VSTAT', 'LIKE', POPdmd.POPSeznamVSTAT.AsString, ftString, false);
  sPodminka := sPodminka + ' AND ' + sqlFormatSQLCondition('VPSC', 'LIKE', strLeft(POPdmd.POPSeznamVPSC.AsString, POPfrmModule.gbPocetZnaku),
    ftString, false);

  ZSfrmModule.ShowBrowse(sPodminka);
end;

procedure TPOPfrmBrowse.MasterDsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  mePoznamka.Lines.Assign(POPdmd.POPSeznamPOZNAMKA);

end;

procedure TPOPfrmBrowse.actDocVytvorExecute(Sender: TObject);
begin
  POPShowKTLSablony(True);
  POPdmd.qrPOPDopisy.Refresh;

  {
  POPfrmModule.CreateDokument(POPdmd.POPSeznamSID.AsString, false);
  actRecRefresh.Execute;
  }
end;

procedure TPOPfrmBrowse.actDocVytvorMultiExecute(Sender: TObject);
begin
  if SqlControler.FilterActive then
    POPfrmModule.CreateDokument(POPdmd.POPSeznamSID.AsString, true)
  else
    DisplayInfo(SNenAktivniVyber, SVyberteZanamy);
end;

procedure TPOPfrmBrowse.tvDokumentyCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  DOCfrmModule.ShowDetail(POPdmd.qrPOPDopisyREF_DOC.AsString, fsmEdit);
  POPdmd.qrPOPDopisy.Refresh;

end;

procedure TPOPfrmBrowse.tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
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

procedure TPOPfrmBrowse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  StoreViewSettings(tvDokumenty);
  inherited;

end;

procedure TPOPfrmBrowse.actGridStyleExecute(Sender: TObject);
begin
  inherited;
  tvDokumenty.Styles.StyleSheet := tvView.Styles.StyleSheet;
end;

end.
