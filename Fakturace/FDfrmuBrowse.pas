unit FDfrmuBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DBActns,
  ActnList, Db, ExtCtrls, rsStorage, rsPropSaver, uCustomForms,
  fModulBrowse, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxBar, cxStyles, uSqlParser,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TFDfrmBrowse = class(TfrmModulBrowse)
    ActionListFD: TActionList;
    actFDShowZasilka: TAction;
    actFDLikvidace: TAction;
    actSetUS: TAction;
    tvViewSID: TcxGridDBColumn;
    tvViewVYBER: TcxGridDBColumn;
    tvViewFAKTURADO: TcxGridDBColumn;
    tvViewVARIABILNI: TcxGridDBColumn;
    tvViewDATSPLATNOST: TcxGridDBColumn;
    tvViewDATDANPOV: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewICO: TcxGridDBColumn;
    tvViewCELKEM: TcxGridDBColumn;
    tvViewCENALIKV: TcxGridDBColumn;
    tvViewCENAMENA: TcxGridDBColumn;
    tvViewDATUHRAZENO: TcxGridDBColumn;
    tvViewDOKLAD: TcxGridDBColumn;
    tvViewUCTODATUM: TcxGridDBColumn;
    tvViewCREADATE: TcxGridDBColumn;
    tvViewCREAID: TcxGridDBColumn;
    tvViewUPDID: TcxGridDBColumn;
    tvViewUPDDATE: TcxGridDBColumn;
    tvViewSTAV: TcxGridDBColumn;
    tvViewSTATEUSER: TcxGridDBColumn;
    tvViewLIKVOK: TcxGridDBColumn;
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
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    rsPropSaver1: TrsPropSaver;
    dxbPrintMng: TdxBarButton;
    dxbPrintPreview: TdxBarButton;
    dxbGrdRestore: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    tvViewSTATEUSERCOLOR: TcxGridDBColumn;
    dxb1: TdxBarButton;
    actSetUSClear: TAction;
    dxb2: TdxBarButton;
    tvViewDIC: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    tvViewZEME: TcxGridDBColumn;
    dxbExportGrid: TdxBarButton;
    dxbFullRefresh: TdxBarButton;
    dxbIncFind: TdxBarButton;
    tvViewAOPKOD: TcxGridDBColumn;
    tvViewCELKEMKC: TcxGridDBColumn;
    procedure actRecDetailExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure gbCustomMDIFormPrint(Sender: TObject);
    procedure actRecKopieExecute(Sender: TObject);
    procedure actFDShowZasilkaExecute(Sender: TObject);
    procedure actFDLikvidaceExecute(Sender: TObject);
    procedure actSetUSExecute(Sender: TObject);
    procedure actSQLOznacitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rsPropSaver1AfterLoad(Sender: TObject);
    procedure actSetUSClearExecute(Sender: TObject);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvViewDATSPLATNOSTStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tvViewNAZEVStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
    LastDatLikvidace: TDateTime;
    aWorkStyle      : TcxStyle;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  FDfrmBrowse: TFDfrmBrowse;

implementation

uses variants, uVarClass, FDdmdu, fGetDateDlg, FDfrmuModule, appdmduSystem, ZSfrmuModule,
  FVfrmuModule, appfrmuGlobal, FDConstDefunit, fMessageDlg,
  fKatalogyModul, fStatusLook, FVdmdu, FDfrmuEdit, AOPdmdu;

{$R *.DFM}

constructor TFDfrmBrowse.Create(AOwner: TComponent);
begin
  inherited;
  aWorkStyle           := TcxStyle.Create(Self);
  SqlControler.DataSet := FDdmd.FDSeznam;
  MasterDs.DataSet     := SqlControler.DataSet;

  fraSQLCondition.Initialize;

  actFDLikvidace.Visible := FDfrmModule.gbEnableRucniLikvidace;
  LastDatLikvidace       := date;

  tvView.DataController.KeyFieldNames := 'SID';
  tvViewVYBER.RepositoryItem          := dmdGlobal.repBoolChar;
  tvViewLIKVOK.RepositoryItem         := dmdGlobal.repBoolChar;
  tvViewSTATEUSER.RepositoryItem      := dmdGlobal.repFVDStatus;

  ReStoreViewSettings(tvView);

  // dxBarManager1.Style := jfaBarMngStyle;

  with rsPropSaver1 do
  begin
    Active := true;
    LoadValues;
  end;
end;

procedure TFDfrmBrowse.actRecDetailExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := FDdmd.FDSeznamSID.AsString;
  if FDGetDetail(iresult) then
    IntRefreshAndFind(iresult);

