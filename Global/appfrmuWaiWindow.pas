unit appfrmuWaiWindow;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, uCustomForms;

type
  TappfrmWaiWindow = class(TjfsDefaultForm)
    Shape1: TShape;
    lbTitle: TLabel;
    Shape2: TShape;
    lbStatus: TLabel;
    Label3: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure SetMessage(Text: string);
  end;

function lmssShowWait(ATitle: string; aMessage: string): TappfrmWaiWindow;

implementation

{$R *.DFM}

function lmssShowWait(ATitle: string; aMessage: string): TappfrmWaiWindow;
begin
  Result := TappfrmWaiWindow.Create(Application);
  with Result do
  begin
    // BorderIcons := [];
    // BorderStyle := bsNone;
    // ClientHeight := 250;
    // ClientWidth := 360;
    lbTitle.Caption  := ATitle;
    lbStatus.Caption := aMessage;
    Show;
    Update;
  end;
end;

{ TappfrmWaiWindow }

constructor TappfrmWaiWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Caption          := '';
  lbTitle.Caption  := '';
  lbStatus.Caption := '';

end;

procedure TappfrmWaiWindow.SetMessage(Text: string);
begin
  lbStatus.Visible := true;
  lbStatus.Caption := Text;
  Update;

end;

end.
