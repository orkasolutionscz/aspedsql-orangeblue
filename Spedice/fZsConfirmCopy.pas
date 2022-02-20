unit fZsConfirmCopy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxButtons, cxLabel, cxCheckBox;

type
  TfrmCOnfirmCopy = class(TForm)
    pnlButtons: TPanel;
    imgWarning: TImage;
    lblMessage: TcxLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    chkCopyNaklady: TcxCheckBox;
    shp1: TShape;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ZSConfirmCopy: boolean;

implementation

{$R *.dfm}

uses ZSdmdu, ZSfrmuModule;

function ZSConfirmCopy: boolean;
var
  dlg: TfrmCOnfirmCopy;
begin
  dlg := TfrmCOnfirmCopy.Create(Application);
  try
    dlg.chkCopyNaklady.Checked        := zsfrmmodule.gbZSCopyEnableOstNakl;
    Result                            := (dlg.ShowModal = mrOk);
    zsfrmmodule.gbZSCopyEnableOstNakl := dlg.chkCopyNaklady.Checked;
  finally
    dlg.Free;
  end;
end;

procedure TfrmCOnfirmCopy.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCOnfirmCopy.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
