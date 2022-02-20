{ -----------------------------------------------------------------------------
  Unit Name: AOPfrauOptions
  Author:    Administrator
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit AOPfrauOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, ExtCtrls, Buttons,
  cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLabel, cxGroupBox, uAppControler, cxButtons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutControl;

type
  TAOPfraOptions = class(TjfsCustomSettingFrame)
    chkAOPUseIcoAsID: TcxCheckBox;
    edAOPSplatnost: TcxSpinEdit;
    btnCisRadaSetup: TSpeedButton;
    chkConfirmNewNum: TcxCheckBox;
    lbRada: TcxLabel;
    lbNewNumValue: TcxLabel;
    chkZSAdresa3Upper: TcxCheckBox;
    btn1: TcxButton;
    chkAopShowUsSta: TcxCheckBox;
    dxlLayoutControl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxl1Group2: TdxLayoutGroup;
    dxl1LabeledItem1: TdxLayoutLabeledItem;
    dxl1LabeledItem2: TdxLayoutLabeledItem;
    dxlytmdxl1Item1: TdxLayoutItem;
    dxlytmdxl1Item2: TdxLayoutItem;
    dxl1Group6: TdxLayoutGroup;
    dxlytmdxl1Item3: TdxLayoutItem;
    dxlytmdxl1Item4: TdxLayoutItem;
    dxlytmdxl1Item5: TdxLayoutItem;
    dxlytmdxl1Item6: TdxLayoutItem;
    dxl1Group9: TdxLayoutGroup;
    dxlytmdxl1Item7: TdxLayoutItem;
    dxlytmdxl1Item8: TdxLayoutItem;
    dxlytmdxl1Item9: TdxLayoutItem;
    dxl1Group4: TdxLayoutGroup;
    dxl1Group1: TdxLayoutGroup;
    procedure btnCisRadaSetupClick(Sender: TObject);
    procedure jfsOptionsFrameLoadValues(Sender: TObject);
    procedure jfsOptionsFrameSaveValues(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  AOPfrmuModule, appdmduSystem, appfrmuGlobal, fGetCopyFields, AOPdmdu;

{$R *.DFM}

procedure TAOPfraOptions.btnCisRadaSetupClick(Sender: TObject);
var
  OldCisRada: string;
begin
  OldCisRada := lbRada.Caption;
  dmdSystem.NNSetup(aopfrmmodule.ModuleName, OldCisRada);
  if OldCisRada <> EmptyStr then
  begin
    lbRada.Caption        := OldCisRada;
    lbNewNumValue.Caption := dmdSystem.GetNewNum(aopfrmmodule.ModuleName, lbRada.Caption, False);
  end;
end;

constructor TAOPfraOptions.Create(AOwner: TComponent);
begin
  inherited;
  dxl1.LayoutLookAndFeel := getdmdGlobal.GetCurrLayoutStyle;

end;

procedure TAOPfraOptions.jfsOptionsFrameLoadValues(Sender: TObject);
begin
  lbRada.Caption            := aopfrmmodule.NewNumRadaJmeno;
  lbNewNumValue.Caption     := dmdSystem.GetNewNum(aopfrmmodule.ModuleName, lbRada.Caption, False);
  chkConfirmNewNum.Checked  := aopfrmmodule.NewNumRadaVybrat;
  chkZSAdresa3Upper.Checked := dmdSystem.gbAdresa3UpperCase;
  chkAopShowUsSta.Checked   := dmdGlobal.gvAOPUseStatusColorOtherEvi;
  edAOPSplatnost.Value      := dmdSystem.gbSplatnost;
  chkAOPUseIcoAsID.Checked  := dmdGlobal.gvAOPUseIcoAsID;
end;

procedure TAOPfraOptions.jfsOptionsFrameSaveValues(Sender: TObject);
begin
  aopfrmmodule.NewNumRadaJmeno  := lbRada.Caption;
  aopfrmmodule.NewNumRadaVybrat := chkConfirmNewNum.Checked;
  dmdSystem.GetAviableNumLines(aopfrmmodule.ModuleName, aopfrmmodule.ExistCisRady);
  dmdSystem.gbSplatnost                 := trunc(edAOPSplatnost.Value);
  dmdGlobal.gvAOPUseIcoAsID             := chkAOPUseIcoAsID.Checked;
  dmdSystem.gbAdresa3UpperCase          := chkZSAdresa3Upper.Checked;
  dmdGlobal.gvAOPUseStatusColorOtherEvi := chkAopShowUsSta.Checked;

end;

procedure TAOPfraOptions.btn1Click(Sender: TObject);
var
  aList: string;
begin
  aList := aopfrmmodule.gbAOPCopyList;

  if appGetCopyFieldsList(AOPdmd.dtsAOP, aList) then
    aopfrmmodule.gbAOPCopyList := aList;
end;

end.
