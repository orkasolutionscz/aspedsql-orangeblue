unit fUserChangePwd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ActnList, cxButtons, uCustomForms,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus;

type
  TfrmZmenaHeslaDlg = class(TjfsDefaultForm)
    Bevel1: TBevel;
    lblOld: TLabel;
    lblNh: TLabel;
    lblNHP: TLabel;
    ActionList1: TActionList;
    actOK: TAction;
    actStorno: TAction;
    edOldHeslo: TcxTextEdit;
    edNoveHeslo: TcxTextEdit;
    edNoveHesloPotvrd: TcxTextEdit;
    btnOK: TcxButton;
    btnStorno: TcxButton;
    procedure actOKExecute(Sender: TObject);
    procedure actStornoExecute(Sender: TObject);
    procedure edOldHesloChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    FOldHeslo: string;
  end;

function ftZmenaHesla(var OldNewHeslo: string): Boolean;

implementation

uses
  appdmduSystem;

{$R *.DFM}

function ftZmenaHesla(var OldNewHeslo: string): Boolean;
var
  Dlg: TfrmZmenaHeslaDlg;
begin
  Dlg := TfrmZmenaHeslaDlg.Create(Application);
  try
    Dlg.FOldHeslo := OldNewHeslo;
    Dlg.ShowModal;
    Result := Dlg.ModalResult = mrOk;
    if Result then
      OldNewHeslo := Dlg.edNoveHeslo.Text;
  finally
    Dlg.Free;
  end;

end;

procedure TfrmZmenaHeslaDlg.actOKExecute(Sender: TObject);
begin
  if edNoveHeslo.Text = edNoveHesloPotvrd.Text then
    ModalResult := mrOk
  else
    MessageDlg('Potvrzení hesla neprobìhlo úspìšnì', mtError, [mbOK], 0);
end;

procedure TfrmZmenaHeslaDlg.actStornoExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmZmenaHeslaDlg.edOldHesloChange(Sender: TObject);
begin
  edNoveHeslo.Enabled       := edOldHeslo.Text = FOldHeslo;
  edNoveHesloPotvrd.Enabled := edNoveHeslo.Enabled;
  lblNh.Enabled             := edNoveHeslo.Enabled;
  lblNHP.Enabled            := edNoveHeslo.Enabled;
  actOK.Enabled             := edNoveHeslo.Enabled;
end;

procedure TfrmZmenaHeslaDlg.FormShow(Sender: TObject);
begin
  if FOldHeslo = EmptyStr then
  begin
    edOldHeslo.Enabled        := False;
    lblOld.Enabled            := False;
    edNoveHeslo.Enabled       := true;
    edNoveHesloPotvrd.Enabled := true;
    lblNh.Enabled             := true;
    lblNHP.Enabled            := true;
    actOK.Enabled             := true;
  end;
end;

end.
