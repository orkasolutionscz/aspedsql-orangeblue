unit fZSEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AOPfrmuModule, ExtCtrls, StdCtrls, ActnList, Db, uCustomForms,
  rsStorage, rsPropSaver, dxBarExtItems, FDfrauPrehled,
  cxPC, cxMemo, cxCurrencyEdit, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLabel, cxButtonEdit, cxTextEdit,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar,
  frCustomDocsFrame, ZSfrauOstNaklad, fZSProvizeDelene,
  cxCalendar, cxDBEdit, fCustEdit, DBActns, dxLayoutControl, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxPCdxBarPopupMenu,
  uEnterTab;

type
  TfrmZSDetail = class(TfrmCustEdit)
    ActionListZS: TActionList;
    actPohybyNew: TAction;
    actPohybyEdit: TAction;
    actPlatceEdit: TAction;
    actPlatceNew: TAction;
    dsPlatci: TDataSource;
    dsPohyby: TDataSource;
    rsPropSaver1: TrsPropSaver;
    actSendPotvrzeni: TAction;
    actSendObjednavka: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actGetObj: TAction;
    actGetPotv: TAction;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    actPrintObj: TAction;
    actPrintPotv: TAction;
    dxb3: TdxBarButton;
    dxb4: TdxBarButton;
    dxb5: TdxBarButton;
    dxb6: TdxBarButton;
    scrDetail: TScrollBox;
    pnlTitulek: TPanel;
    lblLabel10: TcxLabel;
    lblLabel11: TcxLabel;
    lblLabel14: TcxLabel;
    lblLabel15: TcxLabel;
    lblLabel5: TcxLabel;
    lbl1: TcxLabel;
    lblPrikEmail: TcxLabel;
    edIntObj: TcxDBTextEdit;
    edStredisko: TcxDBTextEdit;
    edPrikEmails: TcxDBTextEdit;
    edDatPorizeni: TcxDBDateEdit;
    edZasilka: TcxDBButtonEdit;
    cbTypPrepravy: TcxDBLookupComboBox;
    cbPrikNazev: TcxDBLookupComboBox;
    dxpDopravce: TcxPageControl;
    tbsDopravce: TcxTabSheet;
    lblFs3DLabel3: TcxLabel;
    lblFs3DLabel2: TcxLabel;
    lblLabel13: TcxLabel;
    lblFs3DLabel1: TcxLabel;
    lblLabel21: TcxLabel;
    lblCenaCelkem: TcxLabel;
    lblLabel1: TcxLabel;
    lblLabel6: TcxLabel;
    lblLabel7: TcxLabel;
    lblLabel9: TcxLabel;
    lblLabel12: TcxLabel;
    lblLabel17: TcxLabel;
    lblLabel8: TcxLabel;
    lbl3: TcxLabel;
    lblCelkemSDph: TcxLabel;
    lblDopEmail: TcxLabel;
    edCenaPodminky: TcxDBTextEdit;
    edDopEmails: TcxDBTextEdit;
    edAutoSPZ: TcxDBButtonEdit;
    edCenaSmluvni: TcxDBCurrencyEdit;
    edCenaJednotky: TcxDBCurrencyEdit;
    edCenaSrazky: TcxDBCurrencyEdit;
    edCenaKurs: TcxDBCurrencyEdit;
    edCenaSuma: TcxDBCurrencyEdit;
    edCenaDopravce: TcxDBCurrencyEdit;
    edCENASUMASDPH: TcxDBCurrencyEdit;
    edCENADPH: TcxDBCurrencyEdit;
    cbCenaMena: TcxDBLookupComboBox;
    cbCenaDPHProc: TcxDBLookupComboBox;
    cbCenaJednotka: TcxDBLookupComboBox;
    cbVozidlo: TcxDBLookupComboBox;
    cbDopNazev: TcxDBLookupComboBox;
    tbsOstNakl: TcxTabSheet;
    tbsDopravceFaktury: TcxTabSheet;
    tbsDocs: TcxTabSheet;
    pnlPlatci: TPanel;
    grdPlatci: TcxGrid;
    glvPlatci: TcxGridLevel;
    btnPlatci: TcxButton;
    cxButton2: TcxButton;
    lblTrasz: TcxLabel;
    pnlTrasa: TPanel;
    btnPohyby: TcxButton;
    grdPohyby: TcxGrid;
    tvPohyby: TcxGridDBTableView;
    tvPohybyID: TcxGridDBColumn;
    tvPohybyTYP: TcxGridDBColumn;
    tvPohybyPOPIS: TcxGridDBColumn;
    tvPohybyPORADI: TcxGridDBColumn;
    tvPohybyADRESA3: TcxGridDBColumn;
    tvPohybyPSC: TcxGridDBColumn;
    tvPohybyZEMEKOD: TcxGridDBColumn;
    tvPohybySPOJENI: TcxGridDBColumn;
    tvPohybyDATUM: TcxGridDBColumn;
    tvPohybyCAS: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    lblTras: TcxLabel;
    pnlSubstrat: TPanel;
    lblSubstrat: TcxLabel;
    lblLabel4: TcxLabel;
    edSubstrat: TcxDBTextEdit;
    edHMText: TcxDBTextEdit;
    edHmotnost: TcxDBCurrencyEdit;
    pnlSubstratInfo: TPanel;
    pnlPrikaz: TPanel;
    lblLabel3: TcxLabel;
    edPrikaz: TcxDBTextEdit;
    pnlClo: TPanel;
    lblSensitiveLabel3: TcxLabel;
    pnlPoznamka: TPanel;
    lblSensitiveLabel1: TcxLabel;
    pnl1: TPanel;
    lbl2: TcxLabel;
    edKratkeInfo: TcxDBTextEdit;
    edSubstratPopis: TcxDBMemo;
    edClo: TcxDBMemo;
    edMemo: TcxDBMemo;
    lbl4: TcxLabel;
    dxbMaxRadky: TdxBarSpinEdit;
    dbxs1: TdxBarSubItem;
    dxb7: TdxBarButton;
    dxb8: TdxBarButton;
    dxb9: TdxBarButton;
    dbxs2: TdxBarSubItem;
    dxbShowPnlDopDown: TdxBarButton;
    dxbShowPnlDopTop: TdxBarButton;
    tbsProvize: TcxTabSheet;
    edDispecer: TcxDBLookupComboBox;
    edSplatnost: TcxDBCurrencyEdit;
    lbl5: TcxLabel;
    jfEnterAsTab1: TjfEnterAsTab;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actRecDeleteExecute(Sender: TObject);

    procedure actPohybyNewExecute(Sender: TObject);
    procedure actPohybyEditExecute(Sender: TObject);
    procedure ActionListZSUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure actPlatceNewExecute(Sender: TObject);
    procedure actPlatceEditExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure grdPohybyDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edZasilkaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure actRecordMove(Sender: TObject);
    procedure edCenaKursDblClick(Sender: TObject);
    procedure gbCustomEditFormPrint(Sender: TObject);
    procedure dsPlatciDataChange(Sender: TObject; Field: TField);
    procedure dsPohybyDataChange(Sender: TObject; Field: TField);
    procedure tvPlatciDblClick(Sender: TObject);
    procedure edAutoSPZPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actSendPotvrzeniExecute(Sender: TObject);
    procedure actSendObjednavkaExecute(Sender: TObject);
    procedure actGetObjExecute(Sender: TObject);
    procedure actGetPotvExecute(Sender: TObject);
    procedure actPrintObjExecute(Sender: TObject);
    procedure actPrintPotvExecute(Sender: TObject);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure dxbShowPnlDopDownClick(Sender: TObject);
    procedure dxbShowPnlDopTopClick(Sender: TObject);
    procedure rsPropSaver1AfterLoad(Sender: TObject);
    procedure jfsCustomEvidFormShow(Sender: TObject);
    procedure dxbMaxRadkyChange(Sender: TObject);
    procedure cbDopNazevPropertiesCloseUp(Sender: TObject);
    procedure cbPrikNazevPropertiesCloseUp(Sender: TObject);

  private
    { Private declarations }
    ZmenaNakVyk: Boolean;
    ZmenaPlatci: Boolean; // pomocne nastaveni priznamu o provedenych zmenach;
    { Pomocne promenne pro neviditelne pole }
    // fldJeFaktura: boolean;
    framePrilohy: TfraCustomDocs;
    frameOstNakl: TZSfraOstNakl;
    frameProvize: TfraZSProvize;
    frameFD     : TFDfraPrehled;

    OldFirmyPropertiesButtonClick: TcxEditButtonClickEvent;

    procedure edNakVyk(DataInsert: Boolean);
    procedure edPlatci(DataInsert: Boolean);
    procedure repFirmyClick(Sender: TObject; AButtonIndex: Integer);
    procedure repPrikazceClick(Sender: TObject; AButtonIndex: Integer);
    function CalcPanelHeigth(AMemo: TcxDBMemo): Integer;
    procedure RecalcPanely;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  variants, uVarClass, uAppUtils, JclFileUtils, appdmduSystem, ZSdmdu, FVfrmuModule,
  fMessageDlg, ZSfrmuModule, FDfrmuModule, FDdmdu, appfrmuGlobal,
  appIniOptionsUnit, ZSPlatciDetailForm, AOPdmdu, FVdmdu, appGenIdUnit,
  ZSConstDefUnit, fKatalogyModul, AOPfrmuEdit, AOPConstDefUnit, AOPfrmuPickUser,
  fZSNakVyk, appReportManagerForm, appReportModule, JclMapi, appReportUtils,
  fZsConfirmCopy;

