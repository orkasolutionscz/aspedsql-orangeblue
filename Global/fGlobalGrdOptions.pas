unit fGlobalGrdOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxPC, cxControls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxLabel, cxContainer, cxEdit, cxGroupBox, uAppControler, appdmduSystem,
  cxColorComboBox, ExtCtrls, cxCheckBox, cxSpinEdit, cxPCdxBarPopupMenu,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxFontNameComboBox,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl;

type
  TfraGlobalGrdOptions = class(TjfsCustomSettingFrame)
    cbArchiv: TcxColorComboBox;
    cbArchivText: TcxColorComboBox;
    cbStorno: TcxColorComboBox;
    cbStornoText: TcxColorComboBox;
    chkFullRefresh: TcxCheckBox;
    chkAutoRefresh: TcxCheckBox;
    edAutoRefreshInterval: TcxSpinEdit;
    chkGridFiltSearchDialog: TcxCheckBox;
    dxlLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group18: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxlLayoutControl1Group19: TdxLayoutGroup;
    dxlLayoutControl1Group20: TdxLayoutGroup;
    lblArchiv: TcxLabel;
    dxLayoutControl1Item17: TdxLayoutItem;
    lblStorno: TcxLabel;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxlLayoutControl1Group1: TdxLayoutGroup;
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure DcColorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses appfrmuGlobal, uCustomForms;

{$R *.DFM}

constructor TfraGlobalGrdOptions.Create(AOwner: TComponent);
begin
  inherited;
  dxLayoutControl1.LayoutLookAndFeel := getdmdGlobal.GetCurrLayoutStyle;
end;

procedure TfraGlobalGrdOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin
  try
    chkFullRefresh.Checked          := dmdSystem.gbFullRefresh;
    cbArchiv.ColorValue             := dmdGlobal.cxsRecArchive.Color;
    cbArchivText.ColorValue         := dmdGlobal.cxsRecArchive.TextColor;
    cbStorno.ColorValue             := dmdGlobal.cxsRecStorno.Color;
    cbStornoText.ColorValue         := dmdGlobal.cxsRecStorno.TextColor;
    edAutoRefreshInterval.Value     := dmdSystem.gbAutoRefreshInterval;
    chkAutoRefresh.Checked          := dmdSystem.gbAutoRefresh;
    chkGridFiltSearchDialog.Checked := dmdSystem.gbGridFilterSearchDialog;
  except

  end;
  DcColorChange(nil);
end;

procedure TfraGlobalGrdOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin
  dmdSystem.gbFullRefresh            := chkFullRefresh.Checked;
  dmdGlobal.cxsRecArchive.Color      := cbArchiv.ColorValue;
  dmdGlobal.cxsRecArchive.TextColor  := cbArchivText.ColorValue;
  dmdGlobal.cxsRecStorno.Color       := cbStorno.ColorValue;
  dmdGlobal.cxsRecStorno.TextColor   := cbStornoText.ColorValue;
  dmdSystem.gbAutoRefreshInterval    := edAutoRefreshInterval.Value;
  dmdSystem.gbAutoRefresh            := chkAutoRefresh.Checked;
  dmdSystem.gbGridFilterSearchDialog := chkGridFiltSearchDialog.Checked;
end;

procedure TfraGlobalGrdOptions.DcColorChange(Sender: TObject);
begin

  lblArchiv.Style.Color      := cbArchiv.ColorValue;
  lblArchiv.Style.Font.Color := cbArchivText.ColorValue;
  lblStorno.Style.Color      := cbStorno.ColorValue;
  lblStorno.Style.Font.Color := cbStornoText.ColorValue;
end;

end.
