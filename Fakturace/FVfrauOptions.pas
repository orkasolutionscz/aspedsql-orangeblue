{ 16.9.2003 11:50:31 (GMT+2:00) > [fait on ACER-K8Q02GA4AI] checked out /Uprava pro demo kompilaci }
{ -----------------------------------------------------------------------------
  Unit Name: FVfrauOptions
  Author:    Administrator
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit FVfrauOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, ExtCtrls, ActnList, uCustomForms, Buttons, ComCtrls,
  uAppControler, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxRadioGroup, cxLabel,
  cxGroupBox, cxColorComboBox, cxPC, cxImageComboBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxButtonEdit;

type
  TFVfraOptions = class(TjfsCustomSettingFrame)
    grbCisRada: TcxGroupBox;
    btnCisRadaSetup: TSpeedButton;
    pnlNewNumInfo: TPanel;
    lbRada: TcxLabel;
    lbSep: TcxLabel;
    lbNewNumValue: TcxLabel;
    Label2: TcxLabel;
    chkConfirmNewNum: TcxCheckBox;
    Label3: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    grbNewRec: TcxGroupBox;
    cbFVPata: TcxLookupComboBox;
    edMena: TcxLookupComboBox;
    edFVUhrada: TcxLookupComboBox;
    edFVUcet: TcxLookupComboBox;
    cbFVTyp: TcxLookupComboBox;
    edFVKonstantni: TcxTextEdit;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    Label32: TcxLabel;
    Label31: TcxLabel;
    grbBarvy: TcxGroupBox;
    pnlVolna: TPanel;
    pnlDluh: TPanel;
    pnlZaplaceno: TPanel;
    pnlHromadna: TPanel;
    grbOstatni: TcxGroupBox;
    chkFVAUCena: TcxCheckBox;
    cbVolna: TcxColorComboBox;
    cbVolnaText: TcxColorComboBox;
    cbDluh: TcxColorComboBox;
    cbDluhText: TcxColorComboBox;
    cbZaplaceno: TcxColorComboBox;
    cbZaplacenoText: TcxColorComboBox;
    cbHromadna: TcxColorComboBox;
    cbHromadnaText: TcxColorComboBox;
    chkRychlaLikvidace: TcxCheckBox;
    grpZaokrouhleni: TcxGroupBox;
    rbZaokrUp: TcxRadioButton;
    rbZaokrMat: TcxRadioButton;
    rbZaokrDown: TcxRadioButton;
    rbZaokr50Hal: TcxRadioButton;
    rbZaokrNone: TcxRadioButton;
    lbl2: TcxLabel;
    cbFVHlava: TcxLookupComboBox;
    grb1: TcxGroupBox;
    cxLabel1: TcxLabel;
    edDefReport: TcxButtonEdit;
    tbsXMLSkoda: TcxTabSheet;
    grpSkodaXML: TcxGroupBox;
    cxLabel2: TcxLabel;
    edPartTypeCode: TcxTextEdit;
    cxLabel3: TcxLabel;
    edPartCode: TcxTextEdit;
    cxLabel4: TcxLabel;
    edPartCodeIssuer: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edPartCodeIssuerSkoda: TcxTextEdit;
    edPartCodeSkoda: TcxTextEdit;
    edPartTypeCodeSkoda: TcxTextEdit;
    cxLabel8: TcxLabel;
    edPaymentTermsType: TcxTextEdit;
    grpPath: TcxGroupBox;
    Label9: TcxLabel;
    edExportFolder: TcxButtonEdit;
    cxLabel9: TcxLabel;
    edStatusKod: TcxButtonEdit;
    cxLabel10: TcxLabel;
    edTRACode: TcxTextEdit;
    cxLabel11: TcxLabel;
    edPKLocationSkoda: TcxTextEdit;
    procedure ColorChange(Sender: TObject);
    procedure btnCisRadaSetupClick(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure edDefReportPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edExportFolderPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edStatusKodPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  uVarClass, FVfrmuModule, fMessageDlg, appdmduSystem, FVdmdu,
  appfrmuGlobal, appReportModule, appReportManagerForm, uFileUtils, appIniOptionsUnit,
  fStatusLook, fKatalogyModul;

{$R *.DFM}

procedure TFVfraOptions.ColorChange(Sender: TObject);
begin
  pnlHromadna.Color       := cbHromadna.ColorValue;
  pnlHromadna.Font.Color  := cbHromadnaText.ColorValue;
  pnlDluh.Color           := cbDluh.ColorValue;
  pnlDluh.Font.Color      := cbDluhText.ColorValue;
  pnlZaplaceno.Color      := cbZaplaceno.ColorValue;
  pnlZaplaceno.Font.Color := cbZaplacenoText.ColorValue;
  pnlVolna.Color          := cbVolna.ColorValue;
  pnlVolna.Font.Color     := cbVolnaText.ColorValue;
end;

procedure TFVfraOptions.btnCisRadaSetupClick(Sender: TObject);
var
  OldCisRada: string;
begin
  OldCisRada := lbRada.Caption;
  dmdSystem.NNSetup(FVfrmModule.ModuleName, OldCisRada);
  if OldCisRada <> EmptyStr then
  begin
    lbRada.Caption        := OldCisRada;
    lbNewNumValue.Caption := dmdSystem.GetNewNum(FVfrmModule.ModuleName, lbRada.Caption, False);
  end;

end;

constructor TFVfraOptions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  cbFVPata.RepositoryItem   := dmdGlobal.repFVTexty;
  cbFVHlava.RepositoryItem  := dmdGlobal.repFVTextyHead;
  cbFVTyp.RepositoryItem    := dmdGlobal.repFVTyp;
  edFVUhrada.RepositoryItem := dmdGlobal.repFVUhrada;
  edFVUcet.RepositoryItem   := dmdGlobal.repUcet;
  edMena.RepositoryItem     := dmdGlobal.repMena;

end;

procedure TFVfraOptions.edDefReportPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edDefReport.Text := ExtractFileName(RMselectSestava(dmReport.GenEvidenceFolder(FVfrmModule.ModuleName), FVfrmModule.frrFV));

end;

procedure TFVfraOptions.edExportFolderPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  tmpFolder: string;
begin
  tmpFolder := edExportFolder.Text;
  if BrowseDirectory(tmpFolder, 'Složka pro XML dávky') then
    edExportFolder.Text := NormalDir(tmpFolder);

end;

procedure TFVfraOptions.edStatusKodPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  lcKeyValue: variant;
  dlg       : TfrmAppStausLook;
begin
  dlg := appGetStatusUserLook(AppCompsDM.dtsFVDUs, 'Faktury');
  try
    if dlg.Look(lcKeyValue) then
    begin
      edStatusKod.Text := lcKeyValue;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TFVfraOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  try
    cbDluh.ColorValue          := dmdGlobal.cxsFVDluh.Color;
    cbDluhText.ColorValue      := dmdGlobal.cxsFVDluh.TextColor;
    cbVolna.ColorValue         := dmdGlobal.cxsFVVolna.Color;
    cbVolnaText.ColorValue     := dmdGlobal.cxsFVVolna.TextColor;
    cbHromadna.ColorValue      := dmdGlobal.cxsFVHromadna.Color;
    cbHromadnaText.ColorValue  := dmdGlobal.cxsFVHromadna.TextColor;
    cbZaplaceno.ColorValue     := dmdGlobal.cxsFVUhrazeno.Color;
    cbZaplacenoText.ColorValue := dmdGlobal.cxsFVUhrazeno.TextColor;
    lbRada.Caption             := FVfrmModule.NewNumRadaJmeno;
    lbNewNumValue.Caption      := dmdSystem.GetNewNum(FVfrmModule.ModuleName, lbRada.Caption, False);
    chkConfirmNewNum.Checked   := FVfrmModule.NewNumRadaVybrat;
    chkFVAUCena.Checked        := FVfrmModule.gbusrAUCenaZasilky;
    chkRychlaLikvidace.Checked := FVfrmModule.gbRychlaLikvidace;
    edDefReport.Text           := FVfrmModule.DefaultReport;
    edMena.EditValue           := dmdSystem.gbMena;
    edFVUcet.EditValue         := dmdSystem.gbUcet;
    cbFVTyp.EditValue          := dmdSystem.gbTypFaktury;
    edFVUhrada.EditValue       := dmdSystem.gbUhrada;
    cbFVPata.EditValue         := dmdSystem.gbPata;
    cbFVHlava.EditValue        := FVfrmModule.gbFVBefore;
    edFVKonstantni.Text        := dmdSystem.gbKonstantni;
    rbZaokrNone.Checked        := (dmdSystem.gbZaokrouhleni = Neni);
    rbZaokrUp.Checked          := (dmdSystem.gbZaokrouhleni = Nahoru);
    rbZaokrDown.Checked        := (dmdSystem.gbZaokrouhleni = Dolu);
    rbZaokr50Hal.Checked       := (dmdSystem.gbZaokrouhleni = Padesat);
    rbZaokrMat.Checked         := (dmdSystem.gbZaokrouhleni = Matematicky);
    // XML
    edPartTypeCode.Text        := IniOptions.sePartTypeCode;
    edPartCode.Text            := IniOptions.sePartCode;
    edPartCodeIssuer.Text      := IniOptions.sePartCodeIssuer;
    edPartTypeCodeSkoda.Text   := IniOptions.sePartTypeCodeSkoda;
    edPartCodeSkoda.Text       := IniOptions.sePartCodeSkoda;
    edPartCodeIssuerSkoda.Text := IniOptions.sePartCodeIssuerSkoda;
    edPaymentTermsType.Text    := IniOptions.sePaymentTermsType;
    edStatusKod.Text           := IniOptions.seStatusKod;
    edExportFolder.Text        := IniOptions.seExportFolder;
    edTRACode.Text             := IniOptions.seTRACode;
    edPKLocationSkoda.Text     := IniOptions.sePartCodeLocationSkoda;

    //
    ColorChange(nil);
  except

  end;
end;

procedure TFVfraOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin
  dmdGlobal.cxsFVDluh.Color         := cbDluh.ColorValue;
  dmdGlobal.cxsFVDluh.TextColor     := cbDluhText.ColorValue;
  dmdGlobal.cxsFVVolna.Color        := cbVolna.ColorValue;
  dmdGlobal.cxsFVVolna.TextColor    := cbVolnaText.ColorValue;
  dmdGlobal.cxsFVHromadna.Color     := cbHromadna.ColorValue;
  dmdGlobal.cxsFVHromadna.TextColor := cbHromadnaText.ColorValue;
  dmdGlobal.cxsFVUhrazeno.Color     := cbZaplaceno.ColorValue;
  dmdGlobal.cxsFVUhrazeno.TextColor := cbZaplacenoText.ColorValue;
  FVfrmModule.NewNumRadaJmeno       := lbRada.Caption;
  FVfrmModule.NewNumRadaVybrat      := chkConfirmNewNum.Checked;
  FVfrmModule.gbusrAUCenaZasilky    := chkFVAUCena.Checked;
  FVfrmModule.gbRychlaLikvidace     := chkRychlaLikvidace.Checked;
  FVfrmModule.gbFVBefore            := cbFVHlava.EditValue;
  FVfrmModule.DefaultReport         := edDefReport.Text;
  dmdSystem.gbMena                  := edMena.EditValue;
  dmdSystem.gbUcet                  := edFVUcet.EditValue;
  dmdSystem.gbUhrada                := edFVUhrada.EditValue;
  dmdSystem.gbTypFaktury            := cbFVTyp.EditValue;
  dmdSystem.gbPata                  := cbFVPata.EditValue;
  dmdSystem.gbKonstantni            := edFVKonstantni.Text;

  { Zaokrouhleni }
  if rbZaokrNone.Checked then
    dmdSystem.gbZaokrouhleni := Neni
  else if rbZaokrUp.Checked then
    dmdSystem.gbZaokrouhleni := Nahoru
  else if rbZaokr50Hal.Checked then
    dmdSystem.gbZaokrouhleni := Padesat
  else if rbZaokrMat.Checked then
    dmdSystem.gbZaokrouhleni := Matematicky
  else if rbZaokrDown.Checked then
    dmdSystem.gbZaokrouhleni := Dolu;
  // XML
  IniOptions.sePartTypeCode          := edPartTypeCode.Text;
  IniOptions.sePartCode              := edPartCode.Text;
  IniOptions.sePartCodeIssuer        := edPartCodeIssuer.Text;
  IniOptions.sePartTypeCodeSkoda     := edPartTypeCodeSkoda.Text;
  IniOptions.sePartCodeSkoda         := edPartCodeSkoda.Text;
  IniOptions.sePartCodeIssuerSkoda   := edPartCodeIssuerSkoda.Text;
  IniOptions.sePaymentTermsType      := edPaymentTermsType.Text;
  IniOptions.seStatusKod             := edStatusKod.Text;
  IniOptions.seExportFolder          := edExportFolder.Text;
  IniOptions.seTRACode               := edTRACode.Text;
  IniOptions.sePartCodeLocationSkoda := edPKLocationSkoda.Text;

  IniOptions.SaveValues;

end;

end.
