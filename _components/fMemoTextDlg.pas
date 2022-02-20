unit fMemoTextDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, cxButtons,
  ExtCtrls, uCustomForms, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, rsStorage, rsPropSaver;

type
  TfrmMemoTextDlg = class(TjfsDefaultForm)
    pnlButtons: TPanel;
    bvlButton: TBevel;
    btnOk: TcxButton;
    cxButton1: TcxButton;
    edMemo: TcxMemo;
    rspOkno: TrsPropSaver;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

uses appdmduSystem;

end.
