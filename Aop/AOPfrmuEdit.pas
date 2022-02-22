{ ***************************************************************
  *
  * Unit Name: AOPfrmuEdit
  * Purpose  :
  * Author   : Jiri Fait
  * History  :
  12.2.2002  - prvni uzaverka
  29.4.2002  - uvolneni do test pocesu
  - doplneni dohledavani ADRESY3 dle PSC
  - doplneni vyplneni AOPKOD polem ICO
  22.5.2013  - prevod na DBKomponenty

  *
  **************************************************************** }

unit AOPfrmuEdit;

interface

uses
  Sysutils, windows, Forms, Controls, Classes, ActnList, StdCtrls,
  Buttons, Graphics, ExtCtrls, uCustomForms, cxPC, cxControls,
  cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, IBODataset,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, dxBar, Db, cxLabel, dxBarExtItems,
  DBActns, cxDBEdit, rsStorage, rsPropSaver, fCustEdit,
  uAOPConstDefUnit, frCustomDocsFrame, cxCurrencyEdit, cxCalendar, cxGroupBox,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxImageComboBox, uEnterTab, Vcl.Imaging.GIFImg, uaopfirmaclass;

type
  TAOPfrmEdit = class(TfrmCustEdit)
    dsKontakty: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    actKontAdd: TDataSetInsert;
    actKontDel: TDataSetDelete;
    pgcMain: TcxPageControl;
    tbsAdresa: TcxTabSheet;
    lblLabel9: TcxLabel;
    lblLabel12: TcxLabel;
    lblLabel17: TcxLabel;
    lblLabel18: TcxLabel;
    lblFirma: TcxLabel;
    lblLabel33: TcxLabel;
    lblLabel24: TcxLabel;
    lblLabel13: TcxLabel;
    lblLabel22: TcxLabel;
    lblLabel2: TcxLabel;
    lblLabel3: TcxLabel;
    lblLabel8: TcxLabel;
    lblLabel11: TcxLabel;
    lblLabel14: TcxLabel;
    lblLabel15: TcxLabel;
    lblLabel16: TcxLabel;
    edTelefon: TcxDBTextEdit;
    edFax: TcxDBTextEdit;
    edEmail: TcxDBTextEdit;
    edAdresa1: TcxDBTextEdit;
    edAdresa2: TcxDBTextEdit;
    edAdresa3: TcxDBTextEdit;
    edNazev: TcxDBTextEdit;
    edDic: TcxDBTextEdit;
    edIco: TcxDBTextEdit;
    edKlic1: TcxDBTextEdit;
    edKlic2: TcxDBTextEdit;
    edMobil: TcxDBTextEdit;
    edSplatnost: TcxDBTextEdit;
    edZnacka: TcxDBButtonEdit;
    edPsc: TcxDBButtonEdit;
    cbZeme: TcxDBLookupComboBox;
    lblLabel20: TcxLabel;
    edKodRaal: TcxDBTextEdit;
    lbl1: TcxLabel;
    edTimoCom: TcxDBTextEdit;
    cxTabSheet1: TcxTabSheet;
    lblLabel4: TcxLabel;
    lblLabel5: TcxLabel;
    lblLabel10: TcxLabel;
    edbankaNazev: TcxDBTextEdit;
    edBankaKod: TcxDBTextEdit;
    edUcet: TcxDBTextEdit;
    actVybrat: TAction;
    rsPropSaver1: TrsPropSaver;
    popKontakty: TdxBarPopupMenu;
    actGridStyl: TAction;
    dxbGridStyl: TdxBarButton;
    dxbSubSeznam: TdxBarSubItem;
    cxPageControl1: TcxPageControl;
    tbsKontakty: TcxTabSheet;
    tbsUcty: TcxTabSheet;
    tbsDocs: TcxTabSheet;
    grdKontakty: TcxGrid;
    tvKontakty: TcxGridDBTableView;
    tvKontaktyID: TcxGridDBColumn;
    tvKontaktyPRIJMENI: TcxGridDBColumn;
    tvKontaktyJMENO: TcxGridDBColumn;
    tvKontaktyEMAIL: TcxGridDBColumn;
    tvKontaktyFUNKCE: TcxGridDBColumn;
    tvKontaktyTELEFON1: TcxGridDBColumn;
    tvKontaktyTELEFON2: TcxGridDBColumn;
    tvKontaktyMOBIL: TcxGridDBColumn;
    tvKontaktyFAX: TcxGridDBColumn;
    grdKontaktyLevel1: TcxGridLevel;
    dxBarManager1Bar2: TdxBar;
    dckKontakty: TdxBarDockControl;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    actSetDefaultEmail: TAction;
    dxb3: TdxBarButton;
    lblLabel19: TcxLabel;
    edWWW: TcxDBTextEdit;
    lblLabel1: TcxLabel;
    edPrefMail: TcxDBComboBox;
    lbl2: TcxLabel;
    edVlastnik: TcxDBLookupComboBox;
    actPolSave: TDataSetPost;
    dxb4: TdxBarButton;
    tvKontaktyCOMMTYP: TcxGridDBColumn;
    tvKontaktyISVYCHOZI: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    lblDatum: TcxLabel;
    edDatum: TcxDBDateEdit;
    lblLabel6: TcxLabel;
    edPrStart: TcxDBCurrencyEdit;
    lbl3: TcxLabel;
    edPrCont: TcxDBCurrencyEdit;
    cbSkupina: TcxDBLookupComboBox;
    jfEnterAsTab1: TjfEnterAsTab;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure edZnackaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edPscButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure actKontDelExecute(Sender: TObject);
    procedure actVybratExecute(Sender: TObject);
    procedure actGridStylExecute(Sender: TObject);
    procedure actRecordMove(Sender: TObject);
    procedure grdKontaktyEnter(Sender: TObject);
    procedure edEmailEnter(Sender: TObject);
    procedure actSetDefaultEmailExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure actSetDefaultEmailUpdate(Sender: TObject);
  private
    IsKontakty  : Boolean;
    framePrilohy: TfraCustomDocs;
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    Function SendingAdres: string;
    function SelectedKontakt: Integer;
  end;

