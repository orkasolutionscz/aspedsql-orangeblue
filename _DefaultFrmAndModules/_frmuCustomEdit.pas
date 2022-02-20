{***************************************************************
 *
 * Unit Name: FTEDIT
 * Purpose  : Zakladni editacni okno
 * Author   : Jiri Fait
 * History  :
 *            24.5.2001
 *              - do udalosti OnCloseQuery pridana kontrola zda okno neni v
                  nejakem Edit modu;
 *
 ****************************************************************}
 {
   Novy typ:
     pro editaci se nepouzivaji DBAware komponenty ale komponenty klasicke
 }

unit _frmuCustomEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Db, uCustomForms, cxGridCustomView;

type
  TfrmCustomEdit = class(TjfsCustomEdit)
    ActionList1: TActionList;
    actRecCancel: TAction;
    actRecEdit: TAction;
    actRecPost: TAction;
    actPrint: TAction;
    actRecCopy: TAction;
    actOk: TAction;
    actHelp: TAction;
    actRecDelete: TAction;
    actNahled: TAction;
    actRecRefresh: TAction;
    actRecNew: TAction;
    actRecPrior: TAction;
    actRecNext: TAction;
    actCancel: TAction;
    procedure actOkExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actNahledExecute(Sender: TObject);
    procedure actRecRefreshExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure actRecEditExecute(Sender: TObject);
    procedure actRecPostExecute(Sender: TObject);
    procedure actRecCancelExecute(Sender: TObject);
    procedure FormDataChange(Sender: TObject);
    procedure frmControlerFormDataStateChange(Sender: TObject;
      FormDataState: TFormDataState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actRecordMove(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure gbCustomEditDBDataToControls(Sender: TObject);
    procedure gbCustomEditDBClearFields(Sender: TObject);
  private
    { Private declarations }
    FFoundKeyIdValue: boolean;
    procedure SetFoundKeyIdValue(const Value: boolean);
  protected
    procedure StoreViewSettings(AView: TcxCustomGridView);
    procedure ReStoreViewSettings(AView: TcxCustomGridView);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    constructor CreateInKeyIdValue(AOwner: TComponent; AKeyIdValue: string); virtual;
    property FoundKeyIdValue: boolean read FFoundKeyIdValue write SetFoundKeyIdValue;
  end;

implementation

uses
   cxEdit, cxTextEdit, appdmduSystem;

{$R *.DFM}

{ ********************************************************* }
{ Formular a komponenty                                     }
{ ********************************************************* }

{ TfrmDefaultEdit }
constructor TfrmCustomEdit.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited Create(AOwner);


  // Color := clBtnFace;
  try
    for i := 0 to ComponentCount - 1 do
      // Pokud nechceme automatickz priradit event tak nastav u komponenty tag na 99
      if (Components[i].Tag <> 99) and (Components[i] is TcxCustomTextEdit) then
        TcxCustomTextEdit(Components[i]).Properties.OnChange := FormDataChange;
  except

  end;
end;

constructor TfrmCustomEdit.CreateInKeyIdValue(AOwner: TComponent; AKeyIdValue:
  string);
begin
  KeyIdValue := AKeyIdValue;
  Create(AOwner);
  DBDataToControls;
end;

procedure TfrmCustomEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

{ ********************************************************* }
{ Actions                                                   }
{ ********************************************************* }

{ Actions: Formular }

procedure TfrmCustomEdit.actOkExecute(Sender: TObject);
begin
  if (FormDataState in fdsEditModes) then
    actRecPost.Execute;
  ModalResult := mrOk;
end;

{ Actions: DataSet }

procedure TfrmCustomEdit.actRecDeleteExecute(Sender: TObject);
begin
  IsDataChanged := true;
  if CloseAfterDelete then
    Close;
end;

procedure TfrmCustomEdit.actRecCopyExecute(Sender: TObject);
begin
  { Kopie aktualniho zaznamu }
  FormDataState := fdsCopying;
end;

procedure TfrmCustomEdit.actPrintExecute(Sender: TObject);
begin
  PrintModule;
end;

procedure TfrmCustomEdit.actNahledExecute(Sender: TObject);
begin
  PrintDefReport;
end;

procedure TfrmCustomEdit.actHelpExecute(Sender: TObject);
begin
  { Aspon neco }
end;

procedure TfrmCustomEdit.actRecRefreshExecute(Sender: TObject);
begin
  DBDataToControls;
  FormDataState := fdsBrowsing;
end;

procedure TfrmCustomEdit.actRecNewExecute(Sender: TObject);
begin
  { Tady by melo byt vycisteni poli}
  DBClearFields;
  FormDataState := fdsInserting;
end;

procedure TfrmCustomEdit.actRecEditExecute(Sender: TObject);
begin
  { Editace zaznamu }
  FormDataState := fdsEditing;
end;

procedure TfrmCustomEdit.actRecPostExecute(Sender: TObject);
begin
  { Zapsani zmen }
  FormDataState := fdsBrowsing;
  IsDataChanged := true;
end;

procedure TfrmCustomEdit.actRecCancelExecute(Sender: TObject);
begin
  { Storno zmen }
  if FormDataState = fdsEditing then
  begin
    DBDataToControls;
    FormDataState := fdsBrowsing;
  end
  else
  if FormDataState = fdsInserting then
  begin
    FormDataState := fdsBrowsing;
    Close;
  end

end;

procedure TfrmCustomEdit.FormDataChange(Sender: TObject);
begin
  { Udalost zmeny dat }
  if ((FormDataState in fdsEditModes) = false) and (not
    IsDataToControlsWriting) then
    if (KeyIDValue <> EmptyStr) then
      FormDataState := fdsEditing
    else
      actRecNew.Execute;
end;

procedure TfrmCustomEdit.frmControlerFormDataStateChange(Sender: TObject;
  FormDataState: TFormDataState);
begin
  actRecNew.Enabled := (feoInsert in EditOptions) and (FormDataState =
    fdsBrowsing); //
  actRecEdit.Enabled := (feoEdit in EditOptions) and (FormDataState =
    fdsBrowsing); //and (KeyIDValue <> EmptyStr); //
  actRecPost.Enabled := (FormDataState in fdsEditModes);
  actRecCancel.Enabled := (FormDataState in fdsEditModes);
  actRecCopy.Enabled := (feoCopy in EditOptions) and (FormDataState =
    fdsBrowsing) and (KeyIDValue <> EmptyStr);
  actRecDelete.Enabled := (feoDelete in EditOptions) and (FormDataState
    = fdsBrowsing) and (KeyIDValue <> EmptyStr);
  actRecRefresh.Enabled := (FormDataState = fdsBrowsing);
  actPrint.Enabled := (FormDataState = fdsBrowsing) and (KeyIDValue <>
    EmptyStr);
  actNahled.Enabled := (FormDataState = fdsBrowsing) and (KeyIDValue <>
    EmptyStr);
  actRecPrior.Enabled := (FormDataState = fdsBrowsing);
  actRecNext.Enabled := (FormDataState = fdsBrowsing);
end;

procedure TfrmCustomEdit.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := FormDataState in [fdsBrowsing, fdsInActive];
end;

procedure TfrmCustomEdit.actRecordMove(Sender: TObject);
begin
  { Aspon neco}
end;

procedure TfrmCustomEdit.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCustomEdit.gbCustomEditDBDataToControls(Sender: TObject);
begin
  { Zde se prevede data do controls}
  FormDataState := fdsBrowsing;

end;

procedure TfrmCustomEdit.gbCustomEditDBClearFields(Sender: TObject);
begin
  { pro vymazani poli }

end;

type
  TEditContrHook = class(TControl)
  public
    property Color;
  end;



procedure TfrmCustomEdit.SetFoundKeyIdValue(const Value: boolean);
begin
  FFoundKeyIdValue := Value;
end;

procedure TfrmCustomEdit.ReStoreViewSettings(AView: TcxCustomGridView);
begin
  TcxCustomGridView(aView).RestoreFromRegistry(RegistryKeyGridsName + '\'+ aView.Name );
end;

procedure TfrmCustomEdit.StoreViewSettings(AView: TcxCustomGridView);
begin
  TcxCustomGridView(aView).StoreToRegistry(RegistryKeyGridsName + '\'+ aView.Name );
end;

end.


