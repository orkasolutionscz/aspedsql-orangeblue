unit appReportUtils;

interface

function repGetReportIniFile: string;

{ Funkce pro nacteni slozky sestav z registru }
// function repGetReportFolder: string;
{ Funkce pro zapis slozky sestav do registru }
// procedure repSetReportFolder(AFolder: string);

function repGetDefaultReport(AReportFolder: string): string;
procedure repSetDefaultReport(AReportFolder: string; AValue: string);

var
  REP_INIFILENAME: string;

implementation

uses
  jclregistry,
  IniFiles,
  SysUtils,
  forms;

const
  RV_DEFAULTREPORT  = 'Výchozi sestava';
  SGLB_REGISTRY_KEY = 'SOFTWARE\LMSS\ORKAM3';
  REG_CESTA_SESTAVY = SGLB_REGISTRY_KEY + '\SET\Tiskovy manazer';

function repGetReportIniFile: string;
begin
  Result := ExtractFilePath(Application.ExeName) + 'reports.ini';
end;

function repGetDefaultReport(AReportFolder: string): string;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(repGetReportIniFile);
  try
    Result := Ini.ReadString(AReportFolder, RV_DEFAULTREPORT, '');
  finally
    Ini.Free;
  end;
end;

procedure repSetDefaultReport(AReportFolder: string; AValue: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(repGetReportIniFile);
  try
    { ukladame pouze nazev reportu, ne cestu }
    Ini.WriteString(AReportFolder, RV_DEFAULTREPORT, AValue);
  finally
    Ini.Free;
  end;
end;

end.
