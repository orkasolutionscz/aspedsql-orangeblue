unit POPfrmuEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, ExtCtrls,
  Db, IBODataset, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxCalendar, cxMemo, dxBar, cxClasses,
  cxButtons, cxLabel, cxCurrencyEdit, cxDBEdit,
  DBActns, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  fCustEdit, dxBarExtItems, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TPOPfrmEdit = class(TfrmCustEdit)
    grpVykladka: TGroupBox;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    edNMisto: TcxDBButtonEdit;
    edVMisto: TcxDBButtonEdit;
    edDatumDo: TcxDBDateEdit;
    edDatum: TcxDBDateEdit;
    edZNRamcovka: TcxDBTextEdit;
    edNPSC: TcxDBTextEdit;
    edVPsc: TcxDBTextEdit;
    edCenaPodminky: TcxDBTextEdit;
    mePoznamka: TcxDBMemo;
    cbTyp: TcxDBLookupComboBox;
    cbNZeme: TcxDBLookupComboBox;
    cbVZeme: TcxDBLookupComboBox;
    cbVozidlo: TcxDBLookupComboBox;
    cbCenaMena: TcxDBLookupComboBox;
    cbCenaJednotka: TcxDBLookupComboBox;
    edCenaSmluvni: TcxDBCurrencyEdit;
    edZadavatel: TcxDBLookupComboBox;
    edKontakt: TcxDBTextEdit;
    edZnacka: TcxDBButtonEdit;
    dxlgLayoutControl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxlgdxl1Group1: TdxLayoutGroup;
    dxlgdxl1Group2: TdxLayoutGroup;
    dlidxl1Item1: TdxLayoutItem;
    dlidxl1Item2: TdxLayoutItem;
    dlidxl1Item3: TdxLayoutItem;
    dlidxl1Item4: TdxLayoutItem;
    dlidxl1Item5: TdxLayoutItem;
    dxlgdxl1Group3: TdxLayoutGroup;
    dlidxl1Item6: TdxLayoutItem;
    dlidxl1Item7: TdxLayoutItem;
    dxlgdxl1Group4: TdxLayoutGroup;
    dxlgdxl1Group5: TdxLayoutGroup;
    dxlgdxl1Group6: TdxLayoutGroup;
    dlidxl1Item8: TdxLayoutItem;
    dlidxl1Item9: TdxLayoutItem;
    dlidxl1Item10: TdxLayoutItem;
    dxlgdxl1Group7: TdxLayoutGroup;
    dxlgdxl1Group8: TdxLayoutGroup;
    dlidxl1Item11: TdxLayoutItem;
    dlidxl1Item12: TdxLayoutItem;
    dlidxl1Item13: TdxLayoutItem;
    dxlgdxl1Group9: TdxLayoutGroup;
    dlidxl1Item14: TdxLayoutItem;
    dxlgdxl1Group10: TdxLayoutGroup;
    dlidxl1Item15: TdxLayoutItem;
    dlidxl1Item16: TdxLayoutItem;
    dlidxl1Item17: TdxLayoutItem;
    dlidxl1Item18: TdxLayoutItem;
    dxlgdxl1Group12: TdxLayoutGroup;
    dlidxl1Item19: TdxLayoutItem;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure edNMistoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edVMistoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure actRecordMove(Sender: TObject);
    procedure edZnackaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dsZaznamStateChange(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
  end;

function POPGetDetail(var aSID: string; aNewRec: Boolean = false): Boolean;

implementation

uses variants, uVarClass, appunconst, fMessageDlg, POPdmdu, POPfrmuModule, AOPdmdu, comobj,
  AOPfrmuModule, appfrmuGlobal, ZSdmdu, POPConstDefUnit,
  appGenIdUnit, ucustomforms, appdmduSystem;

{$R *.DFM}

function POPGetDetail(var aSID: string; aNewRec: Boolean = false): Boolean;
var
  dlg: TPOPfrmEdit;
begin
  dlg := TPOPfrmEdit.Create(nil);
  try
    // Pokud je priznak noveho zaznamu tak udelame rovnou insert
    if aNewRec then
    begin
      POPdmd.mod_OpenRecord(aSID);
      POPdmd.POPRecord.Insert;
    end
    else
      // Otevreme dataset pokud nejsme na spravnem zaznamu
      if POPdmd.POPRecordSID.AsString <> aSID then
        POPdmd.mod_OpenRecord(aSID);

    result := (dlg.ShowModal = mrOk);

    if result then
      aSID := POPdmd.POPRecordSID.AsString;

  finally
    dlg.Free;
  end;
end;

constructor TPOPfrmEdit.Create(AOwner: TComponent);
begin
  inherited;
  dsZaznam.DataSet                     := GetPOPdmd.POPRecord;
  cbTyp.RepositoryItem                 := dmdGlobal.repPOPTypy;
  cbNZeme.RepositoryItem               := AOPfrmModule.repStatyShort;
  cbVZeme.RepositoryItem               := AOPfrmModule.repStatyShort;
  cbVozidlo.RepositoryItem             := dmdGlobal.repZSAuta;
  cbCenaMena.RepositoryItem            := dmdGlobal.repMena;
  cbCenaJednotka.RepositoryItem        := dmdGlobal.repJednotky;
  edZadavatel.RepositoryItem           := AOPfrmModule.repFirmyFull;
  edZadavatel.Properties.OnButtonClick := AOPfrmModule.repFirmyPropertiesButtonClick;
  dxl1.LayoutLookAndFeel               := dmdGlobal.GetCurrLayoutStyle;
  if dmdSystem.gbAdresa3UpperCase then
  begin
    edNMisto.Properties.CharCase := ecUpperCase;
    edVMisto.Properties.CharCase := ecUpperCase;
  end;
end;

procedure TPOPfrmEdit.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
  begin
    try
      POPdmd.POPRecord.Delete;
      inherited;
    except
      on e: exception do
        DisplayError(SERR_DELETE, e.Message)
    end;
  end;
end;

procedure TPOPfrmEdit.edNMistoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  tmpMisto: TAOPMisto;
begin
  with tmpMisto do
  begin
    KodZeme := POPdmd.POPRecordNSTAT.AsString;
    Psc     := POPdmd.POPRecordNPSC.AsString;
    Mesto   := POPdmd.POPRecordNMisto.AsString;

    if AOPfrmModule.ShowKTLPsc(tmpMisto) then
    begin
      SetEditsState;

      POPdmd.POPRecordNSTAT.AsVariant := KodZeme;
      POPdmd.POPRecordNPSC.AsString   := Psc;
      POPdmd.POPRecordNMisto.AsString := Mesto;
    end;
  end;

end;

procedure TPOPfrmEdit.edVMistoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  tmpMisto: TAOPMisto;
begin
  with tmpMisto do
  begin
    KodZeme := POPdmd.POPRecordVSTAT.AsString;
    Psc     := POPdmd.POPRecordVPSC.AsString;
    Mesto   := POPdmd.POPRecordVMisto.AsString;

    if AOPfrmModule.ShowKTLPsc(tmpMisto) then
    begin
      SetEditsState;
      POPdmd.POPRecordVSTAT.AsVariant := KodZeme;
      POPdmd.POPRecordVPSC.AsString   := Psc;
      POPdmd.POPRecordVMisto.AsString := Mesto;
    end;
  end;

end;

procedure TPOPfrmEdit.actRecordMove(Sender: TObject);
begin
  if Sender = actRecPrior then
    POPdmd.POPSeznam.prior
  else if Sender = actRecNext then
    POPdmd.POPSeznam.next;
  POPdmd.mod_OpenRecord(POPdmd.POPSeznamSID.AsString);
end;

procedure TPOPfrmEdit.edZnackaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sNewRada  : string;
  sNewZnacka: string;
const
  sOkRenameFaktura = 'Opravdu chcete zmìnit èíslo poptávky?';
begin
  case AButtonIndex of //
    0:
      begin
        sNewRada := dmdSystem.SelectNumLine(POPfrmModule.ModuleName);
        if sNewRada <> EmptyStr then
        begin
          SetEditsState;
          POPdmd.POPRecordZNACKA.AsString := sNewRada;
          POPdmd.POPRecord.Post;
        end;
      end;
    1:
      begin
        if DisplayConfirm(sOkRenameFaktura) then
        begin
          sNewZnacka := POPdmd.POPRecordZNACKA.AsString;
          if InputQuery(Application.Title, 'Nové èíslo dokladu', sNewZnacka) then
          begin
            SetEditsState;
            POPdmd.POPRecordZNACKA.AsString := sNewZnacka;
            POPdmd.POPRecord.Post;
          end;
        end;

      end;
  end; // case

end;

procedure TPOPfrmEdit.dsZaznamStateChange(Sender: TObject);
begin
  if Assigned(dsZaznam.DataSet) then
  begin
    edZnacka.Properties.ReadOnly           := not(dsZaznam.DataSet.State in [dsInsert]);
    edZnacka.Properties.Buttons[0].Visible := not edZnacka.Properties.ReadOnly;
    edZnacka.Properties.Buttons[1].Visible := edZnacka.Properties.ReadOnly;
  end;

end;

end.