resourcestring
  SChceteKopRovatAktuLnPEpravu = ' Chcete kopírovat aktuální pøepravu?';
  SNovSloPozice = 'Nové èíslo pozice';
  SPEpravaJeJeJiFakturovNa = 'Pøeprava je je již fakturována.';
  SPoziceRadaSelect = 'V poli Pozice kliknìte na ... a vyberte èíselnou øadu. Pak kliknìte na tlaèítko Zapsat.';
  SVybertePSluNouSazbuDPH = 'Vyberte pøíslušnou sazbu DPH.';
  SZadejtePoEtJednotekVPoliPoEtVTNe0 = 'Zadejte poèet jednotek v poli <Poèet> vìtší než 0.';
  SZadejteSmluvnCenuVTNe0 = 'Zadejte smluvní cenu vìtší než 0.';

{$R *.DFM}

constructor TfrmZSDetail.Create(AOwner: TComponent);
begin
  inherited;
  // if not LoadToolbars then
  LoadToolbars;
  framePrilohy := TfraCustomDocs.Create(self);
  framePrilohy.ConnectToEvid(GetZSdmd.ZasilkySID, ZSdmd.dsZasilky, tbsDocs);
  frameProvize        := TfraZSProvize.Create(self);
  frameProvize.Parent := tbsProvize;
  frameProvize.Align  := alClient;
  frameOstNakl        := TZSfraOstNakl.Create(self);
  frameOstNakl.Parent := tbsOstNakl;
  frameOstNakl.Align  := alClient;
  frameFD             := TFDfraPrehled.Create(self);
  frameFD.Parent      := tbsDopravceFaktury;
  frameFD.Align       := alClient;

