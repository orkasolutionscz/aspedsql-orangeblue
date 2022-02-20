{-----------------------------------------------------------------------------
 Unit Name: FDfrauOptions
 Author:    Administrator
 Purpose:
 History:
-----------------------------------------------------------------------------}

unit FDfrauOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, ExtCtrls, Buttons, uAppControler,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxColorComboBox, cxGroupBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TFDfraOptions = class(TjfsCustomSettingFrame)
    grbCisRada: TcxGroupBox;
    btnCisRadaSetup: TSpeedButton;
    pnlNewNumInfo: TPanel;
    chkConfirmNewNum: TcxCheckBox;
    grbBarvy: TcxGroupBox;
    pnlDluh: TPanel;
    pnlZaplaceno: TPanel;
    cbDluh: TcxColorComboBox;
    cbDluhText: TcxColorComboBox;
    cbZaplaceno: TcxColorComboBox;
    cbZaplacenoText: TcxColorComboBox;
    GroupBox1: TcxGroupBox;
    edEnableLikvidace: TcxCheckBox;
    Label3: TcxLabel;
    lbRada: TcxLabel;
    lbSep: TcxLabel;
    lbNewNumValue: TcxLabel;
    Label2: TcxLabel;
    chkRychlaLikvidace: TcxCheckBox;
    procedure btnCisRadaSetupClick(Sender: TObject);
    procedure colorChange(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses
  appdmduSystem, FDfrmuModule, appfrmuGlobal;

{$R *.DFM}

procedure TFDfraOptions.btnCisRadaSetupClick(Sender: TObject);
var
  OldCisRada: string;
begin
  OldCisRada := lbRada.Caption;
  dmdSystem.NNSetup(FDfrmModule.ModuleName, OldCisRada);
  if OldCisRada <> EmptyStr then
  begin
    lbRada.Caption := OldCisRada;
    lbNewNumValue.Caption :=
      dmdSystem.GetNewNum(FDfrmModule.ModuleName,
      lbRada.Caption, False);
  end;
end;



procedure TFDfraOptions.colorChange(Sender: TObject);
begin
  pnlDluh.Color := cbDluh.ColorValue;
  pnlDluh.Font.Color := cbDluhText.ColorValue;
  pnlZaplaceno.Color := cbZaplaceno.ColorValue;
  pnlZaplaceno.Font.Color := cbZaplacenoText.ColorValue;
end;

procedure TFDfraOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  lbRada.Caption                := FDfrmModule.NewNumRadaJmeno;
  lbNewNumValue.Caption         := dmdSystem.GetNewNum(FDfrmModule.ModuleName, FDfrmModule.NewNumRadaJmeno, False);
  chkConfirmNewNum.Checked      := FDfrmModule.NewNumRadaVybrat;
  edEnableLikvidace.Checked     := FDfrmModule.gbEnableRucniLikvidace;
  chkRychlaLikvidace.Checked    := FDfrmModule.gbRychlaLikvidace;

  cbDluh.ColorValue             := dmdGlobal.cxsFDDluh.Color;
  cbDluhText.ColorValue         := dmdGlobal.cxsFDDluh.TextColor;
  cbZaplaceno.ColorValue        := dmdGlobal.cxsFDUhrazeno.Color;
  cbZaplacenoText.ColorValue    := dmdGlobal.cxsFDUhrazeno.TextColor;

  dmdSystem.GetAviableNumLines(FDfrmModule.ModuleName, FDfrmModule.ExistCisRady);


end;

procedure TFDfraOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin
  FDfrmModule.NewNumRadaJmeno           := lbRada.Caption;
  FDfrmModule.NewNumRadaVybrat          := chkConfirmNewNum.Checked;
  FDfrmModule.gbEnableRucniLikvidace    := edEnableLikvidace.Checked;
  FDfrmModule.gbRychlaLikvidace         := chkRychlaLikvidace.Checked;

  dmdGlobal.cxsFDDluh.Color          := cbDluh.ColorValue;
  dmdGlobal.cxsFDDluh.TextColor      := cbDluhText.ColorValue;
  dmdGlobal.cxsFDUhrazeno.Color      := cbZaplaceno.ColorValue;
  dmdGlobal.cxsFDUhrazeno.TextColor  := cbZaplacenoText.ColorValue;

end;

end.

