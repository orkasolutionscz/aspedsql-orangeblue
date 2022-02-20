{ 29.8.2003 0:53:51 (GMT+2:00) > [fait on ACER-K8Q02GA4AI] checked out /Konverze TBX }
{ 1.7.2003 22:29:09 (GMT+2:00) > [fait on YDNOTEBOOK] checked in Finalní verze }
{ -----------------------------------------------------------------------------
  Unit Name: _frmuSplash
  Author:    Fait
  Purpose:  Splash okno
  History:
  ----------------------------------------------------------------------------- }

{ 31.8.1999 23:51:21 > [Fait on FAIT] checked out /Opravy 31.08.99 }
unit _frmuSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, StdCtrls, ComCtrls, uCustomForms;

type
  TfrmSplash = class(TjfsDefaultForm)
    lbCopyright: TLabel;
    lbAppName: TLabel;
    msgLabel: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    lbVesion: TStaticText;
    lbAppName2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetMessage(Text: string);
  end;

function ShowSplash(aAppName: string; aAppNameNext: string): TfrmSplash;

implementation

{$R *.DFM}

uses uFileUtils;

function ShowSplash(aAppName: string; aAppNameNext: string): TfrmSplash;
begin
  Result := TfrmSplash.Create(Application);
  with Result do
  begin
    BorderIcons        := [];
    BorderStyle        := bsNone;
    ClientHeight       := 250;
    ClientWidth        := 360;
    lbVesion.Caption   := 'Verze ' + GetFileVersion;
    lbAppName.Caption  := aAppName;
    lbAppName2.Caption := aAppNameNext;
    Show;
    Update;
  end;
end;

procedure TfrmSplash.SetMessage(Text: string);
begin
  msgLabel.Visible := true;
  msgLabel.Caption := Text;
  Update;
end;

end.
