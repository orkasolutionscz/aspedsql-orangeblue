unit AOPConstDefUnit;

interface

uses
  SysUtils;
   
const
  AOP_DEFAULT_ZEME = 'CZ';
  SAT_EMAIL = 'EMAIL';
  SAT_FAX = 'FAX';
  SAT_NONE = 'NIC';

  SAOPKEYFIELDNAME = 'AOPKOD';
  SAOPKEYPARAMNAME = 'AOPKOD';

  { AOP 1200-1299}
  SERR_AOP_EMAILCHYBIUDAJE = 'Adresa neobsahuje E-Mail adresu.';
  SERR_AOP_SMSCHYBIUDAJE =
    'Adresa neobsahuje potøebné údaje pro vytvoøení SMS zprávy';
  SERR_AOP_SMER_EXIST =
    'Nepodaøilo se uložit Smìr do katalogu. katalog již tuto hodnotu obsahuje.';
  SERR_AOP_SMER_NOTCOMPLETE =
    'Není vyplnìn nìkterý z údajù (Zemì, PSÈ, Mìsto) pro uložení do katalogu.';
  SERR_AOP_JMENOORPRIJMENI_EMPTY = 'Není vyplnìno pole Jméno nebo Pøíjmení.';

  { Information }
  SINF_AOP_SMER_INSERTED = 'Smìr byl úspìšnì uložen do katalogu.';

type
  TFirmaObject = class(TObject)
  public
    AopKod      : string;
    Nazev       : string;
    Adresa1     : string;
    Adresa2     : string;
    Adresa3: string;
    Psc: string;
    Zeme: string;
    ZemeKod: string;
    ICO: string;
    DIC: string;
    Ucet_Cislo:string;
    Ucet_Banka:string;
    Fax: string;
    Telefon: string;
    GSM: string;
    Email: string;
    WWW: string;

    SendingAdress: string;
    Splatnost: integer;
    Vlastnik:string;
    // Display
    constructor Create;
  end;


implementation

{ TFirmaObject }

constructor TFirmaObject.Create;
begin
  AopKod        := EmptyStr;
  Adresa1       := EmptyStr;
  Adresa2       := EmptyStr;
  Adresa3       := EmptyStr;
  Psc           := EmptyStr;
  Zeme          := EmptyStr;
  ZemeKod       := EmptyStr;
  ICO           := EmptyStr;
  DIC           := EmptyStr;
  Ucet_Cislo    := EmptyStr;
  Ucet_Banka    := EmptyStr;
  Fax           := EmptyStr;
  Telefon       := EmptyStr;
  GSM           := EmptyStr;
  Email         := EmptyStr;
  WWW           := EmptyStr;
  SendingAdress := EmptyStr;
  Splatnost     := 14;
  // SendType := fxmEmail;
  // DisplayAdress := EmptyStr;

end;

end.


