{ 29.8.2003 0:53:37 (GMT+2:00) > [fait on ACER-K8Q02GA4AI] checked out /Konverze TBX }
{ ***************************************************************
  *
  * Unit Name: frmuCustomDialog
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit _frmuCustomDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ActnList, cxButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, uCustomForms;

type
  TfrmCustomDialog = class(TjfsDefaultForm)
    ActionList1: TActionList;
    actVybrat: TAction;
    actStorno: TAction;
    pnlTitle: TPanel;
    lbTitle: TLabel;
    lbDialogHint: TLabel;
    pnlButtons: TPanel;
    bvlButton: TBevel;
    Shape1: TShape;
    btnOk: TcxButton;
    procedure actVybratExecute(Sender: TObject);
    procedure actStornoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetTitleHint(AMsg: string);
  end;

implementation

{$R *.DFM}

procedure TfrmCustomDialog.SetTitleHint(AMsg: string);
begin
  lbDialogHint.Caption := AMsg;
  Update;
end;

procedure TfrmCustomDialog.actVybratExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCustomDialog.actStornoExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCustomDialog.FormCreate(Sender: TObject);
begin
  // Color := frmGlobalModule.clrBackRound;
  Caption := Application.Title;
end;

end.