{$IFDEF ORANGE}
  tbsOstNakl.TabVisible := True;
  tbsProvize.TabVisible := True;
{$ELSE}
  tbsOstNakl.TabVisible := False;
  tbsProvize.TabVisible := False;
{$ENDIF}
  Caption                              := GetZSModul.ModuleCaption;
  dsZaznam.DataSet                     := ZSdmd.Zasilky;
  dsPlatci.DataSet                     := ZSdmd.ZAPlatci;
  dsPohyby.DataSet                     := ZSdmd.ZAPohyby;
  glvPlatci.GridView                   := ZSdmd.tvPlatci;
  ZSdmd.tvPlatci.OnDblClick            := tvPlatciDblClick;
  OldFirmyPropertiesButtonClick        := GetAopModul.repFirmyFull.Properties.OnButtonClick;
  edDispecer.RepositoryItem            := dmdGlobal.repUsers;
  cbDopNazev.RepositoryItem            := GetAopModul.repFirmyFull;
  cbDopNazev.Properties.OnButtonClick  := repFirmyClick;
  cbPrikNazev.RepositoryItem           := GetAopModul.repFirmyFull;
  cbPrikNazev.Properties.OnButtonClick := repPrikazceClick;
  cbTypPrepravy.RepositoryItem         := dmdGlobal.repZSTypy;
  cbVozidlo.RepositoryItem             := dmdGlobal.repZSAuta;
  edCenaSmluvni.RepositoryItem         := dmdGlobal.repCena;
  edCenaKurs.RepositoryItem            := dmdGlobal.repCNKurz;
  cbCenaMena.RepositoryItem            := dmdGlobal.repMena;
  cbCenaJednotka.RepositoryItem        := dmdGlobal.repJednotky;
  edCenaJednotky.RepositoryItem        := dmdGlobal.repCena;
  cbCenaDPHProc.RepositoryItem         := dmdGlobal.repDphSazba;
  edCenaSrazky.RepositoryItem          := dmdGlobal.repCena;
  edCenaSuma.RepositoryItem            := dmdGlobal.repCenaRO;
  edCENASUMASDPH.RepositoryItem        := dmdGlobal.repCenaRO;
  edCENADPH.RepositoryItem             := dmdGlobal.repCenaRO;
  ZmenaNakVyk                          := False;
  ZmenaPlatci                          := False;
  tbsDopravceFaktury.TabVisible        := dmdSystem.gbAktivace.GetModulFakturace;
  frameFD.dsView.DataSet               := ZSdmd.dtsZAFd;
  // FDfraPrehled.dxbNew.action            := actNewFd;
  tvPohyby.Styles.StyleSheet := dmdGlobal.ModStyleSheet;

  ReStoreViewSettings(ZSdmd.tvPlatci);
  ReStoreViewSettings(tvPohyby);
  ReStoreViewSettings(frameFD.tvPrehled);
  ReStoreViewSettings(frameOstNakl.tvPrehled);
  ReStoreViewSettings(frameProvize.tvPrehled);

  dxpDopravce.ActivePageIndex := 0;
  actPrintObj.Visible         := True;
  actPrintPotv.Visible        := True;
  actRecDelete.Visible        := dmdSystem.gbEnableDelete;
