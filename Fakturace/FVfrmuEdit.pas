unit FVfrmuEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fCustEdit, dxBar, cxClasses, Db, DBActns, ActnList, StdCtrls, cxButtons,
  ExtCtrls, rsStorage, rsPropSaver, cxGroupBox, cxLabel, cxButtonEdit,
  cxCurrencyEdit, cxMemo, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxPC, frCustomDocsFrame, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxPCdxBarPopupMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, dxBarExtItems,
  uEnterTab, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfrmFVEdit = class(TfrmCustEdit)
    dsFAPolozky: TDataSource;
    rsPropSaver1: TrsPropSaver;
    pnlZakladni: TPanel;
    lblLabel6: TcxLabel;
    lblLabel12: TcxLabel;
    lblLabel15: TcxLabel;
    lblLabel18: TcxLabel;
    lblLabel20: TcxLabel;
    lblLabel21: TcxLabel;
    lblLabel22: TcxLabel;
    lblLabel31: TcxLabel;
    lblLabel2: TcxLabel;
    lblLabel33: TcxLabel;
    lblLabel34: TcxLabel;
    lblLabel13: TcxLabel;
    lblLabel7: TcxLabel;
    lblLabel9: TcxLabel;
    lblLabel10: TcxLabel;
    lblLabel8: TcxLabel;
    lblLabel37: TcxLabel;
    lblLabel39: TcxLabel;
    lblLabel3: TcxLabel;
    grbCenaPanel: TcxGroupBox;
    lblYaklad: TcxLabel;
    lblLabel24: TcxLabel;
    lbl1: TcxLabel;
    lblLabel19: TcxLabel;
    lblDPHSnizena: TcxLabel;
    lblDBHZakladni: TcxLabel;
    edZaklad22: TcxDBCurrencyEdit;
    edZaklad05: TcxDBCurrencyEdit;
    edZaklad00: TcxDBCurrencyEdit;
    edDPH22: TcxDBCurrencyEdit;
    edDPH05: TcxDBCurrencyEdit;
    edCENA22: TcxDBCurrencyEdit;
    edCENA05: TcxDBCurrencyEdit;
    edCenaSuma: TcxDBCurrencyEdit;
    edDIC: TcxDBTextEdit;
    edICO: TcxDBTextEdit;
    edZeme: TcxDBTextEdit;
    edAdresa3: TcxDBTextEdit;
    edPsc: TcxDBTextEdit;
    edAdresa2: TcxDBTextEdit;
    edAdresa1: TcxDBTextEdit;
    edObjedn: TcxDBTextEdit;
    edPrilohy: TcxDBTextEdit;
    edSymbVar: TcxDBTextEdit;
    edFaktura: TcxDBButtonEdit;
    edNazev: TcxDBButtonEdit;
    edCenaKurs: TcxDBCurrencyEdit;
    edCenaSumaKc: TcxDBCurrencyEdit;
    edZalohy: TcxDBCurrencyEdit;
    edKUhrade: TcxDBCurrencyEdit;
    edDatSpl: TcxDBDateEdit;
    edDatDan: TcxDBDateEdit;
    edDatVyst: TcxDBDateEdit;
    edObjednDatum: TcxDBDateEdit;
    edText: TcxDBMemo;
    cbFVMena: TcxDBLookupComboBox;
    lsFVPata: TcxDBLookupComboBox;
    cbFVUhrada: TcxDBLookupComboBox;
    cbFVUcet: TcxDBLookupComboBox;
    cbFVFaktTyp: TcxDBLookupComboBox;
    pnlPreprava: TPanel;
    lblLabel1: TcxLabel;
    lblLabel30: TcxLabel;
    lblLabel32: TcxLabel;
    lblLabel27: TcxLabel;
    lblLabel26: TcxLabel;
    lblLabel25: TcxLabel;
    edNPoz: TcxDBTextEdit;
    edVPoz: TcxDBTextEdit;
    edSPZ: TcxDBTextEdit;
    edMNakl: TcxDBTextEdit;
    edMVykl: TcxDBTextEdit;
    edSubstrat: TcxDBTextEdit;
    edDATNakl: TcxDBDateEdit;
    edDatVykl: TcxDBDateEdit;
    dxPageControl1: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    ntbPolozky: TNotebook;
    grdPolozky: TcxGrid;
    tvPolozky: TcxGridDBTableView;
    tvPolozkyID: TcxGridDBColumn;
    tvPolozkyREFFV: TcxGridDBColumn;
    tvPolozkyPOLTEXT: TcxGridDBColumn;
    tvPolozkyCENASMLUVNI: TcxGridDBColumn;
    tvPolozkyCENAJEDNOTKY: TcxGridDBColumn;
    tvPolozkyCENAJEDNOTKA: TcxGridDBColumn;
    tvPolozkyCENASUMA: TcxGridDBColumn;
    tvPolozkyZALOHA: TcxGridDBColumn;
    tvPolozkyCENADPH: TcxGridDBColumn;
    tvPolozkyCENADPHPROC: TcxGridDBColumn;
    tvPolozkyISDOPROVIZE: TcxGridDBColumn;
    grdPolozkyLevel1: TcxGridLevel;
    pnlPolCenaInfo: TPanel;
    Label23: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label35: TcxLabel;
    Label14: TcxLabel;
    Label17: TcxLabel;
    Label36: TcxLabel;
    dxBarDockControl1: TdxBarDockControl;
    dxTabSheet2: TcxTabSheet;
    tbsDocs: TcxTabSheet;
    dxBarManager1Bar2: TdxBar;
    actFreeFV: TAction;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    dxb3: TdxBarButton;
    actZaokrouhlit: TAction;
    dxb4: TdxBarButton;
    actlstPolozky: TActionList;
    actPolNew: TAction;
    actPolNewZasilka: TAction;
    actPolEdit: TAction;
    actPolSave: TAction;
    actPolCancel: TAction;
    actPolDelete: TAction;
    actPolZaloha: TAction;
    dxb5: TdxBarButton;
    dxb6: TdxBarButton;
    dxb7: TdxBarButton;
    dxb8: TdxBarButton;
    dxb9: TdxBarButton;
    dxb10: TdxBarButton;
    edPoznamka: TcxDBMemo;
    edPolDPH: TcxDBCurrencyEdit;
    edPolSuma: TcxDBCurrencyEdit;
    edPolZaklad: TcxDBCurrencyEdit;
    edPolJednPocet: TcxDBCurrencyEdit;
    edPolText: TcxDBButtonEdit;
    chkPolZaloha: TcxDBCheckBox;
    chkIsDoProvize: TcxDBCheckBox;
    cbPolDphProc: TcxDBLookupComboBox;
    cbPolJednTyp: TcxDBLookupComboBox;
    dxb11: TdxBarButton;
    dxb12: TdxBarButton;
    dbxs1: TdxBarSubItem;
    lbl2: TcxLabel;
    edEmail: TcxDBTextEdit;
    dxb13: TdxBarButton;
    lbl3: TcxLabel;
    edTextBefore: TcxDBLookupComboBox;
    jfEnterAsTab1: TjfEnterAsTab;
    cxGridPopupMenu1: TcxGridPopupMenu;
    actExportSkoda: TAction;
    dxbExportSkoda: TdxBarButton;
    procedure actFreeFVExecute(Sender: TObject);
    procedure actZaokrouhlitExecute(Sender: TObject);
    procedure actPolCancelExecute(Sender: TObject);
    procedure actPolDeleteExecute(Sender: TObject);
    procedure actPolEditExecute(Sender: TObject);
    procedure actPolNewExecute(Sender: TObject);
    procedure actPolNewZasilkaExecute(Sender: TObject);
    procedure actPolSaveExecute(Sender: TObject);
    procedure actPolZalohaExecute(Sender: TObject);
    procedure jfsCustomEvidFormFormPrint(Sender: TObject);
    procedure dsFAPolozkyDataChange(Sender: TObject; Field: TField);
    procedure edNazevPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edFakturaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure actRecordMove(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure tvPolozkyDblClick(Sender: TObject);
    procedure actExportSkodaExecute(Sender: TObject);
  private
    { Private declarations }
    framePrilohy: TfraCustomDocs;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;

  end;

implementation

uses variants, FVdmdu, appfrmuGlobal, FVfrmuModule, appdmduSystem, ZSfrmuModule,
  ZSdmdu, fMessageDlg, uVarClass, FVfrmuZaokrouleniDlg, ZSConstDefUnit, FVConstDefUnit,
  AOPfrmuModule, JclDateTime, JclFileUtils, appIniOptionsUnit,
  uFVExportSkodaXml, uaopfirmaclass;

{$R *.DFM}

const
  NTPSEZNAM           = 'POLSeznam';
  NTPEDIT             = 'POLEdit';
  OK_DELETE_FVPOLOZKA = 'Opravdu chcete odstranit položku faktury?';

  { TfrmFVEdit }

constructor TfrmFVEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  LoadToolbars;

  framePrilohy := TfraCustomDocs.Create(self);
  framePrilohy.ConnectToEvid(GetFVdmd.FakturySID, dsZaznam, tbsDocs);
  dsZaznam.DataSet               := FVdmd.Faktury;
  dsFAPolozky.DataSet            := FVdmd.FAPolozky;
  lblDBHZakladni.Caption         := 'Zákl'; // IntToStr(FVfrmModule.gbDPHZakladni);
  lblDPHSnizena.Caption          := 'Sníž'; // IntToStr(FVfrmModule.gbDPHSnizena);
  cbPolJednTyp.RepositoryItem    := dmdGlobal.repJednotky;
  cbPolDphProc.RepositoryItem    := dmdGlobal.repDphSazba;
  cbFVMena.RepositoryItem        := dmdGlobal.repMena;
  edTextBefore.RepositoryItem    := dmdGlobal.repFVTextyHead;
  lsFVPata.RepositoryItem        := dmdGlobal.repFVTexty;
  cbFVUhrada.RepositoryItem      := dmdGlobal.repFVUhrada;
  cbFVUcet.RepositoryItem        := dmdGlobal.repUcet;
  cbFVFaktTyp.RepositoryItem     := dmdGlobal.repFVTyp;
  edPolText.RepositoryItem       := dmdGlobal.repFaktPolTexty;
  tvPolozkyZALOHA.RepositoryItem := dmdGlobal.repBoolChar;
  tvPolozky.Styles.StyleSheet    := dmdGlobal.ModStyleSheet;
  actRecCopy.Visible             := false;
  actRecDelete.Visible           := dmdSystem.gbEnableDelete;
  ntbPolozky.ActivePage          := NTPSEZNAM;
  // stAktualizovatPlatce          := False;

end;

procedure TfrmFVEdit.actExportSkodaExecute(Sender: TObject);
begin
  fvExportSkodaXml(FVdmd.FakturySID.AsString);

end;

procedure TfrmFVEdit.actFreeFVExecute(Sender: TObject);
begin
  // Provedeni odpojeni faktury od prepravy;
  if DisplayConfirm('Opravdu chcete odpojit tuto fakturu od pøepravy?', 'Dojde pouze odstranìní vazby mezi fakturou a pøepravou. Faktura NEBUDE odstranìna') then
  begin
    FVfrmModule.FVFreeOnZS(FVdmd.FakturySID.AsString);
    FVdmd.mod_OpenRecord(FVdmd.FakturySID.AsString);
  end;
end;

procedure TfrmFVEdit.actZaokrouhlitExecute(Sender: TObject);
var
  OldZaokrouhleni: TjfsZaokrouhleni;
begin
  OldZaokrouhleni := dmdSystem.gbZaokrouhleni;
  if doVyberZaokrouhleni(dmdSystem.gbZaokrouhleni) then
  begin
    try
      FVdmd.FVCalcDetailCena(FVdmd.FakturySID.AsString);
      FVdmd.Faktury.Refresh;
      // DBDataToControls;
    finally
      dmdSystem.gbZaokrouhleni := OldZaokrouhleni;
    end;
  end;
end;

procedure TfrmFVEdit.actPolCancelExecute(Sender: TObject);
begin
  // Nakonec
  if FVdmd.FAPolozky.State in [dsEdit, dsInsert] then
    FVdmd.FAPolozky.Cancel;
  ntbPolozky.ActivePage := NTPSEZNAM;
end;

procedure TfrmFVEdit.actPolDeleteExecute(Sender: TObject);
begin
  // Delete
  if DisplayConfirm(OK_DELETE_FVPOLOZKA) then
  begin

    try
      FVdmd.FAPolozky.Delete;
      FVdmd.FVCalcDetailCena(FVdmd.FakturySID.AsString);
      FVdmd.Faktury.Refresh;
    except
      on e: exception do
        DisplayError(SERR_DELETE, e.Message)
    end;
  end;

end;

procedure TfrmFVEdit.actPolEditExecute(Sender: TObject);
begin
  FVdmd.FAPolozky.Edit;
  edPolText.SetFocus;
end;

procedure TfrmFVEdit.actPolNewExecute(Sender: TObject);
begin
  FVdmd.FAPolozky.Insert;
  edPolText.SetFocus;
end;

procedure TfrmFVEdit.actPolNewZasilkaExecute(Sender: TObject);
var
  aIdPlatce : string;
  aIdZasilka: string;
  aPolozka  : string;
  aTrasa    : string;

  procedure AddPolString(AText: string);
  begin
    if aPolozka = EmptyStr then
      aPolozka := AText
    else
      aPolozka := aPolozka + '; ' + AText;
  end;

begin
  aIdPlatce := ZSfrmModule.GetPrepravuPlatce(FVdmd.FakturyAOPKOD.AsString);
  aPolozka  := '';
  aTrasa    := '';
  if aIdPlatce <> EmptyStr then
  begin
    aIdZasilka := zsdmd.ZSPLAVyberZASILKA.AsString;

    with ZSfrmModule.gbGenFvPole do
    begin
      if im_zasilka then
        AddPolString(aIdZasilka);

      if im_spz then
        AddPolString(zsdmd.ZSPLAVyberAUTOSPZ.AsString);

      aTrasa := 'Nakl.: ';
      if im_nakld then
        aTrasa := aTrasa + ' ' + zsdmd.ZSPLAVyberDATUM.AsString;
      if im_nakl then
        aTrasa := aTrasa + ' ' + zsdmd.ZSPLAVyberNAKLADKA.AsString;
      if aTrasa <> 'Nakl.: ' then
        AddPolString(aTrasa);

      if im_vykl then
        AddPolString('Vykl.: ' + zsdmd.ZSPLAVyberVYKLADKA.AsString);

      if im_codepl then
        AddPolString(zsdmd.ZSPLAVyberPOZICE.AsString);
      if im_sp then
        AddPolString(zsdmd.ZSPLAVyberSUBSTRATINFO.AsString);

      if im_sh then
        AddPolString(zsdmd.ZSPLAVyberHMBRUTTO.AsString + ' kg ' + zsdmd.ZSPLAVyberHMTEXT.AsString);

    end;
    // Musime to ustrihnout
    aPolozka := copy(aPolozka, 1, 254);

   {$IFDEF ORANGE}
    // Musime nacist vsechny polozky z detailu platce
    FVdmd.dtsGetPol.close;
    FVdmd.dtsGetPol.ParamByName('REFPLATCE').AsString := zsdmd.ZSPLAVyberID.AsString;
    FVdmd.dtsGetPol.open;
    //
    // Pokud ma platce vice polozek nemuzeme jej pouzit na hromadnou fakturu
    //
    if FVdmd.dtsGetPol.RecordCount > 1 then
    begin
      DisplayInfo('Plátce obsahuje více položek. Tuto pøepravu nelze fakturovat hromadnou fakturou.');
      Exit;
    end
    else
    begin
      FVdmd.FAPolozky.Insert;
      FVdmd.FAPolozkyPOLTEXT.AsString        := aPolozka;
      FVdmd.FAPolozkyCENASMLUVNI.AsCurrency  := FVdmd.dtsGetPolCENAZAKLAD.AsCurrency;
      FVdmd.FAPolozkyCENAJEDNOTKY.AsCurrency := FVdmd.dtsGetPolCENAJEDNOTKY.AsCurrency;
      FVdmd.FAPolozkyCENAJEDNOTKA.AsVariant  := FVdmd.dtsGetPolCENAJEDNOTKA.AsVariant;
      FVdmd.FAPolozkyCENADPHPROC.AsCurrency  := FVdmd.dtsGetPolCENADPHPROC.AsCurrency;
      FVdmd.FAPolozkyREFZASILKA.AsString     := aIdZasilka;
      FVdmd.FAPolozkyREFPLATCE.AsString      := aIdPlatce;
      FVdmd.FAPolozky.Post;
      dmdSystem.spProc.SQL.Text                        := ZSPL_PLTACIFV_UPDATE;
      dmdSystem.spProc.ParamByName(SZSP_P_ID).AsString := aIdPlatce;
      dmdSystem.spProc.ParamByName(SZSP_P_FAKTURA).AsString := FVdmd.FakturySID.AsString;
      dmdSystem.spProc.ExecSQL;
      FVdmd.FVCalcDetailCena(FVdmd.FakturySID.AsString);
    end;

   {$ELSE}
    begin
      FVdmd.FAPolozky.Insert;
      FVdmd.FAPolozkyPOLTEXT.AsString        := aPolozka;
      FVdmd.FAPolozkyCENASMLUVNI.AsCurrency  := zsdmd.ZSPLAVyberCENASMLUVNI.AsCurrency;
      FVdmd.FAPolozkyCENAJEDNOTKY.AsCurrency := zsdmd.ZSPLAVyberCENAJEDNOTKY.AsCurrency;
      FVdmd.FAPolozkyCENAJEDNOTKA.AsVariant  := zsdmd.ZSPLAVyberCENAJEDNOTKA.AsVariant;
      FVdmd.FAPolozkyCENADPHPROC.AsCurrency  := zsdmd.ZSPLAVyberCENADPHPROC.AsCurrency;
      FVdmd.FAPolozkyREFZASILKA.AsString     := aIdZasilka;
      FVdmd.FAPolozkyREFPLATCE.AsString      := aIdPlatce;
      FVdmd.FAPolozky.Post;
      dmdSystem.spProc.SQL.Text                        := ZSPL_PLTACIFV_UPDATE;
      dmdSystem.spProc.ParamByName(SZSP_P_ID).AsString := aIdPlatce;
      dmdSystem.spProc.ParamByName(SZSP_P_FAKTURA).AsString := FVdmd.FakturySID.AsString;
      dmdSystem.spProc.ExecSQL;
      FVdmd.FVCalcDetailCena(FVdmd.FakturySID.AsString);
    end;
   {$ENDIF}

    // iUpdateSoucty;
  end;




  ActiveControl := grdPolozky;
end;

procedure TfrmFVEdit.actPolSaveExecute(Sender: TObject);
begin
  { Kontrola polozky }
  if chkPolZaloha.Checked and (edPolZaklad.Value >= 0) then
  begin
    if not DisplayConfirm(SZapisujeteUhrazenouZLohuKterNemZPornouHodnotu + #10#13 + SJeToSprVn) then
      Exit;
  end;

  try
    FVdmd.FAPolozky.Post;
  except
    on e: exception do
    begin
      DisplayError(SERR_FV_INSERTPOLOZKA, e.Message);
      Exit;
    end;
  end;

end;

procedure TfrmFVEdit.actPolZalohaExecute(Sender: TObject);
begin
  // iPolClearFields;
  ntbPolozky.ActivePage := NTPEDIT;
  FVdmd.FAPolozky.Insert;
  FVdmd.FAPolozkyZALOHA.AsString        := 'T';
  FVdmd.FAPolozkyPOLTEXT.AsString       := SUhrazenZLohy;
  FVdmd.FAPolozkyCENASMLUVNI.AsCurrency := -1;
  FVdmd.FAPolozkyCENAJEDNOTKA.Clear;
  edPolText.SetFocus;
end;

procedure TfrmFVEdit.jfsCustomEvidFormFormPrint(Sender: TObject);
begin
  inherited;
  FVfrmModule.PrintModule(IsDefaultReport, FVdmd.FakturySID.AsString);

end;

procedure TfrmFVEdit.dsFAPolozkyDataChange(Sender: TObject; Field: TField);
begin
  if FVdmd.FAPolozky.State in [dsEdit, dsInsert] then
    ntbPolozky.ActivePage := NTPEDIT
  else
    ntbPolozky.ActivePage := NTPSEZNAM;

  actPolNew.Enabled        := (FVdmd.FAPolozky.State = dsbrowse);
  actPolNewZasilka.Enabled := (FVdmd.FAPolozky.State = dsbrowse);
  actPolEdit.Enabled       := (FVdmd.FAPolozky.State = dsbrowse) and (not FVdmd.FAPolozky.IsEmpty);
  actPolSave.Enabled       := (FVdmd.FAPolozky.State in [dsEdit, dsInsert]);
  actPolCancel.Enabled     := (FVdmd.FAPolozky.State in [dsEdit, dsInsert]);
  actPolDelete.Enabled     := (FVdmd.FAPolozky.State = dsbrowse) and (not FVdmd.FAPolozky.IsEmpty);
  actPolZaloha.Enabled     := (FVdmd.FAPolozky.State = dsbrowse);
end;

procedure TfrmFVEdit.edNazevPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cFirma : TAOPFirmaClass;
  sAopKod: string;
begin
  sAopKod := VarToStr(FVdmd.FakturyAOPKOD.AsVariant);
  cFirma  := TAOPFirmaClass.Create(sAopKod, true);

  try
    if cFirma.NaselAdresu then
    begin
      SetEditsState;

      FVdmd.FakturyAOPKOD.AsString     := cFirma.AOPKod;
      FVdmd.FakturyNazev.AsString      := cFirma.Nazev;
      FVdmd.FakturyAdresa1.AsString    := cFirma.Adresa1;
      FVdmd.FakturyAdresa2.AsString    := cFirma.Adresa2;
      FVdmd.FakturyAdresa3.AsString    := cFirma.Adresa3;
      FVdmd.FakturyPsc.AsString        := cFirma.Psc;
      FVdmd.FakturyZeme.AsString       := cFirma.Zeme;
      FVdmd.FakturyICO.AsString        := cFirma.ICO;
      FVdmd.FakturyDIC.AsString        := cFirma.DIC;
      FVdmd.FakturyPLA_EMAILS.AsString := cFirma.Email;

      // fldSplatnost                      := cFirma.Splatnost;
    end;
  finally
    cFirma.Free;
  end;
  ActiveControl := edNazev

end;

procedure TfrmFVEdit.edFakturaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sNewRada   : string;
  sNewFaktura: string;
begin
  case AButtonIndex of //
    0:
      begin
        sNewRada := dmdSystem.SelectNumLine(FVfrmModule.ModuleName);
        if sNewRada <> EmptyStr then
        begin
          SetEditsState;
          FVdmd.FakturyFAKTURA.AsString := sNewRada;
        end;

      end;
    1:
      begin
        if DisplayConfirm(smfv_OkRenameFaktura) then
        begin
          sNewFaktura := FVdmd.FakturyFAKTURA.AsString;
          if InputQuery(Application.Title, SNovSloFaktury, sNewFaktura) then
          begin
            with FVdmd do
            begin
              try
                Faktury.Edit;
                FakturyFAKTURA.AsString := sNewFaktura;
                Faktury.Post;
              except
                on e: exception do
                  DisplayError(SERR_CHANGE_ZNACKA, e.Message);
              end;
            end;
          end;
        end;

      end;
  end; // case

end;

procedure TfrmFVEdit.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dsZaznam.DataSet = nil then
    Exit;
  if Field = nil then
  begin
    edFaktura.Properties.ReadOnly           := not(FVdmd.Faktury.State in dsEditModes);
    edFaktura.Properties.Buttons[0].Visible := not edFaktura.Properties.ReadOnly;
    edFaktura.Properties.Buttons[1].Visible := edFaktura.Properties.ReadOnly;
    pnlPreprava.Visible                     := FVdmd.FakturyTYP.AsInteger = 1;
    actFreeFV.Visible                       := FVdmd.FakturyTYP.AsInteger = 1;
    actRecPrior.Enabled                     := FVdmd.FakturySeznam.Active and (not FVdmd.FakturySeznam.IsEmpty);
    actRecNext.Enabled                      := FVdmd.FakturySeznam.Active and (not FVdmd.FakturySeznam.IsEmpty);
  end;
end;

procedure TfrmFVEdit.actRecordMove(Sender: TObject);
begin
  if not FVdmd.FakturySeznam.Active then
    Exit;

  if Sender = actRecPrior then
    FVdmd.FakturySeznam.prior
  else if Sender = actRecNext then
    FVdmd.FakturySeznam.Next;
  FVdmd.mod_OpenRecord(FVdmd.FakturySeznamSID.AsString);
end;

procedure TfrmFVEdit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Assigned(dsFAPolozky.DataSet) then
  begin
    if (dsFAPolozky.DataSet.State in [dsEdit, dsInsert]) then
    begin
      dsFAPolozky.DataSet.Post;
    end;
  end;
  inherited;
end;

procedure TfrmFVEdit.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm('Opravdu chcete odstranit fakturu: ' + FVdmd.FakturyFAKTURA.AsString + ' z evidence?') then
  begin
    FVdmd.Faktury.Delete;
    IsDataChanged := true;
    ModalResult   := mrOk;
  end;
end;

procedure TfrmFVEdit.tvPolozkyDblClick(Sender: TObject);
begin
  actPolEdit.Execute;
end;

end.