function AopGetDetail(var aAOPKOD: string; aNewRec: Boolean = false; aSelect: Boolean = false): Boolean;
function AopGetDetailSendAdres(aFirmaObjekt: TAOPFirmaCustomClass): Boolean;

implementation

uses
  uVarClass, variants, appdmduSystem, AOPdmdu, AOPfrmuModule, fMessageDlg, fAOPscUnit, dialogs,
  appfrmuGlobal, fKatalogyModul, uSendFaxMail, fGetGridStyle, appReportModule;

{$R *.DFM}

resourcestring
  SDoPoleNZevZadejteNZevFirmy = 'Do pole Název zadejte název firmy.';
  STypAdresyProOdesLNMTeEMailZadejtePSluNouEMailAdresu = 'Typ adresy pro odesílání máte E-Mail. Zadejte pøíslušnou E-Mail adresu.';
  STypAdresyProOdesLNMTeFAXZadejtePSluNSloFaxu = 'Typ adresy pro odesílání máte FAX. Zadejte pøíslušné èíslo faxu.';
  SVPoliKDZapiTeNZevSelnAdyAKliknTeNaTlaTkoZapsat = 'V poli Kód zapište název èíselné øady a kliknìte na tlaèítko Zapsat.';
  SVybertePSluNStTZKataloguZem = 'Vyberte pøíslušný stát z katalogu Zemí.';

function AopGetDetail(var aAOPKOD: string; aNewRec: Boolean = false; aSelect: Boolean = false): Boolean;
var
  dlg: TAOPfrmEdit;
begin
  dlg := TAOPfrmEdit.Create(nil);
  try
    // Pokud je priznak noveho zaznamu tak udelame rovnou insert
    if aSelect then
    begin
      dlg.actCancel.Visible := aSelect;
      dlg.actCancel.Caption := 'Storno';
      dlg.actOk.Caption     := 'Vybrat';
    end;

    if aNewRec then
    begin
      AOPdmd.mod_OpenRecord(aAOPKOD);
      AOPdmd.dtsAOP.Insert;
    end
    else
      // Otevreme dataset pokud nejsme na spravnem zaznamu
      if AOPdmd.dtsAOPAOPKOD.AsString <> aAOPKOD then
        AOPdmd.mod_OpenRecord(aAOPKOD);

    result := (dlg.ShowModal = mrOk);

    if result then
      aAOPKOD := AOPdmd.dtsAOPAOPKOD.AsString;

  finally
    dlg.Free;
  end;
end;

function AopGetDetailSendAdres(aFirmaObjekt: TAOPFirmaCustomClass): Boolean;
var
  dlg: TAOPfrmEdit;