end;

procedure TfrmZSDetail.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ZmenaNakVyk or ZmenaPlatci then
  begin
    IsDataChanged := True;
  end;

  IsDataChanged := True;
  inherited;
end;

procedure TfrmZSDetail.actRecDeleteExecute(Sender: TObject);

begin
  if ZSdmd.ZasilkyJEFAKTURA.AsString = 'T' then
  begin
    DisplayError(SERR_DELETE, SPEpravaJeJeJiFakturovNa);
    SysUtils.Abort;
  end;
  if DisplayConfirm(sMsgConfirmDelete) then
  begin
    ZSdmd.Zasilky.Delete;
    Close;
  end;
end;

procedure TfrmZSDetail.edNakVyk(DataInsert: Boolean);
var
  // frmZSNakVyk: TZSfrmNakVyk;
  frmZSNakVyk: TfrmZSNakVyk;

begin
  actRecPost.Execute;
  frmZSNakVyk := TfrmZSNakVyk.Create(nil);

  try
    if DataInsert then
      ZSdmd.ZAPohyby.Insert;

    if frmZSNakVyk.ShowModal = mrOk then
      self.IsDataChanged := True;
  finally
    frmZSNakVyk.Free;
  end;
end;

procedure TfrmZSDetail.edPlatci(DataInsert: Boolean);
begin
  actRecPost.Execute;
  if DataInsert then
  begin
    dsPlatci.DataSet.Insert;
  end;

  GetPlatceDetail(dsPlatci.DataSet.fieldbyname('ID').AsString);
  IsDataChanged := True;

end;

procedure TfrmZSDetail.actPohybyNewExecute(Sender: TObject);
begin
  edNakVyk(True);
end;

procedure TfrmZSDetail.actPohybyEditExecute(Sender: TObject);
begin
  edNakVyk(False);
end;

procedure TfrmZSDetail.ActionListZSUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  actPohybyEdit.Enabled := not ZSdmd.ZAPohyby.IsEmpty;
  actPlatceEdit.Enabled := not ZSdmd.ZAPlatci.IsEmpty;
end;

procedure TfrmZSDetail.actPlatceNewExecute(Sender: TObject);
begin
  edPlatci(True);
end;

procedure TfrmZSDetail.actPlatceEditExecute(Sender: TObject);
begin
  edPlatci(False);
end;

procedure TfrmZSDetail.actRecCopyExecute(Sender: TObject);
begin
  if ZSConfirmCopy then
    ZSdmd.ZSZasilkaCopy(ZSdmd.ZasilkySID.AsString);
end;

procedure TfrmZSDetail.grdPohybyDblClick(Sender: TObject);
begin
  actPohybyEdit.Execute;
end;

