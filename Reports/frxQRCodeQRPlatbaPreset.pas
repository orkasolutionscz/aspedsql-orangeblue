unit frxQRCodeQRPlatbaPreset;

// https://qr-platba.cz/pro-vyvojare/specifikace-formatu/

interface

{$I frx.inc}

uses
  System.SysUtils, System.Classes, System.Variants, System.TypInfo,
  frxClass, frxBarcode2D;

type
  TfrxQRPlatbaPreset = class(TfrxCustomObjectPreset)
  private
    FSaveErrorLevels: Integer;
    FSaveMarker: Boolean;
    FSaveShowText: Boolean;
  private
    FBIC: string;
    FIBAN: string;
    FMena: string;
    FBIC2: string;
    FBIC1: string;
    FIBAN2: string;
    FSpecifickySymbol: string;
    FIBAN1: string;
    FCastka: string;
    FDatumSplatnosti: string;
    FVariabilniSymbol: string;
    FPrijemce: string;
    FReference: string;
    FZpravaProPrijemce: string;
    FKontrolniSoucet: boolean;
    FCisloUctu: string;
    FKodBanky: string;
    FCisloUctu1: string;
    FKodBanky1: string;
    FCisloUctu2: string;
    FKodBanky2: string;
  protected
    function Encode(const AText: string): string;
    function GetRawValue(const AReport: TfrxReport;
      const AFileld: string): string;
    function GetValue(const AReport: TfrxReport; const AFileld: string;
      const AMaxLength: Word): string; overload;
    function GetValue(const AReport: TfrxReport; const AFileld: string;
      const APredicate: TFunc<string, boolean>): string; overload;
    function GetValue(const AReport: TfrxReport; const AFileld: string;
      const AModify: TFunc<string, string>): string; overload;
  public
    constructor Create; override;
  public
    function GetData(AReport: TfrxReport): string; override;
    procedure ApplySettings(aComponent: TfrxComponent); override;
    procedure SaveComponentState(aComponent: TfrxComponent); override;
    procedure RestoreComponentState(aComponent: TfrxComponent); override;
  published
    //povinné
    property IBAN: string read FIBAN write FIBAN;
    property CisloUctu: string read FCisloUctu write FCisloUctu;
    property KodBanky: string read FKodBanky write FKodBanky;
    property BIC: string read FBIC write FBIC;
    //ostatní
    property IBAN1: string read FIBAN1 write FIBAN1;
    property CisloUctu1: string read FCisloUctu1 write FCisloUctu1;
    property KodBanky1: string read FKodBanky1 write FKodBanky1;
    property BIC1: string read FBIC1 write FBIC1;
    property IBAN2: string read FIBAN2 write FIBAN2;
    property CisloUctu2: string read FCisloUctu2 write FCisloUctu2;
    property KodBanky2: string read FKodBanky2 write FKodBanky2;
    property BIC2: string read FBIC2 write FBIC2;
    property Castka: string read FCastka write FCastka;
    property Mena: string read FMena write FMena;
    property Reference: string read FReference write FReference;
    property Prijemce: string read FPrijemce write FPrijemce;
    property DatumSplatnosti: string read FDatumSplatnosti write FDatumSplatnosti;
    property ZpravaProPrijemce: string read FZpravaProPrijemce write FZpravaProPrijemce;
    //rozšíøené
    property VariabilniSymbol: string read FVariabilniSymbol write FVariabilniSymbol;
    property SpecifickySymbol: string read FSpecifickySymbol write FSpecifickySymbol;
  published
    property KontrolniSoucet: boolean
      read FKontrolniSoucet write FKontrolniSoucet default true;
  end;

  TIBAN = class
    class function GetIBAN(APredcisli, ACisloUctu, AKodBanky: string;
      const AZeme: string='CZ'): string;
    class function GetIBANCZ(const ACisloUctu, AKodBanky: string): string; overload;
    class function GetIBANCZ(const ACisloUctu: string): string; overload;
  end;

implementation

