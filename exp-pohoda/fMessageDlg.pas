unit fMessageDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, StdCtrls,  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TdlgShowMode = (dsmDotaz, dsmChyba, dsmInfo);
  TfrmPotvrzeni = class(TForm)
    lbMessage: TLabel;
    pnlButtons: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    Shape1: TShape;
    imgError: TImage;
    imgInformation: TImage;
    imgWarning: TImage;
    dlgExtendInfo: TcxMemo;
  private
    { Private declarations }
    FShowMode: TdlgShowMode;
    procedure SetMode(AShowMode: TdlgShowMode);
  public
    { Public declarations }
    constructor CustomCreate(AOwner: TComponent; AShowMode: TdlgShowMode);
    procedure ShowMessage(AMessage: string; AExtendMessage: string);
  end;

{ Ostatni funkce }
function DisplayConfirm(AMessage: string; AExtendMessage: string = ''):  boolean;
procedure DisplayInfo(AMessage: string; AExtendMessage: string = '');
procedure DisplayError(AMessage: string; AExtendMessage: string = '');

const
  { Hlaseni }
  MSG_APP_NEEDRESTART = 'Provedené zmìny se projeví až po restartování APLIKACE';
  CNEWLINE = #13#10;
  SERR_USERNAME    = 'Nesprávné jméno uživatele. Prosím zadejte platné jméno uživatele.';
  SERR_PASSWORD    = 'Nesprávné heslo. Prosím zadejte platné heslo.';
  SERR_PRINT       = 'Nelze tisknout. Podívejte se zda mate nainstalovanou a zapnutou tiskárnu.';
  SERR_MAXUSERS    = 'Je pøekroèen maximální povolený poèet prihlášenych uzivatelù, aplikace bude ukonèena.';

  SERR_DEMO_MAXRECORD = 'Je pøekroèen maximální poèet záznamù pro demo verzi.';

  SERR_DEMO_DOCASNOST = 'Vypršela doba pro používání START verze.' + CNEWLINE +
    'Aplikace bude použitelná až po zaplacení plné verze.';

  SERR_INSERT =
    'Nepodaøilo se založit nový záznam do databáze.';
  SERR_DELETE =
    'Nepodaøilo se odstranit záznam z databáze.';
  SERR_COPY =
    'Nepodaøilo se kopírovat záznam.';
  SERR_UPDATE =
    'Nepodaøilo se uložit provedené zmìny do databáze.';
  SERR_CHANGE_ZNACKA =
    'Nepodaøilo se zmìnit pole pro èíselnou øadu.' + CNEWLINE +
    'Pravdìpodobnì se pokoušíte zapsat hodnotu, která již v tabulce existuje.';
  SERR_ZNACKA_EMPTY =
    'Pole pro èíselnou øadu nesmí být prázdné.';
  SERR_REQUIED =
    'Pole nesmí být prázdné.';
  SERR_MINUS_VALUE =     'Hodnota pole nesmí být záporná!';
  SERR_ZERO_ORMINUS =    'Hodnota pole nesmí být 0!';
  SERR_KEY_NOTFOUND =    'Požadovaný záznam nebyl nalezen';
  SERR_EXPORT =          'Export záznamù se nepodaøil.';
  SERR_IMPORT =          'Import záznamù se nepodaøil';

  {Informacni hlaseni  }
  SINF_BACKUP_DB_SUCCESS =
    'Zálohování databáze bylo úspìšnì dokonèeno.';
  SINF_REPAIR_MDB =
    'Aplikace se pokusí opravit databáze.' + CNEWLINE +
    'Pokud by oprava neprobìhla uspìšnì, kontaktujte prodejce programu' + CNEWLINE
    +
    'Po ukonèení opravy bude program A-SPED ukonèen';

  SINF_KONEC_START_VERZE = 'Blíží se termín ukonèení platnosti START verze programu.';
  SINF_REG_NEEDRESTART =
    'Pro aktivaci všech zaregistrovaných modulù je nutno aplikaci restartovat.';
  SINF_OK_IMPORT = 'Import záznamù probìhl úspìšnì.';
  SINF_OK_EXPORT = 'Export záznamù probìhl úspìšnì.';
  SINF_INSTAL_REPORT = 'Instalace sestav pro aplikaci probìhlo úspìšnì.';
  SINF_EXPORT_SESTAVY = 'Export sestav byl dokonèen.';



