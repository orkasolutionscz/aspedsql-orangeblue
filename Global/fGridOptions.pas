unit fGridOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,uAppControler,
  cxListBox, cxGroupBox, cxRadioGroup, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, ExtCtrls,appfrmuGlobal, cxGridTableView, cxStyles,
  Db, cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid,cxGridStyleSheetsPreview, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData ;

type
  TfraGridOptions = class(TjfsCustomSettingFrame)
    pnlLeft: TPanel;
    gbUserDefined: TcxGroupBox;
    cbUserStyleSheets: TComboBox;
    btnLoad: TcxButton;
    btnSave: TcxButton;
    btnEdit: TcxButton;
    RadioGroup: TcxRadioGroup;
    gbPredefined: TcxGroupBox;
    lbPredefinedStyleSheets: TcxListBox;
    pnlCurrentStyleSheet: TPanel;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    cxGrid: TcxGrid;
    tvProjects: TcxGridDBTableView;
    lvProjects: TcxGridLevel;
    tvProjectsKOD: TcxGridDBColumn;
    tvProjectsPOPIS: TcxGridDBColumn;
    tvProjectsKURS: TcxGridDBColumn;
    procedure lbPredefinedStyleSheetsClick(Sender: TObject);
    procedure RadioGroupClick(Sender: TObject);
    procedure cbUserStyleSheetsClick(Sender: TObject);
    procedure jfsCustomSettingFrameReadSetting(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure jfsCustomSettingFrameWriteSetting(Sender: TObject);
  private
    FSelectedSheet: TcxGridTableViewStyleSheet;
    { Private declarations }
    procedure SetPredefinedStyleSheets;
    procedure SetUserDefinedStyleSheets;
    procedure ChangeVisibility(AType: Integer);
    procedure UpdateGridStyleSheets;
    procedure CreateUserStyleSheetsList;
    procedure CreatePredefinedStyleSheetsList;
    procedure ClearUserDefinedStyleSheets;
    procedure LoadUserDefinedStyleSheets(AFileName: TFileName);
    procedure SaveUserDefinedStyleSheets(AFileName: TFileName);
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
    property SelectedSheet:TcxGridTableViewStyleSheet read FSelectedSheet write FSelectedSheet;
  end;


implementation

uses cxStyleSheetEditor, fKatalogyModul;

{$R *.DFM}

const
  cNone = 0;
  cPredefined = 1;
  cUserDefined = 2;

constructor TfraGridOptions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  CreateUserStyleSheetsList;
  CreatePredefinedStyleSheetsList;
  // SetPredefinedStyleSheets;
end;


procedure TfraGridOptions.lbPredefinedStyleSheetsClick(Sender: TObject);
begin
  SetPredefinedStyleSheets;
end;

procedure TfraGridOptions.SetPredefinedStyleSheets;
begin
  if lbPredefinedStyleSheets.Items.Count > 0 then
  begin
    SelectedSheet               := TcxGridTableViewStyleSheet(lbPredefinedStyleSheets.Items.Objects[lbPredefinedStyleSheets.ItemIndex]);
    UpdateGridStyleSheets;
  end;
end;

procedure TfraGridOptions.RadioGroupClick(Sender: TObject);
begin
  case TcxRadioGroup(Sender).ItemIndex of
    cNone:
      begin
        SelectedSheet   := nil;
        UpdateGridStyleSheets;
      end;
    cPredefined:
      SetPredefinedStyleSheets;
    cUserDefined:
      SetUserDefinedStyleSheets;
  end;
  ChangeVisibility(TcxRadioGroup(Sender).ItemIndex);

end;

procedure TfraGridOptions.ChangeVisibility(AType: Integer);
begin
  cbUserStyleSheets.Enabled     := AType = cUserDefined;
  gbUserDefined.Enabled         := AType = cUserDefined;
  btnEdit.Enabled               := AType = cUserDefined;
  btnLoad.Enabled               := AType = cUserDefined;
  btnSave.Enabled               := AType = cUserDefined;

  lbPredefinedStyleSheets.Enabled := AType = cPredefined;
end;

procedure TfraGridOptions.cbUserStyleSheetsClick(Sender: TObject);
begin
  SetUserDefinedStyleSheets;
end;

procedure TfraGridOptions.SetUserDefinedStyleSheets;
begin
  if cbUserStyleSheets.Items.Count > 0 then
  begin
    SelectedSheet       := TcxGridTableViewStyleSheet(cbUserStyleSheets.Items.Objects[cbUserStyleSheets.ItemIndex]);
    UpdateGridStyleSheets;
  end;

end;

procedure TfraGridOptions.UpdateGridStyleSheets;

  procedure UpdateView(const AView: TcxGridDBTableView);
  begin
    with AView do
    begin
      BeginUpdate;
      Styles.StyleSheet := SelectedSheet;
      EndUpdate;
    end;
  end;

begin

  UpdateView(tvProjects);

  if (dmdGlobal.ModStyleSheet <> nil) and (SelectedSheet <> nil) then
    pnlCurrentStyleSheet.Caption := SelectedSheet.Caption
  else
    pnlCurrentStyleSheet.Caption := '';
end;

procedure TfraGridOptions.jfsCustomSettingFrameReadSetting(
  Sender: TObject);
var
  ItmIndx:integer;
begin
  if SelectedSheet = nil then
  begin
     RadioGroup.ItemIndex               := cNone;
  end
  else
  begin
    ItmIndx := lbPredefinedStyleSheets.Items.IndexOf(SelectedSheet.Caption);
    if ItmIndx > 0 then
    begin
      RadioGroup.ItemIndex              := cPredefined;
      lbPredefinedStyleSheets.ItemIndex := ItmIndx;
    end
    else
    begin
      RadioGroup.ItemIndex              := cUserDefined;
      cbUserStyleSheets.ItemIndex       := cbUserStyleSheets.Items.IndexOf(SelectedSheet.Caption)
    end;
  end;
  RadioGroupClick(RadioGroup);
end;

procedure TfraGridOptions.CreatePredefinedStyleSheetsList;
var
  I: Integer;
begin
  lbPredefinedStyleSheets.Clear;
  for I := 0 to dmdGlobal.strepPredefined.StyleSheetCount - 1 do
    lbPredefinedStyleSheets.Items.AddObject(dmdGlobal.strepPredefined.StyleSheets[I].Caption, dmdGlobal.strepPredefined.StyleSheets[I]);
  lbPredefinedStyleSheets.ItemIndex := 0;
end;

procedure TfraGridOptions.CreateUserStyleSheetsList;
var
  I: Integer;
begin
  cbUserStyleSheets.Clear;
  for I := 0 to dmdGlobal.strepUserDefined.StyleSheetCount - 1 do
    cbUserStyleSheets.Items.AddObject(dmdGlobal.strepUserDefined.StyleSheets[I].Caption, dmdGlobal.strepUserDefined.StyleSheets[I]);
  cbUserStyleSheets.ItemIndex := 0;
end;

procedure TfraGridOptions.ClearUserDefinedStyleSheets;
begin
  dmdGlobal.strepUserDefined.Clear;
  dmdGlobal.strepUserDefined.ClearStyleSheets;
end;


procedure TfraGridOptions.btnEditClick(Sender: TObject);
begin
  ShowcxStyleSheetEditor(TcxGridTableViewStyleSheet(cbUserStyleSheets.Items.Objects[cbUserStyleSheets.ItemIndex]), nil);
end;

procedure TfraGridOptions.btnLoadClick(Sender: TObject);
begin
  if OpenDialog.Execute then
    LoadUserDefinedStyleSheets(OpenDialog.FileName);
end;

procedure TfraGridOptions.LoadUserDefinedStyleSheets(AFileName: TFileName);
begin
  UpdateGridStyleSheets;
  ClearUserDefinedStyleSheets;

  LoadStyleSheetsFromIniFile(AFileName, dmdGlobal.strepUserDefined, TcxGridTableViewStyleSheet);

  CreateUserStyleSheetsList;
  SetUserDefinedStyleSheets;
end;

procedure TfraGridOptions.SaveUserDefinedStyleSheets(AFileName: TFileName);
var
  AList: TList;
begin
  AList := TList.Create;
  try
    PopulateStyleSheetsList(AList);
    SaveStyleSheetsToIniFile(AFileName, AList);
  finally
    AList.Free;
  end;
end;

procedure TfraGridOptions.btnSaveClick(Sender: TObject);
begin
  if SaveDialog.Execute then
    SaveUserDefinedStyleSheets(SaveDialog.FileName);

end;


procedure TfraGridOptions.jfsCustomSettingFrameWriteSetting(
  Sender: TObject);
begin
  dmdGlobal.ModStyleSheet  := SelectedSheet;
end;

end.