procedure TfrmZSDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZSdmd.tvPlatci.OnDblClick := nil;
  StoreViewSettings(ZSdmd.tvPlatci);
  StoreViewSettings(tvPohyby);
  StoreViewSettings(frameFD.tvPrehled);
  StoreViewSettings(frameProvize.tvPrehled);
  inherited;
end;

procedure TfrmZSDetail.edZasilkaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  sNewRada   : string;
  iNewZasilka: string;
begin
  case AbsoluteIndex of
    0:
      begin
        sNewRada := dmdSystem.SelectNumLine(zsfrmmodule.ModuleName);
        if sNewRada <> EmptyStr then
        begin
          SetEditsState;
          ZSdmd.ZasilkyZASILKA.AsString := sNewRada;
        end;
      end;
    1:
      begin
        { Zmena cisla zasilky }
        iNewZasilka := ZSdmd.ZasilkyZASILKA.AsString;
        if InputQuery(Application.Title, SNovSloPozice, iNewZasilka) then
          if iNewZasilka <> ZSdmd.ZasilkyZASILKA.AsString then
          begin
            SetEditsState;
            ZSdmd.ZasilkyZASILKA.AsString := iNewZasilka;
            ZSdmd.Zasilky.Post;
          end;
      end;
  end;

end;

procedure TfrmZSDetail.actRecordMove(Sender: TObject);
begin
  inherited;
  if Sender = actRecPrior then
    ZSdmd.ZasilkySeznam.prior
  else if Sender = actRecNext then
    ZSdmd.ZasilkySeznam.next;

  ZSdmd.mod_OpenRecord(ZSdmd.ZasilkySeznamSID.AsString);

end;

procedure TfrmZSDetail.edCenaKursDblClick(Sender: TObject);
begin
  SetEditsState;
  ZSdmd.ZasilkyCENAKURS.AsCurrency := mgGetActualKurs(ZSdmd.ZasilkyCENAMENA.AsString);
end;

procedure TfrmZSDetail.gbCustomEditFormPrint(Sender: TObject);
begin
  inherited;
  zsfrmmodule.PrintModule(IsDefaultReport, ZSdmd.ZasilkySID.AsString);
end;

const
  cGridHead = 27;

procedure TfrmZSDetail.dsPlatciDataChange(Sender: TObject; Field: TField);
var
  aCnt: Integer;
begin
  if dsPlatci.DataSet.active then
  begin
    aCnt := dsPlatci.DataSet.RecordCount;
    if aCnt < 1 then
      aCnt := 1;

    pnlPlatci.Height := 27 + (17 * (aCnt + 1));
    // with grdPlatci do
    // begin
    // top := 6;
    // Height := pnlPlatci.Height - 12;
    // end;
  end;

end;

procedure TfrmZSDetail.dsPohybyDataChange(Sender: TObject; Field: TField);
var
  aCnt: Integer;
begin
  if dsPohyby.DataSet.active then
  begin
    aCnt := dsPohyby.DataSet.RecordCount;
    if aCnt < 1 then
      aCnt          := 1;
    pnlTrasa.Height := 27 + (17 * (aCnt + 1));
  end;
end;

procedure TfrmZSDetail.tvPlatciDblClick(Sender: TObject);
begin
  actPlatceEdit.Execute;
end;

function TfrmZSDetail.CalcPanelHeigth(AMemo: TcxDBMemo): Integer;
var
  iCnt: Integer;
begin
  iCnt := AMemo.Lines.Count;

  if iCnt = 0 then
    iCnt := 1;
  if iCnt >= dxbMaxRadky.value then
    iCnt := dxbMaxRadky.IntValue - 1;

  Result := ((iCnt + 1) * 13) + 14;

end;

procedure TfrmZSDetail.cbDopNazevPropertiesCloseUp(Sender: TObject);
var
  lFirma: TFirmaObject;
begin
  if cbDopNazev.EditValue <> null then
  begin
    lFirma := AOPdmd.GetAopInfo(VarToStr(cbDopNazev.EditValue));
    if not(ZSdmd.Zasilky.State in [dsEdit, dsInsert]) then
      ZSdmd.Zasilky.Edit;
    if lFirma <> nil then
    begin
      ZSdmd.ZasilkyAOPKOD_DOP.AsVariant  := lFirma.AOPKod;
      ZSdmd.ZasilkyDOP_EMAILS.AsString   := lFirma.SendingAdress;
      ZSdmd.ZasilkyD_SPLATNOST.AsInteger := lFirma.Splatnost;
    end;
    FreeAndNil(lFirma);
  end
  else
  begin
    ZSdmd.ZasilkyDOP_EMAILS.Clear;
    ZSdmd.ZasilkyD_SPLATNOST.AsInteger := 14;
  end;
