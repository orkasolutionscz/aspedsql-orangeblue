unit uSysDocUtils;

interface
uses
  SysUtils, Controls;
   
function GetDocType(AFileName: string): integer;
// Funkce pro vzgenerovani adresare pro prilohy
function DocFileExist(AFileName: string): boolean;
// Funkce vytvoøí
function DOCGenPrilohaFileName(ASourceFile: string; var ADestFile:string; ADate:TDateTime): string;
//
function DocGetNewDir(ADaum: TDateTime): string;

const
  DOC_OLEOBJECT_OLE = 1;
  DOC_OLEOBJECT_PICT = 2;
  DOC_OLEOBJECT_WORD = 3;
  DOC_OLEOBJECT_PDF = 4;
  DOC_OLEOBJECT_XLS = 5;
  DOC_OLEOBJECT_OUTLOOKMSG = 6;
  DOC_OLEOBJECT_THUNDERMSG = 7;



implementation

uses JclDateTime, JclFileUtils, appGenIdUnit, appIniOptionsUnit;

function GetDocType(AFileName: string): integer;
var
  tmp: string;
begin
  tmp := ExtractFileExt(AFileName);
  if UpperCase(tmp) = '.PDF' then
    Result := DOC_OLEOBJECT_PDF
  else if UpperCase(tmp) = '.JPG' then
    Result := DOC_OLEOBJECT_PICT
  else if UpperCase(tmp) = '.MSG' then
    Result := DOC_OLEOBJECT_OUTLOOKMSG
  else if UpperCase(tmp) = '.DOC' then
    Result := DOC_OLEOBJECT_WORD
  else if UpperCase(tmp) = '.EML' then
    Result := DOC_OLEOBJECT_THUNDERMSG
  else
    Result := DOC_OLEOBJECT_OLE;
end;

function DocFileExist(AFileName: string): boolean;
begin
  if AFileName = EmptyStr then
    Result := False
  else
    Result := FileExists( AFileName );
end;

function DOCGenPrilohaFileName(ASourceFile: string; var ADestFile:string; ADate:TDateTime): string;
var
  NewExt: string;
begin
  // if not FileExists(ASourceFile) then exit;
  // Zjistime si extenzi
  NewExt := ExtractFileExt(ASourceFile);
  // Soubor pro uloyeni do DB. Neukladame celou cestu jen to co je mimo
  // defoault
  Result := DocGetNewDir(ADate) + CreateGUIDID(gfGUID32) + NewExt;
  ADestFile := PathAppend(IniOptions.SetDocFolder, Result);
end;

function DocGetNewDir(ADaum: TDateTime): string;
var
  arok, amonth, aday: word;
begin
  // Rozkodujeme si datum
  DecodeDate(ADaum, arok, amonth, aday);

  Result := EmptyStr;
  Result := PathAddSeparator(PathAppend(Result, FloatToStr(arok)));
  Result := PathAddSeparator(PathAppend(Result, FloatToStr(amonth)));
  Result := PathAddSeparator(PathAppend(Result, FloatToStr(aday)));
    { Funkce vrati napr:
     ADtum = 19.7.2009

     result := 2009\18\7\

     ForceDirectories(Result);
    }
end;

end.
