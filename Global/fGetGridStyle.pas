unit fGetGridStyle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, fGridOptions,
  StdCtrls, cxButtons, ExtCtrls,cxGridTableView, cxStyles, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,uCustomForms;

type
  TfrmGetGridStyle = class(TjfsDefaultForm)
    pnlTlacitka: TPanel;
    btn1: TcxButton;
    btn2: TcxButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fraOpt:TfraGridOptions;
  end;

function GetUsersStyleSheet(aCurrentStyle:TcxCustomStyleSheet):TcxGridTableViewStyleSheet;

implementation


{$R *.DFM}

function GetUsersStyleSheet(aCurrentStyle:TcxCustomStyleSheet):TcxGridTableViewStyleSheet;
var
  dlg:TfrmGetGridStyle;
begin
  result                := TcxGridTableViewStyleSheet(aCurrentStyle);
  dlg                   := TfrmGetGridStyle.create(nil);
  try
    dlg.fraOpt.SelectedSheet    := TcxGridTableViewStyleSheet(aCurrentStyle);
    dlg.fraOpt.ReadSettings;

    if dlg.ShowModal = mrOk then
      result := dlg.fraOpt.SelectedSheet;
  finally
    dlg.Free;
  end;

end;

procedure TfrmGetGridStyle.FormCreate(Sender: TObject);
begin
  fraOpt        := TfraGridOptions.Create(self);
  fraOpt.parent := Self;
  fraOpt.Align  := alClient;
end;

end.
