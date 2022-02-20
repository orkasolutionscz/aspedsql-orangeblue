unit appIniOptionsUnit;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniSetSection = 'Set';
  csIniFieldList  = 'Fields list';
  { Section: Set }
  csIniSetRegAppName    = 'RegAppName ';
  csIniSetWorkData      = 'WorkData ';
  csIniSetReportFolder  = 'ReportFolder ';
  csIniSetArchiveDb     = 'ArchiveDb ';
  csIniSetDocFolder     = 'DokumentySlozka';
  csIniStatiskyTypDatum = 'Typ data statisktiky';
  csIniXMLSkodaSection  = 'SKODA Auto export';

  appIniFileName = 'aspedsqlset.ini';

  DEF_REG_APPNAME = 'SOFTWARE\FAIT Software\ASPED SQL\Startup\';

type
  TIniOptions = class(TObject)
  private
    { Section: Set }
    FSetRegAppName  : string;
    FSetWorkData    : string;
    FSetReportFolder: string;
    FSetArchiveDb   : string;
    // FSetBackupFolder: string;
    FSetDocFolder           : string;
    FStatiskyTypDatum       : Integer;
    FsePartCode             : string;
    FsePaymentTermsType     : string;
    FsePartCodeIssuerSkoda  : string;
    FsePartTypeCodeSkoda    : string;
    FsePartCodeIssuer       : string;
    FsePartTypeCode         : string;
    FsePartCodeSkoda        : string;
    FseStatusKod            : string;
    FseExportFolder         : string;
    FseTRACode              : string;
    FsePartCodeLocationSkoda: string;
    // FUseFastReport: string;
    function MyReadString(aIniFile: TIniFile; aSection, aValueName, aDefaultValue: string): string;
    function MyReadInteger(aIniFile: TIniFile; aSection, aValueName: string; aDefaultValue: Integer): Integer;

    procedure LoadSettings(Ini: TIniFile);
    procedure SaveSettings(Ini: TIniFile);

    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);
    function GetDocFolder: string;
    function GetReportFolder: string;
    function GetWorkData: string;
    function GetseExportFolder: string;
  public
    constructor Create;
    procedure LoadValues;
    procedure SaveValues;
    { Section: Set }
    property SetRegAppName: string read FSetRegAppName write FSetRegAppName;
    // Cesta k pracovni databazi
    property SetWorkData: string read GetWorkData write FSetWorkData;
    // Cesta k sestavam
    property SetReportFolder: string read GetReportFolder write FSetReportFolder;
    // Cesta k archivni databazi
    property SetArchiveDb: string read FSetArchiveDb write FSetArchiveDb;
    // Cesta k zaloham
    // property SetBackupFolder: string read FSetBackupFolder write FSetBackupFolder;
    // Cesta k zaloham
    property SetDocFolder: string read GetDocFolder write FSetDocFolder;
    property StatiskyTypDatum: Integer read FStatiskyTypDatum write FStatiskyTypDatum;
    // XML Skoda Auto
    property sePartTypeCode: string read FsePartTypeCode write FsePartTypeCode;
    property sePartCode: string read FsePartCode write FsePartCode;
    property sePartCodeIssuer: string read FsePartCodeIssuer write FsePartCodeIssuer;
    property sePartCodeSkoda: string read FsePartCodeSkoda write FsePartCodeSkoda;
    property sePartTypeCodeSkoda: string read FsePartTypeCodeSkoda write FsePartTypeCodeSkoda;
    property sePartCodeIssuerSkoda: string read FsePartCodeIssuerSkoda write FsePartCodeIssuerSkoda;
    property sePartCodeLocationSkoda: string read FsePartCodeLocationSkoda write FsePartCodeLocationSkoda;
    property sePaymentTermsType: string read FsePaymentTermsType write FsePaymentTermsType;
    property seStatusKod: string read FseStatusKod write FseStatusKod;
    property seExportFolder: string read GetseExportFolder write FseExportFolder;
    property seTRACode: string read FseTRACode write FseTRACode;

  end;

var
  IniOptions: TIniOptions = nil;

implementation

