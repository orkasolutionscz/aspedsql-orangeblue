unit appReportModule;

interface

uses
  JclMapi, Windows, Forms, SysUtils, Classes, Dialogs, frxExportXLS, frxExportImage,
  frxExportHTML, frxGradient, frxChBox, frxBarcode, frxExportPDF, frxExportRTF,
  frxCross, frxRich, frxChart, frxClass, frxDCtrl, frxOLE, frxDesgn, frxExportXML,
  frxExportMail, frxExportCSV, frxExportText, frxGZip, frxExportODF, DB,
  frxADOComponents, frxIBZComponents, uCustomModule;

type
  TReportType = (rptSestava);
  // TFaxMailType = (fxmFax, fxmEmail);
  // TftExportType = (fetFr, fetHtml, fetRich, fetGif);
  // Typ akce po vyvolani tiskoveho manazeru
  // TReportAkce = (rpaTisk, rpaNahled, rpaMail, rpaNone);

  // Zkraceny seznam pro exportni formaty
  TReportObjectInfo = class(TObject)
    public
      DisplayName    : string;
      FileName       : string;
      FullFileName   : string;
      ImageIndex     : integer;
      IsCustomPrinter: boolean;
      IsReadOnly     : boolean;
      Kopie          : integer;
      PrinterName    : string;
      ReportType     : TReportType;
      constructor Create(AFileName: string);
      procedure ClearSetting;
      procedure LoadFromFile;
      procedure SaveToFile;
  end;

  TdmReport = class(TjfsEvidenceModule)
    frOLEObject1: TfrxOLEObject;
    frDialogControls1: TfrxDialogControls;
    frxJPEGExport: TfrxJPEGExport;
    frxTIFFExport: TfrxTIFFExport;
    frRichObject1: TfrxRichObject;
    frCrossObject1: TfrxCrossObject;
    frxRTFExport: TfrxRTFExport;
    frxPDFMail: TfrxPDFExport;
    frBarCodeObject1: TfrxBarCodeObject;
    frCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxHTMLExport: TfrxHTMLExport;
    frxBMPExport: TfrxBMPExport;
    frxXLSExport: TfrxXLSExport;
    frxDesigner: TfrxDesigner;
    frxXMLExport1: TfrxXMLExport;
    frxMailExport: TfrxMailExport;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frrXXX: TfrxReport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    fri1: TfrxIBZComponents;
    frxPDFExport1: TfrxPDFExport;
    procedure DataModuleCreate(Sender: TObject);
    procedure lmssCustomDataModuleInitModule(Sender: TObject);
    function frxMailExportSendMail(const Server: String; const Port: integer; const UserField, PasswordField: String;
      FromField, ToField, SubjectField, CompanyField, TextField: WideString; FileNames: TStringList; Timeout: integer;
      ConfurmReading: boolean): String;
    procedure jfsEvidenceModuleInitModule(Sender: TObject);
    procedure frxMailExportBeginExport(Sender: TObject);
    procedure frxPDFMailBeginExport(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      function TempDirName: string;
      { Nastaveni a nacteni promennych pro report }
      procedure SetVariables(aFrReport: TfrxReport);

      (* function ExportReport(
        AReportName: string;
        AExportType: TfrxCustomExportFilter;
        var AExportFileList: TStrings;
        AShowReport: boolean;
        AShowExportFile: boolean): boolean;
      *)
      procedure ShowManager(AFolder: string; aFrReport: TfrxReport);
      procedure ShowReport(AReportName: string; aFrReport: TfrxReport);
      procedure PrintReport(AReportName: string; aFrReport: TfrxReport);
      function ExportReportPDF(AReportName: string; aFrReport: TfrxReport): string;

      function ExportAndSendEmail(AReportName: string; aFrReport: TfrxReport; var AAttachFile: string): boolean;
      // Generuje nazev slozky pro urcitou evidenci
      function GenEvidenceFolder(const AEvidence: string): string;

  end;

  // function ReportManager: TdmReport;
function MyBuildFileList(const Path: string; const Attr: integer; const List: TStrings): boolean;

function GetdmReport: TdmReport;

var
  dmReport: TdmReport;

const
  vnUserName   = 'Uživatel jméno';
  vnUsertEmail = 'Uživatel email';
  vnUserId     = 'Uživatel ID';
  vnUserZnacka = 'Uživatel znaèka';
  vnUserTel    = 'Uživatel telefon';
  vnUserFax    = 'Uživatel fax';
  vnUserMobil  = 'Uživatel mobil';
  vnUserAdmins = 'Uživatel je Admin';

  vnAppTitle   = 'Aplikace nazev';
  vnAppVerze   = 'Aplikace apverze';
  vnRegLicence = 'Licenèní èíslo';
  vnRegOwner   = 'Vlastník licence';
  vnRegOwner1  = 'Vlastník licence dodatek';
  vnRegIco     = 'Vlastník IÈ';

  vnOtherPrintDatTim = 'Vlastní èas tisku';
  vnOtherRecId       = 'RecID';
  vnOtherSqlWhere    = 'SqlWhere';
  vnOtherShowDate    = 'Tisknout datum';
  vnOtherLanguages   = 'Jazyk sestavy';

implementation

{$R *.dfm}

uses
  inifiles, variants, JclFileUtils, JclShell, appReportManagerForm, fMessageDlg, appReportUtils,
  uVarClass, JclStrings, uSendFaxMail
  // , appEmailUtils
    , frxVariables, appIniOptionsUnit
  // , gbuUtility
    , appdmduSystem, Vcl.Clipbrd;

const
  REP_INI_FILENAME = 'Reports.ini';
  EXP_EMAIL_TYPE   = '.pdf';
  EXP_FAX_TYPE     = '.tif';
  RK_PRINTER       = 'Tiskarna';
  RV_PR_NAME       = 'Vybrana tiskarna';
  RV_PR_COPIES     = 'Pocet kopii';
  RV_TOPM          = 'Horni okraj';
  RV_LEFTM         = 'Levy okraj';
  RV_BOTTOMM       = 'Dolni okraj';

resourcestring
  ERR_REPORTNOTEXIST = 'Tisková sestava %s nenalezena!';

function GetdmReport: TdmReport;
begin
  if dmReport = nil then
    Application.CreateForm(TdmReport, dmReport);
  Result := dmReport;
end;

function MyBuildFileList(const Path: string; const Attr: integer; const List: TStrings): boolean;
var
  SearchRec: TSearchRec;
  R        : integer;
begin
  Assert(List <> nil);
  R      := FindFirst(Path, Attr, SearchRec);
  Result := R = 0;
  List.BeginUpdate;
  try
    if Result then
    begin
      while R = 0 do
      begin
        if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
          List.Add(SearchRec.Name);
        R := FindNext(SearchRec);
      end;
      Result := R = ERROR_NO_MORE_FILES;
    end;
  finally
    SysUtils.FindClose(SearchRec);
    List.EndUpdate;
  end;
end;

{
  ****************************** TReportObjectInfo *******************************
}

constructor TReportObjectInfo.Create(AFileName: string);
var
  s     : string;
  I     : TReportType;
  iSrRec: TSearchRec;
  tmpFR : TfrxReport;
begin
  inherited Create;
  tmpFR := TfrxReport.Create(nil);
  try
    FullFileName := AFileName;
    FileName     := ExtractFileName(AFileName);
    tmpFR.LoadFromFile(AFileName);
    DisplayName := tmpFR.ReportOptions.Name;
    if DisplayName = '' then
      DisplayName := 'Neznamý';

    iSrRec     := GetFileInformation(AFileName);
    IsReadOnly := (iSrRec.Attr and SysUtils.faReadonly) > 0;

    // LeftMargin := 10;
    // TopMargin := 10;
    // BottomMargin := 10;

    LoadFromFile;

    s     := ExtractFileExt(AFileName);
    for I := low(AReportTypeExt) to high(AReportTypeExt) do
      if AReportTypeExt[I] = s then
      begin
        ReportType := I;
      end;

    case ReportType of
      rptSestava:
        ImageIndex := 6;
      {
        rptFormular: ImageIndex := 4;
        rptGraf: ImageIndex := 8;
        rptSoucty: ImageIndex := 18;
        rptStitky: ImageIndex := 10;
        rptObalka: ImageIndex := 11;
      }
    end;
  finally
    tmpFR.Free;
  end;
end;

procedure TReportObjectInfo.ClearSetting;
var
  ini: tinifile;
begin
  ini := tinifile.Create(repGetReportIniFile);
  try
    ini.EraseSection(FileName);
    IsCustomPrinter := False;
  finally
    ini.Free;

  end;
end;

procedure TReportObjectInfo.LoadFromFile;
var
  ini: tinifile;
begin
  ini := tinifile.Create(repGetReportIniFile);
  try
    if ini.SectionExists(FileName) then
    begin
      IsCustomPrinter := True;
      PrinterName     := ini.ReadString(FileName, RV_PR_NAME, '');
      Kopie           := ini.ReadInteger(FileName, RV_PR_COPIES, Kopie);
      // TopMargin := Ini.ReadInteger(FileName, RV_TOPM, TopMargin);
      // LeftMargin := Ini.ReadInteger(FileName, RV_LEFTM, LeftMargin);
      // BottomMargin := Ini.ReadInteger(FileName, RV_BOTTOMM, BottomMargin);
    end;
  finally

    ini.Free;
  end;
end;

procedure TReportObjectInfo.SaveToFile;
var
  ini: tinifile;
begin
  ini := tinifile.Create(repGetReportIniFile);
  try
    ini.WriteString(FileName, RV_PR_NAME, PrinterName);
    ini.WriteInteger(FileName, RV_PR_COPIES, Kopie);
    // Ini.WriteInteger(FileName, RV_TOPM, TopMargin);
    // Ini.WriteInteger(FileName, RV_LEFTM, LeftMargin);
    // Ini.WriteInteger(FileName, RV_BOTTOMM, BottomMargin);

  finally
    ini.Free;

  end;
end;

{ TdmdReport }

function TdmReport.GenEvidenceFolder(const AEvidence: string): string;
begin
  Result := PathAddSeparator(PathAddSeparator(IniOptions.SetReportFolder) + AEvidence);
  ForceDirectories(Result);
end;

function TdmReport.ExportAndSendEmail(AReportName: string; aFrReport: TfrxReport; var AAttachFile: string): boolean;
var
  aBaseName: string;
  bJeFax   : boolean;
  JclEmailW: TJclEmail;

begin
  Result := False;

  if (AReportName = EmptyStr) then
    exit;

  aBaseName := IntToStr(DateTimeToFileDate(now));
  bJeFax    := pos('@fax', aFrReport.Recipient.SendAdress) > 0;

  try
    // frxReport.Clear;
    Result := aFrReport.LoadFromFile(AReportName);
    if Result then
    begin

      SetVariables(aFrReport); // Nesmime zapomenout nacist hodnoty
      { Puvodni yobrazeni }
      aFrReport.PrepareReport(True);
      // aFrReport.ShowReport(true);
      if sfMAPITypPrilohy = SFMAPIATTACH_PDF then // PDF
      begin
        AAttachFile         := TempDirName + aBaseName + '.pdf';
        frxPDFMail.FileName := AAttachFile;
        Result              := aFrReport.Export(frxPDFMail);
      end
      else if sfMAPITypPrilohy = SFMAPIATTACH_JPG then // JPG
      begin
        AAttachFile                 := TempDirName + aBaseName + '.jpg';
        frxJPEGExport.SeparateFiles := False;
        frxJPEGExport.ShowDialog    := False;
        frxJPEGExport.FileName      := AAttachFile;
        Result                      := aFrReport.Export(frxJPEGExport);
      end;

      if Result then
      begin
        JclEmailW := TJclEmail.Create;
        try
          JclEmailW.Recipients.Add(AnsiString(aFrReport.Recipient.SendAdress), AnsiString(aFrReport.Recipient.RecipientName));

          JclEmailW.ClientConnectKind   := sfMAPIClientConnect;
          JclEmailW.SelectedClientIndex := sfMAPISelectedClientIndex;
          if sfMailCCAdress <> '' then
            JclEmailW.Recipients.Add(AnsiString(sfMailCCAdress), AnsiString(sfMailCCAdress));
          JclEmailW.Attachments.Add(AnsiString(AAttachFile));
          if bJeFax then
            JclEmailW.Subject := AnsiString('s=' + aFrReport.Recipient.Subject + ' p=' + sfFaxCzRegEmailPasswd)
          else
            JclEmailW.Subject := AnsiString(aFrReport.Recipient.Subject);

          Application.ProcessMessages;
          Result := JclEmailW.Send(sfMAPIShowMailDialog);
          Application.ProcessMessages;
        finally
          JclEmailW.Free;
        end;
      end;
    end;
  except
    Result := False;
    Application.MessageBox('Neznámá chyba , zkuste jiný zpusob odeslání', 'Odeslání dat', MB_ICONEXCLAMATION or MB_OK);
  end;
end;

function TdmReport.ExportReportPDF(AReportName: string; aFrReport: TfrxReport): string;
var
  aBaseName: string;
begin
  Result := EmptyStr;

  aBaseName := IntToStr(DateTimeToFileDate(now));

  try
    // frxReport.Clear;

    if aFrReport.LoadFromFile(AReportName) then
    begin
      { Puvodni yobrazeni }
      SetVariables(aFrReport);
      aFrReport.PrepareReport(True);
      Result                     := TempDirName + aBaseName + EXP_EMAIL_TYPE;
      frxPDFMail.FileName        := Result;
      frxPDFMail.ShowDialog      := False;
      frxPDFMail.OpenAfterExport := False;
      aFrReport.Export(frxPDFMail);
    end;
  except
    Result := 'Error';
  end;
end;

procedure TdmReport.ShowManager(AFolder: string; aFrReport: TfrxReport);
var
  dlg: TappReportManagerFrm;
begin
  dlg := RMForm(AFolder, aFrReport);
  try
    dlg.ShowModal;
  finally
    dlg.Free;
  end;

end;

procedure TdmReport.ShowReport(AReportName: string; aFrReport: TfrxReport);
begin
  if FileExists(AReportName) then
  begin
    aFrReport.LoadFromFile(AReportName);
    SetVariables(aFrReport);
    // aFrReport.PrepareReport();
    aFrReport.ShowReport;
  end
  else
    DisplayError(format(ERR_REPORTNOTEXIST, [AReportName]));

end;

procedure TdmReport.PrintReport(AReportName: string; aFrReport: TfrxReport);
begin
  if FileExists(AReportName) then
  begin
    aFrReport.LoadFromFile(AReportName);
    SetVariables(aFrReport);
    aFrReport.PrepareReport();
    aFrReport.Print;
  end
  else
    DisplayError(format(ERR_REPORTNOTEXIST, [AReportName]));

end;

function TdmReport.TempDirName: string;
var
  tempFolder: array [0 .. MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  Result := StrPas(tempFolder);
end;

{
  function TempFolder: String;
  var
  bufFolder: array [0..MAX_PATH] of Char;
  begin
  GetTempPath(SizeOf(bufFolder), bufFolder);
  Result := IncludeTrailingPathDelimiter(String(bufFolder));
  end;
}

procedure TdmReport.DataModuleCreate(Sender: TObject);
begin
  { Adresar sestav je nastaven natvrdo }
  // ReportFolder := sysReportFolder.Value;
  // ForceDirectories(ReportFolder);
  { Logovani mailu }
  if sfMAPITypPrilohy = SFMAPIATTACH_PDF then
    frxMailExport.ExportFilter := frxPDFMail
  else if sfMAPITypPrilohy = SFMAPIATTACH_JPG then
    frxMailExport.ExportFilter := frxJPEGExport;

  frxMailExport.ShowDialog       := False;
  frxMailExport.ShowExportDialog := False;

  frxPDFMail.ShowDialog      := False;
  frxPDFMail.OpenAfterExport := False;
end;

procedure TdmReport.lmssCustomDataModuleInitModule(Sender: TObject);
begin
  { Inicializace modulu }
end;

procedure TdmReport.SetVariables(aFrReport: TfrxReport);
const
  frcRegister = 'Registrace';
  frcUser     = 'Uživatel';
  frcOther    = 'Ostatní';
begin
  if aFrReport = nil then
    exit;

  aFrReport.Variables.Clear;
  aFrReport.Variables[' ' + frcRegister] := Null;
  aFrReport.Variables.AddVariable(frcRegister, vnAppTitle, StrSingleQuote(Application.Title));
  aFrReport.Variables.AddVariable(frcRegister, vnRegLicence, StrSingleQuote(dmdSystem.gbAktivace.licencniCislo));
  aFrReport.Variables.AddVariable(frcRegister, vnRegOwner, StrSingleQuote(dmdSystem.gbAktivace.nazev1));
  aFrReport.Variables.AddVariable(frcRegister, vnRegOwner1, StrSingleQuote(dmdSystem.gbAktivace.nazev2));
  aFrReport.Variables.AddVariable(frcRegister, vnRegIco, StrSingleQuote(dmdSystem.gbAktivace.ICO));

  aFrReport.Variables[' ' + frcUser] := Null;
  aFrReport.Variables.AddVariable(frcUser, vnUserName, StrSingleQuote(jfaUserInfo.UserName));
  aFrReport.Variables.AddVariable(frcUser, vnUsertEmail, StrSingleQuote(jfaUserInfo.UserEmail));
  aFrReport.Variables.AddVariable(frcUser, vnUserId, StrSingleQuote(jfaUserInfo.UserId));
  aFrReport.Variables.AddVariable(frcUser, vnUserZnacka, StrSingleQuote(jfaUserInfo.UserZnacka));
  aFrReport.Variables.AddVariable(frcUser, vnUserTel, StrSingleQuote(jfaUserInfo.UserTel));
  aFrReport.Variables.AddVariable(frcUser, vnUserFax, StrSingleQuote(jfaUserInfo.UserFax));
  aFrReport.Variables.AddVariable(frcUser, vnUserMobil, StrSingleQuote(jfaUserInfo.UserMobil));
  aFrReport.Variables.AddVariable(frcUser, vnUserAdmins, jfaUserInfo.AdminsUser);

  aFrReport.Variables[' ' + frcOther] := Null;
  aFrReport.Variables.AddVariable(frcOther, vnOtherLanguages, StrSingleQuote('CZ'));
  aFrReport.Variables.AddVariable(frcOther, vnOtherPrintDatTim, StrSingleQuote(DateTimeToStr(now)));
  aFrReport.Variables.AddVariable(frcOther, vnOtherRecId, 0);
  aFrReport.Variables.AddVariable(frcOther, vnOtherSqlWhere, 'true');
  aFrReport.Variables.AddVariable(frcOther, vnOtherShowDate, False);

end;

function TdmReport.frxMailExportSendMail(const Server: String; const Port: integer; const UserField, PasswordField: String;
  FromField, ToField, SubjectField, CompanyField, TextField: WideString; FileNames: TStringList; Timeout: integer; ConfurmReading: boolean): String;
var
  JclEmailW: TJclEmail;
begin
  JclEmailW := TJclEmail.Create;
  try
    try

      if (frxMailExport.Report.Recipient.SendAdress <> '') and sfMailAddToAddres then
        JclEmailW.Recipients.Add(AnsiString(frxMailExport.Report.Recipient.SendAdress), AnsiString(frxMailExport.Report.Recipient.RecipientName));
      // JclEmailW.Recipients.Add(ToField, ToField);
      JclEmailW.ClientConnectKind   := sfMAPIClientConnect;
      JclEmailW.SelectedClientIndex := sfMAPISelectedClientIndex;

      // if FileExists(RepAttachFile) then
      if sfMailCCAdress <> '' then
        JclEmailW.Recipients.Add(AnsiString(sfMailCCAdress), AnsiString(sfMailCCAdress));

      JclEmailW.Attachments.Assign(FileNames);
      // rec
      if pos(sfFaxCzServer, frxMailExport.Report.Recipient.SendAdress) > 0 then
        JclEmailW.Subject := AnsiString('s=' + frxMailExport.Report.Recipient.Subject + ' p=' + sfFaxCzRegEmailPasswd)
      else
        JclEmailW.Subject := AnsiString(frxMailExport.Report.Recipient.Subject);

      // Pokus o reseni problému s prevedenim prilohy emailu do formatu windat.dat
      JclEmailW.HtmlBody := False;
      // Kopie adresz do Clipboadr
      Clipboard.AsText := frxMailExport.Report.Recipient.SendAdress;

      Application.ProcessMessages;
      JclEmailW.Send(sfMAPIShowMailDialog);
      Application.ProcessMessages;

      if sfMAPIAutoCloseMailDialog and (frxMailExport.Report.PreviewForm <> nil) then
        frxMailExport.Report.PreviewForm.Close;
    except
      Application.MessageBox('Neznámá chyba , zkuste jiný zpusob odeslání', 'Odeslání dat', MB_ICONEXCLAMATION or MB_OK);
    end;
  finally
    JclEmailW.Free;
  end;
end;

procedure TdmReport.frxPDFMailBeginExport(Sender: TObject);
begin
  frxPDFMail.FileName    := TempDirName + IntToStr(DateTimeToFileDate(now)) + '.pdf';
  frxPDFMail.SlaveExport := False;
end;

procedure TdmReport.jfsEvidenceModuleInitModule(Sender: TObject);
begin
  frxMailExport.LogFile       := 'maillog.log';
  frxMailExport.FromMail      := jfaUserInfo.UserEmail;
  frxMailExport.FromName      := jfaUserInfo.UserName;
  frxPDFMail.EmbeddedFonts    := sfMAPIPDFEmbeddedFont;
  frxPDFExport1.EmbeddedFonts := sfMAPIPDFEmbeddedFont;
end;

procedure TdmReport.frxMailExportBeginExport(Sender: TObject);
begin
  frxJPEGExport.SeparateFiles := True;

  if sfMAPITypPrilohy = SFMAPIATTACH_PDF then
  begin
    frxMailExport.ExportFilter := frxPDFMail;
  end
  else if sfMAPITypPrilohy = SFMAPIATTACH_JPG then
  begin
    frxMailExport.ExportFilter := frxJPEGExport;
  end;
  frxMailExport.ExportFilter.SlaveExport := False;

end;

end.
