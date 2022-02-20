unit fMainUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxStatusBar, dxRibbonStatusBar, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Db, dxNavBarCollns, dxNavBarBase, dxNavBar,
  StdCtrls, cxButtons, cxLabel, cxTextEdit, cxContainer, cxEdit,
  cxGroupBox, cxPC, rsStorage, rsPropSaver, cxMaskEdit, cxButtonEdit,
  cxPCdxBarPopupMenu, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, dPohoExportImportUnit, Vcl.Ribbon, Vcl.ActnCtrls,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus, Vcl.RibbonActnMenus, Vcl.ActnList,
  Vcl.ImgList, Vcl.RibbonLunaStyleActnCtrls, Vcl.StdActns, Vcl.ScreenTips,
  dxRibbonSkins, dxBar, dxRibbon, dxRibbonForm, dxBarExtItems, cxBarEditItem,
  dxScreenTip, dxRibbonMiniToolbar, dxBarApplicationMenu, WUpdateWiz,
  WUpdateLanguagesU, WUpdate, uAboutBox, dxBarExtDBItems, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  TfrmMain = class(TdxRibbonForm)
    dsFV: TDataSource;
    dxStatusBar1: TdxStatusBar;
    rsPropSaver1: TrsPropSaver;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    cxlBig: TcxImageList;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    cxgrdMaster: TcxGrid;
    tvFV: TcxGridDBTableView;
    tvFVSID: TcxGridDBColumn;
    tvFVTYP: TcxGridDBColumn;
    tvFVFAKTURA: TcxGridDBColumn;
    tvFVSYMBVARIA: TcxGridDBColumn;
    tvFVZASILKA: TcxGridDBColumn;
    tvFVNAZEV: TcxGridDBColumn;
    tvFVADRESA3: TcxGridDBColumn;
    tvFVZEME: TcxGridDBColumn;
    tvFVDIC: TcxGridDBColumn;
    tvFVDATVYSTAVENI: TcxGridDBColumn;
    tvFVDATDANPOV: TcxGridDBColumn;
    tvFVDATSPLATNOST: TcxGridDBColumn;
    tvFVCELKEM: TcxGridDBColumn;
    tvFVCENAMENA: TcxGridDBColumn;
    tvFVSTAV: TcxGridDBColumn;
    glvFV: TcxGridLevel;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxstStandardSelect: TdxScreenTip;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbonMiniToolbar1: TdxRibbonMiniToolbar;
    dxbrQuick: TdxBar;
    cxlSmall: TcxImageList;
    dxBarLargeButton6: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    dxBarManager1Bar1: TdxBar;
    dxstExport: TdxScreenTip;
    jfsAboutBox1: TjfsAboutBox;
    dxAbout: TdxBarButton;
    dsFaktLook: TDataSource;
    cbFaktOd: TdxBarLookupCombo;
    cbFaktDo: TdxBarLookupCombo;
    glvFP: TcxGridLevel;
    tvFP: TcxGridDBTableView;
    dsFP: TDataSource;
    tvFPSID: TcxGridDBColumn;
    tvFPFAKTURADO: TcxGridDBColumn;
    tvFPVARIABILNI: TcxGridDBColumn;
    tvFPZASILKA: TcxGridDBColumn;
    tvFPDATSPLATNOST: TcxGridDBColumn;
    tvFPDATDANPOV: TcxGridDBColumn;
    tvFPNAZEV: TcxGridDBColumn;
    tvFPICO: TcxGridDBColumn;
    tvFPDIC: TcxGridDBColumn;
    tvFPADRESA3: TcxGridDBColumn;
    tvFPZEME: TcxGridDBColumn;
    tvFPCELKEM: TcxGridDBColumn;
    tvFPCENAMENA: TcxGridDBColumn;
    tvFPSTAV: TcxGridDBColumn;
    grpm1: TcxGridPopupMenu;
    dxb1: TdxBarButton;
    procedure btnFVDefClick(Sender: TObject);
    procedure btnFVRangeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFVStornoClick(Sender: TObject);
    procedure btnFVExportClick(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxAboutClick(Sender: TObject);
    procedure cbFaktOdDropDown(Sender: TObject);
    procedure cxgrdMasterActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
    procedure dxb1Click(Sender: TObject);
  private
    FMyFvActiveWhere: string;
    procedure SetMyFvActiveWhere(const Value: string);
    procedure ExportFV;
    procedure ExportFD;
  private
    FMyFdActiveWhere: string;
    procedure SetMyFdActiveWhere(const Value: string);
    { Private declarations }
    property MyFvActiveWhere: string read FMyFvActiveWhere write SetMyFvActiveWhere;
    property MyFdActiveWhere: string read FMyFdActiveWhere write SetMyFdActiveWhere;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses dConnectUnit, fMessageDlg, fOptionsUnit, System.Variants,
  fAopPohodaParUnit, dSQLPohodaConnect;

{$R *.DFM}

procedure TfrmMain.btnFVDefClick(Sender: TObject);
begin
  if cxgrdMaster.ActiveLevel = glvFV then
  begin
    MyFvActiveWhere := gbDefFVWhere;
    dmdConnect.dtsFV.Close;
    dmdConnect.dtsFV.SQL.Clear;
    dmdConnect.dtsFV.SQL.Add('SELECT * FROM FVSEZNAM');
    dmdConnect.dtsFV.SQL.Add('WHERE ' + MyFvActiveWhere);
    dmdConnect.dtsFV.SQL.Add('ORDER BY FAKTURA');
    dmdConnect.dtsFV.Open;
  end
  else
  begin
    MyFdActiveWhere := gbDefFDWhere;
    dmdConnect.dtsFD.Close;
    dmdConnect.dtsFD.SQL.Clear;
    dmdConnect.dtsFD.SQL.Add('SELECT * FROM FDSEZNAM');
    dmdConnect.dtsFD.SQL.Add('WHERE ' + MyFdActiveWhere);
    dmdConnect.dtsFD.SQL.Add('ORDER BY FAKTURADO');
    dmdConnect.dtsFD.Open;

  end;

end;

procedure TfrmMain.btnFVRangeClick(Sender: TObject);
begin
  if cxgrdMaster.ActiveLevel = glvFV then
  begin
    MyFvActiveWhere := 'FAKTURA >= ' + QuotedStr(cbFaktOd.Text) + ' AND FAKTURA <= ' + QuotedStr(cbFaktDo.Text);
    dmdConnect.dtsFV.Close;
    dmdConnect.dtsFV.SQL.Clear;
    dmdConnect.dtsFV.SQL.Add('SELECT * FROM FVSEZNAM');
    dmdConnect.dtsFV.SQL.Add('WHERE ' + MyFvActiveWhere);
    dmdConnect.dtsFV.SQL.Add('ORDER BY FAKTURA');
    dmdConnect.dtsFV.Open;
  end
  else
  begin
    MyFdActiveWhere := 'FAKTURADO >= ' + QuotedStr(cbFaktOd.Text) + ' AND FAKTURADO <= ' + QuotedStr(cbFaktDo.Text);
    dmdConnect.dtsFD.Close;
    dmdConnect.dtsFD.SQL.Clear;
    dmdConnect.dtsFD.SQL.Add('SELECT * FROM FDSEZNAM');
    dmdConnect.dtsFD.SQL.Add('WHERE ' + MyFdActiveWhere);
    dmdConnect.dtsFD.SQL.Add('ORDER BY FAKTURADO');
    dmdConnect.dtsFD.Open;
  end;
end;

procedure TfrmMain.SetMyFdActiveWhere(const Value: string);
begin
  FMyFdActiveWhere := Value;
end;

procedure TfrmMain.SetMyFvActiveWhere(const Value: string);
begin
  FMyFvActiveWhere            := Value;
  dxStatusBar1.Panels[1].Text := Value;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  MyFvActiveWhere                   := gbDefFVWhere;
  MyFdActiveWhere                   := gbDefFDWhere;
  dxRibbon1.SupportNonClientDrawing := true;
  // dmdConnect.dtsFVCisla.Open;
end;

procedure TfrmMain.btnFVStornoClick(Sender: TObject);
begin
  if cxgrdMaster.ActiveLevel = glvFV then
  begin
    if DisplayConfirm('Chcete oznaèit vybrané záznamy jako NEEXPORTOVANÉ?', 'Aktivní podmínka filtru záznamù: ' + MyFvActiveWhere) then
    begin
      dmdConnect.IBOMainDB.ExecSQL('update fv set STAV = 1 WHERE ' + MyFvActiveWhere);
      dmdConnect.dtsFV.Refresh;
    end;
  end
  else
  begin
    if DisplayConfirm('Chcete oznaèit vybrané záznamy jako NEEXPORTOVANÉ?', 'Aktivní podmínka filtru záznamù: ' + MyFdActiveWhere) then
    begin
      dmdConnect.IBOMainDB.ExecSQL('update fadosle set STAV = 1 WHERE ' + MyFdActiveWhere);
      dmdConnect.dtsFD.Refresh;
    end;
  end;
end;

procedure TfrmMain.cbFaktOdDropDown(Sender: TObject);
begin
  dsFaktLook.DataSet.Open;
end;

procedure TfrmMain.cxgrdMasterActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
begin
  if ALevel = glvFV then
  begin
    dsFaktLook.DataSet := dmdConnect.dtsFVCisla;
  end
  else
  begin
    dsFaktLook.DataSet := dmdConnect.dtsFDCisla;
  end;

end;

procedure TfrmMain.dxAboutClick(Sender: TObject);
begin
  jfsAboutBox1.Execute;
end;

procedure TfrmMain.dxb1Click(Sender: TObject);
begin
  TfrmAopParovani.Create(Application).ShowModal;

end;

procedure TfrmMain.dxBarLargeButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.dxBarLargeButton6Click(Sender: TObject);
begin
  TfrmOptions.Create(Application).ShowModal;
end;

procedure TfrmMain.ExportFD;
var
  sExportSoubor: string;
begin
  if DisplayConfirm('Chcete spustit dávku pro export došlých faktur?') then
  begin
    sExportSoubor := gbExportFolder + FDXMLPOHODAFILENAME;
    if not DirectoryExists(gbExportFolder) then
      CreateDir(gbExportFolder);
    if FileExists(sExportSoubor) then
      DeleteFile(sExportSoubor);

    GetdmdPohoExpImp.EDF_PohodaData.Close;
    GetdmdPohoExpImp.EDF_PohodaData.Active := true;
    dmdConnect.dtsFD.First;
    while not dmdConnect.dtsFD.Eof do // Iterate
    begin
      { Pokud neni zaznam exportovan, provedeme export }
      if dmdConnect.dtsFDSTAV.AsInteger = 1 then
      begin
        { Otevreme data detailu }
        GetdmdPohoExpImp.AddFDRecord(dmdConnect.dtsFDSID.AsString);
      end;
      dmdConnect.dtsFD.Next;
    end; // while
    { Vlastni export }
    try
      GetdmdPohoExpImp.ExportFDToXml(sExportSoubor);
      dmdConnect.IBOMainDB.ExecSQL('update fadosle set STAV = 9 WHERE ' + MyFdActiveWhere);
      dmdConnect.dtsFD.Refresh;
      DisplayiNFO(SINF_OK_EXPORT, 'Exportovaná data jsou uložena v souboru : ' + sExportSoubor);

    except
      raise Exception.Create('Export faktur se nezdaøil');
    end;

  end;
end;

procedure TfrmMain.ExportFV;
var
  sExportSoubor: string;
begin
  if DisplayConfirm('Chcete spustit dávku pro export vydaných faktur?') then
  begin
    sExportSoubor := gbExportFolder + FVXMLPOHODAFILENAME;
    if not DirectoryExists(gbExportFolder) then
      CreateDir(gbExportFolder);
    if FileExists(sExportSoubor) then
      DeleteFile(sExportSoubor);

    GetdmdPohoExpImp.EVF_PohodaData.Close;
    GetdmdPohoExpImp.EVF_PohodaData.Active := true;
    dmdConnect.dtsFV.First;
    while not dmdConnect.dtsFV.Eof do // Iterate
    begin
      { Pokud neni zaznam exportovan, provedeme export }
      if dmdConnect.dtsFVSTAV.AsInteger = 1 then
      begin
        { Otevreme data detailu }
        GetdmdPohoExpImp.AddFVPRecord(dmdConnect.dtsFVSID.AsString);
      end;
      dmdConnect.dtsFV.Next;
    end; // while
    { Vlastni export }
    try
      GetdmdPohoExpImp.ExportToXml(sExportSoubor);
      dmdConnect.IBOMainDB.ExecSQL('update fv set STAV = 9 WHERE ' + MyFvActiveWhere);
      dmdConnect.dtsFV.Refresh;
      DisplayiNFO(SINF_OK_EXPORT, 'Exportovaná data jsou uložena v souboru : ' + sExportSoubor);

    except
      raise Exception.Create('Export faktur se nezdaøil');
    end;

  end;
end;

procedure TfrmMain.btnFVExportClick(Sender: TObject);
begin
  if dmdSqlPohoda.DBConnect then
  begin
    if cxgrdMaster.ActiveLevel = glvFV then
      ExportFV
    else
      ExportFD;
  end;

end;

end.
