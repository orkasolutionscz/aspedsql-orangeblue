unit ZSPlatciDetailForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBActns, ActnList, StdCtrls, ExtCtrls, cxCurrencyEdit,
  cxDBEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, dxBar, uCustomForms, cxLabel,
  cxGroupBox, cxGridCustomPopupMenu, cxGridPopupMenu, fCustEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, dxBarExtItems,
  uEnterTab;

type
  TfrmPlatciDetail = class(TfrmCustEdit)
    ActionListPlatce: TActionList;
    actFakturaNew: TAction;
    actFakturaShow: TAction;
    actFakturaRMVazba: TAction;
    dsSrazky: TDataSource;
    pnlPlatce: TPanel;
    edPozice: TcxDBTextEdit;
    edPodminky: TcxDBTextEdit;
    grdSrazky: TcxGrid;
    tvSrazky: TcxGridDBTableView;
    tvSrazkyID: TcxGridDBColumn;
    tvSrazkyRefPlatce: TcxGridDBColumn;
    tvSrazkyCenaText: TcxGridDBColumn;
    tvSrazkyCenaZaklad: TcxGridDBColumn;
    tvSrazkyCenaJednotka: TcxGridDBColumn;
    tvSrazkyCenaJednotky: TcxGridDBColumn;
    tvSrazkyCenaSuma: TcxGridDBColumn;
    lvSrazky: TcxGridLevel;
    edPlatce: TcxDBLookupComboBox;
    edFaktura: TcxDBTextEdit;
    actGetKurz: TAction;
    btnGetKurz: TcxButton;
    btnFakturaRMVazba: TcxButton;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label1: TcxLabel;
    Label9: TcxLabel;
    actPolNew: TDataSetInsert;
    btnPolAd: TcxButton;
    btnPolDel: TcxButton;
    actPolDel: TDataSetDelete;
    btnFactAct: TcxButton;
    tvSrazkyCENAPOPIS: TcxGridDBColumn;
    tvSrazkyCENASLEVA: TcxGridDBColumn;
    tvSrazkyCENASAZBADPH: TcxGridDBColumn;
    tvSrazkyISDOPROVIZE: TcxGridDBColumn;
    tvSrazkyCENADPH: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    edProvize: TcxDBCurrencyEdit;
    Label16: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    edCelkem: TcxDBCurrencyEdit;
    cbMena: TcxDBLookupComboBox;
    edCenaKurs: TcxDBCurrencyEdit;
    Label7: TcxLabel;
    Label10: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    tvSrazkyCENADPHPROC: TcxGridDBColumn;
    edEmail: TcxDBTextEdit;
    tvSrazkyCENAMENAZAKLAD: TcxGridDBColumn;
    tvSrazkyCENAMENA: TcxGridDBColumn;
    tvSrazkyCENAKURZ: TcxGridDBColumn;
    jfEnterAsTab1: TjfEnterAsTab;
    actPolSave: TDataSetPost;
    btnPolSave: TcxButton;
    procedure actNActiKurzExecute(Sender: TObject);
    procedure actFakturaRMVazbaExecute(Sender: TObject);
    procedure FakturaAction(Sender: TObject);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdSrazkyExit(Sender: TObject);
    private
      { Private declarations }
      procedure repFirmyClick(Sender: TObject; AButtonIndex: integer);
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
  end;

function GetPlatceDetail(AID: string): Boolean;

implementation

uses
  variants, uVarClass, ZSdmdu, appfrmuGlobal, appdmduSystem, ZSfrmuModule, FVfrmuModule,
  fMessageDlg, AOPdmdu, AOPfrmuModule, FVdmdu, ZSConstDefUnit, FVConstDefUnit, AOPConstDefUnit,
  AOPfrmuEdit, AOPfrmuPickUser;

{$R *.DFM}

resourcestring
  SPlTceZSilky = 'Plátce zásilky';
  SVyberteJakouStPEpravyBudePlTceHradit = 'Vyberte jakou èást pøepravy bude plátce hradit.';
  SVyberteMNu = 'Vyberte mìnu.';
  SZadejteNJakouRozumnouCenu = 'Zadejte nìjakou "rozumnou" cenu.';
  SZadejtePoEtJednotekVPoliPoEtVTNe0 = 'Zadejte poèet jednotek v poli <Poèet> vìtší než 0.';
  SZruTeNejprveVazbuNaVydanouFakturu = 'Zrušte nejprve vazbu na vydanou fakturu';
  slbFakturovana = 'Fakturovaná èástka';
  slbPrepoctenyKurs = 'Pøepoèet v CZK';
  sZSOKNewFaktura = 'Opravdu chete založit novou FAKTURU ?' + #13#10 + 'Pokud ANO stisknìte tlaèítko Provést ';

