unit fGridExportDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxCheckBox, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, rsStorage, rsPropSaver, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus,uCustomForms;

type
  TxeExportType = (etHTML, etXML, etXLS, etText);

  TfrmGridExport = class(TjfsDefaultForm)
    btn1: TcxButton;
    btn2: TcxButton;
    chkOpenAfterExport: TcxCheckBox;
    rbExportTyp: TcxRadioGroup;
    rsPropSaver1: TrsPropSaver;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    lcGrid: TcxGrid;
  public
    { Public declarations }
  end;

procedure appGrifExport(aGrid: TcxGrid = nil);

implementation

{$R *.DFM}

uses
  cxGridExportLink, ShellAPI, appdmduSystem;

procedure appGrifExport(aGrid: TcxGrid = nil);
var
  dlg: TfrmGridExport;
begin

  dlg := TfrmGridExport.Create(nil);
  try
    dlg.lcGrid := aGrid;
    dlg.ShowModal;
  finally
    dlg.Free;
  end;

end;

procedure TfrmGridExport.btn1Click(Sender: TObject);
const
  DefaultExtensions: array [TxeExportType] of string = ('html', 'xml', 'xls', 'txt');
  Filters: array [TxeExportType] of string           = ('HTML soubor (*.html)|*.html', 'XML soubor (*.xml)|*.xml', 'Microsoft Excel 4.0 Tabulka (*.xls)|*.xls', 'Textový soubor (*.txt)|*.txt');
var
  AExportType: TxeExportType;
  ASaveDialog: TSaveDialog;
  AFileName  : string;
begin
  AExportType := etHTML;
  if rbExportTyp.ItemIndex = 0 then
    AExportType := etHTML;
  if rbExportTyp.ItemIndex = 1 then
    AExportType := etXML;
  if rbExportTyp.ItemIndex = 2 then
    AExportType := etXLS;
  if rbExportTyp.ItemIndex = 3 then
    AExportType := etText;

  ASaveDialog := TSaveDialog.Create(nil);
  try
    ASaveDialog.DefaultExt := DefaultExtensions[AExportType];
    ASaveDialog.Filter     := Filters[AExportType];
    ASaveDialog.FileName   := 'ExportFile';
    ASaveDialog.InitialDir := ExtractFilePath(Application.ExeName);
    // ASaveDialog.Options := ASaveDialog.Options;
    if ASaveDialog.Execute then
      AFileName := ASaveDialog.FileName
    else
      AFileName := '';
  finally
    ASaveDialog.Free;
  end;
  if AFileName <> '' then
  begin
    case AExportType of
      etHTML:
        ExportGridToHTML(AFileName, lcGrid);
      etXML:
        ExportGridToXML(AFileName, lcGrid);
      etXLS:
        ExportGridToExcel(AFileName, lcGrid);
      etText:
        ExportGridToText(AFileName, lcGrid);
    end;
    if chkOpenAfterExport.Checked then
      ShellExecute(Handle, PChar('OPEN'), PChar(AFileName), nil, nil, SW_SHOWMAXIMIZED);
  end;
  close;
end;

end.
