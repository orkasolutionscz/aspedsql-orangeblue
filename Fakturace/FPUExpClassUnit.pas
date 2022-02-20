unit FPUExpClassUnit;

interface
uses
  classes;
type
  TCustomExportObject = class
  private
    FFileName: string;
    FPolozkyList: TStringList;
    FSumaCastka: extended;
    FDatDokl: TDateTime;
    FDatSplatnost: TDateTime;
    FKlientNazev: string;
    FKlientCislo: string;
    FKlientBanka: string;
    FKlientUcet: string;
    FDoplNulyVariabilni: boolean;
    procedure SetDoplNulyVariabilni(const Value: boolean);
  protected
    FOutputList: TStringList;
    function GenHlavicka: string;
    function GenUhl: string;
  public
    constructor Create(
      AFileName: string;
      ADatDoklad, ADatSplatnost: TDateTime;
      AKlientNazev: string;
      AKlientCislo: string;
      AKlientUcet: string;
      AKlientBanka: string); virtual;
    destructor Destroy; override;

    function AddPolozka(
      ACisloUctu: string;
      AKodBanky: string;
      ACastka: currency; AVariabilni, AKonstantni,
      ASpecificky: string): boolean; virtual;

    function ExportToFile: boolean; virtual;
    {
      True znamena ze se variabilni symbol doplni nulama z leve strany
    }
    property DoplNulyVariabilni: boolean read FDoplNulyVariabilni write SetDoplNulyVariabilni;
  end;

  TCustomABOExportObject = class(TCustomExportObject);

function ConvertCastka(ACastka: currency; AMista: integer): string;
function ConvertUcet(AUcet: string): string;
function ConvertUcetMTC(AUcet: string): string;
function MyDateToString(ADate: TDateTime): string;

implementation

uses
  sysutils   , jclStrings  , uAppUtils, fMessageDlg;

  { TCustomABOExportObject }
const
  CRLF = #10#13;

function ConvertCastka(ACastka: currency; AMista: integer): string;
var
  lcCastka: string;
begin
  lcCastka := CurrToStrF(ACastka, ffFixed, 2);
  Result := strFilterStr(lcCastka, [',', '.', ' ']);
  result := StrPadLeft(Result, AMista, '0');
end;

function ConvertUcet(AUcet: string): string;
var
  lcPomlckaPozice: integer;
  lcPredcisli: string;
  lcUcet: string;
  lcNewValue: string;
const
  UCSEP = '-';
begin
  lcNewValue := trim(AUcet);
  { Zjistime, zda v cisle uctu neni pomlcka}
  lcPomlckaPozice := pos(UCSEP, lcNewValue);

  // Tady upravime ucet do podoby pro export

  { Nejprve yjistime, zda neni cislo uctu delsi nez 10 znaku }
  if (length(lcNewValue) > 10) and (lcPomlckaPozice = 0) then
  begin
    lcUcet := StrRight(lcNewValue, 10);
    lcPredcisli := StrLeft(lcNewValue, length(lcNewValue) - 10);
    lcPredcisli := StrPadLeft(lcPredcisli, 6, '0');
  end
  else
  begin
    if lcPomlckaPozice <> 0 then
    begin
      // Predcisli uctu
      lcPredcisli := StrLeft(lcNewValue, lcPomlckaPozice - 1);
      lcPredcisli := StrPadLeft(lcPredcisli, 6, '0');
      // Cislo uctu
      lcUcet := StrRight(lcNewValue, length(lcNewValue) - lcPomlckaPozice);
      lcUcet := StrPadLeft(lcUcet, 10, '0');
    end
    else
    begin
      lcPredcisli := '000000';
      lcUcet := StrPadLeft(Trim(lcNewValue), 10, '0');
    end;
  end;
  result := lcPredcisli + '-' + lcUcet;
end;

function ConvertUcetMTC(AUcet: string): string;
var
  lcPomlckaPozice: integer;
  lcPredcisli: string;
  lcUcet: string;
  lcNewValue: string;
const
  UCSEP = '-';
begin
  lcNewValue := trim(AUcet);
  { Zjistime, zda v cisle uctu neni pomlcka}
  lcPomlckaPozice := pos(UCSEP, lcNewValue);

  // Tady upravime ucet do podoby pro export

  { Nejprve yjistime, zda neni cislo uctu delsi nez 10 znaku }
  if (length(lcNewValue) > 10) and (lcPomlckaPozice = 0) then
  begin
    lcUcet := StrRight(lcNewValue, 10);
    lcPredcisli := StrLeft(lcNewValue, length(lcNewValue) - 10);
    lcPredcisli := StrPadLeft(lcPredcisli, 6, '0');
  end
  else
  begin
    if lcPomlckaPozice <> 0 then
    begin
      // Predcisli uctu
      lcPredcisli := StrLeft(lcNewValue, lcPomlckaPozice - 1);
      //lcPredcisli := StrPadLeft(lcPredcisli, 6, '0');
      // Cislo uctu
      lcUcet := StrRight(lcNewValue, length(lcNewValue) - lcPomlckaPozice);
      lcUcet := StrPadLeft(lcUcet, 10, '0');
    end
    else
    begin
      lcPredcisli := '';
      lcUcet := StrPadLeft(Trim(lcNewValue), 10, '0');
    end;
  end;
  result := lcPredcisli + ' ' + lcUcet;