begin
  dlg := TAOPfrmEdit.Create(nil);
  try
    // Pokud je priznak noveho zaznamu tak udelame rovnou insert
    dlg.dxbOk.Action      := dlg.actVybrat;
    dlg.actCancel.Visible := true;
    dlg.actCancel.Caption := 'Storno';

    // Otevreme dataset pokud nejsme na spravnem zaznamu
    if AOPdmd.dtsAOPAOPKOD.AsString <> aFirmaObjekt.AopKod then
      AOPdmd.mod_OpenRecord(aFirmaObjekt.AopKod);

    result := (dlg.ShowModal = mrOk);
    if result then
    begin
      aFirmaObjekt.AopKod         := AOPdmd.dtsAOPAOPKOD.AsString;
      aFirmaObjekt.Nazev          := AOPdmd.dtsAOPNAZEV.AsString;
      aFirmaObjekt.Adresa1        := AOPdmd.dtsAOPADRESA1.AsString;
      aFirmaObjekt.Adresa2        := AOPdmd.dtsAOPADRESA2.AsString;
      aFirmaObjekt.Adresa3        := AOPdmd.dtsAOPADRESA3.AsString;
      aFirmaObjekt.Psc            := AOPdmd.dtsAOPPSC.AsString;
      aFirmaObjekt.ZemeKod        := AOPdmd.dtsAOPKODZEME.AsString;
      aFirmaObjekt.Zeme           := AOPdmd.dtsAOPPOPISZEME.AsString;
      aFirmaObjekt.ICO            := AOPdmd.dtsAOPICO.AsString;
      aFirmaObjekt.DIC            := AOPdmd.dtsAOPDIC.AsString;
      aFirmaObjekt.Ucet_Cislo     := AOPdmd.dtsAOPUCET.AsString;
      aFirmaObjekt.Ucet_Banka     := AOPdmd.dtsAOPBANKAKOD.AsString;
      aFirmaObjekt.Splatnost      := AOPdmd.dtsAOPSPLATNOST.AsInteger;
      aFirmaObjekt.Email          := dlg.SendingAdres;
      aFirmaObjekt.SelecteKontakt := dlg.SelectedKontakt;

    end;
  finally
    dlg.Free;
  end;
end;

constructor TAOPfrmEdit.Create(AOwner: TComponent);
begin
  inherited;
  IsKontakty                := true;
  framePrilohy              := TfraCustomDocs.Create(self);
  dsZaznam.DataSet          := AOPdmd.dtsAOP; // Staci jednou GetAOPdmd, pak uz mame jistotu ze modul AOPdmd existuje
  dsKontakty.DataSet        := AOPdmd.dtsAOPJmena;
  AOPdmd.dtsAOPJmena.Active := true;
  cbZeme.RepositoryItem     := GetAOPmodul.repStaty;
  edPrefMail.RepositoryItem := GetdmdGlobal.repPrefMail;
  edVlastnik.RepositoryItem := dmdGlobal.repUsers;
  pgcMain.ActivePage        := tbsAdresa;
  actRecDelete.Visible      := GetdmdSystem.gbEnableDelete;

  if dmdSystem.gbAdresa3UpperCase then
    edAdresa3.Properties.CharCase := ecUpperCase
  else
    edAdresa3.Properties.CharCase := ecNormal;

  tvKontakty.Styles.StyleSheet := dmdGlobal.ModStyleSheet;

  ReStoreViewSettings(tvKontakty);
  framePrilohy.ConnectToEvid(AOPdmd.dtsAOPSID, dsZaznam, tbsDocs);

end;

procedure TAOPfrmEdit.actRecDeleteExecute(Sender: TObject);
begin
  try
    if DisplayConfirm(sMsgConfirmDelete) then
    begin
      AOPdmd.dtsAOP.Delete;
      if AOPdmd.AOPSeznam.Active then
        AOPdmd.AOPSeznam.RefreshKeys;
      self.close;
      // inherited;
    end;
  except
    on e: exception do
      DisplayError(SERR_DELETE, e.Message)
  end;
end;

procedure TAOPfrmEdit.edZnackaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  sNewRada              : string;
  iNewAopKod, sOldAopKod: string;
begin

  case AbsoluteIndex of
    0:
      begin
        sNewRada := dmdSystem.SelectNumLine(AOPfrmModule.ModuleName);
        if sNewRada <> EmptyStr then
          AOPdmd.dtsAOPAOPKOD.AsString := sNewRada;
      end;
    1:
      begin
        { Zmena cisla zasilky }
        iNewAopKod := AOPdmd.dtsAOPAOPKOD.AsString;
        sOldAopKod := iNewAopKod;
        if InputQuery(Application.Title, 'Zadejte novou znaèku pro adresu', iNewAopKod) then
          if iNewAopKod <> sOldAopKod then
          begin
            AOPdmd.dtsAOP.Edit;
            AOPdmd.dtsAOPAOPKOD.AsString := iNewAopKod;
            AOPdmd.dtsAOP.Post;
          end;

      end;
  end;