uses
  System.Character, System.RegularExpressions,  frxUtils,
  frx2DBarcodesPresets, frxBarcodeProperties, frxDelphiZXingQRCode;

{ TfrxQRPlatbaPreset }

procedure TfrxQRPlatbaPreset.ApplySettings(aComponent: TfrxComponent);
var
  Props: TfrxQRProperties;
begin
  if (aComponent is TfrxBarcode2DView) and (TfrxBarcode2DView(aComponent).BarType = bcCodeQR)
  then begin
    Props := TfrxQRProperties(TfrxBarcode2DView(aComponent).BarProperties);
    Props.ErrorLevels := ecM;
    Props.GraphicMarker.ShowGraphicMarker := False;
    TfrxBarcode2DView(aComponent).ShowText := False;
  end;
end;

constructor TfrxQRPlatbaPreset.Create;
begin
  inherited;

  FKontrolniSoucet:=true;
end;

function TfrxQRPlatbaPreset.GetData(AReport: TfrxReport): string;
  function MakePair(const AKey, AValue: string): string;
  begin
    if AValue = '' then
      Result:=''
    else
      Result:='*'+AKey+':'+AValue;
  end;

  function GetIBAN(const AIBAN, ACisloUctu, AKodBanky: string): string;
  begin
    if AIBAN = '' and (not ACisloUctu = '')
    then begin
      if ACisloUctu.Chars[0].IsLetter and ACisloUctu.Chars[1].IsLetter
        and ACisloUctu.Chars[2].IsNumber and ACisloUctu.Chars[3].IsNumber
      then begin //v èísle úètu je IBAN
        Result:=ACisloUctu.Substring(0, 24);
      end
      else if ACisloUctu.Contains('/') then
        Result:=TIBAN.GetIBANCZ(ACisloUctu.Substring(0, 22))
      else
        Result:=
          TIBAN.GetIBANCZ(ACisloUctu.Substring(0, 17), AKodBanky.Substring(0, 4));
    end else begin
      Result:=AIBAN;
    end;
  end;
  function GetBIC(const ABIC, AKodBanky: string): string;
  var
    dummy: cardinal;
  begin
    if ABIC.IsEmpty and (not AKodBanky.IsEmpty)
    then begin
      if (AKodBanky.Length>4) and not TryStrToUInt(AKodBanky, dummy)
      then //v kódu banky je BIC
        Result:=AKodBanky
      else
        Result:='';
    end
    else
      Result:=ABIC;
  end;

var
  cCRC32: Cardinal;