end;

procedure TfrmZSDetail.cbPrikNazevPropertiesCloseUp(Sender: TObject);
var
  lFirma: TFirmaObject;
begin
  if cbPrikNazev.EditValue <> null then
  begin
    lFirma := AOPdmd.GetAopInfo(VarToStr(cbPrikNazev.EditValue));
    if not(ZSdmd.Zasilky.State in [dsEdit, dsInsert]) then
      ZSdmd.Zasilky.Edit;
    if lFirma <> nil then
    begin
      ZSdmd.ZasilkyAOPKOD_OBJ.AsVariant := lFirma.AOPKod;
      ZSdmd.ZasilkyOBJ_EMAILS.AsString  := lFirma.SendingAdress;
    end;
    FreeAndNil(lFirma);
  end
  else
  begin
    ZSdmd.ZasilkyOBJ_EMAILS.Clear;
  end;
end;

procedure TfrmZSDetail.edAutoSPZPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  SetEditsState;
  ZSdmd.ZasilkyAUTOSPZ.Clear;
end;

procedure TfrmZSDetail.repFirmyClick(Sender: TObject; AButtonIndex: Integer);
var
  lFirma: TFirmaObject;
begin
  case AButtonIndex of (* *)
    1:
      begin
        lFirma        := TFirmaObject.Create;
        lFirma.AOPKod := VarToStr(cbDopNazev.EditValue);

        try
          if AopGetKontakt(lFirma) then
          begin
            SetEditsState;
            ZSdmd.ZasilkyAOPKOD_DOP.AsVariant  := lFirma.AOPKod;
            ZSdmd.ZasilkyDOP_EMAILS.AsString   := lFirma.SendingAdress;
            ZSdmd.ZasilkyD_SPLATNOST.AsInteger := lFirma.Splatnost;

          end;

        finally
          lFirma.Free;
        end;
      end;
    2:
      begin
        lFirma := TFirmaObject.Create;
        try
          lFirma.AOPKod := VarToStr(cbDopNazev.EditValue);

          if lFirma.AOPKod <> '' then
          begin
            if AopGetDetailSendAdres(lFirma) then
            begin
              SetEditsState;
              ZSdmd.ZasilkyAOPKOD_DOP.AsVariant  := lFirma.AOPKod;
              ZSdmd.ZasilkyDOP_EMAILS.AsString   := lFirma.SendingAdress;
              ZSdmd.ZasilkyD_SPLATNOST.AsInteger := lFirma.Splatnost;
            end;
          end;
        finally
          lFirma.Free;
        end;
      end;
    3:
      begin
        SetEditsState;
        ZSdmd.ZasilkyAOPKOD_DOP.Clear;
        ZSdmd.ZasilkyDOP_EMAILS.Clear;
        ZSdmd.ZasilkyD_SPLATNOST.AsInteger := 14;
      end;
  end; (* case *)

end;

procedure TfrmZSDetail.repPrikazceClick(Sender: TObject; AButtonIndex: Integer);
var
  lFirma: TFirmaObject;
begin
  case AButtonIndex of (* *)
    1:
      begin
        lFirma        := TFirmaObject.Create;
        lFirma.AOPKod := VarToStr(cbPrikNazev.EditValue);

        try
          if AopGetKontakt(lFirma) then
          begin
            SetEditsState;
            ZSdmd.ZasilkyAOPKOD_OBJ.AsVariant := lFirma.AOPKod;
            ZSdmd.ZasilkyOBJ_EMAILS.AsString  := lFirma.SendingAdress;
          end;

        finally
          lFirma.Free;
        end;
      end;
    2:
      begin
        lFirma := TFirmaObject.Create;
        try
          lFirma.AOPKod := VarToStr(cbPrikNazev.EditValue);

          if lFirma.AOPKod <> '' then
          begin
            if AopGetDetailSendAdres(lFirma) then
            begin
              SetEditsState;
              ZSdmd.ZasilkyAOPKOD_OBJ.AsVariant := lFirma.AOPKod;
              ZSdmd.ZasilkyOBJ_EMAILS.AsString  := lFirma.SendingAdress;
            end;
          end;
        finally
          lFirma.Free;
        end;
      end;
    3:
      begin
        SetEditsState;
        ZSdmd.ZasilkyAOPKOD_OBJ.Clear;
        ZSdmd.ZasilkyOBJ_EMAILS.Clear;
      end;
  end; (* case *)

