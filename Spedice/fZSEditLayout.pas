unit fZSEditLayout;

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
  uEnterTab, fCustEditLay, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters;

type
  TfrmZSDetailLay = class(TfrmCustEditLay)
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
    actPrintObj: TAction;
    actPrintPotv: TAction;
    dxb3: TdxBarButton;
    dxb4: TdxBarButton;
    dxb5: TdxBarButton;
    dxb6: TdxBarButton;
    edIntObj: TcxDBTextEdit;
    edStredisko: TcxDBTextEdit;
    edPrikEmails: TcxDBTextEdit;
    edDatPorizeni: TcxDBDateEdit;
    edZasilka: TcxDBButtonEdit;
    cbTypPrepravy: TcxDBLookupComboBox;
    cbPrikNazev: TcxDBLookupComboBox;
    grdPlatci: TcxGrid;
    glvPlatci: TcxGridLevel;
    btnPlatci: TcxButton;
    cxButton2: TcxButton;
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
    edSubstrat: TcxDBTextEdit;
    edHMText: TcxDBTextEdit;
    edHmotnost: TcxDBCurrencyEdit;
    edPrikaz: TcxDBTextEdit;
    edKratkeInfo: TcxDBTextEdit;
    edSubstratPopis: TcxDBMemo;
    edClo: TcxDBMemo;
    edMemo: TcxDBMemo;
    dbxs1: TdxBarSubItem;
    dxb7: TdxBarButton;
    dxb8: TdxBarButton;
    dxb9: TdxBarButton;
    edDispecer: TcxDBLookupComboBox;
    jfEnterAsTab1: TjfEnterAsTab;
    lcMainGroup1: TdxLayoutGroup;
    lcMainItem1: TdxLayoutItem;
    lcMainItem2: TdxLayoutItem;
    lcMainItem3: TdxLayoutItem;
    lcMainItem4: TdxLayoutItem;
    lcMainItem5: TdxLayoutItem;
    lcMainItem6: TdxLayoutItem;
    lcMainGroup3: TdxLayoutGroup;
    lcMainItem7: TdxLayoutItem;
    dliPrikazceEmai: TdxLayoutItem;
    lcMainItem9: TdxLayoutItem;
    lcMainItem10: TdxLayoutItem;
    lcMainItem11: TdxLayoutItem;
    lcMainItem12: TdxLayoutItem;
    lcMainGroup7: TdxLayoutGroup;
    lcMainItem13: TdxLayoutItem;
    lcMainItem14: TdxLayoutItem;
    lcMainGroup8: TdxLayoutGroup;
    lcMainGroup9: TdxLayoutGroup;
    lcMainItem15: TdxLayoutItem;
    lcMainItem16: TdxLayoutItem;
    lcMainItem17: TdxLayoutItem;
    lcMainItem18: TdxLayoutItem;
    lcMainItem19: TdxLayoutItem;
    lcMainItem20: TdxLayoutItem;
    lcMainItem21: TdxLayoutItem;
    lcMainItem22: TdxLayoutItem;
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
    edSplatnost: TcxDBCurrencyEdit;
    lcMainGroup2: TdxLayoutGroup;
    lcMainGroup12: TdxLayoutGroup;
    lcMainGroup13: TdxLayoutGroup;
    lcMainGroup14: TdxLayoutGroup;
    lcMainGroup5: TdxLayoutGroup;
    lcMainGroup15: TdxLayoutGroup;
    lcMainGroup16: TdxLayoutGroup;
    lcMainGroup17: TdxLayoutGroup;
    lcMainGroup19: TdxLayoutGroup;
    lcMainSplitterItem1: TdxLayoutSplitterItem;
    lcMainSplitterItem3: TdxLayoutSplitterItem;
    lcMainSplitterItem4: TdxLayoutSplitterItem;
    lcMainSplitterItem5: TdxLayoutSplitterItem;
    lcMainGroup6: TdxLayoutGroup;
    lcMainGroup4: TdxLayoutGroup;
    lcMainGroup22: TdxLayoutGroup;
    lcMainGroup10: TdxLayoutGroup;
    lcMainGroup11: TdxLayoutGroup;
    lcMainItem8: TdxLayoutItem;
    lcMainGroup18: TdxLayoutGroup;
    lcMainItem23: TdxLayoutItem;
    lcMainGroup20: TdxLayoutGroup;
    lcMainItem24: TdxLayoutItem;
    lcMainGroup21: TdxLayoutGroup;
    lcMainItem25: TdxLayoutItem;
    lcMainItem26: TdxLayoutItem;
    lcMainGroup23: TdxLayoutGroup;
    lcMainItem27: TdxLayoutItem;
    lcMainItem28: TdxLayoutItem;
    lcMainItem29: TdxLayoutItem;
    lcMainItem30: TdxLayoutItem;
    lcMainItem31: TdxLayoutItem;
    lcMainItem32: TdxLayoutItem;
    lcMainItem33: TdxLayoutItem;
    lcMainItem34: TdxLayoutItem;
    lcMainLabeledItem1: TdxLayoutLabeledItem;
    lcMainItem35: TdxLayoutItem;
    lcMainGroup24: TdxLayoutGroup;
    lcMainItem36: TdxLayoutItem;
    lcMainGroup25: TdxLayoutGroup;
    lcMainItem37: TdxLayoutItem;
    lcMainItem38: TdxLayoutItem;
    glvPlatciLevel1: TcxGridLevel;
    lcMainGroup26: TdxLayoutGroup;
    lcMainGroup27: TdxLayoutGroup;
    lcMainGroup28: TdxLayoutGroup;
    pnlDokumentace: TPanel;
    lcMainItem40: TdxLayoutItem;
    lcMainSeparatorItem1: TdxLayoutSeparatorItem;
    lcMainSeparatorItem2: TdxLayoutSeparatorItem;
    lcMainGroup30: TdxLayoutGroup;
    pnlFD: TPanel;
    lcMainItem41: TdxLayoutItem;
    pnlOstNakl: TPanel;
    pnlProvize: TPanel;
    lcMainItem42: TdxLayoutItem;
    lcMainItem44: TdxLayoutItem;
    cbDopPodminky: TcxDBLookupComboBox;
    lcMainItem39: TdxLayoutItem;
    lcMainGroup29: TdxLayoutGroup;
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
    procedure tvPlatciDblClick(Sender: TObject);
    procedure edAutoSPZPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actSendPotvrzeniExecute(Sender: TObject);
    procedure actSendObjednavkaExecute(Sender: TObject);
    procedure actPrintObjExecute(Sender: TObject);
    procedure actPrintPotvExecute(Sender: TObject);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
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
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  variants, uVarClass, uAppUtils, JclFileUtils, appdmduSystem, ZSdmdu, FVfrmuModule,
  fMessageDlg, ZSfrmuModule, FDfrmuModule, FDdmdu, appfrmuGlobal,
  appIniOptionsUnit, ZSPlatciDetailForm, AOPdmdu, FVdmdu, appGenIdUnit,
  ZSConstDefUnit, fKatalogyModul, AOPfrmuEdit, uAOPConstDefUnit, AOPfrmuPickUser,
  fZSNakVyk, appReportManagerForm, appReportModule, JclMapi, appReportUtils,
  fZsConfirmCopy, uaopfirmaclass;

