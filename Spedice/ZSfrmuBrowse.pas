{ ***************************************************************
  *
  * Unit Name: ZSBrowse
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit ZSfrmuBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, rsStorage, rsPropSaver, Menus,
  DBActns, ActnList, Db, ExtCtrls, FDfrauPrehled, FVfrauPrehled,
  uCustomForms, ZSfrauUdalosti, cxPC, cxControls, fModulBrowse,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, fZSDokumenty, cxSplitter, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxStyles, cxDBEdit,
  cxBarEditItem, cxGraphics, uSqlParser, cxListBox, cxLabel, IBODataset,
  cxMaskEdit, cxButtonEdit, dxBarExtItems, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxPCdxBarPopupMenu;

type
  TZSBrowseFrm = class(TfrmModulBrowse)
    ActionListZS: TActionList;
    actAktualizace: TAction;
    actAvizo: TAction;
    actPozEdit: TAction;
    rspForm: TrsPropSaver;
    spnlMoreInfo: TPanel;
    spnlPoznamka: TPanel;
    pnlHistorieUdalost: TPanel;
    pgcPohledy: TcxPageControl;
    tbsHistorie: TcxTabSheet;
    tbsFakturyDosle: TcxTabSheet;
    tbsKorespondence: TcxTabSheet;
    tbsVydaneFaktury: TcxTabSheet;
    fraUdalosti: TZSfraUdalosti;
    actZobrazDetaily: TAction;
    actStateUser: TAction;
    tvViewSTAV: TcxGridDBColumn;
    tvViewZASILKA: TcxGridDBColumn;
    tvViewTYP: TcxGridDBColumn;
    tvViewDATUM: TcxGridDBColumn;
    tvViewINTOBJ: TcxGridDBColumn;
    tvViewDISPECER: TcxGridDBColumn;
    tvViewINTSTREDISKO: TcxGridDBColumn;
    tvViewMESIC: TcxGridDBColumn;
    tvViewPRIKAZCE: TcxGridDBColumn;
    tvViewSUBSTRATINFO: TcxGridDBColumn;
    tvViewDOPRAVCE: TcxGridDBColumn;
    tvViewVOZIDLO: TcxGridDBColumn;
    tvViewAUTOSPZ: TcxGridDBColumn;
    tvViewNSTAT: TcxGridDBColumn;
    tvViewNPSC: TcxGridDBColumn;
    tvViewNMISTO: TcxGridDBColumn;
    tvViewVDATUM: TcxGridDBColumn;
    tvViewVSTAT: TcxGridDBColumn;
    tvViewVPSC: TcxGridDBColumn;
    tvViewVMISTO: TcxGridDBColumn;
    tvViewHMBRUTTO: TcxGridDBColumn;
    tvViewHMTEXT: TcxGridDBColumn;
    tvViewPRIKAZ: TcxGridDBColumn;
    tvViewCENASMLUVNI: TcxGridDBColumn;
    tvViewCENAJEDNOTKA: TcxGridDBColumn;
    tvViewCENAJEDNOTKY: TcxGridDBColumn;
    tvViewCENAMENA: TcxGridDBColumn;
    tvViewCENADOPRAVCE: TcxGridDBColumn;
    tvViewCENAPLATCI: TcxGridDBColumn;
    tvViewCENAPROVIZE: TcxGridDBColumn;
    tvViewCREADATE: TcxGridDBColumn;
    tvViewCREAID: TcxGridDBColumn;
    tvViewUPDDATE: TcxGridDBColumn;
    tvViewUPDID: TcxGridDBColumn;
    tvViewSTATEUSER: TcxGridDBColumn;
    tvViewVYBER: TcxGridDBColumn;
    tvViewJEFAKTURA: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxbrMain: TdxBar;
    dxbModulZavrit: TdxBarButton;
    dxbGrdExport: TdxBarButton;
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
    dxbAdminStorno: TdxBarButton;
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
    dxbZSShowDetail: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxb1: TdxBarButton;
    dxbrgrpAdministrator: TdxBarGroup;
    cxs1: TcxSplitter;
    cxssMoreInfo: TcxSplitter;
    dxbPrint: TdxBarButton;
    dxb2: TdxBarButton;
    actStornoDokladu: TAction;
    mePoznamka: TcxDBMemo;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    dxBarButton2: TdxBarButton;
    tvViewAOPKOD_OBJ: TcxGridDBColumn;
    tvViewAOPKOD_DOP: TcxGridDBColumn;
    tvViewSID: TcxGridDBColumn;
    tvViewSTATEUSERCOLOR: TcxGridDBColumn;
    tvViewNAKLADKA: TcxGridDBColumn;
    tvViewVYKLADKA: TcxGridDBColumn;
    dxbGrdRestore: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxbPnlSQL: TdxBarButton;
    actStateUserClear: TAction;
    dxb3: TdxBarButton;
    tvViewTYDEN: TcxGridDBColumn;
    tvViewFDCELKEM: TcxGridDBColumn;
    tvViewFVCELKEM: TcxGridDBColumn;
    tvViewVYRIZENO: TcxGridDBColumn;
    tvViewFVDPROVIZE: TcxGridDBColumn;
    tvViewONCELKEM: TcxGridDBColumn;
    tvViewOVCELKEM: TcxGridDBColumn;
    tvViewKRATKEINFO: TcxGridDBColumn;
    dxbIncFind: TdxBarButton;
    dxbFullRefresh: TdxBarButton;
    tvViewDATPORIZENI: TcxGridDBColumn;
    actVyrizeno: TAction;
    dxbVyrizeno: TdxBarButton;
    dxbSubSeznam: TdxBarSubItem;
    dxBarStatic1: TdxBarStatic;
    dxbGridStyle: TdxBarButton;
    rspSQL: TrsPropSaver;
    tvViewTRASYPOCET: TcxGridDBColumn;
    actVyrizenoAll: TAction;
    dxBarButton3: TdxBarButton;
    procedure actRecDetailExecute(Sender: TObject);
    procedure actRecKopieExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure actPozEditExecute(Sender: TObject);
    procedure MasterDsDataChange(Sender: TObject; Field: TField);
    procedure actRecSetStornoExecute(Sender: TObject);
    procedure pgcPohledyChange(Sender: TObject);
    procedure gbCustomMDIFormPrint(Sender: TObject);
    procedure rspFormAfterLoad(Sender: TObject);
    procedure actZobrazDetailyExecute(Sender: TObject);
    procedure fraUdalostiactNewExecute(Sender: TObject);
    procedure actStateUserExecute(Sender: TObject);
    procedure actStornoDokladuExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actStateUserClearExecute(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure actVyrizenoExecute(Sender: TObject);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tvViewSTAVStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tmr1Timer(Sender: TObject);
    procedure jfsCustomMDIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvViewDOPRAVCEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tvViewPRIKAZCEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure actVyrizenoAllExecute(Sender: TObject);
  private
    { Private declarations }
    fraZSDokumenty: TfraZSDokumenty;
    frameFD       : TFDfraPrehled;
    frameFV       : TFVfraPrehled;
  protected
    procedure OznacVyber; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

  // var
  // ZSBrowseFrm: TZSBrowseFrm;

implementation

uses
  uVarClass, variants, fMessageDlg, appdmduSystem, ZSdmdu, DOCfrmuModule, ZSfrmuModule,
  FDfrmuModule, DOCdmdu, FVdmdu, FVfrmuModule, FDdmdu, appfrmuGlobal,
  ZSConstDefUnit, DOCConstDefUnit, appunConst, fMemoTextDlg, fStatusLook,
  fKatalogyModul, FDfrmuEdit, AOPdmdu, fZsConfirmCopy;

resourcestring
  SSystMovZZnamySlouKEvidenciDLeItChZmNVDatabZi = 'Systémové záznamy slouží k evidenci dùležitých zmìn v databázi.';

{$R *.DFM}

procedure TZSBrowseFrm.actRecDetailExecute(Sender: TObject);
var
  iresult: string;
begin
  inherited;
  iresult := ZSdmd.ZasilkySeznamSID.AsString;
  if ZSfrmModule.ShowDetail(iresult, fsmEdit) then
    IntRefreshAndFind(iresult);
end;

procedure TZSBrowseFrm.actRecKopieExecute(Sender: TObject);
const
  smsgOKCopyRecord = 'Opravdu chcete kopírovat aktuální záznam?' + #10#13 + 'Pokud ne stisknìte NE';
var
  ires: string;
begin

  if ZSConfirmCopy then
  begin
    ires := ZSdmd.ZSZasilkaCopy(ZSdmd.ZasilkySeznamSID.AsString);

    ZSfrmModule.ShowDetail(ires, fsmEdit);
    IntRefreshAndFind(ires);

  end;
end;

procedure TZSBrowseFrm.actRecNewExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := ZSdmd.ZasilkySeznamSID.AsString;
  if ZSfrmModule.ShowDetail(iresult, fsmInsert) then
    IntRefreshAndFind(iresult);
end;

procedure TZSBrowseFrm.actPozEditExecute(Sender: TObject);
begin
  with TfrmMemoTextDlg.Create(self) do
  begin
    edMemo.Lines.Assign(mePoznamka.Lines);
    if ShowModal = mrOk then
    begin
      ZSdmd.ZasilkySeznam.Edit;
      ZSdmd.ZasilkySeznamIntPoznamka.Assign(edMemo.Lines);
      ZSdmd.ZasilkySeznam.Post;
    end;
  end;
end;

procedure TZSBrowseFrm.MasterDsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  // Prepneme stranku udalosti do Browse
  // fraUdalosti.SetEditMode(false);
  if actZobrazDetaily.Checked then
  begin
    if pgcPohledy.ActivePage = tbsHistorie then
      ZSdmd.ViewShowZasilka(ZSdmd.ZasilkySeznamSID.AsString)
    else if pgcPohledy.ActivePage = tbsFakturyDosle then
    begin
      ZSdmd.dtsZAFd.Close;
      ZSdmd.dtsZAFd.ParamByName('SID').AsString := ZSdmd.ZasilkySeznamSID.AsString;
      ZSdmd.dtsZAFd.Open;
    end
    else if pgcPohledy.ActivePage = tbsVydaneFaktury then
      FVfrmModule.ViewShowZasilka(ZSdmd.ZasilkySeznamSID.AsString)
    else if pgcPohledy.ActivePage = tbsKorespondence then
    begin
      with ZSdmd.ZADopisy do
      begin
        Close;
        ParamByName('SID').AsString := ZSdmd.ZasilkySeznamSID.AsString;
        Open;
      end
    end;
  end;
end;

procedure TZSBrowseFrm.actRecSetStornoExecute(Sender: TObject);
begin
  if ZSdmd.ZasilkySeznamJEFAKTURA.AsBoolean = true then
    DisplayError(SERR_ZS_FAKTURAEXIST, '')
  else
    inherited;

end;

procedure TZSBrowseFrm.pgcPohledyChange(Sender: TObject);
begin
  MasterDsDataChange(self, nil);
end;

procedure TZSBrowseFrm.gbCustomMDIFormPrint(Sender: TObject);
begin
  inherited;
  ZSfrmModule.PrintModule(IsDefaultReport, ZSdmd.ZasilkySeznamSID.AsString);
end;

procedure TZSBrowseFrm.jfsCustomMDIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  ResetRefreshTimer;
end;

procedure TZSBrowseFrm.rspFormAfterLoad(Sender: TObject);
begin
  spnlMoreInfo.Visible := actZobrazDetaily.Checked;
  if Assigned(fraSQLCondition) then
    fraSQLCondition.Visible := actShowSQLPanel.Checked;
  IncSearch                 := actIncFind.Checked;

end;

procedure TZSBrowseFrm.actZobrazDetailyExecute(Sender: TObject);
begin
  actZobrazDetaily.Checked := not actZobrazDetaily.Checked;
  spnlMoreInfo.Visible     := actZobrazDetaily.Checked;
  cxssMoreInfo.Visible     := actZobrazDetaily.Checked;

  MasterDsDataChange(nil, nil);
end;

procedure TZSBrowseFrm.fraUdalostiactNewExecute(Sender: TObject);
begin
  inherited;
  fraUdalosti.actNewExecute(Sender);

end;

procedure TZSBrowseFrm.actStateUserExecute(Sender: TObject);
var
  lcKeyValue: variant;
  dlg       : TfrmAppStausLook;
begin
  dlg := appGetStatusUserLook(AppCompsDM.dtsZSUS, 'Pøepravy');
  try
    if dlg.Look(lcKeyValue) then
    begin
      ZSdmd.ZasilkySeznam.Edit;
      ZSdmd.ZasilkySeznamSTATEUSER.AsInteger := lcKeyValue;
      ZSdmd.ZasilkySeznam.Post;
    end;
  finally
    dlg.Free;
  end;

end;

constructor TZSBrowseFrm.Create(AOwner: TComponent);
begin
  inherited;
  SqlControler.DataSet := ZSdmd.ZasilkySeznam;
  MasterDs.DataSet     := SqlControler.DataSet;

  fraSQLCondition.Initialize;

  dxBarManager1.Style                 := GetdmdGlobal.GetCurrBarStyle;
  tvView.DataController.KeyFieldNames := 'SID';
  tvViewVYBER.RepositoryItem          := dmdGlobal.repBoolChar;
  tvViewJEFAKTURA.RepositoryItem      := dmdGlobal.repBoolChar;
  fraZSDokumenty                      := TfraZSDokumenty.Create(self);
  fraZSDokumenty.Parent               := tbsKorespondence;
  fraZSDokumenty.dsView.DataSet       := GetZSdmd.ZADopisy;
  fraZSDokumenty.dsView.DataSet.Open;
  fraZSDokumenty.dxBarManager1.Style := dxBarManager1.Style;
  fraUdalosti.dxBarManager1.Style    := dxBarManager1.Style;

  frameFD        := TFDfraPrehled.Create(self);
  frameFD.Parent := tbsFakturyDosle;
  frameFD.Align  := alClient;

  frameFV                     := TFVfraPrehled.Create(self);
  frameFV.Parent              := tbsVydaneFaktury;
  frameFV.Align               := alClient;
  tbsKorespondence.TabVisible := dmdSystem.gbAktivace.GetModulDopisy;

  if jfaUserInfo.AdminsUser then
    dxbrgrpAdministrator.Visible := ivAlways
  else
    dxbrgrpAdministrator.Visible := ivNever;

  tbsFakturyDosle.TabVisible       := dmdSystem.gbAktivace.GetModulFakturace;
  tbsVydaneFaktury.TabVisible      := dmdSystem.gbAktivace.GetModulFakturace;
  frameFD.dsView.DataSet           := ZSdmd.dtsZAFd;
  frameFD.dxBarManager1.Style      := dxBarManager1.Style;
  frameFD.actFDNew.Visible         := False;
  actAvizo.Visible                 := dmdSystem.gbAktivace.GetModulDopisy;
  tvViewSTATEUSER.RepositoryItem   := dmdGlobal.repZSStatus;
  mePoznamka.DataBinding.DataField := 'IntPoznamka';

  ReStoreViewSettings(tvView);
  ReStoreViewSettings(frameFV.tvPrehled);
  ReStoreViewSettings(frameFD.tvPrehled);
  // ReStoreViewSettings(fraUdalosti.tvPrehled);
  ReStoreViewSettings(fraZSDokumenty.tvPrehled);

  rspSQL.Active := true;
  rspSQL.LoadValues;

end;

procedure TZSBrowseFrm.OznacVyber;
begin
  inherited;
end;

procedure TZSBrowseFrm.actStornoDokladuExecute(Sender: TObject);
var
  pSQL: string;
  aKey: string;
begin
  aKey := ZSdmd.ZasilkySeznamSID.AsString;
  pSQL := 'update ZS set STAV = iif(STAV = 2, 1 , 2 ) where SID = ''' + aKey + '''';
  try
    dmdSystem.ExecuteSql(pSQL);
    IntRefreshAndFind(aKey);
  except
    raise;
  end;
end;

procedure TZSBrowseFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    StoreViewSettings(tvView);
    StoreViewSettings(frameFV.tvPrehled);
    StoreViewSettings(frameFD.tvPrehled);
    StoreViewSettings(fraUdalosti.tvPrehled);
    StoreViewSettings(fraZSDokumenty.tvPrehled);
  except

  end;
  inherited;

end;

procedure TZSBrowseFrm.actStateUserClearExecute(Sender: TObject);
begin
  ZSdmd.ZasilkySeznam.Edit;
  ZSdmd.ZasilkySeznamSTATEUSER.Clear;
  ZSdmd.ZasilkySeznam.Post;
end;

procedure TZSBrowseFrm.tmr1Timer(Sender: TObject);
begin
  inherited;
  //
end;

procedure TZSBrowseFrm.tvViewDOPRAVCEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColor : Integer;
  aAopKod: string;
begin
  if dmdGlobal.gvAOPUseStatusColorOtherEvi then
  begin
    aAopKod := '';

    if ARecord is TcxGridDataRow then
    begin
      aAopKod := VarToStr(ARecord.Values[tvViewAOPKOD_DOP.Index]);
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

procedure TZSBrowseFrm.tvViewPRIKAZCEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColor : Integer;
  aAopKod: string;
begin
  if dmdGlobal.gvAOPUseStatusColorOtherEvi then
  begin
    aAopKod := '';

    if ARecord is TcxGridDataRow then
    begin
      aAopKod := VarToStr(ARecord.Values[tvViewAOPKOD_OBJ.Index]);
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

procedure TZSBrowseFrm.tvViewSTAVStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridDataRow then
  begin
    if ARecord.Values[tvViewFDCELKEM.Index] > 0 then
      AStyle := dmdGlobal.cxsZSFD;
    if ARecord.Values[tvViewDOPRAVCE.Index] = null then
      AStyle := dmdGlobal.cxsZSBezDopravce;
    if ARecord.Values[tvViewJEFAKTURA.Index] = 'T' then
      AStyle := dmdGlobal.cxsZSVydanaFV;
    if (ARecord.Values[tvViewJEFAKTURA.Index] = 'T') and (ARecord.Values[tvViewFDCELKEM.Index] <= 0) then
      AStyle := dmdGlobal.cxsZSVydanaBezDosle;
  end;
end;

procedure TZSBrowseFrm.tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridDataRow then
  begin
    if VarToStr(ARecord.Values[tvViewSTATEUSERCOLOR.Index]) <> '' then
    begin
      RowStyle.Color := ARecord.Values[tvViewSTATEUSERCOLOR.Index];
      AStyle         := RowStyle;
    end
    else if ARecord.Values[tvViewVYRIZENO.Index] = 'T' then
      AStyle := ZSfrmModule.cxsVyrizeno
    else if ARecord.Values[tvViewSTAV.Index] = 2 then
      AStyle := dmdGlobal.cxsRecStorno
    else if ARecord.Values[tvViewSTAV.Index] = 3 then
      AStyle := dmdGlobal.cxsRecArchive
  end;

end;

procedure TZSBrowseFrm.dxBarButton8Click(Sender: TObject);
begin
  inherited;
  ZSdmd.ZasilkySeznam.RefreshRows;
end;

procedure TZSBrowseFrm.actVyrizenoAllExecute(Sender: TObject);
var
  OkUpdate : Boolean;
  UpdateVal: string;

  procedure SetState(aState: string);
  begin
    ZSdmd.ZasilkySeznam.Edit;
    ZSdmd.ZasilkySeznamVYRIZENO.AsString := aState;
    ZSdmd.ZasilkySeznam.Post;
  end;

begin
  if ZSdmd.ZasilkySeznamVYRIZENO.AsString = 'F' then
  begin
    OkUpdate := DisplayConfirm('Pøejete si oznaèit vybrané záznamy stavem "Vyøízeno"?');
    UpdateVal := 'T';
  end
  else
  begin
    OkUpdate := DisplayConfirm('Pøejete si zrušit stav "Vyøízeno" u vybraných záznamù?');
    UpdateVal := 'F';
  end;
  if OkUpdate then
  begin
    ZSdmd.ZasilkySeznam.First;
    while not ZSdmd.ZasilkySeznam.eof do
    begin
      SetState(UpdateVal);
      ZSdmd.ZasilkySeznam.Next;
    end;
  end
end;

procedure TZSBrowseFrm.actVyrizenoExecute(Sender: TObject);
  procedure SetState(aState: string);
  begin
    ZSdmd.ZasilkySeznam.Edit;
    ZSdmd.ZasilkySeznamVYRIZENO.AsString := aState;
    ZSdmd.ZasilkySeznam.Post;

  end;

begin
  if ZSdmd.ZasilkySeznamVYRIZENO.AsString = 'F' then
  begin
    if DisplayConfirm('Pøejete si oznaèit pøepravu stavem "Vyøízeno"?') then
      SetState('T');
  end
  else
  begin
    if DisplayConfirm('Pøejete si zrušit stav "Vyøízeno"?') then
      SetState('F');
  end;

end;

end.
