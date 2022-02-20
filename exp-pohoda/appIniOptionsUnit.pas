unit appIniOptionsUnit;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniSetSection       = 'Set';
  csIniFieldList        = 'Fields list';
  {Section: Set}
  csIniSetRegAppName    = 'RegAppName ';
  csIniSetWorkData      = 'WorkData ';
  csIniSetReportFolder  = 'ReportFolder ';
  csIniSetArchiveDb     = 'ArchiveDb ';
  csIniSetDocFolder     = 'DokumentySlozka';

  appIniFileName        = 'aspedsqlset.ini';


  DEF_REG_APPNAME       = 'SOFTWARE\FAIT Software\ASPED SQL\Startup\';

type
  TIniOptions = class(TObject)
  private
    {Section: Set}
    FSetRegAppName: string;
    FSetWorkData: string;
    FSetReportFolder: string;
    FSetArchiveDb: string;
    //FSetBackupFolder: string;
    FSetDocFolder: string;
    //FUseFastReport: string;
    function MyReadString(aIniFile:TIniFile; aSection, aValueName, aDefaultValue:string):string;

    procedure LoadSettings(Ini: TIniFile);
    procedure SaveSettings(Ini: TIniFile);

    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);
    function GetDocFolder: string;
    function GetReportFolder: string;
    function GetWorkData: string;
  public
    constructor Create;
    procedure LoadValues;
    procedure SaveValues;
    {Section: Set}
    property SetRegAppName: string read FSetRegAppName write FSetRegAppName;
    // Cesta k pracovni databazi
    property SetWorkData: string read GetWorkData write FSetWorkData;
    // Cesta k sestavam
    property SetReportFolder: string read GetReportFolder write FSetReportFolder;
    // Cesta k archivni databazi
    property SetArchiveDb: string read FSetArchiveDb write FSetArchiveDb;
    // Cesta k zaloham
    //property SetBackupFolder: string read FSetBackupFolder write FSetBackupFolder;
    // Cesta k zaloham
    property SetDocFolder: string read GetDocFolder write FSetDocFolder;
    // Typ tiskovych sestav
  end;

var
  IniOptions: TIniOptions = nil;

implementation
uses
  fMessageDlg, JclFileUtils;

function TIniOptions.MyReadString(aIniFile:TIniFile; aSection, aValueName, aDefaultValue:string):string;
begin
  result      := aIniFile.ReadString(aSection, aValueName, '');
  if Result = ''  then
  begin
    Result      := aDefaultValue;
    aIniFile.WriteString(aSection,aValueName,Result);
  end;
end;


procedure TIniOptions.LoadSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: Set}
    FSetRegAppName      := MyReadString(Ini, csIniSetSection, csIniSetRegAppName, DEF_REG_APPNAME);
    FSetWorkData        := MyReadString(Ini, csIniSetSection, csIniSetWorkData, ' data\asped50.mdb');
    FSetReportFolder    := MyReadString(Ini, csIniSetSection, csIniSetReportFolder, ' Sestavy\');
    FSetArchiveDb       := MyReadString(Ini, csIniSetSection, csIniSetArchiveDb, ' Archiv\asped50arch.mdb');
    //FSetBackupFolder := Ini.ReadString(csIniSetSection, csIniSetBackupFolder, ' Zalohy\');
    FSetDocFolder       := MyReadString(Ini, csIniSetSection, csIniSetDocFolder, ' Dokumenty\');
  end;
end;

procedure TIniOptions.SaveSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: Set}
    Ini.WriteString(csIniSetSection, csIniSetRegAppName, FSetRegAppName);
    Ini.WriteString(csIniSetSection, csIniSetWorkData, FSetWorkData);
    Ini.WriteString(csIniSetSection, csIniSetReportFolder, FSetReportFolder);
    Ini.WriteString(csIniSetSection, csIniSetArchiveDb, FSetArchiveDb);
    //Ini.WriteString(csIniSetSection, csIniSetBackupFolder, FSetBackupFolder);
    Ini.WriteString(csIniSetSection, csIniSetDocFolder, FSetDocFolder);
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
  aName:string;
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
  Result := FSetDocFolder;

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
  Result := FSetReportFolder;
end;

function TIniOptions.GetWorkData: string;
begin
  Result := FSetWorkData;
end;

constructor TIniOptions.Create;
begin
  inherited Create;
  FSetRegAppName   := DEF_REG_APPNAME;
  FSetWorkData     := 'localhost:' + ExtractFilePath(Application.ExeName) + 'data\aspedsql.fdb';
  FSetReportFolder := ExtractFilePath(Application.ExeName) + 'sestavy';
end;

initialization
  IniOptions := TIniOptions.Create;
  IniOptions.LoadValues;

finalization
  IniOptions.Free;

end.