function GetPlatceDetail(AID: string): Boolean;
var
  dlg: TfrmPlatciDetail;
begin
  dlg := TfrmPlatciDetail.Create(nil);
  try
    result := (dlg.ShowModal = mrOk);
  finally
    dlg.Free;
  end;
end;

procedure TfrmPlatciDetail.actNActiKurzExecute(Sender: TObject);
begin
  if not(dsZaznam.DataSet.State in [dsEdit, dsInsert]) then
    dsZaznam.DataSet.Edit;
  ZSdmd.ZAPlatciCENAKURS.AsCurrency := mgGetActualKurs(ZSdmd.ZAPlatciCENAMENA.AsString);
end;

procedure TfrmPlatciDetail.actFakturaRMVazbaExecute(Sender: TObject);
var
  aKey: string;
const
  MSG_REMOVE_FV = 'Chystáte se odstranit vazbu mezi pøepravou a vydanou fakturou.' + 'Potvrzením tohoto dialogu dojde k zrušení pøíslušné vazby.';
begin
  if not dmdSystem.gbAktivace.GetModulFakturace then
  begin
    DisplayInfo('Tato funkce není pøístupná.', 'Nemáte zakoupenou verzi s modulem Faktury.');
    Exit;
  end;

  aKey := dsZaznam.DataSet.FieldByName('ID').AsString;

  if DisplayConfirm(MSG_REMOVE_FV) then
  begin
    { Odstraneni vazby v evidenci faktury }
    dmdSystem.spProc.SQL.Text                    := FVSQL_FREE_PLATCE;
    dmdSystem.spProc.ParamByName('SID').AsString := ZSdmd.ZAPlatciREFFV.AsString;
    try
      dmdSystem.spProc.ExecSQL;
      ZSdmd.ZSAddHistoryObject(ZSdmd.ZAPlatciREF_ZASILKA.AsString, histZSRemoveFV, edFaktura.Text, true);

      ZSdmd.ZAPlatci.Edit;
      ZSdmd.ZAPlatciREFFV.Clear;
      ZSdmd.ZAPlatci.Post;

      // ------------------------------------------------------------------------------
      // Musime udelat refresh, protoze mame zaznam formou procedury
      // ------------------------------------------------------------------------------
      ZSdmd.ZAPlatci.refresh;

    except
      raise;
    end;
  end;

end;

procedure TfrmPlatciDetail.FakturaAction(Sender: TObject);
var
  NewREFFV : string;
  OldFV    : string;
  OldFVCena: double;
  aKey     : string;
begin
  { Pokud je vystavena faktura tak ji zobrazime }
  if not dmdSystem.gbAktivace.GetModulFakturace then
  begin
    DisplayInfo('Tato funkce není pøístupná.', 'Nemáte zakoupenou verzi s modulem Faktury.');
    Exit;
  end;

  aKey := ZSdmd.ZAPlatciID.AsString;

  if ZSdmd.ZAPlatciREFFV.AsVariant = null then
  begin
    if DisplayConfirm(sZSOKNewFaktura) then
    begin
      NewREFFV := ZSdmd.ZSFakturaNova;
      if NewREFFV <> '' then
      begin
        dmdSystem.spProc.SQL.Clear;
        dmdSystem.spProc.SQL.add(ZSPL_PLTACIFV_UPDATE);
        dmdSystem.spProc.ParamByName(SZSP_P_FAKTURA).AsString := NewREFFV;
        dmdSystem.spProc.ParamByName(SZSP_P_ID).AsString      := aKey;
        dmdSystem.spProc.ExecSQL;
        ZSdmd.ZAPlatci.refresh;
        ZSdmd.ZAPlatci.Locate('ID', aKey, []);
      end;
    end;
  end;

  if ZSdmd.ZAPlatciREFFV.AsVariant <> null then
  begin
    OldFVCena := ZSdmd.ZAPlatciCENASUMA.AsCurrency;
    OldFV     := ZSdmd.ZAPlatciREFFV.AsVariant;

    if (FVfrmModule.ShowDetail(OldFV, fsmEdit)) then
      IsDataChanged := true;

    ZSdmd.ZAPlatci.refresh;
    ZSdmd.ZAPlatci.Locate('ID', aKey, []);

    if OldFVCena <> ZSdmd.ZAPlatciCENASUMA.AsCurrency then
      IsDataChanged := true;
  end;
