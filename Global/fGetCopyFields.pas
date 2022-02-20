unit fGetCopyFields;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, cxButtons, cxControls, cxContainer, cxCheckListBox, db,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxEdit, uCustomForms;

type
  TfrmGetFields = class(TjfsDefaultForm)
    pnl1: TPanel;
    lstFields: TcxCheckListBox;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function appGetCopyFieldsList(ADataset: TDataset; var AFieldList: string): boolean;

implementation

{$R *.DFM}

function appGetCopyFieldsList(ADataset: TDataset; var AFieldList: String): boolean;
var
  dlg: TfrmGetFields;
  i  : Integer;
  itm: TcxCheckListBoxItem;
  procedure AddField(AFieldName: string);
  begin
    if AFieldList = '' then
      AFieldList := AFieldName
    else
      AFieldList := AFieldList + ';' + AFieldName;

  end;

begin
  // Vytvorime okno
  dlg := TfrmGetFields.create(nil);
  try
    // Projedeme postupne vsechna pole v datasetu
    for i := 0 to ADataset.FieldCount - 1 do
    begin
      if ADataset.Fields[i].Tag <> 9 then // Pole ktera se nesmeji kopirovat oynacime Tag = 9
      begin
        itm      := dlg.lstFields.Items.Add;           // Novy Items v seznamu
        itm.Text := (ADataset.Fields[i].DisplayLabel); // Popis bude DisplayLabel....takze si dej praci a pekne je popis
        itm.Tag  := i;                                 // Uchovame si poradi pole v datasetu, protoye nebudeme yobrayovat vsechnz
        // at User vi co si ma vybrat za pole
        // if ADataset.Fields[i].Tag = 9 then                      // Pole ktera se nesmeji kopirovat oynacime Tag = 9
        // itm.Enabled   := False
        // else
        itm.Checked := (Pos(ADataset.Fields[i].FieldName, AFieldList) > 0); // Pokud bude pole v seznamu AFieldList, tak jej checkneme
      end;
    end;

    Result := (dlg.ShowModal = mrOk);
    if Result then
    begin
      AFieldList := '';
      for i      := 0 to dlg.lstFields.Items.Count - 1 do
      begin
        if dlg.lstFields.Items[i].Checked then
          AddField(ADataset.Fields[dlg.lstFields.Items[i].Tag].FieldName);

      end;
    end;

  finally
    dlg.Free;
  end;
end;

procedure TfrmGetFields.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmGetFields.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