end;

function MyDateToString(ADate: TDateTime): string;
var
  lcRok, lcMesic, lcDen: word;
begin
  DecodeDate(ADate, lcRok, lcMesic, lcDen);
  Result :=
    StrPadLeft(IntToStr(lcDen), 2, '0') +
    StrPadLeft(IntToStr(lcMesic), 2, '0') +
    StrRight(IntToStr(lcRok), 2);
end;

function TCustomExportObject.AddPolozka(
  ACisloUctu: string;
  AKodBanky: string;
  ACastka: currency;
  AVariabilni, AKonstantni, ASpecificky: string): boolean;
var
  lcRadek: string;
  lcKonstatni: string;
  lcVariabilni: string;
  lcSpecificky: string;
begin
  try
    FSumaCastka := FSumaCastka + ACastka;
    lcKonstatni := StrPadLeft(StrPadLeft(trim(AKodBanky), 4, '0') + StrPadLeft(trim(AKonstantni),
      4, '0'), 10, '0');
    lcVariabilni := trim(AVariabilni);
    lcSpecificky := trim(ASpecificky);
    if DoplNulyVariabilni then
    begin
      lcVariabilni := StrPadLeft(lcVariabilni, 10, '0');
      lcSpecificky := StrPadLeft(lcSpecificky, 10, '0');
    end;

    lcRadek :=
      ConvertUcet(ACisloUctu) +
      ' ' +
      ConvertCastka(ACastka, 12) +
      ' ' +
      lcVariabilni +
      ' ' +
      lcKonstatni +
      ' ' +
      lcSpecificky;

    FPolozkyList.Add(lcRadek);
    result := true;
  except
    result := false;
  end;

end;

constructor TCustomExportObject.Create(
  AFileName: string;
  ADatDoklad, ADatSplatnost: TDateTime;
  AKlientNazev, AKlientCislo, AKlientUcet, AKlientBanka: string);
begin
  FFileName := AFileName;
  FOutputList := TStringList.Create;
  FPolozkyList := TStringList.Create;
  FSumaCastka := 0;
  FDatDokl := ADatDoklad;
  FDatSplatnost := ADatSplatnost;
  FKlientNazev := AKlientNazev;
  FKlientCislo := AKlientCislo;
  FKlientUcet := AKlientUcet;
  FKlientBanka := AKlientBanka;

end;

destructor TCustomExportObject.Destroy;
begin
  FOutputList.free;
  FPolozkyList.free;
  inherited Destroy;

end;

function TCustomExportObject.ExportToFile: boolean;
var
  I: Integer;
  lcWorkString: string;
begin
  try
    FOutputList.Clear;
    lcWorkString := GenUhl;
    FOutputList.Add(lcWorkString);
    lcWorkString := GenHlavicka;
    FOutputList.Add(lcWorkString);
    // Hlavicka skupiny
    lcWorkString :=
      '2' +
      ' ' +
      ConvertUcet(FKlientUcet) +
      ' ' +
      ConvertCastka(FSumaCastka, 14) +
      ' ' +
      MyDateToString(FDatSplatnost);

    FOutputList.Add(lcWorkString);
    for I := 0 to FPolozkyList.Count - 1 do // Iterate
    begin
      FOutputList.Add(FPolozkyList[i]);
    end; // for
    FOutputList.Add('3 +');
    FOutputList.Add('5 +');
    //FOutputList.Add(CRLF);

    FOutputList.SaveToFile(FFileName);
    result := true;
  except
    raise;
  end;

end;

function TCustomExportObject.GenHlavicka: string;
begin
  result := '';
  Result :=
    UpperCase(
      strTranslateStr(
        '1' +
        ' ' +
        '1501' + // Jedna se o prikaz
        ' ' +
        '000000' +
        ' ' +
        StrPadLeft(FKlientBanka, 4, '0')
       )
    );

end;

function TCustomExportObject.GenUhl: string;
begin
  result := '';
  result :=
    UpperCase(
    strTranslateStr(
    'UHL1' +
    MyDateToString(FDatDokl) +
    StrPadRight(FKlientNazev, 20, ' ') +
    StrPadLeft(FKlientCislo, 10, '0') +
    '000' +
    '000'
    )
    );
end;

procedure TCustomExportObject.SetDoplNulyVariabilni(
  const Value: boolean);
begin
  FDoplNulyVariabilni := Value;
end;

end.

