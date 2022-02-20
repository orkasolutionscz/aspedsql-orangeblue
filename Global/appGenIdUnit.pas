unit appGenIdUnit;

interface

uses
  DB
  , SysUtils
  , Classes
  , ComObj
  , JclStrings
  , synacode
  ;

type
  TGUIDFormat = (gfGUID22, gfGUID32, gfGUID36, gfGUID38);

  // generovani identifikatoru typu GUID22
function GenGUIDID22: string;
// generovani identifikatoru typu GUID v pozadovanem formatu
function CreateGUIDID(const cGUIDFormat: TGUIDFormat): string;

implementation

function CreateGUIDID(const cGUIDFormat: TGUIDFormat): string;
//var
//  RemoveCharsFromGUID: TSysCharSet;
const
  RemoveCharsFromGUID = ['{', '-', '}'];
begin
  Result := '';
  //RemoveCharsFromGUID := ['{', '-', '}'];
  case cGUIDFormat of
    gfGUID38: Result := CreateClassID;
    gfGUID36: Result := Copy(CreateGUIDID(gfGUID38), 2, 36);
    gfGUID32: Result := StrRemoveChars(CreateGUIDID(gfGUID38), ['{', '-', '}'] {RemoveCharsFromGUID});
    gfGUID22: Result := Copy(EncodeBase64(StrToHex(CreateGUIDID(gfGUID32))), 1, 22);
  end;
  if Length(Result) = 0 then
    raise Exception.Create('Error creating GUID string.');
end;

function GenGUIDID22: string;
begin
  result := CreateGUIDID(gfGUID22);
end;

end.
