{ ***************************************************************
  *
  * Unit Name: FVfrmuZaokrouleniDlg
  * Purpose  :  Unita pro rucni vyber zaokrouhleni dokladu
  * Author   :  Jiri Fait
  * History  :
  *             25.5.2001
  *             - uvolneno
  *
  **************************************************************** }

unit FVfrmuZaokrouleniDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ActnList, ExtCtrls, uVarClass, uCustomForms;

type
  TFVfrmZaokrouleniDlg = class(TjfsDefaultForm)
    pnlTitle: TPanel;
    lbTitle: TLabel;
    bvlTitle: TBevel;
    rbZaokrUp: TRadioButton;
    rbZaokrDown: TRadioButton;
    rbZaokr50Hal: TRadioButton;
    rbZaokrNone: TRadioButton;
    Label1: TLabel;
    ActionList1: TActionList;
    actVybrat: TAction;
    actStorno: TAction;
    pnlButtons: TPanel;
    bvlButton: TBevel;
    rbMatematicky: TRadioButton;
    btnStorno: TButton;
    btnOk: TButton;
    procedure actStornoExecute(Sender: TObject);
    procedure actVybratExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbZaokrUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    intZaokrouhleni: TjfsZaokrouhleni;
  end;

function doVyberZaokrouhleni(var AZaokrouhleni: TjfsZaokrouhleni): boolean;

implementation

{$R *.DFM}
{ ****************************************************************
  *
  *  d o V y b e r Z a o k r o u h l e n i(
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:   25.5.2001
  *
  *  Input:  AZaokrouhleni - Typ zaokrouhleni
  *
  *  Return: TRUE - pokud bude stisknuto OK
  *
  *  Description:
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

function doVyberZaokrouhleni(var AZaokrouhleni: TjfsZaokrouhleni): boolean;
var
  iDlg: TFVfrmZaokrouleniDlg;
begin
  iDlg := TFVfrmZaokrouleniDlg.Create(Application);
  try
    with iDlg do
    begin
      intZaokrouhleni := AZaokrouhleni;

      rbZaokrNone.Checked   := (intZaokrouhleni = Neni);
      rbZaokrUp.Checked     := (intZaokrouhleni = Nahoru);
      rbZaokrDown.Checked   := (intZaokrouhleni = Dolu);
      rbZaokr50Hal.Checked  := (intZaokrouhleni = Padesat);
      rbMatematicky.Checked := (intZaokrouhleni = Matematicky);
      Result                := iDlg.ShowModal = mrOk;
      if Result then
        AZaokrouhleni := intZaokrouhleni;
    end;
  finally
    iDlg.Free;
  end;

end;

procedure TFVfrmZaokrouleniDlg.actStornoExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFVfrmZaokrouleniDlg.actVybratExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFVfrmZaokrouleniDlg.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
end;

procedure TFVfrmZaokrouleniDlg.rbZaokrUpClick(Sender: TObject);
begin
  if rbZaokrNone.Checked then
    intZaokrouhleni := Neni
  else if rbZaokrUp.Checked then
    intZaokrouhleni := Nahoru
  else if rbZaokr50Hal.Checked then
    intZaokrouhleni := Padesat
  else if rbMatematicky.Checked then
    intZaokrouhleni := Matematicky
  else
    intZaokrouhleni := Dolu;

end;

end.
