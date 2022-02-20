unit fGlobalOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxPC, cxControls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxLabel, cxContainer, cxEdit, cxGroupBox, uAppControler, appdmduSystem,
  cxColorComboBox, ExtCtrls, cxCheckBox, cxSpinEdit, cxPCdxBarPopupMenu,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxFontNameComboBox,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl;

type
  TfraGlobalOptions = class(TjfsCustomSettingFrame)
    edDPHSazba: TcxImageComboBox;
    edDesMista: TcxSpinEdit;
    chkEnableDelete: TcxCheckBox;
    chkUserUsePrivateColor: TcxCheckBox;
    edFontName: TcxFontNameComboBox;
    edStylEdit: TcxComboBox;
    edFontSize1: TcxSpinEdit;
    chkUseCustomLayout: TcxCheckBox;
    dxlLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxlLayoutControl1Group1: TdxLayoutGroup;
    dxlLayoutControl1Group2: TdxLayoutGroup;
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure edStylEditPropertiesChange(Sender: TObject);
    procedure edFontNamePropertiesChange(Sender: TObject);
    procedure edFontSize1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses appfrmuGlobal, uCustomForms;

{$R *.DFM}

constructor TfraGlobalOptions.Create(AOwner: TComponent);
begin
  inherited;
  dxLayoutControl1.LayoutLookAndFeel := getdmdGlobal.GetCurrLayoutStyle;
  edDPHSazba.RepositoryItem          := getdmdGlobal.repDPHTyp;
  // Naplneni sytylu
  edStylEdit.Properties.BeginUpdate;
  edStylEdit.Properties.Items.Clear;
  edStylEdit.Properties.Items.Add('Plochý');
  edStylEdit.Properties.Items.Add('Standardní');
  edStylEdit.Properties.Items.Add('Ultra plochý');
  edStylEdit.Properties.Items.Add('Office11');
  edStylEdit.Properties.Items.Add('Nativní');
  edStylEdit.Properties.EndUpdate();
end;

procedure TfraGlobalOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  try
    edDPHSazba.EditValue            := dmdSystem.gbDPHSazba;
    edDesMista.Value                := dmdSystem.RecDesMista;
    chkEnableDelete.Checked         := dmdSystem.gbEnableDelete;
    chkUserUsePrivateColor.Checked  := dmdSystem.gbUserUsePrivateColor;
    chkUseCustomLayout.Checked      := dmdGlobal.UseCustomLayout;

    edStylEdit.Properties.BeginUpdate;
    edStylEdit.ItemIndex := Ord(dmdGlobal.StyleDefaultController.Style.LookAndFeel.Kind);
    edStylEdit.Properties.EndUpdate;
    edFontName.Properties.BeginUpdate;
    edFontName.FontName := dmdGlobal.StyleDefaultController.Style.Font.Name;
    edFontName.Properties.EndUpdate;
    edFontSize1.Properties.BeginUpdate;
    edFontSize1.Value := dmdGlobal.StyleDefaultController.Style.Font.Size;
    edFontSize1.Properties.EndUpdate;
  except

  end;
end;

procedure TfraGlobalOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin
  dmdSystem.gbDPHSazba               := edDPHSazba.EditValue;
  dmdSystem.RecDesMista              := edDesMista.Value;
  dmdSystem.gbEnableDelete           := chkEnableDelete.Checked;
  dmdSystem.gbUserUsePrivateColor    := chkUserUsePrivateColor.Checked;
  dmdGlobal.UseCustomLayout          := chkUseCustomLayout.Checked;
end;

procedure TfraGlobalOptions.edFontNamePropertiesChange(Sender: TObject);
begin
  dmdGlobal.StyleDefaultController.Style.Font.Name := edFontName.FontName;
end;

procedure TfraGlobalOptions.edFontSize1PropertiesChange(Sender: TObject);
begin
  dmdGlobal.StyleDefaultController.Style.Font.Size := edFontSize1.Value;
end;

procedure TfraGlobalOptions.edStylEditPropertiesChange(Sender: TObject);
begin
  case edStylEdit.ItemIndex of
    0 .. 3:
      begin
        dmdGlobal.StyleDefaultController.Style.LookAndFeel.Kind := TcxLookAndFeelKind(edStylEdit.ItemIndex);;
        dmdGlobal.StyleDefaultController.Style.LookAndFeel.NativeStyle := False;
      end;
    4:
      begin
        dmdGlobal.StyleDefaultController.Style.LookAndFeel.NativeStyle := true;
      end;
  end;
end;

end.
