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
  MSG_APP_NEEDRESTART = 'Proveden� zm�ny se projev� a� po restartov�n� APLIKACE';
  CNEWLINE = #13#10;
  SERR_USERNAME    = 'Nespr�vn� jm�no u�ivatele. Pros�m zadejte platn� jm�no u�ivatele.';
  SERR_PASSWORD    = 'Nespr�vn� heslo. Pros�m zadejte platn� heslo.';
  SERR_PRINT       = 'Nelze tisknout. Pod�vejte se zda mate nainstalovanou a zapnutou tisk�rnu.';
  SERR_MAXUSERS    = 'Je p�ekro�en maxim�ln� povolen� po�et prihl�enych uzivatel�, aplikace bude ukon�ena.';

  SERR_DEMO_MAXRECORD = 'Je p�ekro�en maxim�ln� po�et z�znam� pro demo verzi.';

  SERR_DEMO_DOCASNOST = 'Vypr�ela doba pro pou��v�n� START verze.' + CNEWLINE +
    'Aplikace bude pou�iteln� a� po zaplacen� pln� verze.';

  SERR_INSERT =
    'Nepoda�ilo se zalo�it nov� z�znam do datab�ze.';
  SERR_DELETE =
    'Nepoda�ilo se odstranit z�znam z datab�ze.';
  SERR_COPY =
    'Nepoda�ilo se kop�rovat z�znam.';
  SERR_UPDATE =
    'Nepoda�ilo se ulo�it proveden� zm�ny do datab�ze.';
  SERR_CHANGE_ZNACKA =
    'Nepoda�ilo se zm�nit pole pro ��selnou �adu.' + CNEWLINE +
    'Pravd�podobn� se pokou��te zapsat hodnotu, kter� ji� v tabulce existuje.';
  SERR_ZNACKA_EMPTY =
    'Pole pro ��selnou �adu nesm� b�t pr�zdn�.';
  SERR_REQUIED =
    'Pole nesm� b�t pr�zdn�.';
  SERR_MINUS_VALUE =     'Hodnota pole nesm� b�t z�porn�!';
  SERR_ZERO_ORMINUS =    'Hodnota pole nesm� b�t 0!';
  SERR_KEY_NOTFOUND =    'Po�adovan� z�znam nebyl nalezen';
  SERR_EXPORT =          'Export z�znam� se nepoda�il.';
  SERR_IMPORT =          'Import z�znam� se nepoda�il';

  {Informacni hlaseni  }
  SINF_BACKUP_DB_SUCCESS =
    'Z�lohov�n� datab�ze bylo �sp�n� dokon�eno.';
  SINF_REPAIR_MDB =
    'Aplikace se pokus� opravit datab�ze.' + CNEWLINE +
    'Pokud by oprava neprob�hla usp�n�, kontaktujte prodejce programu' + CNEWLINE
    +
    'Po ukon�en� opravy bude program A-SPED ukon�en';

  SINF_KONEC_START_VERZE = 'Bl�� se term�n ukon�en� platnosti START verze programu.';
  SINF_REG_NEEDRESTART =
    'Pro aktivaci v�ech zaregistrovan�ch modul� je nutno aplikaci restartovat.';
  SINF_OK_IMPORT = 'Import z�znam� prob�hl �sp�n�.';
  SINF_OK_EXPORT = 'Export z�znam� prob�hl �sp�n�.';
  SINF_INSTAL_REPORT = 'Instalace sestav pro aplikaci prob�hlo �sp�n�.';
  SINF_EXPORT_SESTAVY = 'Export sestav byl dokon�en.';



implementation

{$R *.DFM}
const
  NormalHeight = 131;
  ExtendHeight = 207;
  SBUTTON_PROVEST = 'Prov�st';
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
        Caption := 'Potvr�te akci';
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