resourcestring
  SChceteKopRovatAktuLnPEpravu = ' Chcete kopírovat aktuální pøepravu?';
  SNovSloPozice = 'Nové èíslo pozice';
  SPEpravaJeJeJiFakturovNa = 'Pøeprava je je již fakturována.';
  SPoziceRadaSelect = 'V poli Pozice kliknìte na ... a vyberte èíselnou øadu. Pak kliknìte na tlaèítko Zapsat.';
  SVybertePSluNouSazbuDPH = 'Vyberte pøíslušnou sazbu DPH.';
  SZadejtePoEtJednotekVPoliPoEtVTNe0 = 'Zadejte poèet jednotek v poli <Poèet> vìtší než 0.';
  SZadejteSmluvnCenuVTNe0 = 'Zadejte smluvní cenu vìtší než 0.';

{$R *.DFM}

constructor TfrmZSDetailLay.Create(AOwner: TComponent);
begin
  inherited;
  // if not LoadToolbars then
  LoadToolbars;
  framePrilohy := TfraCustomDocs.Create(self);
  framePrilohy.ConnectToEvid(GetZSdmd.ZasilkySID, ZSdmd.dsZasilky, pnlDokumentace);
  frameProvize        := TfraZSProvize.Create(self);
  frameProvize.Parent := pnlProvize;
  frameProvize.Align  := alClient;
  frameOstNakl        := TZSfraOstNakl.Create(self);
  frameOstNakl.Parent := pnlOstNakl;
  frameOstNakl.Align  := alClient;
  frameFD             := TFDfraPrehled.Create(self);
  frameFD.Parent      := pnlFD;
  frameFD.Align       := alClient;
  Caption             := GetZSModul.ModuleCaption;
  dsZaznam.DataSet    := ZSdmd.Zasilky;
  dsPlatci.DataSet    := ZSdmd.ZAPlatci;
  dsPohyby.DataSet    := ZSdmd.ZAPohyby;
  glvPlatci.GridView  := ZSdmd.tvPlatci;