begin
  var sIBAN:=
    GetIBAN(GetValue(aReport, IBAN, 24), GetValue(aReport, CisloUctu, 24),
      GetValue(aReport, KodBanky, 4));
  var sBIC:=GetBIC(GetValue(aReport, BIC, 11), GetValue(aReport, KodBanky, 11));
  var sIBAN1:=
    GetIBAN(GetValue(AReport, IBAN1, 24), GetValue(aReport, CisloUctu1, 24),
      GetValue(aReport, KodBanky1, 4));
  var sIBAN2:=
    GetIBAN(GetValue(AReport, IBAN2, 24), GetValue(aReport, CisloUctu2, 24),
      GetValue(aReport, KodBanky2, 4));
  var sBIC1:=GetBIC(GetValue(AReport, BIC1, 11), GetValue(aReport, KodBanky1, 11));
  var sBIC2:=GetBIC(GetValue(AReport, BIC2, 11), GetValue(aReport, KodBanky2, 11));
  var sCastka:=GetValue(aReport, Castka,
    function(AValue: string): string
    var
      C: Currency;
      SS: ShortString;
    begin
      if TryStrToCurr(AValue, C, TFormatSettings.Create) and (C < 10000000)
      then begin
        Str(C: 2: 2, SS);
        Result:=string(SS);
      end else begin
        Result:='';
      end;
    end);
  var sMena:=GetValue(AReport, Mena,
    function(AValue: string): boolean
    begin
      Result:=Length(AValue)=3;
    end);
  var sReference:=GetValue(AReport, Reference,
    function(AValue: string): boolean
    begin
      Result:=TRegEx.IsMatch(AValue, '[0-9]{0,16}');
    end);
  var sPrijemce:=GetValue(AReport, Prijemce,
    function(AValue: string): string
    begin
      Result:=AValue.Substring(0, 35);
    end);
  var sDatumSplatnosti:=GetValue(AReport, DatumSplatnosti,
    function(AValue: string): string
    var
      D: TDateTime;
    begin
      if TryStrToDate(AValue, D, TFormatSettings.Create) then
        Result:=FormatDateTime('yyyymmdd', D, TFormatSettings.Create)
      else
        Result:='';
    end);
  var sZpravaProPrijemce:=GetValue(AReport, ZpravaProPrijemce,
    function(AValue: string): string
    begin
      Result:=AValue.Substring(0, 60);
    end);
  var sVS:=GetValue(AReport, VariabilniSymbol,
    function(AValue: string): boolean
    begin
      Result:=TRegEx.IsMatch(AValue, '[0-9]{0,10}');
    end);
  var sSS:=GetValue(AReport, SpecifickySymbol,
    function(AValue: string): boolean
    begin
      Result:=TRegEx.IsMatch(AValue, '[0-9]{0,10}');
    end);

  if not sBIC.IsEmpty then
    sIBAN:=sIBAN+'+'+sBIC;
  if not (sIBAN1.IsEmpty or sBIC1.IsEmpty) then
    sIBAN1:=sIBAN1+'+'+sBIC1;
  if not (sIBAN2.IsEmpty or sBIC2.IsEmpty) then
    sIBAN2:=sIBAN2+'+'+sBIC1;
  if not (sIBAN1.IsEmpty or sIBAN2.IsEmpty) then
    sIBAN1:=string.Join(',', [sIBAN1, sIBAN2])
  else if sIBAN1.IsEmpty and (not sIBAN2.IsEmpty) then
    sIBAN1:=sIBAN2;

  Result:='SPD*1.0';
  //nutno seøadit podle klíèe, aby bylo možno spoèítat kontrolní souèet
  Result:=Result+MakePair('ACC', sIBAN);
  Result:=Result+MakePair('ALT-ACC', sIBAN1);
  Result:=Result+MakePair('AM', sCastka);
  Result:=Result+MakePair('CC', sMena);
  Result:=Result+MakePair('DT', sDatumSplatnosti);
  Result:=Result+MakePair('MSG', sZpravaProPrijemce);
  Result:=Result+MakePair('RF', sReference);
  Result:=Result+MakePair('RN', sPrijemce);
  Result:=Result+MakePair('X-SS', sSS);
  Result:=Result+MakePair('X-VS', sVS);

  if KontrolniSoucet then begin
    var SS:=TStringStream.Create(Result);
    try
      SS.Position:=0;
      cCRC32:=frxStreamCRC32(SS);
    finally
      SS.Free;
    end;
    Result:=Result+'*CRC32:'+IntToHex(cCRC32);
  end;
end;

procedure TfrxQRPlatbaPreset.RestoreComponentState(
  aComponent: TfrxComponent);
var
  Props: TfrxQRProperties;
begin
  if (aComponent is TfrxBarcode2DView) and (TfrxBarcode2DView(aComponent).BarType = bcCodeQR) then
  begin
    Props := TfrxQRProperties(TfrxBarcode2DView(aComponent).BarProperties);
    Props.ErrorLevels := TQRErrorLevels(Byte(FSaveErrorLevels));
    Props.GraphicMarker.ShowGraphicMarker := FSaveMarker;
    TfrxBarcode2DView(aComponent).ShowText := FSaveShowText;
  end;
end;

procedure TfrxQRPlatbaPreset.SaveComponentState(aComponent: TfrxComponent);
var
  Props: TfrxQRProperties;
begin
  if (aComponent is TfrxBarcode2DView) and (TfrxBarcode2DView(aComponent).BarType = bcCodeQR) then
  begin
    Props := TfrxQRProperties(TfrxBarcode2DView(aComponent).BarProperties);
    FSaveErrorLevels := ord(Props.ErrorLevels);
    FSaveMarker := Props.GraphicMarker.ShowGraphicMarker;
    FSaveShowText := TfrxBarcode2DView(aComponent).ShowText;
  end;
