{ 16.9.2003 11:52:44 (GMT+2:00) > [fait on ACER-K8Q02GA4AI] checked out /Uprava pro demo kompilaci }
unit ZSfrauOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ActnList, Db, Buttons, uCustomForms, ComCtrls,
  uAppControler, CheckLst, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxColorComboBox, cxCheckListBox, cxLabel,
  cxGroupBox, cxRadioGroup, cxPC, cxMemo, cxButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, cxButtonEdit, appReportManagerForm,
  appReportModule;

type
  TZSfraOptions = class(TjfsCustomSettingFrame)
    grbCisRada: TcxGroupBox;
    btnCisRadaSetup: TSpeedButton;
    pnlNewNumInfo: TPanel;
    chkConfirmNewNum: TcxCheckBox;
    Label6: TcxLabel;
    lbRada: TcxLabel;
    lbSep: TcxLabel;
    lbNewNumValue: TcxLabel;
    Label9: TcxLabel;
    cxPageControl1: TcxPageControl;
    tbsZakladni: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    grbNewRec: TcxGroupBox;
    cbPodminky: TcxLookupComboBox;
    cbPotvrzeni: TcxLookupComboBox;
    edZSCoPlati: TcxLookupComboBox;
    edZSJednotka: TcxLookupComboBox;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    grbDispecer: TcxGroupBox;
    chkDispecerLogged: TcxCheckBox;
    Label4: TcxLabel;
    Label3: TcxLabel;
    edDispecerValue: TcxTextEdit;
    edStredisko: TcxTextEdit;
    grbOstatni: TcxGroupBox;
    chkRemoveVazba: TcxCheckBox;
    chkAdrAsLine: TcxCheckBox;
    chkMinusProvize: TcxCheckBox;
    chkEditIfFv: TcxCheckBox;
    grbUdalosti: TcxGroupBox;
    chkZmenaSPZ: TcxCheckBox;
    chkZmenaDopravce: TcxCheckBox;
    grbBarvy: TcxGroupBox;
    pnlZSNoDop: TPanel;
    pnlZSDoFa: TPanel;
    pnlZSVyFa: TPanel;
    pnlZSVynoFDFa: TPanel;
    cbNoDopravce: TcxColorComboBox;
    cbNoDopravceText: TcxColorComboBox;
    cbFD: TcxColorComboBox;
    cbFDText: TcxColorComboBox;
    cbFV: TcxColorComboBox;
    cbFVText: TcxColorComboBox;
    cbFVnoFD: TcxColorComboBox;
    cbFVnoFDText: TcxColorComboBox;
    GroupBox1: TcxGroupBox;
    chklExportFV: TcxCheckListBox;
    GroupBox2: TcxGroupBox;
    rbDatVy: TcxRadioButton;
    rbDatNa: TcxRadioButton;
    rbDatAd: TcxRadioButton;
    chkAutoFillDop: TcxCheckBox;
    tbsAdmin: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    chkgbZSGenFvGetAktualKurz: TcxCheckBox;
    pnlVyrizeno: TPanel;
    cbVyrizeno: TcxColorComboBox;
    cbVyrizenoText: TcxColorComboBox;
    cxGroupBox2: TcxGroupBox;
    btnGetCPre: TcxButton;
    chkCopyPrirazky: TcxCheckBox;
    btnGetCTra: TcxButton;
    btnGetCPla: TcxButton;
    btnGetCPlaPol: TcxButton;
    tbs1: TcxTabSheet;
    dxlgLayoutControl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxlgdxl1Group1: TdxLayoutGroup;
    dxlgdxl1Group2: TdxLayoutGroup;
    edTemplObjSubjekt: TcxTextEdit;
    dlidxl1Item2: TdxLayoutItem;
    edTemplPotvrSubjekt: TcxTextEdit;
    dlidxl1Item3: TdxLayoutItem;
    edObjDefault: TcxButtonEdit;
    dlidxl1Item1: TdxLayoutItem;
    edPotDefault: TcxButtonEdit;
    dlidxl1Item4: TdxLayoutItem;
    chkPlatceInfoDetailMode: TcxCheckBox;
    chkZsCreateFVEnable: TcxCheckBox;
    cxButton1: TcxButton;
    chkCopyOstNakl: TcxCheckBox;
    procedure ColorChange(Sender: TObject);
    procedure btnCisRadaSetupClick2(Sender: TObject);
    procedure chkDispecerLoggedClick(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure btnGetCPreClick(Sender: TObject);
    procedure btnGetCPlaClick(Sender: TObject);
    procedure btnGetCPlaPolClick(Sender: TObject);
    procedure btnGetCTraClick(Sender: TObject);
    procedure edObjDefaultPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edPotDefaultPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  uVarClass, fMessageDlg, ZSfrmuModule, appdmduSystem, ZSdmdu,
  appfrmuGlobal, ZSGenFVUnit, fGetCopyFields, variants;

{$R *.DFM}

procedure TZSfraOptions.ColorChange(Sender: TObject);
begin
  pnlZSNoDop.Color         := cbNoDopravce.ColorValue;
  pnlZSNoDop.font.Color    := cbNoDopravceText.ColorValue;
  pnlZSVyFa.Color          := cbFV.ColorValue;
  pnlZSVyFa.font.Color     := cbFVText.ColorValue;
  pnlZSDoFa.Color          := cbFD.ColorValue;
  pnlZSDoFa.font.Color     := cbFDText.ColorValue;
  pnlZSVynoFDFa.Color      := cbFVnoFD.ColorValue;
  pnlZSVynoFDFa.font.Color := cbFVnoFDText.ColorValue;
  pnlVyrizeno.Color        := cbVyrizeno.ColorValue;
  pnlVyrizeno.font.Color   := cbVyrizenoText.ColorValue;
end;

procedure TZSfraOptions.btnCisRadaSetupClick2(Sender: TObject);
var
  OldCisRada: string;
begin
  OldCisRada := lbRada.Caption;
  dmdSystem.NNSetup(ZSfrmModule.ModuleName, OldCisRada);
  if OldCisRada <> EmptyStr then
  begin
    lbRada.Caption        := OldCisRada;
    lbNewNumValue.Caption := dmdSystem.GetNewNum(ZSfrmModule.ModuleName, lbRada.Caption, False);
  end;

end;

procedure TZSfraOptions.chkDispecerLoggedClick(Sender: TObject);
begin
  if chkDispecerLogged.Checked then
    edDispecerValue.Text  := jfaUserInfo.UserZnacka;
  edDispecerValue.Enabled := not chkDispecerLogged.Checked;
end;

constructor TZSfraOptions.Create(AOwner: TComponent);
begin
  inherited;
  edZSCoPlati.RepositoryItem  := GetdmdGlobal.repZSCoPlati;
  edZSJednotka.RepositoryItem := dmdGlobal.repJednotky;
  cbPodminky.RepositoryItem   := dmdGlobal.repZSPodminky;
  cbPotvrzeni.RepositoryItem  := dmdGlobal.repZSPodminky;
  dxl1.LayoutLookAndFeel      := dmdGlobal.GetCurrLayoutStyle;
  cxPageControl1.ActivePage   := tbsZakladni;
end;

procedure TZSfraOptions.cxButton1Click(Sender: TObject);
var
  aList: string;
begin
  aList := ZSfrmModule.gbZSCopyListOstNakl;

  if appGetCopyFieldsList(ZSdmd.ZAOstNakl, aList) then
    ZSfrmModule.gbZSCopyListOstNakl := aList;
end;

procedure TZSfraOptions.edObjDefaultPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edObjDefault.Text := RMselectSestava(dmReport.GenEvidenceFolder(ZSfrmModule.ModuleName), ZSfrmModule.frrZS);
end;

procedure TZSfraOptions.edPotDefaultPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edPotDefault.Text := RMselectSestava(dmReport.GenEvidenceFolder(ZSfrmModule.ModuleName), ZSfrmModule.frrZS);
end;

procedure TZSfraOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  // tbsAdmin.TabVisible                   := jfaUserInfo.AdminsUser;
  chkgbZSGenFvGetAktualKurz.Checked := ZSfrmModule.gbZSGenFvGetAktualKurz;
  chkCopyPrirazky.Checked           := ZSfrmModule.gbZSCopyPlatcePrirazky;
  chkCopyOstNakl.Checked            := ZSfrmModule.gbZSCopyEnableOstNakl;
  cbFV.ColorValue                   := dmdGlobal.cxsZSVydanaFV.Color;
  cbFVText.ColorValue               := dmdGlobal.cxsZSVydanaFV.TextColor;
  cbNoDopravce.ColorValue           := dmdGlobal.cxsZSBezDopravce.Color;
  cbNoDopravceText.ColorValue       := dmdGlobal.cxsZSBezDopravce.TextColor;
  cbFD.ColorValue                   := dmdGlobal.cxsZSFD.Color;
  cbFDText.ColorValue               := dmdGlobal.cxsZSFD.TextColor;
  cbFVnoFD.ColorValue               := dmdGlobal.cxsZSVydanaBezDosle.Color;
  cbFVnoFDText.ColorValue           := dmdGlobal.cxsZSVydanaBezDosle.TextColor;
  cbVyrizeno.ColorValue             := ZSfrmModule.cxsVyrizeno.Color;
  cbVyrizenoText.ColorValue         := ZSfrmModule.cxsVyrizeno.TextColor;
  lbRada.Caption                    := ZSfrmModule.NewNumRadaJmeno;
  lbNewNumValue.Caption             := dmdSystem.GetNewNum(ZSfrmModule.ModuleName, lbRada.Caption, False);
  chkConfirmNewNum.Checked          := ZSfrmModule.NewNumRadaVybrat;
  chkRemoveVazba.Checked            := ZSfrmModule.gbEnPlatceFVStorno;
  chkEditIfFv.Checked               := ZSfrmModule.gbEnEditIfFaktura;
  chkDispecerLogged.Checked         := ZSfrmModule.gbDispecerIsLoggedUser;
  chkAdrAsLine.Checked              := ZSfrmModule.gbPohybArdesaAsLine;
  edDispecerValue.Text              := ZSfrmModule.gbDispecerValue;
  edDispecerValue.Enabled           := not chkDispecerLogged.Checked;
  edStredisko.Text                  := ZSfrmModule.gbStrediskoValue;
  chkZmenaSPZ.Checked               := ZSfrmModule.gbZmenaSPZ;
  chkZmenaDopravce.Checked          := ZSfrmModule.gbZmenaDopravce;
  // Ymena bude se cist y nastaveni szsparams
  chkMinusProvize.Checked           := (dmdSystem.GetSysParamValue('MINUSPROVIZE') = '1');
  chkAutoFillDop.Checked            := ZSfrmModule.gbAutoFillEmail;
  cbPodminky.EditValue              := ZSfrmModule.gbTextPodminky;
  cbPotvrzeni.EditValue             := ZSfrmModule.gbTextPotvrzeni;
  edTemplObjSubjekt.Text            := ZSfrmModule.gbZsTemplSubjektObj;
  edTemplPotvrSubjekt.Text          := ZSfrmModule.gbZsTemplSubjektPot;
  edObjDefault.Text                 := ZSfrmModule.gbZSTiskObjednavka;
  edPotDefault.Text                 := ZSfrmModule.gbZSTiskPotvrzeni;
  chklExportFV.Items[0].Checked     := ZSfrmModule.gbGenFvPole.im_spz;
  chklExportFV.Items[1].Checked     := ZSfrmModule.gbGenFvPole.im_nakl;
  chklExportFV.Items[2].Checked     := ZSfrmModule.gbGenFvPole.im_nakld;
  chklExportFV.Items[3].Checked     := ZSfrmModule.gbGenFvPole.im_vykl;
  chklExportFV.Items[4].Checked     := ZSfrmModule.gbGenFvPole.im_zasilka;
  chklExportFV.Items[5].Checked     := ZSfrmModule.gbGenFvPole.im_sp;
  chklExportFV.Items[6].Checked     := ZSfrmModule.gbGenFvPole.im_sh;
  chklExportFV.Items[7].Checked     := ZSfrmModule.gbGenFvPole.im_codepl;
  chklExportFV.Items[8].Checked     := ZSfrmModule.gbGenFvPole.im_plpodminky;
  edZSCoPlati.EditValue             := dmdSystem.gbCoPlati;
  edZSJednotka.EditValue            := dmdSystem.gbJednotka;
  chkPlatceInfoDetailMode.Checked   := ZSfrmModule.gbPlatceInfoDetailMode;
  chkZsCreateFVEnable.Checked       := ZSfrmModule.gbZsCreateFVEnable;
  if dmdSystem.gbGenFVZDP = zdpVykladka then
    rbDatVy.Checked := true
  else if dmdSystem.gbGenFVZDP = zdpNakladka then
    rbDatNa.Checked := true
  else
    rbDatAd.Checked := true;

  ColorChange(nil);
end;

procedure TZSfraOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin
  dmdGlobal.cxsZSVydanaFV.Color           := cbFV.ColorValue;
  dmdGlobal.cxsZSVydanaFV.TextColor       := cbFVText.ColorValue;
  dmdGlobal.cxsZSBezDopravce.Color        := cbNoDopravce.ColorValue;
  dmdGlobal.cxsZSBezDopravce.TextColor    := cbNoDopravceText.ColorValue;
  dmdGlobal.cxsZSVydanaBezDosle.Color     := cbFVnoFD.ColorValue;
  dmdGlobal.cxsZSVydanaBezDosle.TextColor := cbFVnoFDText.ColorValue;
  dmdGlobal.cxsZSFD.Color                 := cbFD.ColorValue;
  dmdGlobal.cxsZSFD.TextColor             := cbFDText.ColorValue;
  ZSfrmModule.cxsVyrizeno.Color           := cbVyrizeno.ColorValue;
  ZSfrmModule.cxsVyrizeno.TextColor       := cbVyrizenoText.ColorValue;
  ZSfrmModule.gbZSGenFvGetAktualKurz      := chkgbZSGenFvGetAktualKurz.Checked;
  ZSfrmModule.NewNumRadaJmeno             := lbRada.Caption;
  ZSfrmModule.NewNumRadaVybrat            := chkConfirmNewNum.Checked;
  ZSfrmModule.gbEnPlatceFVStorno          := chkRemoveVazba.Checked;
  ZSfrmModule.gbEnEditIfFaktura           := chkEditIfFv.Checked;
  ZSfrmModule.gbDispecerIsLoggedUser      := chkDispecerLogged.Checked;
  ZSfrmModule.gbDispecerValue             := edDispecerValue.Text;
  ZSfrmModule.gbStrediskoValue            := edStredisko.Text;
  ZSfrmModule.gbPohybArdesaAsLine         := chkAdrAsLine.Checked;
  ZSfrmModule.gbZmenaSPZ                  := chkZmenaSPZ.Checked;
  ZSfrmModule.gbZmenaDopravce             := chkZmenaDopravce.Checked;
  ZSfrmModule.gbMinusprovize              := chkMinusProvize.Checked;
  ZSfrmModule.gbAutoFillEmail             := chkAutoFillDop.Checked;
  ZSfrmModule.gbZsTemplSubjektObj         := edTemplObjSubjekt.Text;
  ZSfrmModule.gbZsTemplSubjektPot         := edTemplPotvrSubjekt.Text;
  ZSfrmModule.gbZSTiskObjednavka          := edObjDefault.Text;
  ZSfrmModule.gbZSTiskPotvrzeni           := edPotDefault.Text;
  ZSfrmModule.gbPlatceInfoDetailMode      := chkPlatceInfoDetailMode.Checked;
  ZSfrmModule.gbGenFvPole.im_spz          := chklExportFV.Items[0].Checked;
  ZSfrmModule.gbGenFvPole.im_nakl         := chklExportFV.Items[1].Checked;
  ZSfrmModule.gbGenFvPole.im_nakld        := chklExportFV.Items[2].Checked;
  ZSfrmModule.gbGenFvPole.im_vykl         := chklExportFV.Items[3].Checked;
  ZSfrmModule.gbGenFvPole.im_zasilka      := chklExportFV.Items[4].Checked;
  ZSfrmModule.gbGenFvPole.im_sp           := chklExportFV.Items[5].Checked;
  ZSfrmModule.gbGenFvPole.im_sh           := chklExportFV.Items[6].Checked;
  ZSfrmModule.gbGenFvPole.im_codepl       := chklExportFV.Items[7].Checked;
  ZSfrmModule.gbGenFvPole.im_plpodminky   := chklExportFV.Items[8].Checked;
  ZSfrmModule.gbZSCopyPlatcePrirazky      := chkCopyPrirazky.Checked;
  ZSfrmModule.gbZSCopyEnableOstNakl       := chkCopyOstNakl.Checked;
  ZSfrmModule.gbZsCreateFVEnable          := chkZsCreateFVEnable.Checked;
  dmdSystem.gbJednotka                    := edZSJednotka.EditValue;
  dmdSystem.gbCoPlati                     := edZSCoPlati.EditValue;
  if rbDatVy.Checked then
    dmdSystem.gbGenFVZDP := zdpVykladka
  else if rbDatNa.Checked then
    dmdSystem.gbGenFVZDP := zdpNakladka
  else
    dmdSystem.gbGenFVZDP := zdpDnes;
  if cbPodminky.EditValue <> null then
    ZSfrmModule.gbTextPodminky := cbPodminky.EditValue
  else
    ZSfrmModule.gbTextPodminky := -1;
  if cbPotvrzeni.EditValue <> null then
    ZSfrmModule.gbTextPotvrzeni := cbPotvrzeni.EditValue
  else
    ZSfrmModule.gbTextPotvrzeni := -1;

end;

procedure TZSfraOptions.btnGetCPreClick(Sender: TObject);
var
  aList: string;
begin
  aList := ZSfrmModule.gbZSCopyListZS;

  if appGetCopyFieldsList(ZSdmd.Zasilky, aList) then
    ZSfrmModule.gbZSCopyListZS := aList;
end;

procedure TZSfraOptions.btnGetCPlaClick(Sender: TObject);
var
  aList: string;
begin
  aList := ZSfrmModule.gbZSCopyListPlatce;

  if appGetCopyFieldsList(ZSdmd.ZAPlatci, aList) then
    ZSfrmModule.gbZSCopyListPlatce := aList;
end;

procedure TZSfraOptions.btnGetCPlaPolClick(Sender: TObject);
var
  aList: string;
begin
  aList := ZSfrmModule.gbZSCopyListPlatciSR;

  if appGetCopyFieldsList(ZSdmd.ZAPlatciSrazky, aList) then
    ZSfrmModule.gbZSCopyListPlatciSR := aList;
end;

procedure TZSfraOptions.btnGetCTraClick(Sender: TObject);
var
  aList: string;
begin
  aList := ZSfrmModule.gbZSCopyListPohyby;

  if appGetCopyFieldsList(ZSdmd.ZAPohyby, aList) then
    ZSfrmModule.gbZSCopyListPohyby := aList;
end;

end.