{$IFDEF ORANGE}
  ZSdmd.tvPlatciDetailCENASAZBADPH.RepositoryItem := dmdGlobal.repDPHTyp;
  glvPlatciLevel1.GridView                        := ZSdmd.tvPlatciDetail;
{$ENDIF}
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
  cbDopPodminky.RepositoryItem         := dmdGlobal.repZSPodminky;
  ZmenaNakVyk                          := False;
  ZmenaPlatci                          := False;
  frameFD.dsView.DataSet               := ZSdmd.dtsZAFd;

  ReStoreViewSettings(ZSdmd.tvPlatci);
{$IFDEF ORANGE}
  ReStoreViewSettings(ZSdmd.tvPlatciDetail);
{$ENDIF}
  ReStoreViewSettings(tvPohyby);
  ReStoreViewSettings(frameFD.tvPrehled);
  ReStoreViewSettings(frameOstNakl.tvPrehled);
  ReStoreViewSettings(frameProvize.tvPrehled);

  DesignLoad;
  actPrintObj.Visible  := True;
  actPrintPotv.Visible := True;
  actRecDelete.Visible := dmdSystem.gbEnableDelete;
end;

procedure TfrmZSDetailLay.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ZmenaNakVyk or ZmenaPlatci then
  begin
    IsDataChanged := True;
  end;

  IsDataChanged := True;
  inherited;
end;

procedure TfrmZSDetailLay.actRecDeleteExecute(Sender: TObject);

begin
  if ZSdmd.Zasilky.Active then
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
end;

procedure TfrmZSDetailLay.edNakVyk(DataInsert: Boolean);
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

procedure TfrmZSDetailLay.edPlatci(DataInsert: Boolean);
begin
  actRecPost.Execute;
  if DataInsert then
  begin
    dsPlatci.DataSet.Insert;
  end;

  GetPlatceDetail(dsPlatci.DataSet.fieldbyname('ID').AsString);
  IsDataChanged := True;

end;

procedure TfrmZSDetailLay.actPohybyNewExecute(Sender: TObject);
begin
  edNakVyk(True);
end;

procedure TfrmZSDetailLay.actPohybyEditExecute(Sender: TObject);
begin
  edNakVyk(False);
end;

procedure TfrmZSDetailLay.ActionListZSUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  actPohybyEdit.Enabled := not ZSdmd.ZAPohyby.IsEmpty;
  actPlatceEdit.Enabled := not ZSdmd.ZAPlatci.IsEmpty;
end;

procedure TfrmZSDetailLay.actPlatceNewExecute(Sender: TObject);
begin
  edPlatci(True);
end;

procedure TfrmZSDetailLay.actPlatceEditExecute(Sender: TObject);
begin
  edPlatci(False);
end;

procedure TfrmZSDetailLay.actRecCopyExecute(Sender: TObject);
begin
  if ZSConfirmCopy then
    ZSdmd.ZSZasilkaCopy(ZSdmd.ZasilkySID.AsString);
end;

procedure TfrmZSDetailLay.grdPohybyDblClick(Sender: TObject);
begin
  actPohybyEdit.Execute;
end;

procedure TfrmZSDetailLay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZSdmd.tvPlatci.OnDblClick := nil;
  StoreViewSettings(ZSdmd.tvPlatci);
{$IFDEF ORANGE}
  StoreViewSettings(ZSdmd.tvPlatciDetail);
{$ENDIF}
  StoreViewSettings(tvPohyby);
  StoreViewSettings(frameFD.tvPrehled);
  StoreViewSettings(frameProvize.tvPrehled);
  inherited;
end;

procedure TfrmZSDetailLay.edZasilkaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  sNewRada   : string;
  iNewZasilka: string;