end;

procedure TAOPfrmEdit.edPscButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  pMisto: TAOPMisto;
begin
  with pMisto do
  begin
    Psc     := edPsc.text;
    KodZeme := VarToStr(cbZeme.EditValue);
  end;

  if AOPfrmModule.ShowKTLPsc(pMisto) then
  begin
    SetEditsState;
    AOPdmd.dtsAOPKODZEME.AsVariant := pMisto.KodZeme;
    AOPdmd.dtsAOPADRESA3.AsString  := pMisto.Mesto;
    AOPdmd.dtsAOPPSC.AsString      := pMisto.Psc;
  end;

end;

procedure TAOPfrmEdit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // Kontrola jestli neni dataset kontaktu v Edit nebo Insert modu
  // Pokud ano, tak udelame zapis
  if (dsKontakty.DataSet <> nil) and (dsKontakty.DataSet.State in [dsEdit, dsInsert]) then
    dsKontakty.DataSet.Post;

  StoreViewSettings(tvKontakty);
  inherited;

end;

procedure TAOPfrmEdit.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dsZaznam.DataSet = nil then
    Exit;
  if Field = nil then
  begin
    edZnacka.Properties.readonly           := not(dsZaznam.DataSet.State in [dsEdit, dsInsert]);
    edZnacka.Properties.Buttons[0].Visible := not edZnacka.Properties.readonly;
    edZnacka.Properties.Buttons[1].Visible := edZnacka.Properties.readonly;
  end;
end;

procedure TAOPfrmEdit.actKontDelExecute(Sender: TObject);
begin
  if DisplayConfirm('Opravdu chcete odstranit vybraný kontakt: ' + AOPdmd.dtsAOPJmenaPRIJMENI.AsString + ' ' + AOPdmd.dtsAOPJmenaJMENO.AsString) then
    AOPdmd.dtsAOPJmena.Delete;
end;

procedure TAOPfrmEdit.actVybratExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TAOPfrmEdit.actGridStylExecute(Sender: TObject);
begin
  tvKontakty.Styles.StyleSheet := GetUsersStyleSheet(tvKontakty.Styles.StyleSheet);
end;

procedure TAOPfrmEdit.actRecordMove(Sender: TObject);
begin
  if Sender = actRecPrior then
    AOPdmd.AOPSeznam.prior
  else if Sender = actRecNext then
    AOPdmd.AOPSeznam.next;
  AOPdmd.mod_OpenRecord(AOPdmd.AOPSeznamAOPKOD.AsString);

end;

procedure TAOPfrmEdit.grdKontaktyEnter(Sender: TObject);
begin
  IsKontakty := true;
end;

procedure TAOPfrmEdit.edEmailEnter(Sender: TObject);
begin
  IsKontakty := false;
end;

function TAOPfrmEdit.SelectedKontakt: Integer;
begin
  if not AOPdmd.dtsAOPJmena.IsEmpty then
    result := AOPdmd.dtsAOPJmenaID.AsInteger
  else
    result := 0;
end;

function TAOPfrmEdit.SendingAdres: string;
begin
  if IsKontakty then
    result := AOPdmd.dtsAOPjmenaEMAIL.AsString
  else
    result := AOPdmd.dtsAOPEMAIL.AsString;
end;

procedure TAOPfrmEdit.actSetDefaultEmailExecute(Sender: TObject);
begin
  SetEditsState;
  AOPdmd.dtsAOPEMAIL.AsString := AOPdmd.dtsAOPjmenaEMAIL.AsString;
  AOPdmd.dtsAOP.Post;
  Caption := 'Byla nastaveno nová hlavní kontaktní adresa';

end;

procedure TAOPfrmEdit.actSetDefaultEmailUpdate(Sender: TObject);
begin
  actSetDefaultEmail.Enabled := not dsKontakty.DataSet.IsEmpty;
end;

procedure TAOPfrmEdit.actRecCopyExecute(Sender: TObject);
var
  sNewSID: string;
begin
  sNewSID := AOPdmd.CopyRecord(AOPdmd.dtsAOPAOPKOD.AsString, false);
end;

end.
