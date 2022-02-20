{ -----------------------------------------------------------------------------
  Unit Name: DOCfrauOptions
  Author:    Administrator
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit DOCfrauOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, ExtCtrls, Buttons, uAppControler, cxControls,
  cxContainer, cxEdit, cxCheckBox, cxLabel, cxGroupBox, cxTextEdit, cxMemo,
  cxButtons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxMaskEdit, cxButtonEdit;

type
  TDOCfraOptions = class(TjfsCustomSettingFrame)
    grbCisRada: TcxGroupBox;
    btnCisRadaSetup: TSpeedButton;
    pnlNewNumInfo: TPanel;
    chkConfirmNewNum: TcxCheckBox;
    Label3: TcxLabel;
    lbRada: TcxLabel;
    lbSep: TcxLabel;
    lbNewNumValue: TcxLabel;
    Label2: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    btn1: TcxButton;
    grb1: TcxGroupBox;
    lbl1: TcxLabel;
    edDefReport: TcxButtonEdit;
    procedure btnCisRadaSetupClick(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edDefReportPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  appdmduSystem, DOCfrmuModule, fGetCopyFields, DOCdmdu, appReportModule, appReportManagerForm;

{$R *.DFM}

procedure TDOCfraOptions.btnCisRadaSetupClick(Sender: TObject);
var
  OldCisRada: string;
begin
  OldCisRada := lbRada.Caption;
  dmdSystem.NNSetup(DOCfrmModule.ModuleName, OldCisRada);
  if OldCisRada <> EmptyStr then
  begin
    lbRada.Caption        := OldCisRada;
    lbNewNumValue.Caption := dmdSystem.GetNewNum(DOCfrmModule.ModuleName, lbRada.Caption, False);
  end;

end;

procedure TDOCfraOptions.edDefReportPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edDefReport.Text :=  ExtractFileName(RMselectSestava(dmReport.GenEvidenceFolder(DOCfrmModule.ModuleName), DOCfrmModule.frrDoc));
end;

procedure TDOCfraOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  lbRada.Caption           := DOCfrmModule.NewNumRadaJmeno;
  lbNewNumValue.Caption    := dmdSystem.GetNewNum(DOCfrmModule.ModuleName, DOCfrmModule.NewNumRadaJmeno, False);
  chkConfirmNewNum.Checked := DOCfrmModule.NewNumRadaVybrat;
  edDefReport.Text         := DOCfrmModule.DefaultReport;
  dmdSystem.GetAviableNumLines(DOCfrmModule.ModuleName, DOCfrmModule.ExistCisRady);
end;

procedure TDOCfraOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin
  DOCfrmModule.NewNumRadaJmeno  := lbRada.Caption;
  DOCfrmModule.NewNumRadaVybrat := chkConfirmNewNum.Checked;
  DOCfrmModule.DefaultReport    := edDefReport.Text;

end;

procedure TDOCfraOptions.btn1Click(Sender: TObject);
var
  aList: string;
begin
  aList := DOCfrmModule.gbDOCCopyList;

  if appGetCopyFieldsList(DOCdmd.DOC, aList) then
    DOCfrmModule.gbDOCCopyList := aList;

end;

end.