end;

function TfrxQRPlatbaPreset.Encode(const AText: string): string;
begin
  Result:=TEncoding.GetEncoding(20127).GetString(
        TEncoding.ASCII.GetBytes(AText));
  Result:=
    TNetEncoding.URL.Encode(Result, [], [TURLEncoding.TEncodeOption.EncodePercent])
    //mezera je povolená
    .Replace('%20', ' ', [rfReplaceAll]).ToUpper;
end;

function TfrxQRPlatbaPreset.GetRawValue(const AReport: TfrxReport;
  const AFileld: string): string;
begin
  if Assigned(AReport) and (AFileld <> '') then
    Result:=VarToStr(aReport.Calc(aFileld))
  else
    Result:='';
end;

function TfrxQRPlatbaPreset.GetValue(const AReport: TfrxReport;
  const AFileld: string; const AMaxLength: Word): string;
begin
  Result:=GetRawValue(AReport, AFileld);
  if not Result.IsEmpty then
    Result:=Encode(Result.SubString(0, AMaxLength));
end;

function TfrxQRPlatbaPreset.GetValue(const AReport: TfrxReport;
  const AFileld: string; const APredicate: TFunc<string, boolean>): string;
begin
  Result:=GetRawValue(AReport, AFileld);
  if not Result.IsEmpty then begin
    if Assigned(APredicate) and APredicate(Result) then
      Result:=Encode(Result)
    else
      Result:='';
  end;
end;

function TfrxQRPlatbaPreset.GetValue(const AReport: TfrxReport;
  const AFileld: string; const AModify: TFunc<string, string>): string;
begin
  Result:=GetRawValue(AReport, AFileld);

  if Assigned(AModify) then
    Result:=AModify(Result);
  Result:=Encode(Result);
end;

{ TIBAN }

class function TIBAN.GetIBAN(APredcisli, ACisloUctu, AKodBanky: string;
  const AZeme: string): string;
begin
  APredcisli:=string.Create('0', 6-APredcisli.Length)+APredcisli;
  ACisloUctu:=string.Create('0', 10-ACisloUctu.Length)+ACisloUctu;
  Result:=AKodBanky+APredcisli+ACisloUctu+AZeme;
  for var i:=ord('A') to ord('Z') do //A - 10, B - 11, ...
    Result:=Result.Replace(Chr(i), (i-55).ToString, [rfReplaceAll]);
  Result:=Result+'00';
  var zbytek:=0;
  var p:=0;
  while p<Result.Length do begin
    zbytek:=(zbytek.ToString+Result.Substring(p, 8)).ToInt64 mod 97;
    Inc(p, 8);
  end;
  zbytek:=98-zbytek;
  Result:=AZeme+string.Create('0', 2-zbytek.ToString.Length)+zbytek.ToString
    +AKodBanky+APredcisli+ACisloUctu;
end;

class function TIBAN.GetIBANCZ(const ACisloUctu, AKodBanky: string): string;
begin
  Result:=GetIBANCZ(ACisloUctu+'/'+AKodBanky);
end;

class function TIBAN.GetIBANCZ(const ACisloUctu: string): string;
var
  sPredcisli, sCislo, sKod: string;
begin
  sCislo:=ACisloUctu.Substring(0, ACisloUctu.IndexOf('/'));
  sKod:=ACisloUctu.Substring(ACisloUctu.IndexOf('/')+1);
  if sCislo.Contains('-') then begin
    sPredcisli:=sCislo.Substring(0, sCislo.IndexOf('-'));
    sCislo:=sCislo.Substring(sCislo.IndexOf('-')+1);
  end;
  Result:=GetIBAN(sPredcisli, sCislo, sKod, 'CZ');
end;

initialization
  RegisterClasses([TfrxQRPlatbaPreset]);
  frxBarcode2DPresetList.Add(TfrxQRPlatbaPreset);
end.
