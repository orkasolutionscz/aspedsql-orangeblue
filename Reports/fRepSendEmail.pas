unit fRepSendEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxLabel, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, Vcl.ExtCtrls,
  cxMemo, cxMaskEdit, cxButtonEdit;

type
  TfrmRepSendEmail = class(TForm)
    edSubject: TcxTextEdit;
    dxgLayoutControl1Group_Root: TdxLayoutGroup;
    dxl1: TdxLayoutControl;
    dxl1Item4: TdxLayoutItem;
    btnSend: TcxButton;
    btnStorno: TcxButton;
    dxgdxl1Group1: TdxLayoutGroup;
    dxgdxl1Group21: TdxLayoutGroup;
    dxgdxl1Group31: TdxLayoutGroup;
    dxl1Item1: TdxLayoutItem;
    dxl1Item2: TdxLayoutItem;
    dxl1SeparatorItem1: TdxLayoutSeparatorItem;
    cxmBody: TcxMemo;
    dxl1Item5: TdxLayoutItem;
    edSendTo: TcxButtonEdit;
    dxcdxl1Item6: TdxLayoutItem;
    procedure btnStornoClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure edSendToPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uaopfirmaclass;

{$R *.dfm}

procedure TfrmRepSendEmail.btnSendClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmRepSendEmail.btnStornoClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmRepSendEmail.edSendToPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aFirmaInfo: TAOPFirmaClass;
  aAopKod   : string;
begin
  aAopKod    := '';
  aFirmaInfo := TAOPFirmaClass.Create(aAopKod, True);
  try
    if aFirmaInfo.NaselAdresu then
    begin
      if edSendTo.Text = '' then
        edSendTo.Text := aFirmaInfo.Email
      else
        edSendTo.Text := edSendTo.Text + ';' + aFirmaInfo.Email;
    end;
  finally
    aFirmaInfo.Free;
  end;

end;

procedure TfrmRepSendEmail.FormCreate(Sender: TObject);
begin
  cxmBody.Lines.Clear;
  edSendTo.Text := '';
  edSubject.Text := '';
end;

end.