end;

procedure TfrmZSDetail.actSendPotvrzeniExecute(Sender: TObject);
var
  aPdfFile: string;
begin
  if zsfrmmodule.PrepareRepPotvrzeni then
    dmReport.ExportAndSendEmail(zsfrmmodule.gbZSTiskPotvrzeni, zsfrmmodule.frrZS, aPdfFile);

end;

procedure TfrmZSDetail.actSendObjednavkaExecute(Sender: TObject);
var
  aPdfFile: string;
begin
  if zsfrmmodule.PrepareRepObjednavka then
    dmReport.ExportAndSendEmail(zsfrmmodule.gbZSTiskObjednavka, zsfrmmodule.frrZS, aPdfFile);
end;

procedure TfrmZSDetail.actGetObjExecute(Sender: TObject);
begin
  zsfrmmodule.gbZSTiskObjednavka := RMselectSestava(dmReport.GenEvidenceFolder(zsfrmmodule.ModuleName), zsfrmmodule.frrZS);
end;

procedure TfrmZSDetail.actGetPotvExecute(Sender: TObject);
begin
  zsfrmmodule.gbZSTiskPotvrzeni := RMselectSestava(dmReport.GenEvidenceFolder(zsfrmmodule.ModuleName), zsfrmmodule.frrZS);
end;

procedure TfrmZSDetail.actPrintObjExecute(Sender: TObject);
begin
  if zsfrmmodule.PrepareRepObjednavka then
    dmReport.ShowReport(zsfrmmodule.gbZSTiskObjednavka, zsfrmmodule.frrZS);
end;

procedure TfrmZSDetail.actPrintPotvExecute(Sender: TObject);
begin
  if zsfrmmodule.PrepareRepPotvrzeni then
    dmReport.ShowReport(zsfrmmodule.gbZSTiskPotvrzeni, zsfrmmodule.frrZS);
end;

procedure TfrmZSDetail.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Field = nil then
  begin
    edZasilka.Properties.readonly           := not(ZSdmd.Zasilky.State in dsEditModes);
    edZasilka.Properties.Buttons[0].Visible := not edZasilka.Properties.readonly;
    edZasilka.Properties.Buttons[1].Visible := edZasilka.Properties.readonly;

    if ZSdmd.ZasilkySTAV.AsInteger = 2 then
    begin
      pnlTitulek.Color := clRed;
      Caption          := ' STORNOVANÁ PØEPRAVA';
    end
    else
    begin
      pnlTitulek.ParentColor := True;
      Caption                := 'Pøeprava èíslo : ' + edZasilka.Text;

    end;
    RecalcPanely;
  end;

end;

procedure TfrmZSDetail.RecalcPanely;
begin
  pnlClo.Height          := CalcPanelHeigth(edClo);
  pnlSubstratInfo.Height := CalcPanelHeigth(edSubstratPopis);
  pnlPoznamka.Height     := CalcPanelHeigth(edMemo);
end;

procedure TfrmZSDetail.dxbShowPnlDopDownClick(Sender: TObject);
begin
  dxpDopravce.Align  := alBottom;
  scrDetail.AutoSize := False;
  scrDetail.Align    := alClient;

end;

procedure TfrmZSDetail.dxbShowPnlDopTopClick(Sender: TObject);
begin
  scrDetail.Align    := alTop;
  scrDetail.AutoSize := True;
  dxpDopravce.Align  := alTop;
end;

procedure TfrmZSDetail.rsPropSaver1AfterLoad(Sender: TObject);
begin
  dxbShowPnlDopDown.Down := (dxpDopravce.Align = alBottom);
  dxbShowPnlDopTop.Down  := (dxpDopravce.Align = alTop);

end;

procedure TfrmZSDetail.jfsCustomEvidFormShow(Sender: TObject);
begin
  RecalcPanely;
end;

procedure TfrmZSDetail.dxbMaxRadkyChange(Sender: TObject);
begin
  RecalcPanely;
end;

end.
