unit appfrmuMain;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus, StdActns,
  DBActns, ActnList, ImgList, Db, ComCtrls, ExtCtrls, rsStorage, rsPropSaver,
  StdCtrls, WUpdateWiz, WUpdate, dxBar, cxClasses, cxControls,
  dxStatusBar, dxNavBarCollns, dxNavBarBase, dxNavBar, uAboutBox,
  IBODataset, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  WUpdateLanguagesU, cxPC, cxPCdxBarPopupMenu, dxTabbedMDI, uCustomForms,
  cxLocalization;

type
  TfrmMainForm = class(TjfsDefaultForm)
    ActionList1: TActionList;
    WindowClose1: TWindowClose;
    actExit: TAction;
    actWindowCloseAll: TAction;
    actZobrazTLPAplikace: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    psMainForm: TrsPropSaver;
    actAppRegistrace: TAction;
    actWebUpdate: TAction;
    wuWebUpdata: TWebUpdate;
    wuUpdateWizard1: TWebUpdateWizard;
    WebUpdateWizardCzech1: TWebUpdateWizardCzech;
    actTeamServis: TAction;
    dxbMain: TdxBarManager;
    dxbMainBar1: TdxBar;
    dxiSoubor: TdxBarSubItem;
    dxiNastaveni: TdxBarSubItem;
    dxiAdresar: TdxBarSubItem;
    dxiSpedice: TdxBarSubItem;
    dxiFakturace: TdxBarSubItem;
    dxiZaznam: TdxBarSubItem;
    dxiVybery: TdxBarSubItem;
    dxiOkno: TdxBarSubItem;
    dxiHelp: TdxBarSubItem;
    dxbLogin: TdxBarButton;
    dxbPrintMng: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxiDBTools: TdxBarSubItem;
    dxiExpImp: TdxBarSubItem;
    dxiBackup: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxi1: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    actAbout: TAction;
    StatusBar: TdxStatusBar;
    dxnMain: TdxNavBar;
    dngMainGroup1: TdxNavBarGroup;
    dxiAOP: TdxNavBarItem;
    dxiPrepravy: TdxNavBarItem;
    dxiPoptavky: TdxNavBarItem;
    dxiFVydane: TdxNavBarItem;
    dxiFDosle: TdxNavBarItem;
    dxiPrikazy: TdxNavBarItem;
    dxiDopisy: TdxNavBarItem;
    dxiExit: TdxNavBarItem;
    AboutBox1: TjfsAboutBox;
    dxBarListWindows: TdxBarListItem;
    dxBarButton3: TdxBarButton;
    dxiStatistika: TdxNavBarItem;
    dxBarButton6: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxbBackup: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxb1: TdxBarButton;
    actZobrazDefault: TAction;
    dxb2: TdxBarButton;
    dxtbMain: TdxTabbedMDIManager;
    actUpdateKTL: TAction;
    cxLocalizer1: TcxLocalizer;
    dxBarButton2: TdxBarButton;
    dxb3: TdxBarButton;
    dxb4: TdxBarButton;
    procedure HelpAbout1Execute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actWindowCloseAllExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAppRegistraceExecute(Sender: TObject);
    procedure actWebUpdateExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure dxBarListWindowsGetData(Sender: TObject);
    procedure dxBarListWindowsClick(Sender: TObject);
    procedure actZobrazTLPAplikaceExecute(Sender: TObject);
    procedure psMainFormAfterLoad(Sender: TObject);
    procedure wuWebUpdataAppRestart(Sender: TObject; var Allow: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure actZobrazDefaultExecute(Sender: TObject);
    procedure actTeamServisExecute(Sender: TObject);
    procedure actUpdateKTLExecute(Sender: TObject);
  private
    { Private declarations }
    // ShowBackupDialog: boolean;
    tlbAppDefStream: TMemoryStream;
    procedure UpdateChild(Sender: TObject);
  public
    { Public declarations }
    CreatedMDICount: Integer;
    procedure ShowItems(AShow: Boolean);
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.DFM}

uses
  appunConst, uVarClass, fMessageDlg, appdmduSystem, DOCfrmuModule,
  AOPfrmuModule, ZSfrmuModule, FVfrmuModule, FPUfrmuModule, FDfrmuModule,
  Dialogs, appfrmuGlobal, POPfrmuModule, _frmuCustomBrowse,
  STfrmuModule, fModulBrowse, Winapi.ShellAPI;

procedure TfrmMainForm.HelpAbout1Execute(Sender: TObject);
begin
  with AboutBox1 do
  begin
    UserName := dmdSystem.gbAktivace.nazev1;
    SerialNo := dmdSystem.gbAktivace.licencniCislo;
    Execute;
  end;
end;

procedure TfrmMainForm.actExitExecute(Sender: TObject);
begin
  Close;
  actWindowCloseAll.Execute;
end;

procedure TfrmMainForm.actTeamServisExecute(Sender: TObject);
var
  atwfile: string;
begin
  // Yatim nic

  atwfile := ExtractFilePath(Application.ExeName )+ 'aspedsupp.exe';
  if FileExists(atwfile) then
    ShellExecute(Handle, 'open', PChar(atwfile), nil, nil, SW_SHOWNORMAL);