end;

procedure TfrmPlatciDetail.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if ZSdmd.ZAPlatciREFFV.AsVariant = null then
    btnFactAct.Action := actFakturaNew
  else
    btnFactAct.Action := actFakturaShow;

  actFakturaNew.Enabled     := ZSfrmModule.gbZsCreateFVEnable and (ZSdmd.ZAPlatciREFFV.AsVariant = null) and (dsZaznam.DataSet.State in [dsBrowse]);
  actFakturaShow.Enabled    := ZSdmd.ZAPlatciREFFV.AsVariant <> null;
  actFakturaRMVazba.Enabled := ZSfrmModule.gbEnPlatceFVStorno and (ZSdmd.ZAPlatciREFFV.AsVariant <> null);
  actRecDelete.Enabled      := actRecDelete.Enabled and (jfaUserInfo.AdminsUser or (ZSdmd.ZAPlatciREFFV.AsVariant <> null));

end;

procedure TfrmPlatciDetail.actRecDeleteExecute(Sender: TObject);
begin
  if dsZaznam.DataSet.FieldByName(SZSP_F_FAKTURA).AsVariant <> null then
  begin
    DisplayError(SERR_DELETE, SZruTeNejprveVazbuNaVydanouFakturu);
    SysUtils.Abort;
  end;

  if DisplayConfirm(sMsgConfirmDelete) then
    dsZaznam.DataSet.Delete;

end;

constructor TfrmPlatciDetail.Create(AOwner: TComponent);
begin
  inherited;
  dsZaznam.DataSet                    := GetZSdmd.ZAPlatci;
  dsSrazky.DataSet                    := ZSdmd.ZAPlatciSrazky;
  cbMena.RepositoryItem               := dmdGlobal.repMena;
  edPlatce.RepositoryItem             := GetAOPmodul.repFirmyFull;
  edPlatce.Properties.OnButtonClick   := repFirmyClick;
  tvSrazkyCenaJednotka.RepositoryItem := GetdmdGlobal.repJednotky;
  tvSrazkyISDOPROVIZE.RepositoryItem  := dmdGlobal.repBoolChar;
  tvSrazkyCENASAZBADPH.RepositoryItem := dmdGlobal.repDPHTyp;
  tvSrazkyCenaText.RepositoryItem     := dmdGlobal.repFaktPolTextyCombo;
  tvSrazkyCENAMENA.RepositoryItem     := dmdGlobal.repMena;

  LoadToolbars;
  ReStoreViewSettings(tvSrazky);

end;

procedure TfrmPlatciDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvSrazky);
  inherited;

end;

procedure TfrmPlatciDetail.grdSrazkyExit(Sender: TObject);
begin
  inherited;
  if Assigned(dsSrazky.DataSet) then
    if dsSrazky.DataSet.State in [dsEdit, dsInsert] then
      dsSrazky.DataSet.Post;
end;

procedure TfrmPlatciDetail.repFirmyClick(Sender: TObject; AButtonIndex: integer);
var
  lFirma: TFirmaObject;
begin
  case AButtonIndex of (* *)
    1:
      begin
        lFirma        := TFirmaObject.Create;
        lFirma.AopKod := VarToStr(ZSdmd.ZAPlatciAOPKOD.AsVariant);
        try
          if AopGetKontakt(lFirma) then
          begin
            SetEditsState;
            ZSdmd.ZAPlatciAOPKOD.AsVariant    := lFirma.AopKod;
            ZSdmd.ZAPlatciPLA_EMAILS.AsString := lFirma.SendingAdress;
          end;

        finally
          lFirma.Free;
        end;
      end;
    2:
      begin
        lFirma        := TFirmaObject.Create;
        lFirma.AopKod := VarToStr(ZSdmd.ZAPlatciAOPKOD.AsVariant);
        try
          if lFirma.AopKod <> '' then
          begin
            if AopGetDetailSendAdres(lFirma) then
            begin
              SetEditsState;
              ZSdmd.ZAPlatciAOPKOD.AsVariant    := lFirma.AopKod;
              ZSdmd.ZAPlatciPLA_EMAILS.AsString := lFirma.SendingAdress;
            end;
          end;
        finally
          lFirma.Free;
        end;
      end;
    3:
      begin
        SetEditsState;
        ZSdmd.ZAPlatciAOPKOD.AsVariant    := null;
        ZSdmd.ZAPlatciPLA_EMAILS.AsString := '';
      end;
  end; (* case *)

end;

end.
