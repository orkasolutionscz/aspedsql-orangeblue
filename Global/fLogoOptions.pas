unit fLogoOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, DBCtrls, Db, ExtDlgs, uAppControler,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, cxGroupBox, cxPC,
  cxImage, cxDBEdit, cxPCdxBarPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TfraLogoOptions = class(TjfsCustomSettingFrame)
    edLogo1: TcxDBImage;
    edLogo2: TcxDBImage;
    dxlLayoutControl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxlytmdxl1Item18: TdxLayoutItem;
    dxlytmdxl1Item19: TdxLayoutItem;
    dxl1Group1: TdxLayoutGroup;
    dxl1Group3: TdxLayoutGroup;
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  end;

var
  fraLogoOptions:TfraLogoOptions;

implementation

uses
  appdmduSystem, appfrmuGlobal;

{$R *.DFM}

constructor TfraLogoOptions.Create(AOwner: TComponent);
begin
  inherited;
  dxl1.LayoutLookAndFeel := getdmdGlobal.GetCurrLayoutStyle;

end;

procedure TfraLogoOptions.jfsCustomSettingFrameWriteSetting(
  Sender: TObject);
begin
  try
    if dmdSystem.Firma.State = dsEdit then
      dmdSystem.Firma.Post;
  except

 end;

end;

procedure TfraLogoOptions.jfsCustomSettingFrameReadSetting(
  Sender: TObject);
begin
  { DONE : Tady to chce predelat na SQL update a tak dale }
  dmdSystem.Firma.Refresh;
end;

end.

