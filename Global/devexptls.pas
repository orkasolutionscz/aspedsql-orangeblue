unit Devexptls;

interface

uses CxEdit
  , CxDropDownEdit
  ;

type
  TcxCustomEditPropertiesAccess = class(TcxCustomEditProperties);

procedure Jf_SetLook2butons(AcxControlProperties: TcxCustomEditProperties; AOnButtonsClick: TcxEditButtonClickEvent);

implementation

uses
  Menus;

procedure Jf_SetLook2butons(AcxControlProperties: TcxCustomEditProperties; AOnButtonsClick: TcxEditButtonClickEvent);
begin
  with TcxCustomEditPropertiesAccess(AcxControlProperties) do
    begin
      Buttons.Items[0].Width := 10;
      with Buttons.Add as TcxEditButton do
        begin
          Default := False;
          Kind := BkEllipsis;
        end;
      OnButtonClick := AOnButtonsClick;
      ClearKey := TextToShortCut ('Ctrl+X');
    end;
end;
end.
 