end;

procedure TfrmMainForm.actUpdateKTLExecute(Sender: TObject);
begin
  GetAOPmodul.RefreshKatalogs;
end;

procedure TfrmMainForm.FormCreate(Sender: TObject);
begin
  tlbAppDefStream := TMemoryStream.Create;
  // dxbMain.Style            := jfaBarMngStyle;
  StatusBar.PaintStyle     := stpsUseLookAndFeel;
  StatusBar.Panels[3].Text := GetdmdSystem.IBOMainDB.Database;
  Self.Caption             := Application.Title;
  dxnMain.SaveToStream(tlbAppDefStream);
  dxnMain.LoadFromRegistry(mxRegistryAppRootKey + '\ManiOknoTools\', false);
  dxnMain.Font.Name := GetdmdGlobal.StyleDefaultController.Style.Font.Name;
  dxnMain.Font.Size := dmdGlobal.StyleDefaultController.Style.Font.Size;

  wuWebUpdata.LogFileName   := ChangeFileExt(ExtractFileName(Application.ExeName), '.wlog');
  Screen.OnActiveFormChange := UpdateChild;
  cxLocalizer1.Active       := True;
  cxLocalizer1.Locale       := 1029;

{$IFDEF DEMOKOMPILACE}
  actAppRegistrace.Enabled := false;
{$ENDIF}
end;

procedure TfrmMainForm.FormDestroy(Sender: TObject);
begin
  tlbAppDefStream.Free;
end;

procedure TfrmMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.OnActiveFormChange := nil;
  Action                    := caFree;
end;

procedure TfrmMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  dxnMain.SaveToRegistry(mxRegistryAppRootKey + '\ManiOknoTools\', false);
  psMainForm.SaveValues;
  actWindowCloseAll.Execute;
  dmdSystem.IBOMainDB.Disconnect;
end;

procedure TfrmMainForm.actWindowCloseAllExecute(Sender: TObject);
var
  I: Integer;
begin
  for I := MDIChildCount - 1 downto 0 do
    MDIChildren[I].Close;
end;

procedure TfrmMainForm.FormShow(Sender: TObject);
begin
{$IFNDEF DISABLEWEBUPDATE}
  if wuWebUpdata.NewVersionAvailable then
  begin
    StatusBar.Panels[4].Text := 'Je k dispozici nová aktualizace pro A-SPED SQL';
    if jfaUserInfo.AdminsUser then
      ShowMessage('Je k dispozici nová aktualizace pro A-SPED SQL');
  end;
{$ENDIF}
end;

procedure TfrmMainForm.actAppRegistraceExecute(Sender: TObject);
begin
  dmdSystem.gbAktivace.ShowAktivacniOkno
end;

procedure TfrmMainForm.actWebUpdateExecute(Sender: TObject);
begin
  actWindowCloseAll.Execute;
  try
    wuUpdateWizard1.Execute;
  except

  end;
end;

procedure TfrmMainForm.actAboutExecute(Sender: TObject);
begin
  with AboutBox1 do
  begin
    UserName := dmdSystem.gbAktivace.nazev1;
    SerialNo := dmdSystem.gbAktivace.licencniCislo;
    Execute;
  end;
end;

procedure TfrmMainForm.ShowItems(AShow: Boolean);
begin

end;

procedure TfrmMainForm.dxBarListWindowsGetData(Sender: TObject);
begin
  with dxBarListWindows do
    ItemIndex := Items.IndexOfObject(ActiveMDIChild);
end;

procedure TfrmMainForm.dxBarListWindowsClick(Sender: TObject);
begin
  with dxBarListWindows do
    TCustomForm(Items.Objects[ItemIndex]).Show;

end;

procedure TfrmMainForm.UpdateChild(Sender: TObject);
begin
  // Nic
  StatusBar.Panels[2].Text := '<<>>';

  if ActiveMDIChild is TfrmModulBrowse then
  begin
    with (ActiveMDIChild as TfrmModulBrowse) do
    begin
      try
        if SQLControler.FilterActive then
          frmMainForm.StatusBar.Panels[2].Text := IntToStr(TIBOQuery(SQLControler.DataSet).RecordCountAll);
      except

      end;

    end;
  end;

end;

procedure TfrmMainForm.actZobrazDefaultExecute(Sender: TObject);
begin
  if DisplayConfirm('Chcete nastavit panel modulù do výchozího vzhledu?') then
  begin
    tlbAppDefStream.Position := 0;
    dxbMain.LoadFromStream(tlbAppDefStream);
  end;
end;

procedure TfrmMainForm.actZobrazTLPAplikaceExecute(Sender: TObject);
begin
  actZobrazTLPAplikace.Checked := not actZobrazTLPAplikace.Checked;
  dxnMain.Visible              := actZobrazTLPAplikace.Checked;
end;

procedure TfrmMainForm.psMainFormAfterLoad(Sender: TObject);
begin
  dxnMain.Visible := actZobrazTLPAplikace.Checked;
end;

procedure TfrmMainForm.wuWebUpdataAppRestart(Sender: TObject; var Allow: Boolean);
begin
  Screen.OnActiveFormChange := nil;
end;

end.
