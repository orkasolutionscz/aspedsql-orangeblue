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
  SERR_AOP_SMSCHYBIUDAJE         = 'Adresa neobsahuje potøebné údaje pro vytvoøení SMS zprávy';
  SERR_AOP_SMER_EXIST            = 'Nepodaøilo se uložit Smìr do katalogu. katalog již tuto hodnotu obsahuje.';
  SERR_AOP_SMER_NOTCOMPLETE      = 'Není vyplnìn nìkterý z údajù (Zemì, PSÈ, Mìsto) pro uložení do katalogu.';
  SERR_AOP_JMENOORPRIJMENI_EMPTY = 'Není vyplnìno pole Jméno nebo Pøíjmení.';

  { Information }
  SINF_AOP_SMER_INSERTED = 'Smìr byl úspìšnì uložen do katalogu.';


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
