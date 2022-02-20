unit POPfrauOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, ExtCtrls,  Buttons, StdCtrls,  uAppControler,
  cxTextEdit, cxMaskEdit,  cxSpinEdit, cxControls, cxContainer, cxEdit, cxCheckBox,
  cxLabel, cxGroupBox, cxMemo, cxButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus;

type
  TPOPfraOptions = class(TjfsCustomSettingFrame)
    grbCisRada: TcxGroupBox;
    btnCisRadaSetup: TSpeedButton;
    pnlNewNumInfo: TPanel;
    chkConfirmNewNum: TcxCheckBox;
    GroupBox1: TcxGroupBox;
    chkUseMesto: TcxCheckBox;
    spnPocetZnaku: TcxSpinEdit;
    GroupBox2: TcxGroupBox;
    chkPOPPreCena: TcxCheckBox;
    chkPOPPreVozidlo: TcxCheckBox;
    Label3: TcxLabel;
    lbRada: TcxLabel;
    lbSep: TcxLabel;
    lbNewNumValue: TcxLabel;
    Label2: TcxLabel;
    Label1: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    btn1: TcxButton;
    procedure btnCisRadaSetupClick(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses  appdmduSystem, POPfrmuModule, POPdmdu, fGetCopyFields;

{$R *.DFM}

procedure TPOPfraOptions.btnCisRadaSetupClick(Sender: TObject);
var
  OldCisRada: string;
begin
  OldCisRada := lbRada.Caption;
  dmdSystem.NNSetup(POPfrmModule.ModuleName, OldCisRada);
  if OldCisRada <> EmptyStr then
  begin
    lbRada.Caption        := OldCisRada;
    lbNewNumValue.Caption := dmdSystem.GetNewNum(POPfrmModule.ModuleName, lbRada.Caption, False);
  end;
end;

procedure TPOPfraOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  lbRada.Caption                := POPfrmModule.NewNumRadaJmeno;
  lbNewNumValue.Caption         := dmdSystem.GetNewNum(POPfrmModule.ModuleName, POPfrmModule.NewNumRadaJmeno, False);
  chkConfirmNewNum.Checked      := POPfrmModule.NewNumRadaVybrat;
  chkUseMesto.Checked           := POPfrmModule.gbUseMesto;
  chkPOPPreCena.Checked         := POPfrmModule.gbPrePlatnCena;
  chkPOPPreVozidlo.Checked      := POPfrmModule.gbPreVozidlo;
  spnPocetZnaku.Value           := POPfrmModule.gbPocetZnaku;

  dmdSystem.GetAviableNumLines(POPfrmModule.ModuleName, POPfrmModule.ExistCisRady);
end;

procedure TPOPfraOptions.jfsCustomSettingFrameWriteSetting(
  Sender: TObject);
begin
  POPfrmModule.NewNumRadaJmeno  := lbRada.Caption;
  POPfrmModule.NewNumRadaVybrat := chkConfirmNewNum.Checked;
  POPfrmModule.gbPocetZnaku     := spnPocetZnaku.Value;
  POPfrmModule.gbUseMesto       := chkUseMesto.Checked;
  POPfrmModule.gbPrePlatnCena   := chkPOPPreCena.Checked;
  POPfrmModule.gbPreVozidlo     := chkPOPPreVozidlo.Checked;
end;

procedure TPOPfraOptions.btn1Click(Sender: TObject);
var
  aList:string;
begin
  aList := POPfrmModule.gbPopCopyList;

  if appGetCopyFieldsList(POPdmd.POPRecord, aList) then
    POPfrmModule.gbPopCopyList  := aList;
end;

end.

