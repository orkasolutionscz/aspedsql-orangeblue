unit uSendFaxMail;

interface

uses
  JclMapi;

var
  sfFaxCzServer            : string; // Adresa serveru fax.cz
  sfFaxCzRegEmail          : string; // Registrovanz email
  sfFaxCzRegEmailPasswd    : string; // Heslo k emailu
  sfMailCCAdress           : String; // Pokud chcem odesilat kopii emailu nekam
  sfMAPIClientConnect      : TJclMapiClientConnect;
  sfMAPISelectedClientIndex: Integer;
  sfMAPIShowMailDialog     : Boolean;
  sfMAPITypPrilohy         : Integer;
  sfMAPIPDFEmbeddedFont    : Boolean; // Pokud TRUE prida se do exportovaneoho PDF vsechnz pouyite fonty. Naroste ale velikost o cca 1.2MB
  sfMailAddToAddres        : Boolean; // Pokud True, tak je do emailu pridana adresa, jinak adresa jen v Clipboardu
  // Pridano 2015-06-29
  sfMAPIAutoCloseMailDialog: Boolean; // Pokud True tak po kliknuti na odeslat

const
  SFMAPIATTACH_PDF = 0; // PDF priloha
  SFMAPIATTACH_JPG = 1; // JPG Priloha

implementation

initialization

sfFaxCzServer             := 'fax.cz';
sfFaxCzRegEmail           := '';
sfFaxCzRegEmailPasswd     := '';
sfMAPIClientConnect       := ctAutomatic;
sfMAPISelectedClientIndex := -1;
sfMailCCAdress            := '';
sfMAPIPDFEmbeddedFont     := False;
sfMAPIAutoCloseMailDialog := False;

end.