end;

procedure TFDfrmBrowse.actRecNewExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := FDdmd.FDSeznamSID.AsString;
  if FDGetDetail(iresult, true) then
    IntRefreshAndFind(iresult);

end;

procedure TFDfrmBrowse.gbCustomMDIFormPrint(Sender: TObject);
begin
  inherited;
  FDfrmModule.PrintModule(IsDefaultReport, FDdmd.FDSeznamSID.AsString);
end;

procedure TFDfrmBrowse.actRecKopieExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := FDdmd.FDSeznamSID.AsString;
  if FDGetDetail(iresult) then
    IntRefreshAndFind(iresult);

end;

procedure TFDfrmBrowse.actFDShowZasilkaExecute(Sender: TObject);
var
  iZS: string;
begin
  { DONE : Doplnit o zobrazeni zasilky }
  FDdmd.mod_OpenRecord(FDdmd.FDSeznamSID.AsString);

  iZS := FDdmd.dtsFDPolREFZASILKA.AsString;

  if iZS <> EmptyStr then
    ZSfrmModule.ShowDetail(iZS, fsmEdit);

end;

procedure TFDfrmBrowse.actFDLikvidaceExecute(Sender: TObject);
var
  aDate     : TDateTime;
  AFaktura  : string;
  ALikvidace: boolean;
begin
  aDate      := LastDatLikvidace;
  ALikvidace := not FDdmd.FDSeznamLIKVOK.AsBoolean;
  AFaktura   := FDdmd.FDSeznamSID.AsString;

  if not FDfrmModule.gbRychlaLikvidace then
    if ALikvidace then
      if dateGetMaxDate(aDate) then
        LastDatLikvidace := aDate
      else
        exit;

  FDfrmModule.FDLikvidace(ALikvidace, AFaktura, aDate);

  actRecRefresh.Execute;

end;

procedure TFDfrmBrowse.actSetUSExecute(Sender: TObject);
var
  lcKeyValue: variant;
  dlg       : TfrmAppStausLook;
begin
  dlg := appGetStatusUserLook(AppCompsDM.dtsFVDUs, 'Faktury');
  try
    if dlg.Look(lcKeyValue) then
    begin
      FDdmd.FDSeznam.Edit;
      FDdmd.FDSeznamSTATEUSER.AsInteger := lcKeyValue;
      FDdmd.FDSeznam.Post;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TFDfrmBrowse.actSQLOznacitExecute(Sender: TObject);
begin
  // inherited;
  MasterDs.DataSet.Edit;
  MasterDs.DataSet.FieldByName(FLD_VYBEROVEPOLE).AsBoolean := not MasterDs.DataSet.FieldByName(FLD_VYBEROVEPOLE).AsBoolean;
  MasterDs.DataSet.Post;

end;

procedure TFDfrmBrowse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;

end;

procedure TFDfrmBrowse.tvViewDATSPLATNOSTStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  //
  if ARecord is TcxGridDataRow then
  begin
    if ARecord.Values[tvViewLIKVOK.Index] = 'T' then
    begin
      AStyle := dmdGlobal.cxsFDUhrazeno;
    end
    else
    begin
      if ARecord.Values[tvViewDATSPLATNOST.Index] < date then
        AStyle := dmdGlobal.cxsFDDluh
    end;
  end;

end;

procedure TFDfrmBrowse.tvViewNAZEVStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColor : Integer;
  aAopKod: string;
begin
  if dmdGlobal.gvAOPUseStatusColorOtherEvi then
  begin
    aAopKod := '';

    if ARecord is TcxGridDataRow then
    begin
      aAopKod := VarToStr(ARecord.Values[tvViewAOPKOD.Index]);
      if aAopKod <> '' then
      begin
        aColor := AOPdmd.GetAopColor(aAopKod);
        if aColor >= 0 then
        begin
          RowStyle.Color := aColor;
          AStyle         := RowStyle;
        end;
      end;
    end;
  end;

end;

procedure TFDfrmBrowse.tvViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
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

procedure TFDfrmBrowse.rsPropSaver1AfterLoad(Sender: TObject);
begin
  inherited;
  if Assigned(fraSQLCondition) then
    fraSQLCondition.Visible := actShowSQLPanel.Checked;

end;

procedure TFDfrmBrowse.actSetUSClearExecute(Sender: TObject);
begin
  FDdmd.FDSeznam.Edit;
  FDdmd.FDSeznamSTATEUSER.Clear;
  FDdmd.FDSeznam.Post;
end;

end.
