unit appReportManagerForm;

interface

uses
  appReportModule,
  jclmapi,
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls,
  ActnList, ExtCtrls, StdCtrls, Printers, frxClass, Menus, ImgList,
  cxDropDownEdit, cxTreeView, cxMemo, cxCalendar, cxMaskEdit, cxSpinEdit,
  cxPC, cxControls, cxButtons, cxContainer, cxEdit, cxTextEdit,
  cxLookAndFeelPainters, cxGraphics, cxLookAndFeels, cxCheckBox, rsStorage,
  rsPropSaver, cxPCdxBarPopupMenu, uCustomForms;

type

  TCustomSendingInfo = class(TObject)
  public
    RecipientName: string;
    SendAdress   : string;
    // SendType: TFaxMailType;
    Subject: string;
    Body   : string;
    constructor Create;
    procedure Clear;
  end;
  { Objekt pro informace o sestave }

  TappReportManagerFrm = class(TjfsDefaultForm)
    actClose: TAction;
    actCopyReport: TAction;
    actDeleteReport: TAction;
    actEditReport: TAction;
    ActionList1: TActionList;
    actNewReport: TAction;
    actPreviewReport: TAction;
    actPrintReport: TAction;
    actRefreshList: TAction;
    actSelectPrinter: TAction;
    actSetDefaultReport: TAction;
    bvlButton: TBevel;
    bvlTitle: TBevel;
    lbDialogHint: TLabel;
    lbTitle: TLabel;
    Panel1: TPanel;
    pnlTitle: TPanel;
    PopupMenu1: TPopupMenu;
    PrintDialog1: TPrintDialog;
    Vchozsestava1: TMenuItem;
    btnClose: TcxButton;
    btnPreview: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label2: TLabel;
    lbSelectPrinter: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    edGBKopie: TcxSpinEdit;
    Label5: TLabel;
    lbReportFileName: TLabel;
    N1: TMenuItem;
    Upravit1: TMenuItem;
    Nov1: TMenuItem;
    Odstranit1: TMenuItem;
    N2: TMenuItem;
    Obnovit1: TMenuItem;
    Memo1: TcxMemo;
    btnEdit: TcxButton;
    Tree: TcxTreeView;
    btnPrint: TcxButton;
    ilReportType: TImageList;
    ilButtons: TImageList;
    actOk: TAction;
    actCancel: TAction;
    chkShowPrintDlg: TcxCheckBox;
    rsPropSaver1: TrsPropSaver;
    procedure actCloseExecute(Sender: TObject);
    procedure actCopyReportExecute(Sender: TObject);
    procedure actDeleteReportExecute(Sender: TObject);
    procedure actEditReportExecute(Sender: TObject);
    procedure actNewReportExecute(Sender: TObject);
    procedure actPreviewReportExecute(Sender: TObject);
    procedure actRefreshListExecute(Sender: TObject);
    procedure actSelectPrinterExecute(Sender: TObject);
    procedure actSetDefaultReportExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure trwSestavyChange(Sender: TObject; Node: TTreeNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actPrintReportExecute(Sender: TObject);
    procedure TreeCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure actCancelExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    FSlozkaSestav    : string;
    intDefaultPrinter: string;
    FEnabledEdit     : Boolean;
    intPocetKopii    : Integer;
    SelectedNode     : TTreeNode;
    FReport          : TfrxReport;
    function GetReportFileName: string;
    function GetSestavaInfo: TReportObjectInfo;
    procedure iClearReports;
    procedure iLoadReports;
    function IsSystemSestava: Boolean;
    procedure SetLocalSettings;
    procedure SetEnabledEdit(const Value: Boolean);
  public
    FSestava            : string;
    FModuleName         : string;
    iRInfo              : TReportObjectInfo;
    property EnabledEdit: Boolean read FEnabledEdit write SetEnabledEdit;
  end;

  TOnGetAOPSendAdres = function: TCustomSendingInfo;

  // function MySimpleSendMail(const ARecipient, AName, ASubject, ABody: string; const AAttachment: TStrings; ShowDialog: Boolean; AParentWND: HWND): Boolean;
function RMForm(const AEvidence: string; aFrxReport: TfrxReport): TappReportManagerFrm;
function RMselectSestava(AEvidence: string; aFrxReport: TfrxReport): string;

var
  AReportTypeExt: array [TReportType] of string = (
    '.fr3'
  );

const
  OnFrGetAOPSendAdres: TOnGetAOPSendAdres = nil;

implementation

{$R *.DFM}

uses
  IniFiles, frxDsgnIntf, appReportUtils, fMessageDlg, JclStrings,
  appdmduSystem;

const
  { Hlaseni a dotazy }
  MSG_QRP_DELETE     = 'Opravdu chcete odstranit vybranou sestavu?' + #13 + #10 + 'Tato akce je nevratná!';
  MSG_QRP_COPY       = 'Opravdu chcete kopírovat aktuální záznam?' + #13 + #10 + 'Pokud ne stisknìte NE';
  ERR_DEFREPORT      = 'Není definována výchozí sestava pro evidenci %s';
  ERR_SYSREPORT_EDIT = 'Vybraná sestava je systémovou sestavou, ve které nelze' + #13 + #10 + 'provádìt žádné úpravy. Použijte funkci Kopírovat a v ' + #13 + #10 +
    'takto vytvoøené sestavì proveïte úpravy.';
  ERR_SYSREPORT_DELETE = 'Vybraná sestava je systémovou sestavou kterou nelze odstranit';

function RMForm(const AEvidence: string; aFrxReport: TfrxReport): TappReportManagerFrm;
begin
  result := TappReportManagerFrm.Create(Application);
  if AEvidence <> EmptyStr then
  begin
    result.FModuleName           := AEvidence;
    result.FSlozkaSestav         := AEvidence;
    result.EnabledEdit           := true;
    result.FReport               := aFrxReport;
    result.lbReportFileName.Hint := AEvidence;
  end;
end;

function RMselectSestava(AEvidence: string; aFrxReport: TfrxReport): string;
var
  dlg: TappReportManagerFrm;
begin

  dlg := RMForm(AEvidence, aFrxReport);
  try
    dlg.EnabledEdit            := False;
    dlg.actPrintReport.Visible := False;
    dlg.btnClose.Action        := dlg.actOk;
    dlg.btnClose.Default       := true;
    dlg.btnEdit.Action         := dlg.actCancel;
    dlg.ShowModal;
    if dlg.ModalResult = mrOk then
      result := dlg.FSestava;
  finally
    dlg.Free;

  end;

end;

// function MySimpleSendMail(const ARecipient, AName, ASubject, ABody: string; const AAttachment: TStrings; ShowDialog: Boolean; AParentWND: HWND): Boolean;
// var
// intEmail: TJclEmail;
// begin
// intEmail      := TJclEmail.Create;
// with intEmail do
// try
// ParentWnd := AParentWND;
// if ARecipient <> EmptyStr then
// Recipients.Add(ARecipient, AName, rkTO, '');
// Subject := ASubject;
// Body := ABody;
// if AAttachment <> nil then
// Attachments.Assign(AAttachment);
// try
// Result := Send(ShowDialog);
// except
// result := false;
// end;
// finally
// intEmail.Free;
// end;
// end;

constructor TCustomSendingInfo.Create;
begin
  Clear;
end;

procedure TCustomSendingInfo.Clear;
begin
  RecipientName := EmptyStr;
  SendAdress    := EmptyStr;
  Subject       := EmptyStr;
  Body          := EmptyStr;
end;

{ ****************************************************************
  *
  *  C r e a t e
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:   22.5.2001
  *
  *  Input:  AFileName - soubor reportu
  *
  *
  *  Description: Constructor na zaklade souboru sestavy nastavi
  *  prislusne parametr
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

{ ********************************************************************** }
{ ********************************************************************** }
{ ********************************************************************** }

{
  ******************************** TftDlgPrintMng ********************************
}

procedure TappReportManagerFrm.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TappReportManagerFrm.actCopyReportExecute(Sender: TObject);
var
  OldReportName: string;
  NewReportName: string;

const
  MSG_COPY_REPORT = 'Chcete zkopírovat sestavu [%s] do nové sestavy?';

begin
  { Vytvoreni sestavy z puvodni }
  OldReportName := GetReportFileName;
  if OldReportName <> EmptyStr then
  begin
    if DisplayConfirm(format(MSG_COPY_REPORT, [ExtractFileName(OldReportName)])) then
    begin
      NewReportName := ExtractFilePath(OldReportName) + 'Kopie' + ExtractFileName(OldReportName);
      CopyFile(pchar(OldReportName), pchar(NewReportName), true);
      actRefreshList.Execute;
    end;
  end;

end;

procedure TappReportManagerFrm.actDeleteReportExecute(Sender: TObject);
begin
  if IsSystemSestava then
    MessageDlg(ERR_SYSREPORT_DELETE, mtError, [mbOK], 0)
  else
  begin
    if MessageDlg(MSG_QRP_DELETE, mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
      DeleteFile(GetReportFileName);
      actRefreshList.Execute;
    end;

  end;
end;

procedure TappReportManagerFrm.actEditReportExecute(Sender: TObject);
var
  iReport: string;
begin
  if IsSystemSestava then
    MessageDlg(ERR_SYSREPORT_EDIT, mtError, [mbOK], 0)
  else
  begin
    if FEnabledEdit then
    begin
      iReport := GetReportFileName;
      if iReport <> '' then
      begin
        FReport.LoadFromFile(iReport);
        dmReport.SetVariables(FReport);
        SetLocalSettings;
        FReport.DesignReport; // (GetReportFileName);
        actRefreshList.Execute;
      end;
    end;
  end;
end;

procedure TappReportManagerFrm.actNewReportExecute(Sender: TObject);
begin
  FReport.Clear;
  dmReport.SetVariables(FReport);

  SetLocalSettings;

  FReport.DesignReport;
  actRefreshList.Execute;
end;

procedure TappReportManagerFrm.actPreviewReportExecute(Sender: TObject);
begin
  // frVariables['Datum tisku'] := DateTimePicker1.Date;
  if FSestava <> EmptyStr then
  begin
    FReport.LoadFromFile(GetReportFileName);
    dmReport.SetVariables(FReport);
    SetLocalSettings;
    if FReport.Recipient.Subject = '' then
    begin
      iRInfo                    := GetSestavaInfo;
      FReport.Recipient.Subject := iRInfo.DisplayName;
    end;
    FReport.ShowReport;
  end;
end;

procedure TappReportManagerFrm.actRefreshListExecute(Sender: TObject);
begin
  iLoadReports;
end;

procedure TappReportManagerFrm.actSelectPrinterExecute(Sender: TObject);
begin
  if PrintDialog1.Execute then
  begin
    intDefaultPrinter       := printer.Printers[printer.printerindex];
    lbSelectPrinter.Caption := intDefaultPrinter;
  end;
end;

procedure TappReportManagerFrm.actSetDefaultReportExecute(Sender: TObject);
var
  s: string;
begin
  s := GetReportFileName;
  repSetDefaultReport(FModuleName, s);
  Tree.Repaint;
end;

procedure TappReportManagerFrm.FormCreate(Sender: TObject);
begin
  Caption                  := Application.title;
  lbReportFileName.Caption := '';
  intPocetKopii            := 1;
  intDefaultPrinter        := printer.Printers[printer.printerindex];
  lbSelectPrinter.Caption  := intDefaultPrinter;
  FSestava                 := EmptyStr;
  SelectedNode             := nil;
  FEnabledEdit             := true; //
end;

procedure TappReportManagerFrm.FormShow(Sender: TObject);
begin
  iLoadReports;
  Tree.Selected := SelectedNode;
  ActiveControl := Tree;
end;

function TappReportManagerFrm.GetReportFileName: string;
var
  iRInfo: TReportObjectInfo;
begin
  result := EmptyStr;
  iRInfo := GetSestavaInfo;
  if iRInfo <> nil then
    result := FSlozkaSestav + iRInfo.FileName;

end;

function TappReportManagerFrm.GetSestavaInfo: TReportObjectInfo;
var
  Node: TTreeNode;
begin
  Node := Tree.Selected;
  if (Node <> nil) and (Node.data <> nil) then
    result := TReportObjectInfo(Node.data)
  else
    result := nil;

end;

procedure TappReportManagerFrm.iClearReports;
var
  i: Integer;
begin
  for i := 0 to Tree.Items.Count - 1 do
  begin
    if Tree.Items[i].data <> nil then
      TReportObjectInfo(Tree.Items[i].data).Free;
  end;
  Tree.Items.Clear;

end;

procedure TappReportManagerFrm.iLoadReports;
var
  intList   : TStrings;
  i         : Integer;
  intRO     : TReportObjectInfo;
  pNode     : TTreeNode;
  tmpSelNode: TTreeNode;
  findnode  : TTreeNode;
  fDefRep   : string;
begin
  tmpSelNode := nil;

  iClearReports;
  findnode               := Tree.Items.AddChild(nil, 'sestavy');
  findnode.ImageIndex    := 1;
  findnode.SelectedIndex := 1;

  fDefRep := ExtractFileName(repGetDefaultReport(FSlozkaSestav));

  intList := TStringList.Create;
  try
    MyBuildFileList(FSlozkaSestav + '*.fr*', 0, intList);
    for i := 0 to intList.Count - 1 do
    begin
      intRO := TReportObjectInfo.Create(FSlozkaSestav + intList[i]);
      pNode := Tree.Items.AddChildObject(findnode, intRO.DisplayName, intRO);
      with pNode do
      begin
        pNode.ImageIndex    := intRO.ImageIndex;
        pNode.SelectedIndex := intRO.ImageIndex;
        pNode.StateIndex    := intRO.ImageIndex;
      end;
      if i = 0 then
        tmpSelNode := pNode;
      if intList[i] = fDefRep then
        tmpSelNode := pNode;
    end;
    findnode.Expand(true);
  finally
    intList.Free;
  end;
  Tree.alphasort;

  if tmpSelNode <> nil then
    SelectedNode := tmpSelNode;
  Tree.Update;
end;

function TappReportManagerFrm.IsSystemSestava: Boolean;
var
  iRInfo: TReportObjectInfo;
begin
  iRInfo := GetSestavaInfo;
  if iRInfo <> nil then
    result := iRInfo.IsReadOnly
  else
    result := False;
end;

procedure TappReportManagerFrm.Label2Click(Sender: TObject);
begin
  actSelectPrinter.Execute;
end;

procedure TappReportManagerFrm.SetLocalSettings;
begin
  FReport.PrintOptions.ShowDialog := chkShowPrintDlg.Checked;
  FReport.PrintOptions.Copies     := StrToInt(edGBKopie.Text);
  FReport.PrintOptions.printer    := intDefaultPrinter;
end;

procedure TappReportManagerFrm.trwSestavyChange(Sender: TObject; Node: TTreeNode);
begin
  begin
    FSestava                 := GetReportFileName;
    lbReportFileName.Caption := ExtractFileName(FSestava);

    if FReport.FileName <> FSestava then
      FReport.LoadFromFile(FSestava);

    edGBKopie.Value := FReport.PrintOptions.Copies;

    Memo1.Lines.Assign(FReport.ReportOptions.Description);
    actEditReport.Enabled    := true;
    actPreviewReport.Enabled := true;
  end;
end;

procedure TappReportManagerFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TappReportManagerFrm.FormDestroy(Sender: TObject);
begin
  iClearReports;
end;

procedure TappReportManagerFrm.actPrintReportExecute(Sender: TObject);
begin
  if FSestava <> EmptyStr then
  begin
    FReport.LoadFromFile(GetReportFileName);
    dmReport.SetVariables(FReport);
    if FReport.PrepareReport then
    begin
      SetLocalSettings;
      if FReport.Recipient.Subject = '' then
      begin
        iRInfo                    := GetSestavaInfo;
        FReport.Recipient.Subject := iRInfo.DisplayName;
      end;
      FReport.Print;
      Application.ProcessMessages;
      Self.close;

    end;
  end;

end;

procedure TappReportManagerFrm.TreeCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Node.Count <> 0 then
    Tree.Canvas.Font.Style := [fsBold];

end;

procedure TappReportManagerFrm.SetEnabledEdit(const Value: Boolean);
begin
  FEnabledEdit            := Value;
  actEditReport.Visible   := Value;
  actNewReport.Visible    := Value;
  actDeleteReport.Enabled := Value;
  actCopyReport.Visible   := Value;
end;

procedure TappReportManagerFrm.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TappReportManagerFrm.actOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;

end;

end.
