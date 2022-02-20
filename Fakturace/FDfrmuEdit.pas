{ -----------------------------------------------------------------------------
  Procedure: actRecPostExecute
  Author:    Administrator
  Date:      13-IV-2002
  Arguments: Sender: TObject
  Result:    None
  ----------------------------------------------------------------------------- }
unit FDfrmuEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, ExtCtrls, StdCtrls, uCustomForms,
  IBODataset, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxCalendar, dxBar, cxClasses, cxButtons,
  cxCurrencyEdit, cxButtonEdit, cxLabel, Db, cxGroupBox, cxDBEdit, DBActns,
  cxDBLabel, cxPC, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, frCustomDocsFrame,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, fCustEdit, dxBarExtItems, uEnterTab,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TFDfrmEdit = class(TfrmCustEdit)
    dsPolozky: TDataSource;
    actAddDopravcePrepravy: TAction;
    dxBarButton9: TdxBarButton;
    actPolNew: TDataSetInsert;
    actPolDelete: TDataSetDelete;
    pnlHlavicka: TPanel;
    grbIdent: TcxGroupBox;
    lblLabel9: TcxLabel;
    lblLabel8: TcxLabel;
    lblLabel17: TcxLabel;
    lblLabel18: TcxLabel;
    lblLabel21: TcxLabel;
    edVariabilni: TcxDBTextEdit;
    edFaktura: TcxDBButtonEdit;
    edDatSpl: TcxDBDateEdit;
    edDatDan: TcxDBDateEdit;
    edDatVyst: TcxDBDateEdit;
    lbl4: TcxLabel;
    edDatDoruceni: TcxDBDateEdit;
    grbFirma: TcxGroupBox;
    edAdresa1: TcxDBTextEdit;
    edAdresa2: TcxDBTextEdit;
    edPsc: TcxDBTextEdit;
    edZeme: TcxDBTextEdit;
    edAdresa3: TcxDBTextEdit;
    edDIC: TcxDBTextEdit;
    edICO: TcxDBTextEdit;
    edNazev: TcxDBButtonEdit;
    lblLabel11: TcxLabel;
    edUcet: TcxDBTextEdit;
    edBanka: TcxDBTextEdit;
    lblLabel16: TcxLabel;
    cbMena: TcxDBLookupComboBox;
    edCenaKurs: TcxDBCurrencyEdit;
    lbl3: TcxLabel;
    grbCenaPanel: TcxGroupBox;
    lblYaklad: TcxLabel;
    lblLabel24: TcxLabel;
    lblLabel13: TcxLabel;
    lblLabel19: TcxLabel;
    edZaklad22: TcxDBCurrencyEdit;
    edZaklad05: TcxDBCurrencyEdit;
    edZaklad00: TcxDBCurrencyEdit;
    edDPH22: TcxDBCurrencyEdit;
    edDPH05: TcxDBCurrencyEdit;
    edCENA22: TcxDBCurrencyEdit;
    edCENA05: TcxDBCurrencyEdit;
    edCenaSuma: TcxDBCurrencyEdit;
    lbDPHSnizena: TcxDBLabel;
    lbDBHZakladni: TcxDBLabel;
    edKUhrade: TcxDBCurrencyEdit;
    lblLabel37: TcxLabel;
    lbl1: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lbl2: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grdSrazky: TcxGrid;
    tvPolozky: TcxGridDBTableView;
    tvPolozkyID: TcxGridDBColumn;
    tvPolozkyREFFD: TcxGridDBColumn;
    tvPolozkyPOLTEXT: TcxGridDBColumn;
    tvPolozkyZASILKA: TcxGridDBColumn;
    tvPolozkyCENASMLUVNI: TcxGridDBColumn;
    tvPolozkyCENAJEDNOTKY: TcxGridDBColumn;
    tvPolozkyCENAJEDNOTKA: TcxGridDBColumn;
    tvPolozkyCENADPHPROC: TcxGridDBColumn;
    tvPolozkyCENADPH: TcxGridDBColumn;
    tvPolozkyCENASUMA: TcxGridDBColumn;
    tvPolozkyCENADPHSAZBA: TcxGridDBColumn;
    tvPolozkyISDOPROVIZE: TcxGridDBColumn;
    tvPolozkyZALOHA: TcxGridDBColumn;
    lvSrazky: TcxGridLevel;
    tbsDocs: TcxTabSheet;
    dxBarManager1Bar2: TdxBar;
    dck1: TdxBarDockControl;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    jfEnterAsTab1: TjfEnterAsTab;
    actPolSave: TDataSetPost;
    dxb3: TdxBarButton;
    cxGroupBox1: TcxGroupBox;
    edPoznamka: TcxDBMemo;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxLabel1: TcxLabel;
    edDatDanDod: TcxDBDateEdit;
    tvPolozkyPOLOZKA: TcxGridDBColumn;
    actAddPreprava: TAction;
    dxBarButton10: TdxBarButton;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure edNazevButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure gbCustomEditFormPrint(Sender: TObject);
    procedure edFakturaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure actRecordMove(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure actAddDopravcePrepravyExecute(Sender: TObject);
    procedure btnPolDeleteClick(Sender: TObject);
    procedure grdSrazkyEnter(Sender: TObject);
    procedure grdSrazkyExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    framePrilohy: TfraCustomDocs;
    fDeleting   : Boolean;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

function FDGetDetail(var aSID: string; aNewRec: Boolean = false): Boolean;

implementation

uses
  uVarClass, fMessageDlg, uAppUtils, JclStrings, FDfrmuModule, FDdmdu, appdmduSystem, AOPfrmuModule,
  ZSfrmuModule, appfrmuGlobal, FVfrmuZaokrouleniDlg, appDPHunit, FDConstDefunit,
  appGenIdUnit, fKatalogyModul, ZSfrmuVyberDlg, fFDVyberZasilkuDlg;

{$R *.DFM}

function FDGetDetail(var aSID: string; aNewRec: Boolean = false): Boolean;
var
  dlg: TFDfrmEdit;
begin
  dlg := TFDfrmEdit.Create(nil);
  try
    // Pokud je priznak noveho zaznamu tak udelame rovnou insert
    if aNewRec then
    begin
      FDdmd.mod_OpenRecord(aSID);
      FDdmd.FakturyDO.Insert;
    end
    else
      // Otevreme dataset pokud nejsme na spravnem zaznamu
      if FDdmd.FakturyDOSID.AsString <> aSID then
        FDdmd.mod_OpenRecord(aSID);

    result := (dlg.ShowModal = mrOk);

    if result then
      aSID := FDdmd.FakturyDOSID.AsString;

  finally
    dlg.Free;
  end;
end;

constructor TFDfrmEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  framePrilohy := TfraCustomDocs.Create(self);
  framePrilohy.ConnectToEvid(GetFDdmd.FakturyDOSID, dsZaznam, tbsDocs);

  dsZaznam.DataSet                     := FDdmd.FakturyDO;
  cbMena.RepositoryItem                := dmdGlobal.repMena;
  edCenaKurs.RepositoryItem            := dmdGlobal.repCNKurz;
  tvPolozkyCENAJEDNOTKA.RepositoryItem := dmdGlobal.repJednotky;
  tvPolozkyCENADPHSAZBA.RepositoryItem := dmdGlobal.repDPHTyp;
  tvPolozkyISDOPROVIZE.RepositoryItem  := dmdGlobal.repBoolChar;
  tvPolozkyZALOHA.RepositoryItem       := dmdGlobal.repBoolChar;
  tvPolozky.Styles.StyleSheet          := dmdGlobal.ModStyleSheet;
  fDeleting                            := false;

  ReStoreViewSettings(tvPolozky);
end;

procedure TFDfrmEdit.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm('Opravdu chcete odstranit fakturu: ' + FDdmd.FakturyDOFAKTURADO.AsString + ' z evidence?') then
  begin
    FDdmd.FakturyDO.Delete;
    IsDataChanged := True;
    fDeleting     := True;
    ModalResult   := mrOk;
  end;
end;

procedure TFDfrmEdit.gbCustomEditFormPrint(Sender: TObject);
begin
  inherited;
  FDfrmModule.PrintModule(IsDefaultReport, edFaktura.Text);
end;

procedure TFDfrmEdit.grdSrazkyEnter(Sender: TObject);
begin
  jfEnterAsTab1.EnterAsTab := false;
end;

procedure TFDfrmEdit.grdSrazkyExit(Sender: TObject);
begin
  jfEnterAsTab1.EnterAsTab := True;
end;

procedure TFDfrmEdit.edNazevButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  cFirma: TAOPFirmaClass;
begin
  cFirma := TAOPFirmaClass.CreateCustom(FDdmd.FakturyDOAOPKOD.AsString, True);
  try
    if cFirma.NaselAdresu then
    begin

      SetEditsState;

      FDdmd.FakturyDOAOPKOD.AsString     := cFirma.AOPKod;
      FDdmd.FakturyDONAZEV.AsString      := cFirma.Nazev;
      FDdmd.FakturyDOUCET_CISLO.AsString := cFirma.Ucet_Cislo;
      FDdmd.FakturyDOUCET_BANKA.AsString := cFirma.Ucet_Banka;

      FDdmd.FakturyDOADRESA1.AsString := cFirma.Adresa1;
      FDdmd.FakturyDOADRESA2.AsString := cFirma.Adresa2;
      FDdmd.FakturyDOADRESA3.AsString := cFirma.Adresa3;
      FDdmd.FakturyDOPSC.AsString     := cFirma.Psc;
      FDdmd.FakturyDOZEME.AsString    := cFirma.Zeme;
      FDdmd.FakturyDOICO.AsString     := cFirma.ICO;
      FDdmd.FakturyDODIC.AsString     := cFirma.DIC;

    end;
  finally
    cFirma.Free;
  end;
  ActiveControl := edNazev

end;

procedure TFDfrmEdit.edFakturaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  sNewRada   : string;
  sNewFaktura: string;
const
  sOkRenameFaktura = 'Opravdu chcete zmìnit èíslo faktury?';

begin
  case AbsoluteIndex of //
    0:
      begin
        sNewRada := dmdSystem.SelectNumLine(FDfrmModule.ModuleName);
        if sNewRada <> EmptyStr then
        begin
          SetEditsState;
          FDdmd.FakturyDOFAKTURADO.AsString := sNewRada;
        end;
      end;
    1:
      begin
        if DisplayConfirm(sOkRenameFaktura) then
        begin
          sNewFaktura := edFaktura.Text;
          if InputQuery(Application.Title, 'Nové èíslo dokladu', sNewFaktura) then
          begin
            SetEditsState;
            FDdmd.FakturyDOFAKTURADO.AsString := sNewFaktura;
            FDdmd.FakturyDO.Post;
          end;
        end;

      end;
  end; // case

end;

procedure TFDfrmEdit.actRecordMove(Sender: TObject);
begin
  inherited;
  if Sender = actRecPrior then
    FDdmd.FDSeznam.prior
  else if Sender = actRecNext then
    FDdmd.FDSeznam.next;
  FDdmd.mod_OpenRecord(FDdmd.FDSeznamSID.AsString);
end;

procedure TFDfrmEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvPolozky);
  inherited;

