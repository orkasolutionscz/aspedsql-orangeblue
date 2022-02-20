unit fAOPPrevedNaKontaktUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxTextEdit, Data.DB, IBODataset,
  cxDBEdit, cxGroupBox, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl, rsStorage, rsPropSaver;

type
  TfrmAopPrevodNaKontakt = class(TForm)
    edNovyKod: TcxLookupComboBox;
    lbl2: TcxLabel;
    chkDeleteOld: TcxCheckBox;
    pnlButtons: TPanel;
    dtsAopSource: TIBOQuery;
    dtsAopSourceAOPKOD: TStringField;
    dtsAopSourceNAZEV: TStringField;
    dtsAopSourceADRESA2: TStringField;
    dtsAopSourceADRESA3: TStringField;
    dtsAopSourceKODZEME: TStringField;
    dsOldAOP: TDataSource;
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
    edOldAOP: TcxDBTextEdit;
    ed1: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    lcMain: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    lcMainGroup1: TdxLayoutGroup;
    lcMainItem3: TdxLayoutItem;
    lcMainItem4: TdxLayoutItem;
    lcMainGroup5: TdxLayoutGroup;
    lcMainGroup7: TdxLayoutGroup;
    lcMainItem7: TdxLayoutItem;
    lcMainItem8: TdxLayoutItem;
    lcMainItem9: TdxLayoutItem;
    lcMainItem10: TdxLayoutItem;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    lcMainGroup2: TdxLayoutGroup;
    edAopVazby: TcxLookupComboBox;
    lcMainItem1: TdxLayoutItem;
    lcMainGroup3: TdxLayoutGroup;
    lcMainGroup4: TdxLayoutGroup;
    chkPrevodVazeb: TcxCheckBox;
    lcMainItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcMainItem5: TdxLayoutItem;
    rsPropSaver1: TrsPropSaver;
    lcMainGroup6: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    lcMainItem6: TdxLayoutItem;
    lcMainItem11: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    lcMainItem12: TdxLayoutItem;
    lcMainItem13: TdxLayoutItem;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edNovyKodPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function aopPripojKontakt(AOldKod: string; var NewAOPKod: string): Boolean;

implementation

{$R *.dfm}

uses appdmduSystem, fMessageDlg;

function aopPripojKontakt(AOldKod: string; var NewAOPKod: string): Boolean;
var
  dlg: TfrmAopPrevodNaKontakt;
begin
  NewAOPKod := AOldKod;
  dlg       := TfrmAopPrevodNaKontakt.Create(Application);
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
      NewAOPKod := dlg.edNovyKod.EditValue;
    end
    else
      Result := False;

  finally
    dlg.Free;
  end;

end;

procedure TfrmAopPrevodNaKontakt.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmAopPrevodNaKontakt.btnOkClick(Sender: TObject);
const
  sSQL = 'insert into aopjmena (aopkod,jmeno, prijmeni, email, telefon1, mobil, fax)' + ' values (:aopkod,:jmeno,:prijmeni,:email,:telefon1,:mobil,    :fax)';
var
  dtsWork: TIBOQuery;
begin
  // Nejprve insertneme do nového nadrizeneho kontaktu
  dtsWork := dmdSystem.CreateWorkDataSet;
  try
    dtsWork.SQL.Text                         := sSQL;
    dtsWork.ParamByName('aopkod').AsString   := edNovyKod.EditValue;
    dtsWork.ParamByName('jmeno').AsString    := dtsAopSourceADRESA1.AsString;
    dtsWork.ParamByName('email').AsString    := dtsAopSourceEMAIL.AsString;
    dtsWork.ParamByName('telefon1').AsString := dtsAopSourceTELEFON.AsString;
    dtsWork.ParamByName('mobil').AsString    := dtsAopSourceGSM.AsString;
    dtsWork.ParamByName('fax').AsString      := dtsAopSourceFAX.AsString;
    dtsWork.ExecSQL;
    // Musime zjistit, jestli náhodou není ke kontaktu nìjaká vazba na
    if chkPrevodVazeb.Checked then
    begin
      dtsWork.SQL.Text                           := 'select * from SP_AOPZMENADRESU(:puvodnikod, :novykod,:odstranit)';
      dtsWork.ParamByName('puvodnikod').AsString := dtsAopSourceAOPKOD.AsString;
      dtsWork.ParamByName('novykod').AsString    := edAopVazby.EditValue;
      if chkDeleteOld.Checked then
        dtsWork.ParamByName('odstranit').AsString := 'A'
      else
        dtsWork.ParamByName('odstranit').AsString := 'N';
      dtsWork.Open;
    end;
    DisplayInfo('Úspìšnì nahrazeno.');
    ModalResult := mrOk;
  finally
    dtsWork.Free;
  end;
end;

procedure TfrmAopPrevodNaKontakt.edNovyKodPropertiesEditValueChanged(Sender: TObject);
begin
  edAopVazby.EditValue := edNovyKod.EditValue;
end;

end.
