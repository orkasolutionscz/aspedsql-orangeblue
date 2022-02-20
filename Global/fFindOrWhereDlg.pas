unit fFindOrWhereDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rsStorage, rsPropSaver, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Db;

type
  TfrmFindOrWhere = class(TForm)
    grp1: TGroupBox;
    rbFindOpt: TRadioButton;
    rbFiltrOpt: TRadioButton;
    grpFiltrOpt: TGroupBox;
    chkFullText: TcxCheckBox;
    chkAddToWhere: TcxCheckBox;
    btnStrono: TcxButton;
    btnFiltr: TcxButton;
    lblPole: TcxLabel;
    edHodnota: TcxTextEdit;
    rsPropSaver1: TrsPropSaver;
    procedure FormShow(Sender: TObject);
    procedure rsPropSaver1AfterLoad(Sender: TObject);
    procedure rbFindOptClick(Sender: TObject);
    private
      { Private declarations }
      fFindField: TField;
      procedure UpdateVisible;
    public
      { Public declarations }
      function GerIntRes: Integer;
      function GetResultText: string;
  end;

function appHledej(const ACaption, APrompt: string; var Value: string): Integer;
function appHledejEx(const ACaption: string; AField: TField; var Value: string): Integer;

implementation

{$R *.DFM}

uses appdmduSystem, JclStrings;

function appHledej(const ACaption, APrompt: string; var Value: string): Integer;
var
  lcDlg: TfrmFindOrWhere;
begin
  Result := -1;
  lcDlg  := TfrmFindOrWhere.Create(nil);

  try
    // lcDlg.IntRes                := 0;
    lcDlg.BorderStyle := bsDialog;
    // lcDlg.Caption               := ACaption;
    lcDlg.lblPole.Caption := APrompt;

    // lcDlg.edHodnota.SetFocus;
    lcDlg.ActiveControl  := lcDlg.edHodnota;
    lcDlg.edHodnota.Text := Value;

    if lcDlg.ShowModal = mrOk then
    begin
      Value  := lcDlg.GetResultText;
      Result := lcDlg.GerIntRes;

      // if lcDlg.chkAutoFilter.Checked then
      // Result := 2
      // else
      // Result := 1;
    end;
  finally
    lcDlg.Free;
  end;

end;

function appHledejEx(const ACaption: string; AField: TField; var Value: string): Integer;
var
  lcDlg: TfrmFindOrWhere;
begin
  Result           := -1;
  lcDlg            := TfrmFindOrWhere.Create(nil);
  lcDlg.fFindField := AField;
  try
    // lcDlg.IntRes                := 0;
    lcDlg.BorderStyle := bsDialog;
    // lcDlg.Caption               := ACaption;
    lcDlg.lblPole.Caption := AField.DisplayLabel;

    // lcDlg.edHodnota.SetFocus;
    lcDlg.ActiveControl  := lcDlg.edHodnota;
    lcDlg.edHodnota.Text := Value;

    lcDlg.chkFullText.Visible := false;
    case AField.DataType of
      ftString, ftWideString:
        lcDlg.chkFullText.Visible := true;
    end;

    if lcDlg.ShowModal = mrOk then
    begin
      Value  := lcDlg.GetResultText;
      Result := lcDlg.GerIntRes;

      // if lcDlg.chkAutoFilter.Checked then
      // Result := 2
      // else
      // Result := 1;
    end;
  finally
    lcDlg.Free;
  end;
end;

{ TfrmFindOrWhere }

function TfrmFindOrWhere.GerIntRes: Integer;
begin
  Result := -1;
  if rbFindOpt.Checked then // Pouze hledame
    Result := 0
  else if rbFiltrOpt.Checked then // Filtrujeme
  begin
    if chkAddToWhere.Checked then // Filtrujeme pridanim podmink
      Result := 1
    else
      Result := 2
  end;
end;

function TfrmFindOrWhere.GetResultText: string;
const
  sWildChar = '%';
begin
  Result := edHodnota.Text;
  if (GerIntRes > 0) then
  begin
    case fFindField.DataType of
      ftString, ftWideString:
        begin
          if chkFullText.Checked and chkFullText.Visible then
          begin
            if StrLeft(Result, 1) <> sWildChar then
              Result := sWildChar + edHodnota.Text;
            if StrRight(Result, 1) <> sWildChar then
              Result := Result + sWildChar;
          end;
        end;
      ftCurrency, ftFloat, ftBCD:
        begin
          Result := StrReplaceChar(Result, ',','.');
        end;
    end;

  end
end;

procedure TfrmFindOrWhere.FormShow(Sender: TObject);
begin
  edHodnota.SelLength := 0;
  edHodnota.SelStart  := length(edHodnota.Text);
end;

procedure TfrmFindOrWhere.UpdateVisible;
begin
  grpFiltrOpt.Visible := rbFiltrOpt.Checked;
  if rbFiltrOpt.Checked then
  begin
    Self.Caption     := 'Filtrování v seznamu';
    btnFiltr.Caption := 'Filrovat'
  end
  else
  begin
    Self.Caption     := 'Vyhledávání v seznamu';
    btnFiltr.Caption := 'Hledat';
  end;

end;

procedure TfrmFindOrWhere.rsPropSaver1AfterLoad(Sender: TObject);
begin
  UpdateVisible;
end;

procedure TfrmFindOrWhere.rbFindOptClick(Sender: TObject);
begin
  UpdateVisible;
end;

end.