end;

procedure TFDfrmEdit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (not fDeleting) and (FDdmd.FakturyDOVARIABILNI.AsString = '') then
  begin
    DisplayError('Vyplòte pole symbol variabilní.');
    edVariabilni.SetFocus;
    CanClose := false;
  end;
  inherited;

end;

procedure TFDfrmEdit.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Field = nil then
  begin
    edFaktura.Properties.ReadOnly           := not(dsZaznam.DataSet.State in [dsInsert]);
    edFaktura.Properties.Buttons[0].Visible := not edFaktura.Properties.ReadOnly;
    edFaktura.Properties.Buttons[1].Visible := edFaktura.Properties.ReadOnly;
  end;
end;

procedure TFDfrmEdit.actAddDopravcePrepravyExecute(Sender: TObject);
var
  lcSID, avalue: string;
  dlg          : TfrmFDSelectZasilka;
begin
  lcSID := '';
  if FDdmd.FakturyDOAOPKOD.AsString <> '' then
  begin
    dlg := TfrmFDSelectZasilka.Create(Application);
    try
      if Sender = actAddPreprava then
      begin
        if InputQuery('Èíslo pøepravy', 'Zadejte èíslo pøepravy', avalue) then
        begin
        //dlg.SQLWhere                   := 'WHERE ZSSEZNAM.ZASILKA LIKE ' + StrSingleQuote(StrQuote(UpperCase(avalue), '%'));
          dlg.SQLWhere                   := 'WHERE ZSSEZNAM.ZASILKA = ' + StrSingleQuote(UpperCase(avalue));
          dlg.actShowFakturovane.Visible := false;
          dlg.chkFakturovano.Checked     := True;
          dlg.chkSaveFilter.Checked      := false;
          dlg.chkSaveFilter.Visible      := false;
          dlg.chkNoVyrizene.Visible      := false;
        end
        else
          SysUtils.Abort;
      end
      else if Sender = actAddDopravcePrepravy then
      begin
        dlg.SQLWhere := Format('WHERE ZSSEZNAM.AOPKOD_DOP= %s', [StrSingleQuote(FDdmd.FakturyDOAOPKOD.AsString)]);
      end;
      // Obcerstime data pro vyber
      dlg.ShowZaznamy;

      if dlg.ShowModal = mrOk then
        lcSID := dlg.dtsZSVyberSID.AsString;
    finally
      dlg.Free;
    end;
  end;

  if lcSID <> '' then
  begin
    FDdmd.ZSRecord.Active                              := false;
    FDdmd.ZSRecord.ParamByName('REF_ZASILKA').AsString := lcSID;
    FDdmd.ZSRecord.Active                              := True;

    if not FDdmd.ZSRecord.IsEmpty then
    begin
      FDdmd.dtsFDPol.Insert;
      FDdmd.dtsFDPolREFZASILKA.AsString     := lcSID;
      FDdmd.dtsFDPolPOLTEXT.AsString        := 'Pozice: ' + FDdmd.ZSRecordZASILKA.AsString;
      FDdmd.dtsFDPolCENASMLUVNI.AsCurrency  := numRound((FDdmd.ZSRecordCENASMLUVNI.Value * FDdmd.ZSRecordCENAJEDNOTKY.Value) + FDdmd.ZSRecordCENASRAZKY.Value, 1);
      FDdmd.dtsFDPolCENAJEDNOTKY.AsCurrency := 1;
      case FDdmd.ZSRecordCENADPHPROC.AsInteger of
        0:
          FDdmd.dtsFDPolCENADPHSAZBA.AsInteger := 0;
        5, 9:
          FDdmd.dtsFDPolCENADPHSAZBA.AsInteger := 1;
      else
        FDdmd.dtsFDPolCENADPHSAZBA.AsInteger := 2;
      end;

      FDdmd.dtsFDPol.Post;
      FDdmd.dtsFDPol.Refresh;
    end;
  end;

end;

procedure TFDfrmEdit.btnPolDeleteClick(Sender: TObject);
begin
  if DisplayConfirm('Chcete odebrat položku této faktury?') then
    FDdmd.dtsFDPol.Delete;

end;

end.
