unit fAOPPrevodAdresyUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxTextEdit, Data.DB, IBODataset,
  cxDBEdit;

type
  TfrmAopPrevodAdresy = class(TForm)
    edOldAOP: TcxTextEdit;
    lbl1: TcxLabel;
    edNovyKod: TcxLookupComboBox;
    lbl2: TcxLabel;
    chkDeleteOld: TcxCheckBox;
    pnlButtons: TPanel;
    btnCancel: TcxButton;
    btnOk: TcxButton;
    dtsAopSource: TIBOQuery;
    dtsAopSourceAOPKOD: TStringField;
    dtsAopSourceNAZEV: TStringField;
    dtsAopSourceADRESA2: TStringField;
    dtsAopSourceADRESA3: TStringField;
    dtsAopSourceKODZEME: TStringField;
    dsOldAOP: TDataSource;
    ed1: TcxDBTextEdit;
    dtsAopList: TIBOQuery;
    dsAopList: TDataSource;
    dtsAopListAOPKOD: TStringField;
    dtsAopListNAZEV: TStringField;
    dtsAopListADRESA1: TStringField;
    dtsAopListADRESA2: TStringField;
    dtsAopListADRESA3: TStringField;
    dtsAopListICO: TStringField;
    dtsAopListDIC: TStringField;
    dtsAopSourceTELEFON: TStringField;
    dtsAopSourceFAX: TStringField;
    dtsAopSourceGSM: TStringField;
    dtsAopSourceEMAIL: TStringField;
    dtsAopSourceADRESA1: TStringField;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
  end;

function aopPrevodKodu(AOldKod: string; var NewAOPKod: string): Boolean;

implementation

{$R *.dfm}

uses appdmduSystem, fMessageDlg;

function aopPrevodKodu(AOldKod: string; var NewAOPKod: string): Boolean;
var
  dlg: TfrmAopPrevodAdresy;
begin
  NewAOPKod := AOldKod;
  dlg       := TfrmAopPrevodAdresy.Create(Application);
  try
    dlg.dtsAopSource.ParamByName('AOPKOD').AsString := AOldKod;
    dlg.dtsAopSource.Open;
    dlg.edOldAOP.Text                             := AOldKod;
    dlg.dtsAopList.ParamByName('AOPKOD').AsString := AOldKod;
    dlg.dtsAopList.Open;
    dlg.ShowModal;
    if dlg.ModalResult = mrOk then
    begin
      Result    := True;
      NewAOPKod := dlg.dtsAopListAOPKOD.AsString;
    end
    else
      Result := False;

  finally
    dlg.Free;
  end;
end;

procedure TfrmAopPrevodAdresy.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmAopPrevodAdresy.btnOkClick(Sender: TObject);
var
  dtsWork: TIBOQuery;
begin
  dtsWork                                    := dmdSystem.CreateWorkDataSet;
  dtsWork.SQL.Text                           := 'select * from SP_AOPZMENADRESU(:puvodnikod, :novykod,:odstranit)';
  dtsWork.ParamByName('puvodnikod').AsString := dtsAopSourceAOPKOD.AsString;
  dtsWork.ParamByName('novykod').AsString    := dtsAopListAOPKOD.AsString;
  if chkDeleteOld.Checked then
    dtsWork.ParamByName('odstranit').AsString := 'A'
  else
    dtsWork.ParamByName('odstranit').AsString := 'N';
  dtsWork.Open;
  if dtsWork.Fields[0].AsInteger = 1 then
  begin
    DisplayInfo('Úspìšnì nahrazeno.');
    ModalResult := mrOk;
  end
  else
    DisplayError('Nepodaøilo se nahradit adresu.');
end;

end.
