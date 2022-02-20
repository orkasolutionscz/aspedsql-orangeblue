{-----------------------------------------------------------------------------
 Unit Name: FDfrauOptions
 Author:    Administrator
 Purpose:
 History:
-----------------------------------------------------------------------------}

unit FPUfrauOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, ExtCtrls, Buttons, uAppControler, cxMaskEdit,
  cxButtonEdit, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxLabel, cxGroupBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFPUfraOptions = class(TjfsCustomSettingFrame)
    grbCisRada: TcxGroupBox;
    btnCisRadaSetup: TSpeedButton;
    pnlNewNumInfo: TPanel;
    chkConfirmNewNum: TcxCheckBox;
    gbABO: TcxGroupBox;
    chkABO: TCheckBox;
    edFileName: TcxTextEdit;
    edDoplVariab: TcxCheckBox;
    edDokldSpeci: TcxCheckBox;
    edFolder: TcxButtonEdit;
    gbOstatni: TcxGroupBox;
    edKonstatni: TcxTextEdit;
    gbMTC: TcxGroupBox;
    chkMTC: TCheckBox;
    edMTCFileName: TcxTextEdit;
    edMTCPath: TcxButtonEdit;
    Label3: TcxLabel;
    lbRada: TcxLabel;
    lbSep: TcxLabel;
    lbNewNumValue: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label1: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    dlgOpen1: TOpenDialog;
    procedure btnCisRadaSetupClick(Sender: TObject);
    procedure edFolderButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure chkMTCClick(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fMessageDlg, uFileUtils, JclFileUtils, appdmduSystem, FPUfrmuModule;

{$R *.DFM}

procedure TFPUfraOptions.btnCisRadaSetupClick(Sender: TObject);
var
  OldCisRada: string;
begin
  OldCisRada := lbRada.Caption;
  dmdSystem.NNSetup(FPUfrmModule.ModuleName, OldCisRada);
  if OldCisRada <> EmptyStr then
  begin
    lbRada.Caption := OldCisRada;
    lbNewNumValue.Caption :=
      dmdSystem.GetNewNum(FPUfrmModule.ModuleName,
      lbRada.Caption, False);
  end;

end;



procedure TFPUfraOptions.edFolderButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  tmpFolder: string;
begin
  if sender = edFolder then
  begin
    tmpFolder := edFolder.Text;
    if BrowseDirectory(tmpFolder, 'Složka pro pøíkazy') then
      edFolder.Text := PathAddSeparator(tmpFolder);
  end;

  if sender = edMTCPath then
  begin
    tmpFolder := edMTCPath.Text;
    if BrowseDirectory(tmpFolder, 'Složka pro pøíkazy') then
      edMTCPath.Text := PathAddSeparator(tmpFolder);
  end;

end;

procedure TFPUfraOptions.chkMTCClick(Sender: TObject);
begin
  if sender = chkABO then
    chkMTC.Checked := not chkABO.Checked
  else if sender = chkMTC then
    chkABO.Checked := not chkMTC.Checked;
end;

procedure TFPUfraOptions.jfsCustomSettingFrameWriteSetting(
  Sender: TObject);
begin
  with FPUfrmModule do
  begin
    NewNumRadaJmeno := lbRada.Caption;
    NewNumRadaVybrat := chkConfirmNewNum.Checked;
    gbABOExportPath := edFolder.Text;
    gbABOFileName := edFileName.Text;
    gbDefaultKonstatni := edKonstatni.Text;
    gbABODokladDoSpecif := edDokldSpeci.Checked;
    gbABODoplnNulVar := edDoplVariab.Checked;

    gbMTCExportPath := edMTCPath.Text;
    gbMTCFileName := edMTCFileName.Text;

    if chkABO.Checked then
      gbAxportType := 'ABO'
    else
      gbAxportType := 'MTC';

  end;
end;

procedure TFPUfraOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  with FPUfrmModule do
  begin
    lbRada.Caption := NewNumRadaJmeno;
    lbNewNumValue.Caption := dmdSystem.GetNewNum(ModuleName,
      NewNumRadaJmeno, False);
    chkConfirmNewNum.Checked := NewNumRadaVybrat;
    dmdSystem.GetAviableNumLines(ModuleName, ExistCisRady);
    edFolder.Text := gbABOExportPath;
    edFileName.Text := gbABOFileName;
    edKonstatni.Text := gbDefaultKonstatni;
    edDokldSpeci.Checked := gbABODokladDoSpecif;
    edDoplVariab.Checked := gbABODoplnNulVar;

    edMTCPath.Text := gbMTCExportPath;
    edMTCFileName.Text := gbMTCFileName;
    chkABO.Checked := gbAxportType = 'ABO';
    chkMTC.Checked := gbAxportType = 'MTC';
  end;
end;

end.