uses
  fMessageDlg, JclFileUtils;

function TIniOptions.MyReadString(aIniFile: TIniFile; aSection, aValueName, aDefaultValue: string): string;
begin
  result := aIniFile.ReadString(aSection, aValueName, '');
  if result = '' then
  begin
    result := aDefaultValue;
    aIniFile.WriteString(aSection, aValueName, result);
  end;
end;

function TIniOptions.MyReadInteger(aIniFile: TIniFile; aSection, aValueName: string; aDefaultValue: Integer): Integer;
begin
  result := aIniFile.ReadInteger(aSection, aValueName, -999);
  if result = -999 then
  begin
    result := aDefaultValue;
    aIniFile.WriteInteger(aSection, aValueName, result);
  end;
end;

procedure TIniOptions.LoadSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    { Section: Set }
    FSetRegAppName    := MyReadString(Ini, csIniSetSection, csIniSetRegAppName, DEF_REG_APPNAME);
    FSetWorkData      := MyReadString(Ini, csIniSetSection, csIniSetWorkData, ' localhost:aspedsql');
    FSetReportFolder  := MyReadString(Ini, csIniSetSection, csIniSetReportFolder, ' Sestavy\');
    FSetArchiveDb     := MyReadString(Ini, csIniSetSection, csIniSetArchiveDb, ' localhost:aspedsqlarch');
    FSetDocFolder     := MyReadString(Ini, csIniSetSection, csIniSetDocFolder, ' Dokumenty\');
    FStatiskyTypDatum := MyReadInteger(Ini, csIniSetSection, csIniStatiskyTypDatum, 0);
    { Section Skoda }
    FsePartCode            := MyReadString(Ini, csIniXMLSkodaSection, 'PartCode', FsePartCode);
    FsePartTypeCode        := MyReadString(Ini, csIniXMLSkodaSection, 'PartTypeCode', FsePartTypeCode);
    FsePartCodeIssuer      := MyReadString(Ini, csIniXMLSkodaSection, 'PartCodeIssuer', FsePartCodeIssuer);
    FsePartCodeSkoda       := MyReadString(Ini, csIniXMLSkodaSection, 'PartCodeSkoda', FsePartCodeSkoda);
    FsePartTypeCodeSkoda   := MyReadString(Ini, csIniXMLSkodaSection, 'PartTypeCodeSkoda', FsePartTypeCodeSkoda);
    FsePartCodeIssuerSkoda := MyReadString(Ini, csIniXMLSkodaSection, 'PartCodeIssuerSkoda', FsePartCodeIssuerSkoda);
    FsePaymentTermsType    := MyReadString(Ini, csIniXMLSkodaSection, 'PaymentTermsType', FsePaymentTermsType);
    FseStatusKod           := MyReadString(Ini, csIniXMLSkodaSection, 'Status kod', FseStatusKod);
    FseTRACode             := MyReadString(Ini, csIniXMLSkodaSection, 'TRA kod', FseTRACode);
    FseExportFolder        := MyReadString(Ini, csIniXMLSkodaSection, 'Cesta k exportnim davkam', FseExportFolder);

  end;
end;

procedure TIniOptions.SaveSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    { Section: Set }
    Ini.WriteString(csIniSetSection, csIniSetRegAppName, FSetRegAppName);
    Ini.WriteString(csIniSetSection, csIniSetWorkData, FSetWorkData);
    Ini.WriteString(csIniSetSection, csIniSetReportFolder, FSetReportFolder);
    Ini.WriteString(csIniSetSection, csIniSetArchiveDb, FSetArchiveDb);
    Ini.WriteString(csIniSetSection, csIniSetDocFolder, FSetDocFolder);
    Ini.WriteInteger(csIniSetSection, csIniStatiskyTypDatum, FStatiskyTypDatum);
    { Section Skoda }
    Ini.WriteString(csIniXMLSkodaSection, 'PartCode', FsePartCode);
    Ini.WriteString(csIniXMLSkodaSection, 'PartTypeCode', FsePartTypeCode);
    Ini.WriteString(csIniXMLSkodaSection, 'PartCodeIssuer', FsePartCodeIssuer);
    Ini.WriteString(csIniXMLSkodaSection, 'PartCodeSkoda', FsePartCodeSkoda);
    Ini.WriteString(csIniXMLSkodaSection, 'PartTypeCodeSkoda', FsePartTypeCodeSkoda);
    Ini.WriteString(csIniXMLSkodaSection, 'PartCodeIssuerSkoda', FsePartCodeIssuerSkoda);
    Ini.WriteString(csIniXMLSkodaSection, 'PaymentTermsType', FsePaymentTermsType);
    Ini.WriteString(csIniXMLSkodaSection, 'Status kod', FseStatusKod);
    Ini.WriteString(csIniXMLSkodaSection, 'TRA kod', FseTRACode);
    Ini.WriteString(csIniXMLSkodaSection, 'Cesta k exportnim davkam', FseExportFolder);
  end;
end;

procedure TIniOptions.LoadFromFile(const FileName: string);
var
  Ini: TIniFile;
begin
  if FileExists(FileName) then
  begin
    Ini := TIniFile.Create(FileName);
    try
      LoadSettings(Ini);
    finally
      Ini.Free;
    end;
  end;
end;

procedure TIniOptions.SaveToFile(const FileName: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FileName);
  try
    SaveSettings(Ini);
  finally
    Ini.Free;
  end;
end;

procedure TIniOptions.LoadValues;
var
  aName: string;
begin
  aName := ExtractFilePath(Application.ExeName) + appIniFileName;
  if not FileExists(aName) then
    SaveToFile(aName)
  else
    LoadFromFile(aName);
end;

procedure TIniOptions.SaveValues;
begin
  SaveToFile(ExtractFilePath(Application.ExeName) + appIniFileName);
end;

function TIniOptions.GetDocFolder: string;
begin
  try
    if (FSetDocFolder = EmptyStr) or (not DirectoryExists(FSetDocFolder)) then
      FSetDocFolder := ExtractFilePath(Application.ExeName) + 'docs';

    if not DirectoryExists(FSetDocFolder) then
      ForceDirectories(FSetDocFolder);
  except

  end;
  result := FSetDocFolder;

end;

function TIniOptions.GetReportFolder: string;
begin
  try
    if (FSetReportFolder = EmptyStr) or (not DirectoryExists(FSetReportFolder)) then
      FSetReportFolder := ExtractFilePath(Application.ExeName) + 'sestavy';

    if not DirectoryExists(FSetReportFolder) then
      ForceDirectories(FSetReportFolder);
  except

  end;
  result := FSetReportFolder;
end;

function TIniOptions.GetseExportFolder: string;
begin
  try
    if (FseExportFolder = EmptyStr) or (not DirectoryExists(FseExportFolder)) then
      FseExportFolder := ExtractFilePath(Application.ExeName);

    if not DirectoryExists(FseExportFolder) then
      ForceDirectories(FseExportFolder);
  except

  end;
  result := FseExportFolder;
end;

function TIniOptions.GetWorkData: string;
begin
  result := FSetWorkData;
end;

constructor TIniOptions.Create;
begin
  inherited Create;
  FSetRegAppName          := DEF_REG_APPNAME;
  FSetWorkData            := 'localhost:' + ExtractFilePath(Application.ExeName) + 'data\aspedsql.fdb';
  FSetReportFolder        := ExtractFilePath(Application.ExeName) + 'sestavy';
  FStatiskyTypDatum       := 0; // Datum porizeni 1- datum nakladky
  FsePartTypeCode         := 'SE';
  FsePartCode             := '123456';
  FsePartCodeIssuer       := '91';
  FsePartCodeSkoda        := 'SKODA';
  sePartCodeLocationSkoda := 'SKOTRANS';
  FsePartTypeCodeSkoda    := 'BY';
  FsePartCodeIssuerSkoda  := '92';
  FsePaymentTermsType     := '1';
  FseStatusKod            := '';
  FseExportFolder         := '';
  FseTRACode              := '';
end;

initialization

IniOptions := TIniOptions.Create;
IniOptions.LoadValues;

finalization

IniOptions.Free;

end.