implementation

{$R *.DFM}
const
  NormalHeight = 131;
  ExtendHeight = 207;
  SBUTTON_PROVEST = 'Provést';
  SBUTTON_OK = 'OK';
  SBUTTON_STORNO = 'Storno';

function DisplayConfirm(AMessage: string; AExtendMessage: string = ''): boolean;
var
  dlg: TfrmPotvrzeni;
begin
  dlg := TfrmPotvrzeni.CustomCreate(nil, dsmDotaz);
  try
    dlg.ShowMessage(AMessage, AExtendMessage);
    result := (dlg.ShowModal = mrOk);
  finally
    dlg.Free;
  end;
end;

{****************************************************************
*
*  D i s p l a y I n f o ()
*
****************************************************************
*  Author: Jiri Fait
*  Date:   23.5.2001
*
*  Input:  AMessage - string - informacnihlaska
*
*  Return: nic
*
*  Description:
*
*****************************************************************
* Revisions:
*
*****************************************************************}

procedure DisplayInfo(AMessage: string; AExtendMessage: string = '');
var
  dlg: TfrmPotvrzeni;
begin
  dlg := TfrmPotvrzeni.CustomCreate(nil, dsmInfo);
  try
    dlg.ShowMessage(AMessage, AExtendMessage);
    dlg.ShowModal;
  finally
    dlg.Free;
  end;
end;

procedure DisplayError(AMessage: string; AExtendMessage: string = '');
var
  dlg: TfrmPotvrzeni;
begin
  dlg := TfrmPotvrzeni.CustomCreate(nil, dsmChyba);
  try
    dlg.ShowMessage(AMessage, AExtendMessage);
    dlg.ShowModal;
  finally
    dlg.Free;
  end;
end;
  
constructor TfrmPotvrzeni.CustomCreate(AOwner: TComponent; AShowMode:
  TdlgShowMode);
begin
  inherited Create(AOwner);
  ClientHeight := NormalHeight;
  ClientHeight := NormalHeight;
  with imgError do
  begin
    Left := 6;
    Top := 6;
  end;
  with imgInformation do
  begin
    Left := 6;
    Top := 6;
  end;
  with imgWarning do
  begin
    Left := 6;
    Top := 6;
  end;
  dlgExtendInfo.Visible := false;

  SetMode(AShowMode);

end;

procedure TfrmPotvrzeni.SetMode(AShowMode: TdlgShowMode);
begin
  FShowMode := AShowMode;
  case FShowMode of
    dsmDotaz:
      begin
        Caption := 'Potvrïte akci';
        btnOk.Caption := SBUTTON_PROVEST;
        btnCancel.Caption := SBUTTON_STORNO;
        btnCancel.Visible := true;
      end;
    dsmChyba:
      begin
        Caption := 'Chyba';
        btnOk.Caption := SBUTTON_OK;
        btnCancel.Visible := false;
      end;
    dsmInfo:
      begin
        Caption := 'Informace';
        btnOk.Caption := SBUTTON_OK;
        btnCancel.Visible := false;
      end;
  end;
  imgError.Visible := FShowMode = dsmChyba;
  imgInformation.Visible := FShowMode = dsmInfo;
  imgWarning.Visible := FShowMode = dsmDotaz;

end;

procedure TfrmPotvrzeni.ShowMessage(AMessage: string; AExtendMessage: string);
begin
  if AExtendMessage <> EmptyStr then
  begin
    ClientHeight := ExtendHeight;
    dlgExtendInfo.Visible := true;
    dlgExtendInfo.Text := AExtendMessage;
  end;
  lbMessage.Caption := AMessage;
end;

end.