begin
  case AbsoluteIndex of
    0:
      begin
        sNewRada := dmdSystem.SelectNumLine(ZSfrmModule.ModuleName);
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

procedure TfrmZSDetailLay.actRecordMove(Sender: TObject);
begin
  inherited;
  if Sender = actRecPrior then
    ZSdmd.ZasilkySeznam.prior
  else if Sender = actRecNext then
    ZSdmd.ZasilkySeznam.next;

  ZSdmd.mod_OpenRecord(ZSdmd.ZasilkySeznamSID.AsString);

end;

procedure TfrmZSDetailLay.edCenaKursDblClick(Sender: TObject);
begin
  SetEditsState;
  ZSdmd.ZasilkyCENAKURS.AsCurrency := mgGetActualKurs(ZSdmd.ZasilkyCENAMENA.AsString);
end;

procedure TfrmZSDetailLay.gbCustomEditFormPrint(Sender: TObject);
begin
  inherited;
  ZSfrmModule.PrintModule(IsDefaultReport, ZSdmd.ZasilkySID.AsString);
end;

procedure TfrmZSDetailLay.tvPlatciDblClick(Sender: TObject);
begin
  actPlatceEdit.Execute;
end;

procedure TfrmZSDetailLay.cbDopNazevPropertiesCloseUp(Sender: TObject);
var
  lc_Firma : TAOPFirmaClass;
  lc_aopkod: string;
begin
  if cbDopNazev.EditValue <> null then
  begin
    lc_aopkod := VarToStr(cbDopNazev.EditValue);
    lc_Firma  := TAOPFirmaClass.Create(lc_aopkod, False);

    if not(ZSdmd.Zasilky.State in [dsEdit, dsInsert]) then
      ZSdmd.Zasilky.Edit;
    if lc_Firma.naseladresu then
    begin
      ZSdmd.ZasilkyAOPKOD_DOP.AsVariant  := lc_Firma.AOPKod;
      ZSdmd.ZasilkyDOP_EMAILS.AsString   := lc_Firma.Email;
      ZSdmd.ZasilkyD_SPLATNOST.AsInteger := lc_Firma.Splatnost;
    end;
    FreeAndNil(lc_Firma);
  end
  else
  begin
    ZSdmd.ZasilkyDOP_EMAILS.Clear;
    ZSdmd.ZasilkyD_SPLATNOST.AsInteger := 14;
  end;
end;

procedure TfrmZSDetailLay.cbPrikNazevPropertiesCloseUp(Sender: TObject);
var
  lc_Firma : TAOPFirmaClass;
  lc_aopkod: string;
begin
  if cbPrikNazev.EditValue <> null then
  begin
    lc_aopkod := VarToStr(cbPrikNazev.EditValue);
    lc_Firma  := TAOPFirmaClass.Create(lc_aopkod, False);

    if not(ZSdmd.Zasilky.State in [dsEdit, dsInsert]) then
      ZSdmd.Zasilky.Edit;
    if lc_Firma.naseladresu then
    begin
      ZSdmd.ZasilkyAOPKOD_OBJ.AsVariant := lc_Firma.AOPKod;
      ZSdmd.ZasilkyOBJ_EMAILS.AsString  := lc_Firma.Email;
    end;
    FreeAndNil(lc_Firma);
  end
  else
  begin
    ZSdmd.ZasilkyOBJ_EMAILS.Clear;
  end;
end;

procedure TfrmZSDetailLay.edAutoSPZPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  SetEditsState;
  ZSdmd.ZasilkyAUTOSPZ.Clear;
end;

procedure TfrmZSDetailLay.repFirmyClick(Sender: TObject; AButtonIndex: Integer);
var
  lc_Firma : TAOPFirmaCustomClass;
  lc_aopkod: string;
