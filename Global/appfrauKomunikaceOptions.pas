unit appfrauKomunikaceOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uAppControler,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxCheckBox, cxLabel, cxGroupBox, cxRadioGroup, cxListView, comctrls,
  cxImageComboBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TappfraKomunikaceOptions = class(TjfsCustomSettingFrame)
    chkEmailShowDlg: TcxCheckBox;
    AutomaticRadioBtn: TcxRadioButton;
    MapiRadioBtn: TcxRadioButton;
    DirectRadioBtn: TcxRadioButton;
    edMailCC: TcxTextEdit;
    edFaxCzServer: TcxTextEdit;
    edFaxCzRegEmail: TcxTextEdit;
    edFaxCzRegEmailPasswd: TcxTextEdit;
    edTypPrilohy: TcxImageComboBox;
    ClientsListView: TcxListView;
    dxl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxl1Group1: TdxLayoutGroup;
    dxl1Group3: TdxLayoutGroup;
    dxl1Item1: TdxLayoutItem;
    dxl1Item2: TdxLayoutItem;
    dxl1Item3: TdxLayoutItem;
    dxl1Group4: TdxLayoutGroup;
    dxl1Group5: TdxLayoutGroup;
    dxl1Item4: TdxLayoutItem;
    dxl1Item5: TdxLayoutItem;
    dxl1Item6: TdxLayoutItem;
    dxl1Item7: TdxLayoutItem;
    dxl1Group6: TdxLayoutGroup;
    dxl1Group7: TdxLayoutGroup;
    dxl1Item8: TdxLayoutItem;
    dxl1Item9: TdxLayoutItem;
    dxl1Item10: TdxLayoutItem;
    dxl1Group2: TdxLayoutGroup;
    dxl1Group8: TdxLayoutGroup;
    dxl1Group9: TdxLayoutGroup;
    dxl1Group10: TdxLayoutGroup;
    chkEmFon: TcxCheckBox;
    dxl1Item12: TdxLayoutItem;
    chkAddToAddres: TcxCheckBox;
    dlidxl1Item11: TdxLayoutItem;
    dxlgdxl1Group11: TdxLayoutGroup;
    edClosePreview: TcxCheckBox;
    dxl1Item11: TdxLayoutItem;
    dxl1Group11: TdxLayoutGroup;
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure SetSendType(Sender: TObject);
    procedure ClientsListViewSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure chkAddToAddresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure BuildClientList;
  end;

var
  appfraKomunikaceOptions: TappfraKomunikaceOptions;

implementation

uses appdmduSystem, uSendFaxMail, JclMapi, appfrmuGlobal;

{$R *.DFM}
{ TappfraKomunikaceOptions }

procedure TappfraKomunikaceOptions.jfsCustomSettingFrameReadSetting(Sender: TObject);
begin

  try
    BuildClientList;
    // Tisky

  except

  end;
  edFaxCzServer.Text         := sfFaxCzServer;
  edFaxCzRegEmail.Text       := sfFaxCzRegEmail;
  edFaxCzRegEmailPasswd.Text := sfFaxCzRegEmailPasswd;
  chkEmailShowDlg.Checked    := sfMAPIShowMailDialog;
  chkAddToAddres.Checked     := sfMailAddToAddres;
  chkEmFon.Checked           := sfMAPIPDFEmbeddedFont;
  AutomaticRadioBtn.Checked  := (sfMAPIClientConnect = ctAutomatic);
  MapiRadioBtn.Checked       := (sfMAPIClientConnect = ctMapi);
  DirectRadioBtn.Checked     := (sfMAPIClientConnect = ctDirect);
  edMailCC.Text              := sfMailCCAdress;
  edTypPrilohy.EditValue     := sfMAPITypPrilohy;
  edClosePreview.Checked     := sfMAPIAutoCloseMailDialog;

end;

procedure TappfraKomunikaceOptions.jfsCustomSettingFrameWriteSetting(Sender: TObject);
begin

  sfFaxCzServer             := edFaxCzServer.Text;
  sfFaxCzRegEmail           := edFaxCzRegEmail.Text;
  sfFaxCzRegEmailPasswd     := edFaxCzRegEmailPasswd.Text;
  sfMAPIShowMailDialog      := chkEmailShowDlg.Checked;
  sfMAPIPDFEmbeddedFont     := chkEmFon.Checked;
  sfMailCCAdress            := edMailCC.Text;
  sfMAPITypPrilohy          := edTypPrilohy.EditValue;
  sfMailAddToAddres         := chkAddToAddres.Checked;
  sfMAPIAutoCloseMailDialog := edClosePreview.Checked;

end;

procedure TappfraKomunikaceOptions.SetSendType(Sender: TObject);
begin
  if AutomaticRadioBtn.Checked then
    sfMAPIClientConnect := ctAutomatic;
  if MapiRadioBtn.Checked then
    sfMAPIClientConnect := ctMapi;
  if DirectRadioBtn.Checked then
    sfMAPIClientConnect := ctDirect;
  // UpdateClientName;

end;

procedure TappfraKomunikaceOptions.chkAddToAddresClick(Sender: TObject);
begin
  if not chkAddToAddres.Checked then
    chkEmailShowDlg.Checked := True;
end;

procedure TappfraKomunikaceOptions.ClientsListViewSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  if Selected then
  begin
    sfMAPISelectedClientIndex := Item.Index;
    // UpdateClientName;
  end;

end;

constructor TappfraKomunikaceOptions.Create(AOwner: TComponent);
begin
  inherited;
  dxl1.LayoutLookAndFeel := getdmdGlobal.GetCurrLayoutStyle;
end;

procedure TappfraKomunikaceOptions.BuildClientList;
var
  I: Integer;
begin
  ClientsListView.Items.BeginUpdate;
  ClientsListView.Items.Clear;
  ClientsListView.BringToFront;
  with tjclemail.Create do
  begin
    for I := 0 to ClientCount - 1 do
      with ClientsListView.Items.Add do
      begin
        Caption := Clients[I].RegKeyName;
        Data    := Pointer(Clients[I].Valid);
        SubItems.Add(Clients[I].ClientName);
        SubItems.Add(Clients[I].ClientPath);
      end;
    // if (sfMAPISelectedClientIndex >= 0) and (ClientCount > 0) then
    // begin
    // try
    // ClientsListView.Items[sfMAPISelectedClientIndex].Selected := True;
    // except
    //
    // end;
    // end;
    // else
    // sfMAPISelectedClientIndex := 0;

    AutomaticRadioBtn.Enabled := AnyClientInstalled;
    MapiRadioBtn.Enabled      := SimpleMapiInstalled;
    DirectRadioBtn.Enabled    := ClientCount > 0;
    free;
  end;
  ClientsListView.Items.EndUpdate;
end;

end.
