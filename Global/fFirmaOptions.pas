unit fFirmaOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, DBCtrls, Db, ExtDlgs, uAppControler,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, cxGroupBox, cxPC,
  cxImage, cxDBEdit, cxPCdxBarPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TfraFirmaOptions = class(TjfsCustomSettingFrame)
    edNazev: TcxTextEdit;
    edIco: TcxTextEdit;
    edAdresa1: TcxTextEdit;
    edAdresa2: TcxDBTextEdit;
    edPSC: TcxDBTextEdit;
    edAdresa3: TcxDBTextEdit;
    edDic: TcxDBTextEdit;
    edZeme: TcxDBTextEdit;
    edTelefon: TcxDBTextEdit;
    edFax: TcxDBTextEdit;
    edMobil: TcxDBTextEdit;
    edEmail: TcxDBTextEdit;
    edWWW: TcxDBTextEdit;
    edBankaName: TcxDBTextEdit;
    edBankaKod: TcxDBTextEdit;
    edBankaUcet: TcxDBTextEdit;
    edFirmaRegistr: TcxDBTextEdit;
    dxlLayoutControl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxl1Group2: TdxLayoutGroup;
    dxl1Group3: TdxLayoutGroup;
    dxlytmdxl1Item1: TdxLayoutItem;
    dxlytmdxl1Item2: TdxLayoutItem;
    dxlytmdxl1Item3: TdxLayoutItem;
    dxlytmdxl1Item4: TdxLayoutItem;
    dxlytmdxl1Item5: TdxLayoutItem;
    dxlytmdxl1Item6: TdxLayoutItem;
    dxlytmdxl1Item7: TdxLayoutItem;
    dxlytmdxl1Item8: TdxLayoutItem;
    dxlytmdxl1Item9: TdxLayoutItem;
    dxlytmdxl1Item10: TdxLayoutItem;
    dxlytmdxl1Item11: TdxLayoutItem;
    dxlytmdxl1Item12: TdxLayoutItem;
    dxlytmdxl1Item13: TdxLayoutItem;
    dxlytmdxl1Item14: TdxLayoutItem;
    dxlytmdxl1Item15: TdxLayoutItem;
    dxl1LabeledItem1: TdxLayoutLabeledItem;
    dxlytmdxl1Item16: TdxLayoutItem;
    dxlytmdxl1Item17: TdxLayoutItem;
    dxl1Group6: TdxLayoutGroup;
    dxl1Group5: TdxLayoutGroup;
    dxl1Group7: TdxLayoutGroup;
    dxl1Group8: TdxLayoutGroup;
    dxl1Group10: TdxLayoutGroup;
    dxl1Group11: TdxLayoutGroup;
    dxl1Group12: TdxLayoutGroup;
    dxl1Group9: TdxLayoutGroup;
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  end;

var
  fraFirmaOptions:TfraFirmaOptions;

implementation

uses
  appdmduSystem, appfrmuGlobal;

{$R *.DFM}

constructor TfraFirmaOptions.Create(AOwner: TComponent);
begin
  inherited;
  dxl1.LayoutLookAndFeel := getdmdGlobal.GetCurrLayoutStyle;

end;

procedure TfraFirmaOptions.jfsCustomSettingFrameWriteSetting(
  Sender: TObject);
begin
  try
    if dmdSystem.Firma.State = dsEdit then
      dmdSystem.Firma.Post;
  except

 end;

end;

procedure TfraFirmaOptions.jfsCustomSettingFrameReadSetting(
  Sender: TObject);
begin
  { DONE : Tady to chce predelat na SQL update a tak dale }
  dmdSystem.Firma.Refresh;
  edNazev.Text          := dmdSystem.gbAktivace.Nazev1;
  edAdresa1.Text        := dmdSystem.gbAktivace.Nazev2;
  edIco.Text            := dmdSystem.gbAktivace.ICO;
end;

end.