begin
  if (cbDopNazev.EditValue = null) then
    lc_aopkod := ''
  else
    lc_aopkod := VarToStr(cbDopNazev.EditValue);

  case AButtonIndex of (* *)
    1:
      begin
        lc_Firma := TAOPFirmaClass.Create(lc_aopkod, True);

        try
          if lc_Firma.naseladresu then
          begin
            SetEditsState;
            ZSdmd.ZasilkyAOPKOD_DOP.AsVariant  := lc_Firma.AOPKod;
            ZSdmd.ZasilkyDOP_EMAILS.AsString   := lc_Firma.Email;
            ZSdmd.ZasilkyD_SPLATNOST.AsInteger := lc_Firma.Splatnost;

          end;

        finally
          lc_Firma.Free;
        end;
      end;
    2:
      begin
        lc_Firma := TAOPFirmaCustomClass.Create;
        try
          lc_Firma.AOPKod := VarToStr(cbDopNazev.EditValue);

          if lc_Firma.AOPKod <> '' then
          begin
            if AopGetDetailSendAdres(lc_Firma) then
            begin
              SetEditsState;
              ZSdmd.ZasilkyAOPKOD_DOP.AsVariant  := lc_Firma.AOPKod;
              ZSdmd.ZasilkyDOP_EMAILS.AsString   := lc_Firma.Email;
              ZSdmd.ZasilkyD_SPLATNOST.AsInteger := lc_Firma.Splatnost;
            end;
          end;
        finally
          lc_Firma.Free;
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

procedure TfrmZSDetailLay.repPrikazceClick(Sender: TObject; AButtonIndex: Integer);
var
  lc_Firma : TAOPFirmaCustomClass;
  lc_aopkod: string;
begin
  if cbPrikNazev.EditValue = null then
    lc_aopkod := ''
  else
    lc_aopkod := VarToStr(cbPrikNazev.EditValue);

  case AButtonIndex of (* *)
    1:
      begin
        lc_Firma := TAOPFirmaClass.Create(lc_aopkod, True);

        try
          if lc_Firma.naseladresu then
          begin
            SetEditsState;
            ZSdmd.ZasilkyAOPKOD_OBJ.AsVariant := lc_Firma.AOPKod;
            ZSdmd.ZasilkyOBJ_EMAILS.AsString  := lc_Firma.Email;
          end;

        finally
          lc_Firma.Free;
        end;
      end;
    2:
      begin
        lc_Firma := TAOPFirmaCustomClass.Create;
        try
          lc_Firma.AOPKod := lc_aopkod;
          if lc_Firma.AOPKod <> '' then
          begin
            if AopGetDetailSendAdres(lc_Firma) then
            begin
              SetEditsState;
              ZSdmd.ZasilkyAOPKOD_OBJ.AsVariant := lc_Firma.AOPKod;
              ZSdmd.ZasilkyOBJ_EMAILS.AsString  := lc_Firma.Email;
            end;
          end;
        finally
          lc_Firma.Free;
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

procedure TfrmZSDetailLay.actSendPotvrzeniExecute(Sender: TObject);
var
  aPdfFile: string;
begin
  if ZSfrmModule.PrepareRepPotvrzeni then
    dmReport.ExportAndSendEmail(ZSfrmModule.gbZSTiskPotvrzeni, ZSfrmModule.frrZS, aPdfFile);

end;

procedure TfrmZSDetailLay.actSendObjednavkaExecute(Sender: TObject);
var
  aPdfFile: string;
begin
  if ZSfrmModule.PrepareRepObjednavka then
    dmReport.ExportAndSendEmail(ZSfrmModule.gbZSTiskObjednavka, ZSfrmModule.frrZS, aPdfFile);
end;

procedure TfrmZSDetailLay.actPrintObjExecute(Sender: TObject);
begin
  if ZSfrmModule.PrepareRepObjednavka then
    dmReport.ShowReport(ZSfrmModule.gbZSTiskObjednavka, ZSfrmModule.frrZS);
end;

procedure TfrmZSDetailLay.actPrintPotvExecute(Sender: TObject);
begin
  if ZSfrmModule.PrepareRepPotvrzeni then
    dmReport.ShowReport(ZSfrmModule.gbZSTiskPotvrzeni, ZSfrmModule.frrZS);
end;

procedure TfrmZSDetailLay.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  edZasilka.Properties.readonly           := not(ZSdmd.Zasilky.State in dsEditModes);
  edZasilka.Properties.Buttons[0].Visible := not edZasilka.Properties.readonly;
  edZasilka.Properties.Buttons[1].Visible := edZasilka.Properties.readonly;

  if ZSdmd.ZasilkySTAV.AsInteger = 2 then
  begin
    // pnlTitulek.Color := clRed;
    Caption := ' STORNOVANÁ PØEPRAVA';
  end
  else
  begin
    // pnlTitulek.ParentColor := True;
    Caption := 'Pøeprava èíslo : ' + edZasilka.Text;
  end;
end;

end.
