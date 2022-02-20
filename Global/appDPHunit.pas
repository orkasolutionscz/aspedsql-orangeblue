unit appDPHunit;

interface

uses
  Controls
  , Sysutils;
  
procedure appGetDPHSazba(ADatum: TDate; var RDPHZakl, RDPHSniz: Integer);

var
  dphsazbazakladni: integer = 20;
  dphsazbasnizena: integer = 10;

implementation

procedure appGetDPHSazba(ADatum: TDate; var RDPHZakl, RDPHSniz: Integer);
begin
  RDPHSniz := 10;
  RDPHZakl := 20;
  try
    if (ADatum >= EncodeDate(2013,1,1)) then
    begin
      RDPHSniz := 15;
      RDPHZakl := 21;
    end
    else
    if (ADatum >= EncodeDate(2002,1,1)) and (ADatum <= EncodeDate(2004,12,31)) then
    begin
      RDPHSniz := 5;
      RDPHZakl := 22;
    end
    else if (ADatum >= EncodeDate(2005,1,1)) and (ADatum <= EncodeDate(2007,12,31)) then
    begin
      RDPHSniz := 5;
      RDPHZakl := 19;
    end
    else if (ADatum >= EncodeDate(2008, 1,1)) and (ADatum <= EncodeDate(2009,12,31)) then
    begin
      RDPHSniz := 9;
      RDPHZakl := 19;
    end
    else if (ADatum >= EncodeDate(2010,1,1)) and (ADatum <= EncodeDate(2011,12,31)) then
    begin
      RDPHSniz := 10;
      RDPHZakl := 20;
    end
    else
    if (ADatum >= EncodeDate(2012,1,1)) and (ADatum <= EncodeDate(2012,12,31)) then
    begin
      RDPHSniz := 14;
      RDPHZakl := 20;
    end
  except

  end;
end;

initialization
  appGetDPHSazba(Date,dphsazbazakladni,dphsazbasnizena);
  
end.

