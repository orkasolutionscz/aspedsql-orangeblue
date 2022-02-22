unit uAOPConstDefUnit;

interface

uses
  SysUtils;

const
  AOP_DEFAULT_ZEME = 'CZ';
  SAT_EMAIL        = 'EMAIL';
  SAT_FAX          = 'FAX';
  SAT_NONE         = 'NIC';

  SAOPKEYFIELDNAME = 'AOPKOD';
  SAOPKEYPARAMNAME = 'AOPKOD';

  { AOP 1200-1299 }
  SERR_AOP_EMAILCHYBIUDAJE       = 'Adresa neobsahuje E-Mail adresu.';
  SERR_AOP_SMSCHYBIUDAJE         = 'Adresa neobsahuje pot�ebn� �daje pro vytvo�en� SMS zpr�vy';
  SERR_AOP_SMER_EXIST            = 'Nepoda�ilo se ulo�it Sm�r do katalogu. katalog ji� tuto hodnotu obsahuje.';
  SERR_AOP_SMER_NOTCOMPLETE      = 'Nen� vypln�n n�kter� z �daj� (Zem�, PS�, M�sto) pro ulo�en� do katalogu.';
  SERR_AOP_JMENOORPRIJMENI_EMPTY = 'Nen� vypln�no pole Jm�no nebo P��jmen�.';

  { Information }
  SINF_AOP_SMER_INSERTED = 'Sm�r byl �sp�n� ulo�en do katalogu.';


function AopCheckPsc(aInputPsc: string): string;
function AopCheckIco(aInputIco: string): string;
function AopCheckDic(aInputDic: string): string;

implementation

uses uAppUtils;

function AopCheckPsc(aInputPsc: string): string;
begin
  Result := strFilterStr(aInputPsc, [' ', '-']);
end;

function AopCheckIco(aInputIco: string): string;
begin
  Result := strFilterStr(aInputIco, [' ', '-']);
end;

function AopCheckDic(aInputDic: string): string;
begin
  Result := AnsiUpperCase(strFilterStr(aInputDic, [' ', '-']));
end;

end.
