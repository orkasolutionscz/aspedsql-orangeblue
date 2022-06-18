unit appdmduSystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  uCustomModule, uVarClass, ActnList,
  rsStorage, rsPropSaver, rsIniData, rsBinData, rsRegData, rsXorEncryptor,
  Menus, uAKTCode, ImgList, cxGridCustomView, cxEdit,
  cxEditRepositoryItems, IB_Components, IBODataset, IB_Access, cxGraphics,
  IB_Process, IB_Script, cxPropertiesStore,
  frxClass, frxDBSet, IB_Dialogs;

type
  TAspedActivation = class(TjfsActivation)
  public
    constructor CreateAsped;
    // Vraci true pokud je povolen editor sestav
    function GetReportDesing: Boolean;
    function GetModulKomunikace: Boolean;
    function GetModulStatistiky: Boolean;
    function GetModulPoptavky: Boolean;
    function GetModulFakturace: Boolean;
    function GetModulDopisy: Boolean;
    function GetEmailSend: Boolean;

    function GetMaxUserWork: Integer;
  end;

  TmxUserRightOpt = class(TPersistent)
  public
    EnDeleteRecord: Boolean;
    EnEditProvize : Boolean;
    EnChangeAopRef: Boolean;
  end;

  TdmdSystem = class(TjfsDBSystemModule)
    dsFirma: TDataSource;
    ActionList1: TActionList;
    rsSTUser: TrsStorage;
    rsPropUser: TrsPropSaver;
    rsPropRegisty: TrsPropSaver;
    rsGlobalIni: TrsIniData;
    actAppSetup: TAction;
    rsSTRegistry: TrsStorage;
    actLoginUser: TAction;
    rsUserIni: TrsIniData;
    actDBOpen: TAction;
    actSetupUsers: TAction;
    rsRegData: TrsRegData;
    dsUsers: TDataSource;
    IBOMainDB: TIBODatabase;
    spProc: TIBOQuery;
    IBTMainTrans: TIBOTransaction;
    dtsUsers: TIBOQuery;
    dtsUsersUSERID: TStringField;
    dtsUsersHESLO: TStringField;
    dtsUsersZNACKA: TStringField;
    dtsUsersJMENO: TStringField;
    dtsUsersEMAIL: TStringField;
    dtsUsersTELEFON1: TStringField;
    dtsUsersTELEFON2: TStringField;
    dtsUsersMOBIL: TStringField;
    dtsUsersSKUPINA: TStringField;
    dtsUsersADMINISTRATOR: TStringField;
    dtsUsersPODPIS: TBlobField;
    dtsUsersNASTAVENI: TMemoField;
    dtsUsersSTREDISKO: TStringField;
    dtsUsersSHOWFV: TStringField;
    dtsUsersSHOWFD: TStringField;
    dtsUsersSHOWSTAT: TStringField;
    dtsUsersSHOWPOPT: TStringField;
    dtsUsersSHOWPU: TStringField;
    Firma: TIBOQuery;
    FirmaUNAME: TStringField;
    FirmaUNAME2: TStringField;
    FirmaUADDRES: TStringField;
    FirmaUCITY: TStringField;
    FirmaUZIP: TStringField;
    FirmaUSTATE: TStringField;
    FirmaUDIC: TStringField;
    FirmaUICO: TStringField;
    FirmaUTELEFON: TStringField;
    FirmaUFAX: TStringField;
    FirmaUGSM: TStringField;
    FirmaUEMAIL: TStringField;
    FirmaUWWW: TStringField;
    FirmaUBANKCODE: TStringField;
    FirmaUBANKNAME: TStringField;
    FirmaUBANKKONTO: TStringField;
    FirmaULICENCE: TStringField;
    FirmaUAKTIVACE: TStringField;
    FirmaUREGISTRUDAJE: TStringField;
    FirmaUTEXTPRIKAZ: TMemoField;
    FirmaUTEXTPRIKAZ2: TMemoField;
    FirmaUTEXTPOTVRZENI: TMemoField;
    FirmaUPLATNOSTDO: TDateTimeField;
    FirmaUNASTAVENI: TMemoField;
    FirmaUPLATNOSTOD: TDateTimeField;
    odGDB: TOpenDialog;
    actDBBAckup: TAction;
    rstrgForms: TrsStorage;
    rsndtForms: TrsIniData;
    rstrgSQL: TrsStorage;
    rsIniSQL: TrsIniData;
    frxFirma: TfrxDBDataset;
    FirmaULOGO1: TBlobField;
    FirmaULOGO2: TBlobField;
    FirmaULOGO3: TBlobField;
    dtsUsersRIGHT_SETTINGS: TMemoField;
    dtsUsersclBarva: TIntegerField;
    dtsUsersFORM_SETTINGS: TMemoField;
    dtsUsersSQL_SETTINGS: TMemoField;
    dtsFormsLoad: TIBOQuery;
    dtsFormsLoadFORM_DATA: TBlobField;
    dtsFormsLoadFORM_IDENT: TStringField;
    dtsFormsLoadFORM_ID: TIntegerField;
    dtsFormsLoadREF_USER: TStringField;
    iboBrowseDb: TIB_BrowseDialog;
    actDBBrowse: TAction;
    iboDBScript: TIB_ScriptDialog;
    actDBScripts: TAction;
    procedure dmdSystemDestroy(Sender: TObject);
    procedure actAppSetupExecute(Sender: TObject);
    procedure actLoginUserExecute(Sender: TObject);
    procedure actSetupUsersExecute(Sender: TObject);
    procedure FirmaAfterOpen(DataSet: TDataSet);
    procedure rsUserIniLoadFromStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
    procedure rsUserIniSaveToStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
    procedure dtsUsersAfterOpen(DataSet: TDataSet);
    procedure IBOMainDBAfterConnect(Sender: TIB_Connection);
    procedure IboDBSystemModuleLogCheckUser(Sender: TObject; const UserName, Password: string; var AllowLogin: Boolean);
    procedure IBOMainDBBeforeDisconnect(Sender: TIB_Connection);
    procedure IBOMainDBBeforeConnect(Sender: TIB_Connection);
    procedure actDBOpenExecute(Sender: TObject);
    procedure rsPropUserAfterLoad(Sender: TObject);
    procedure rsPropUserAfterSave(Sender: TObject);
    procedure actDBBAckupExecute(Sender: TObject);
    procedure rsndtFormsLoadFromStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
    procedure rsndtFormsSaveToStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
    procedure rsIniSQLLoadFromStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
    procedure rsIniSQLSaveToStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
    procedure dtsUsersNewRecord(DataSet: TDataSet);
    procedure dtsUsersAfterPost(DataSet: TDataSet);
    procedure CloseAllWindows;
    procedure actDBBrowseExecute(Sender: TObject);
    procedure actDBScriptsExecute(Sender: TObject);
  private
    FgbFirebirdDateTimeFormat: string;
    procedure SetgbFirebirdDateTimeFormat(const Value: string);
    { Private declarations }
  public
    { Public declarations }

    gbZaokrouhleni: TjfsZaokrouhleni; // Nastavene zaokrouhlovani
    gbMena        : string;
    gbSplatnost   : Integer;
    gbCoPlati     : string;
    gbJednotka    : string;
    gbUcet        : string;
    gbUhrada      : string;
    gbKonstantni  : string;
    gbTypFaktury  : string;
    gbPata        : Integer;
    gbStredisko   : string;

    gbAktivace: TAspedActivation; // TActivation;

    // Globalni povoleni odstraneni zaznamu
    gbEnableDelete: Boolean;

    // Datum pro dan. plneni
    gbGenFVZDP: TZSGenFvZDP;

    gbDPHSazba: Integer;
    // Budeme pouzivat plny nebo rychly refresh
    gbFullRefresh: Boolean;
    //
    gbAdresa3UpperCase: Boolean;

    // Pouzavat sestavy FastREport

    // Pouzivat vlastni barvz y nastaveni uyivatele
    gbUserUsePrivateColor: Boolean;
    // Automaticke obcerstvovani seznamu
    gbAutoRefresh: Boolean;
    // Interval obcerstovani
    gbAutoRefreshInterval: Integer;
    // Pouzivat rozsireny dialog pro hledani a filtrovani
    gbGridFilterSearchDialog: Boolean;

    constructor Create(AOwner: TComponent); override;

    function GetGeneratorValue(AGeneratorName: string): Integer;
    function CreateWorkDataSet: TIBOQuery;
    function ExecuteSql(ASqlString: string): Boolean;
    function GetConnectionsCount: Integer;
    procedure CopyRecord(ATableName: string; AKeyField, aCopyFieldList: string; aDataset: TDataSet);

    function SelectNumLine(AEvidence: string): string;
    function CheckRegisteredNumLine(AEvidence, ARada: string): Boolean;
    procedure RegisterNewNumLine(AEvidence, ARada, ARok, APrefix: string; ANumberCount: Integer);

    procedure GetAviableNumLines(const AEvidence: string; AList: TStrings);
    function GetNewNum(AEvidence, ARada: string; APlus: Boolean): string;
    function NNSetup(AEvidence: string; var ADefaultRada: string): Boolean;
    procedure AppViewStoreToDb(AView: TcxCustomGridView; AStoreName: string = ''; AStoreFilter: Boolean = false);
    procedure AppViewRestoreFromDB(AView: TcxCustomGridView; AStoreName: string = ''; ARestoreFilter: Boolean = false);
    procedure FormSaveToStream(AFormName: string; AUserId: string; AStream: TStream);
    procedure FormLoadFromStream(AFormName: string; AUserId: string; var AStream: TStream);
    procedure SetSysParamValue(AParamName: string; AParamValue: string);
    function GetSysParamValue(AParamName: string): string;
  published
    // Uzivatelska Prava
    gbUserRight                      : TmxUserRightOpt;
    property gbFirebirdDateTimeFormat: string read FgbFirebirdDateTimeFormat write SetgbFirebirdDateTimeFormat;
  end;

function mappShowKTLUzivatele(var AUserId: string): Boolean;

function GetdmdSystem: TdmdSystem;

var
  dmdSystem: TdmdSystem;

implementation

{$R *.DFM}

uses
  JclStrings, fMessageDlg, uSqlUtils, appfrmuKTLDph, appfrmuKTLMeny, appfrmuKTLJednotky,
  fusers, appunConst, uCustomForms,
  _frmuCustomBrowse, IniFiles, appfrmuGlobal, appIniOptionsUnit, fNewNumsSetup,
  fGetCisRada, fGBLogin, uAppControler,
  fKomunikaceOptions, appfrauPathOptions, fAppOptions,
  IB_Session, JclMapi, uSendFaxMail, ujfsExpr, fGlobalOptions, cxGridDBTableView

    ;

{ ********************************************************* }
{ Funkce pro aktualni kurz }
{ ********************************************************* }

{
  const
  GBFN_USERID    = '[P_USERID]';
  GBFN_NASTAVENI = '[P_NASTAVENI]';
}

const
  SERRDLG = 'V prùbìhu aktualizace databáze došlo k %d chybì(chybám). ' + #13 + #10 + '' + #13 + #10 + 'Databáze bude umožòovat další práci, ale ve vlastním zájmu kontaktujte autora programu.' + #13 +
    #10 + 'Po provedení servisu databáze bude problém odstranìn';

const

  sDefaultRada = 'RADA1';
  sDefaultRok  = '02';

  { SYSNEWNUM POLE }
  SNN_F_CISLO     = 'CISLO';
  SNN_F_EVIDCISLO = 'EVIDCISLO';
  SNN_F_PREFIX    = 'PREFIX';
  SNN_F_RADA      = 'RADA';
  SNN_F_ROK       = 'ROK';

  { SYSNEWNUM PARAMETRY }
  SNN_P_CISLO    = 'CISLO';
  SNN_P_PREFIX   = 'PREFIX';
  SNN_P_RADA     = 'RADA';
  SNN_P_ROK      = 'ROK';
  SNN_P_EVIDENCE = 'EVIDENCE';

  PNN_VYBER_RADY  = 'SELECT SYSNEWNUM.*, SYSNEWNUM.ROK||SYSNEWNUM.PREFIX||SYSNEWNUM.CISLO AS EVIDCISLO FROM SYSNEWNUM  WHERE EVIDENCE = :EVIDENCE';
  PNN_VYBER_CISLO = PNN_VYBER_RADY + ' AND RADA = :RADA';
  SSQL_INSERT     = 'INSERT INTO SYSNEWNUM (EVIDENCE, RADA, PREFIX, ROK, CISLO) VALUES (:EVIDENCE, :RADA, :PREFIX, :ROK, :CISLO)';
  SSQL_DELETE     = 'DELETE * FROM  SYSNEWNUM  WHERE TABLE = :EVIDENCE AND RADA = :RADA';
  SSQL_CREATE     = 'CREATE TABLE ' + SNEWNUM_TABLE + ' ';

function mappShowKTLUzivatele(var AUserId: string): Boolean;
var
  dlg: TfrmUsers;
begin
  dlg := TfrmUsers.Create(nil);
  try
    dlg.ShowModal;
    Result := (dlg.ModalResult = mrok);
  finally
    dlg.Free;
  end;

end;

function GetdmdSystem: TdmdSystem;
begin
  if not Assigned(dmdSystem) then
    Application.CreateForm(TdmdSystem, dmdSystem);
  Result := dmdSystem;
end;

procedure TdmdSystem.dmdSystemDestroy(Sender: TObject);
begin
  // rsPropRegisty.SaveValues;
  // rsSTRegistry.Save;
  FreeAndNil(gbUserRight);
  FreeAndNil(gbAktivace);
end;

procedure TdmdSystem.actAppSetupExecute(Sender: TObject);
begin
  CloseAllWindows;
  if appShowOptions then
  begin
    // Ulozeni nastaveni usera
    rsPropUser.SaveValues;
    rsSTUser.Save;
  end;
end;

procedure TdmdSystem.actLoginUserExecute(Sender: TObject);
begin
  CloseAllWindows;
  // Login;
end;

procedure TdmdSystem.actSetupUsersExecute(Sender: TObject);
var
  tmp: string;
begin
  tmp := jfaUserInfo.UserId;
  mappShowKTLUzivatele(tmp);

end;

function GetBackupName: string;
var
  Present                               : TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  Prefix                                : string;
begin
  Present := Now;
  DecodeDate(Present, Year, Month, Day);
  DecodeTime(Present, Hour, Min, Sec, MSec);
  Prefix := ChangeFileExt(ExtractFileName(Application.ExeName), '') + '_';
  Result := Prefix + StrPadLeft(IntToStr(Month), 2, '0') + StrPadLeft(IntToStr(Day), 2, '0') + StrPadLeft(IntToStr(Hour), 2, '0') + StrPadLeft(IntToStr(Min), 2, '0');
end;

{ -----------------------------------------------------------------------------
  Procedure: TdmdSystem.dataBackupDatabase
  Author:    fait
  Date:      24-VII-2003
  Arguments: None
  Result:    Boolean
  ----------------------------------------------------------------------------- }

{ TAspedActivation }

constructor TAspedActivation.CreateAsped;
begin
  CreateCustom(APP_AIS_TYPE, 247);
  ModuleNames.Add('Komunikace');
  ModuleNames.Add('Statistika');
  ModuleNames.Add('Poptávky');
  ModuleNames.Add('Fakturace');
  ModuleNames.Add('Korespondence');
  ModuleNames.Add('Podpora E-mailu');

  KonfiguraceNames.Add('SINGLE');
  KonfiguraceNames.Add('NET 3');
  KonfiguraceNames.Add('NET 10');

end;

function TAspedActivation.GetReportDesing: Boolean;
begin
  { Vraci true pokud je povolen editor sestav }
  Result := getActiveModule(2);
end;

function TAspedActivation.GetModulKomunikace: Boolean;
begin
  { Vraci true pokud je povolen modul Komunikace }
  Result := getActiveModule(3);
end;

function TAspedActivation.GetModulStatistiky: Boolean;
begin
  { Vraci true pokud je povolen modul Statistiky }
  Result := getActiveModule(4);
end;

function TAspedActivation.GetModulPoptavky: Boolean;
begin
  { Vraci true pokud je povolen modul Poptavky }
  Result := getActiveModule(5);
end;

function TAspedActivation.GetModulFakturace: Boolean;
begin
  { Vraci true pokud je povolen modul Faskturace }
  Result := getActiveModule(6);
end;

function TAspedActivation.GetModulDopisy: Boolean;
begin
  { Vraci true pokud je povolen modul Korespondence }
  Result := getActiveModule(7);
end;

function TAspedActivation.GetMaxUserWork: Integer;
var
  iKonfigurace: Integer;
begin
  { Vraci pocet maximalne prihlasenzch uzivatelu }
  iKonfigurace := getCurrentTypeOfConfiguration;
  Result       := 0;
  if iKonfigurace = 1 then
    Result := 1
  else if iKonfigurace = 2 then
    Result := 3
  else if iKonfigurace = 3 then
    Result := 10;

end;

function TAspedActivation.GetEmailSend: Boolean;
begin
  { Vraci true pokud je povolena podporu E-Mailu }
  Result := getActiveModule(8);

end;

procedure TdmdSystem.FirmaAfterOpen(DataSet: TDataSet);
begin
  if Firma.IsEmpty then
    Firma.InsertRecord(['LMSS']);
end;

procedure TdmdSystem.FormLoadFromStream(AFormName: string; AUserId: string; var AStream: TStream);
begin
  dtsFormsLoad.Close;
  dtsFormsLoad.ParamByName('FORM_IDENT').AsString := AFormName;
  dtsFormsLoad.ParamByName('REF_USER').AsString   := AUserId;
  dtsFormsLoad.Open;
  if not dtsFormsLoad.IsEmpty then
  begin
    AStream.Position := 0;
    dtsFormsLoadFORM_DATA.SaveToStream(AStream);
  end;

end;

procedure TdmdSystem.FormSaveToStream(AFormName: string; AUserId: string; AStream: TStream);
const
  // SQL_UpdateSet = 'UPDATE SYS_FORMS SET FORM_DATA  = :FORM_DATA WHERE REF_ID = :USERID AND ';
  SQL_UpdateSet = 'EXECUTE PROCEDURE SYS_FORMS_IU (:REF_USER, :FORM_IDENT, :FORM_DATA, :GRID_DATA,:FILTER_DATA)';
begin
  dtsFormsLoad.Close;
  dtsFormsLoad.ParamByName('FORM_IDENT').AsString := AFormName;
  dtsFormsLoad.ParamByName('REF_USER').AsString   := AUserId;
  dtsFormsLoad.Open;
  if dtsFormsLoad.IsEmpty then
  begin
    dtsFormsLoad.Insert;
    dtsFormsLoadFORM_IDENT.AsString := AFormName;
    dtsFormsLoadREF_USER.AsString   := AUserId;
  end
  else
    dtsFormsLoad.Edit;
  AStream.Position := 0;
  dtsFormsLoadFORM_DATA.LoadFromStream(AStream);
  dtsFormsLoad.Post;
end;

procedure TdmdSystem.rsUserIniLoadFromStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
begin
  DoStandard := false;
  dtsUsers.Open;
  dtsUsers.Locate('USERID', jfaUserInfo.UserId, []);
  dtsUsersNASTAVENI.SaveToStream(Stream);
end;

procedure TdmdSystem.rsUserIniSaveToStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
begin
  DoStandard := false;
  dtsUsers.Open;
  dtsUsers.Locate('USERID', jfaUserInfo.UserId, []);
  dtsUsers.Edit;
  dtsUsersNASTAVENI.LoadFromStream(Stream);
  dtsUsers.Post;
end;

constructor TdmdSystem.Create(AOwner: TComponent);
const
  DlgMsg = 'Toto je první spuštìní aplikace A-SPED Win. Výchozí nastavení pro databázi je: %s' + '. Chcete vydvoøit tuto pracovní databázi ?';
begin
  inherited Create(AOwner);
  gbUserRight := TmxUserRightOpt.Create;
  { Nacteme nazev registru }
  rsRegData.RootPath := IniOptions.SetRegAppName + 'Startup\Nastaveni';
  // Pak musime yavolat metodu open abz doslo ke skutecnemu nacteni dat z registru
  // zaroven se tim nastavi Active = True a zapis do registru jiz probehne automaticky
  rsSTRegistry.Open;
  // Musime rucne nacist hodnoty ro rsPropRegisty, protoze zatim ma Active = False
  // protoze cekalo na nasteveni kontejneru s hodnotami tj. rsRegData.
  rsPropRegisty.LoadValues;
  rsPropRegisty.Active := true;

  // ServerDateFmt := sdfInterbase;
  // Registrace panelu pro nastaveni Panel

  // Aktivace licence
  gbAktivace := TAspedActivation.CreateAsped;
  gbAktivace.load;
  gbAktivace.checkCFG;

  odGDB.DefaultExt := '.fdb';
  // Default hodnoty

  // Nastaveni Default hodnot;
  gbStredisko              := '00';
  gbMena                   := SYS_KORUNA_NAZEV;
  gbSplatnost              := 14;
  gbCoPlati                := 'VŠE';
  gbJednotka               := 'LKW';
  gbUcet                   := 'PO';
  gbUhrada                 := 'Pøevodem';
  gbKonstantni             := '0008';
  gbTypFaktury             := 'FV';
  gbPata                   := 0;
  gbZaokrouhleni           := Neni;
  gbDPHSazba               := 0;
  gbAdresa3UpperCase       := false;
  gbFullRefresh            := true;
  gbEnableDelete           := false;
  gbUserUsePrivateColor    := false;
  gbFirebirdDateTimeFormat := '"CAST(''"mm"/"dd"/"yyyy"'' AS DATE)"';
  gbAutoRefresh            := false;
  gbAutoRefreshInterval    := 10000;

  // rsPropIni.LoadValues;

  IBOMainDB.Database := IniOptions.SetWorkData;

end;

procedure TdmdSystem.dtsUsersAfterOpen(DataSet: TDataSet);
begin
  if dtsUsers.IsEmpty then
  begin
    dtsUsers.Insert;
    dtsUsersUSERID.AsString        := 'admin';
    dtsUsersZNACKA.AsString        := 'adm';
    dtsUsersADMINISTRATOR.AsString := 'T';
    dtsUsersEMAIL.AsString         := 'fait@lmss.cz';
    dtsUsersTELEFON1.AsString      := '+420 555 666 777';
    dtsUsersJMENO.AsString         := 'Jiøí Fait';
    dtsUsersMOBIL.AsString         := '+420 603 877 493';
    dtsUsersSHOWFV.AsString        := 'T';
    dtsUsersSHOWFD.AsString        := 'T';
    dtsUsersSHOWPU.AsString        := 'T';
    dtsUsersSHOWPOPT.AsString      := 'T';

    dtsUsers.Post;
  end;
end;

procedure TdmdSystem.dtsUsersAfterPost(DataSet: TDataSet);
begin
  dtsUsers.Refresh;
end;

function TdmdSystem.GetGeneratorValue(AGeneratorName: string): Integer;
begin
  Result := IBOMainDB.Gen_ID(AGeneratorName, 1);
end;

function TdmdSystem.ExecuteSql(ASqlString: string): Boolean;
begin
  spProc.SQL.Text := ASqlString;
  try
    spProc.ExecSQL;
    Result := true;
  except
    Result := false;

  end;

end;

function TdmdSystem.SelectNumLine(AEvidence: string): string;
var
  idlg    : TjfsGetCisRada;
  FDTSWork: TIBOQuery;
begin

  FDTSWork := CreateWorkDataSet;
  idlg     := TjfsGetCisRada.Create(nil);
  try
    with FDTSWork do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add(PNN_VYBER_RADY);
      ParamByName(SNN_P_EVIDENCE).AsString := AEvidence;
      try
        Active := true;
      except
        raise;
      end;
    end;
    idlg.dsWork.DataSet := FDTSWork;
    if idlg.ShowModal = 1 then
      Result := FDTSWork.FieldByName(SNN_F_RADA).AsString;
  finally
    FDTSWork.Active := false;
    FDTSWork.Free;
    idlg.Free;
  end;
end;

procedure TdmdSystem.SetgbFirebirdDateTimeFormat(const Value: string);
begin
  FgbFirebirdDateTimeFormat := Value;
  // ServerDateFmt := Value;
end;

procedure TdmdSystem.SetSysParamValue(AParamName, AParamValue: string);
begin
  IBOMainDB.ExecSQL('update or insert into sysparams (sysparams.paramname, sysparams.paramvalue) values (' + QuotedStr(AParamName) + ',' + QuotedStr(AParamValue) +
    ') matching (sysparams.paramname);');
end;

function TdmdSystem.CheckRegisteredNumLine(AEvidence, ARada: string): Boolean;
var
  FDTSWork: TIBOQuery;

begin
  if ARada = EmptyStr then
    ARada := sDefaultRada;

  FDTSWork := CreateWorkDataSet;
  try
    with FDTSWork do
    begin
      Close;
      SQL.Clear;
      SQL.Add(PNN_VYBER_CISLO);
      try
        ParamByName(SNN_P_EVIDENCE).AsString := AEvidence;
        ParamByName(SNN_P_RADA).AsString     := ARada;
        Open;
        Result := FDTSWork.RecordCount = 1;
        Close;
      except
        Result := false
      end;
    end;
  finally
    FDTSWork.Free;
  end;
end;

procedure TdmdSystem.CloseAllWindows;
var
  I: Integer;
begin
  for I := Application.MainForm.MDIChildCount - 1 downto 0 do
    Application.MainForm.MDIChildren[I].Close;
end;

procedure TdmdSystem.CopyRecord(ATableName, AKeyField, aCopyFieldList: string; aDataset: TDataSet);
begin
  if (AKeyField = '') or (aCopyFieldList = '') then
  begin
    DisplayInfo('Neni definovano KeyField nebo CopyList');
    Exit; // Deme pryc
  end;

  spProc.Close;
  spProc.SQL.Text                        := 'select * from ' + ATableName + ' WHERE ' + AKeyField + ' = :' + AKeyField;
  spProc.ParamByName(AKeyField).AsString := aDataset.FieldByName(AKeyField).AsString;
  spProc.Open;

  aDataset.Insert;
  aDataset.FieldValues[aCopyFieldList] := spProc.FieldValues[aCopyFieldList];

end;

function TdmdSystem.CreateWorkDataSet: TIBOQuery;
begin
  Result                := TIBOQuery.Create(self);
  Result.IB_Connection  := IBOMainDB;
  Result.IB_Transaction := IBTMainTrans;
end;

procedure TdmdSystem.RegisterNewNumLine(AEvidence, ARada, ARok, APrefix: string; ANumberCount: Integer);
var
  FDTSWork: TIBOQuery;

begin
  if ARada = EmptyStr then
    ARada := sDefaultRada;
  if ARok = EmptyStr then
    ARok := sDefaultRok;
  if ANumberCount = 0 then
    ANumberCount := 6;

  FDTSWork := CreateWorkDataSet;
  try
    if CheckRegisteredNumLine(AEvidence, ARada) then
      Exit
    else
      with FDTSWork do
      begin
        SQL.Clear;
        SQL.Add(SSQL_INSERT);
        ParamByName(SNN_P_EVIDENCE).AsString := AEvidence;
        ParamByName(SNN_P_RADA).AsString     := ARada;
        ParamByName(SNN_P_PREFIX).AsString   := APrefix;
        ParamByName(SNN_P_ROK).AsString      := ARok;
        ParamByName(SNN_P_CISLO).AsString    := StrPadLeft('1', ANumberCount, '0');
        try
          ExecSQL;
        except
          raise;
        end;

      end;

  finally
    FDTSWork.Free;
  end;
end;

procedure TdmdSystem.GetAviableNumLines(const AEvidence: string; AList: TStrings);
var
  FDTSWork: TIBOQuery;
begin
  if AList = nil then
    Exit;
  FDTSWork := CreateWorkDataSet;

  try
    with FDTSWork do
    begin
      SQL.Clear;
      SQL.Add(PNN_VYBER_RADY);
      ParamByName(SNN_P_EVIDENCE).AsString := AEvidence;
      try
        Active := true;
        if RecordCount > 0 then
        begin
          First;
          AList.Clear;
          while not EOF do
          begin
            AList.Add(FieldByName(SNN_F_RADA).AsString);
            Next;
          end;
        end;
        Active := false;
      except
        raise;
      end;
    end;
    FDTSWork.Close;
  finally
    FDTSWork.Free;
  end;
end;

function TdmdSystem.GetConnectionsCount: Integer;
begin
  Result := IBOMainDB.Users.Count;
end;

function TdmdSystem.GetNewNum(AEvidence, ARada: string; APlus: Boolean): string;
var
  Delka   : Integer;
  OldCislo: Integer;
  FDTSWork: TIBOQuery;

begin
  if ARada = EmptyStr then
    ARada := sDefaultRada;
  // Prazdny parametr se nahradi Default hodnotou (Rada1)

  Result := ARada; // Pokud neprobehne funkce korektne
  // vrati se obsah par. sRada

  FDTSWork := CreateWorkDataSet;
  try
    FDTSWork.Active      := false;
    FDTSWork.RequestLive := true;
    FDTSWork.SQL.Clear;
    FDTSWork.SQL.Add(PNN_VYBER_CISLO);
    FDTSWork.ParamByName(SNN_P_EVIDENCE).AsString := AEvidence;
    FDTSWork.ParamByName(SNN_P_RADA).AsString     := ARada;
    try
      FDTSWork.Active := true;
      if FDTSWork.IsEmpty then
      begin
        Result := 'NENI';
        Exit;
      end
      else
        Result := FDTSWork.FieldByName(SNN_F_EVIDCISLO).Value;

      if APlus then
      begin { Vytvorime znak o cislo vyssi nebo nizsi }
        Delka    := Length(Trim(FDTSWork.FieldByName(SNN_F_CISLO).AsString));
        OldCislo := StrToInt(FDTSWork.FieldByName(SNN_F_CISLO).AsString);
        OldCislo := OldCislo + 1;

        if OldCislo < 1 then
          OldCislo := 1;

        FDTSWork.Edit;
        FDTSWork.FieldByName(SNN_F_CISLO).AsString := StrPadLeft(IntToStr(OldCislo), Delka, '0');
        FDTSWork.Post;

      end;

    except
      raise;
    end;

  finally
    FDTSWork.Free;
  end;

end;

function TdmdSystem.GetSysParamValue(AParamName: string): string;
begin
  spProc.Close;
  spProc.SQL.Text                       := 'select sysparams.paramvalue from sysparams where sysparams.paramname = :aparam';
  spProc.ParamByName('aparam').AsString := AParamName;
  try
    spProc.Open;
    Result := spProc.Fields[0].AsString;
  except
    Result := '';
  end;
end;

function TdmdSystem.NNSetup(AEvidence: string; var ADefaultRada: string): Boolean;
var
  dlg: TfrmNewNumSetup;
begin
  dlg := TfrmNewNumSetup.Create(nil);
  try

    dlg.dtsRady.IB_Connection                    := IBOMainDB;
    dlg.dtsRady.IB_Transaction                   := IBTMainTrans;
    dlg.dtsRady.ParamByName('EVIDENCE').AsString := AEvidence;
    dlg.FEvidence                                := AEvidence;

    dlg.dtsRady.Open;
    dlg.FillRady;
    dlg.cbDefaultRada.ItemIndex := dlg.cbDefaultRada.Properties.Items.IndexOf(ADefaultRada);
    dlg.ShowModal;
    Result       := dlg.NLUpdated;
    ADefaultRada := dlg.cbDefaultRada.Properties.Items[dlg.cbDefaultRada.ItemIndex];
  finally
    dlg.Free;
  end;

end;

procedure TdmdSystem.IBOMainDBAfterConnect(Sender: TIB_Connection);
begin
  if IniOptions.SetWorkData <> IBOMainDB.Database then
  begin
    IniOptions.SetWorkData := IBOMainDB.Database;
    IniOptions.SaveValues;
  end;

  { Otevreni tabulek }
  Firma.Active    := true;
  dtsUsers.Active := true;
  // Inicializace ostatnich modulu
  // dmdGlobal.InitModule;
  // lmGlobalInitDefaultModules;

end;

procedure TdmdSystem.IboDBSystemModuleLogCheckUser(Sender: TObject; const UserName, Password: string; var AllowLogin: Boolean);
begin
  AllowLogin      := false;
  dtsUsers.Active := true;
  if (not dtsUsers.IsEmpty) and (dtsUsers.Locate('USERID', UserName, [loCaseInsensitive])) then
  begin
    if dtsUsersHESLO.AsString = Password then
    begin
      AllowLogin := true;
      {
        if gbAktivace.GetMaxUserWork < GetConnectionsCount then
        begin
        DisplayInfo('Je proèen maximální poèet pøihlášených uživatelù');
        AllowLogin := false;
        end;
      }
      jfaUserInfo.UserId         := dtsUsersUSERID.AsString;
      jfaUserInfo.UserName       := dtsUsersJMENO.AsString;
      jfaUserInfo.UserZnacka     := dtsUsersZNACKA.AsString;
      jfaUserInfo.UserPasw       := Password;
      jfaUserInfo.UserSkupina    := dtsUsersSKUPINA.AsString;
      jfaUserInfo.UserTel        := dtsUsersTELEFON1.AsString;
      jfaUserInfo.UserFax        := dtsUsersTELEFON2.AsString;
      jfaUserInfo.UserMobil      := dtsUsersMOBIL.AsString;
      jfaUserInfo.UserEmail      := dtsUsersEMAIL.AsString;
      jfaUserInfo.AdminsUser     := dtsUsersADMINISTRATOR.AsString = 'T';
      jfaUserInfo.ShowFV         := dtsUsersSHOWFV.AsString = 'T';
      jfaUserInfo.ShowFD         := dtsUsersSHOWFD.AsString = 'T';
      jfaUserInfo.ShowStatistiky := dtsUsersSHOWSTAT.AsString = 'T';
      jfaUserInfo.ShowPoptavky   := dtsUsersSHOWPOPT.AsString = 'T';
      jfaUserInfo.ShowPU         := dtsUsersSHOWPU.AsString = 'T';

      rsSTUser.load;
      rstrgForms.load;
      rstrgSQL.load;

      rsPropUser.LoadValues;
      // actOpenBackup.Visible := jfaUserInfo.AdminsUser;

      // pridano 16.9.2008. Uzivatele smi nastavovat pouze administrator
      actSetupUsers.Visible := jfaUserInfo.AdminsUser;
      actDBBAckup.Visible   := jfaUserInfo.AdminsUser;
      actDBBrowse.Visible   := jfaUserInfo.AdminsUser;
      actDBScripts.Visible   := jfaUserInfo.AdminsUser;

      lmGlobalInitDefaultModules;

      { nastaveni promenných pro  Tisky }
      jfsGlobalEnvironment.DeleteFunction('FirmaNazev');
      jfsGlobalEnvironment.AddFunction('FirmaNazev', '''' + dmdSystem.gbAktivace.Nazev1 + '''');

      jfsGlobalEnvironment.DeleteFunction('FirmaNAzev2');
      jfsGlobalEnvironment.AddFunction('FirmaNAzev2', '''' + dmdSystem.gbAktivace.Nazev2 + '''');

      jfsGlobalEnvironment.DeleteFunction('FirmaICO');
      jfsGlobalEnvironment.AddFunction('FirmaICO', '''' + dmdSystem.gbAktivace.ICO + '''');

      jfsGlobalEnvironment.DeleteFunction('Uzivatel');
      jfsGlobalEnvironment.AddFunction('Uzivatel', '''' + jfaUserInfo.UserName + '''');

      jfsGlobalEnvironment.DeleteFunction('UzivatelTelefon');
      jfsGlobalEnvironment.AddFunction('UzivatelTelefon', '''' + jfaUserInfo.UserTel + '''');

      jfsGlobalEnvironment.DeleteFunction('UzivatelFax');
      jfsGlobalEnvironment.AddFunction('UzivatelFax', '''' + jfaUserInfo.UserFax + '''');

      jfsGlobalEnvironment.DeleteFunction('UzivatelGsm');
      jfsGlobalEnvironment.AddFunction('UzivatelGsm', '''' + jfaUserInfo.UserMobil + '''');

      jfsGlobalEnvironment.DeleteFunction('UzivatelEmail');
      jfsGlobalEnvironment.AddFunction('UzivatelEmail', '''' + jfaUserInfo.UserEmail + '''');

      jfsGlobalEnvironment.DeleteFunction('Znacka');
      jfsGlobalEnvironment.AddFunction('Znacka', '''' + jfaUserInfo.UserName + '''');

      jfsGlobalEnvironment.DeleteFunction('AplikaceTitulek');
      jfsGlobalEnvironment.AddFunction('AplikaceTitulek', '''' + Application.Title + '''');

    end

    else
      DisplayError(SERR_PASSWORD);
  end
  else
    DisplayError(SERR_USERNAME);
end;

procedure TdmdSystem.IBOMainDBBeforeDisconnect(Sender: TIB_Connection);
begin
  try
    // Preb
    lmGlobalFinalDefaultModules;
    rstrgForms.Save;
    rstrgSQL.Save;
    rsSTUser.Save;
  except

  end;
end;

procedure TdmdSystem.IBOMainDBBeforeConnect(Sender: TIB_Connection);
begin
  with Sender, odGDB do
  begin
    if ConnectionStatus = csConnectPending then
    begin
      // Allow a quick change of path if the file about to be opened is not found.
      // Do not try and supply a GDB file over a mapped drive! If you do be sure to
      // change it's path so that the server process can resolve the file's location.
      if (Protocol = cpLocal) and not FileExists(Database) then
      begin
        FileName := Database;
        if Execute then
          Database := FileName
        else
          SysUtils.Abort;
      end;
    end
  end;

end;

procedure TdmdSystem.actDBOpenExecute(Sender: TObject);
begin
  // with TfrmGetConnection.Create(nil) do
  // begin
  // ShowModal;
  // Free;
  // end;
end;

procedure TdmdSystem.actDBScriptsExecute(Sender: TObject);
begin
  iboDBScript.Execute;
end;

procedure TdmdSystem.rsPropUserAfterLoad(Sender: TObject);
begin
  sfFaxCzServer              := rsPropUser.Storage.ReadString('sfFaxCzServer', sfFaxCzServer);
  sfFaxCzRegEmail            := rsPropUser.Storage.ReadString('sfFaxCzRegEmail', sfFaxCzRegEmail);
  sfFaxCzRegEmailPasswd      := rsPropUser.Storage.ReadString('sfFaxCzRegEmailPasswd', sfFaxCzRegEmailPasswd);
  sfMailCCAdress             := rsPropUser.Storage.ReadString('sfMailCCAdress', sfMailCCAdress);
  sfMAPIClientConnect        := TJclMapiClientConnect(rsPropUser.Storage.ReadInteger('sfMAPIClientConnect', ORD(sfMAPIClientConnect)));
  sfMAPISelectedClientIndex  := rsPropUser.Storage.ReadInteger('sfMAPISelectedClientIndex', sfMAPISelectedClientIndex);
  sfMAPIShowMailDialog       := rsPropUser.Storage.ReadBoolean('sfMAPIShowMailDialog', sfMAPIShowMailDialog);
  sfMAPITypPrilohy           := rsPropUser.Storage.ReadInteger('sfMAPITypPrilohy', sfMAPITypPrilohy);
  sfMAPIPDFEmbeddedFont      := rsPropUser.Storage.ReadBoolean('sfMAPIPDFEmbeddedFont', sfMAPIPDFEmbeddedFont);
  sfMailAddToAddres          := rsPropUser.Storage.ReadBoolean('sfMailAddToAddres', sfMailAddToAddres);
  sfMAPIAutoCloseMailDialog  := rsPropUser.Storage.ReadBoolean('sfMAPIAutoCloseMailDialog', sfMAPIAutoCloseMailDialog);
  gbMena                     := rsPropUser.Storage.ReadString('gbMena', gbMena);
  gbSplatnost                := rsPropUser.Storage.ReadInteger('gbSplatnost', gbSplatnost);
  gbCoPlati                  := rsPropUser.Storage.ReadString('gbCoPlati', gbCoPlati);
  gbJednotka                 := rsPropUser.Storage.ReadString('gbJednotka', gbJednotka);
  gbUcet                     := rsPropUser.Storage.ReadString('gbUcet', gbUcet);
  gbUhrada                   := rsPropUser.Storage.ReadString('gbUhrada', gbUhrada);
  gbKonstantni               := rsPropUser.Storage.ReadString('gbKonstantni', gbKonstantni);
  gbTypFaktury               := rsPropUser.Storage.ReadString('gbTypFaktury', gbTypFaktury);
  gbPata                     := rsPropUser.Storage.ReadInteger('gbPata', gbPata);
  gbStredisko                := rsPropUser.Storage.ReadString('gbStredisko', gbStredisko);
  gbZaokrouhleni             := TjfsZaokrouhleni(rsPropUser.Storage.ReadInteger('gbZaokrouhleni', ORD(gbZaokrouhleni)));
  gbGenFVZDP                 := TZSGenFvZDP(rsPropUser.Storage.ReadInteger('gbGenFVZDP', 0));
  gbDPHSazba                 := rsPropUser.Storage.ReadInteger('gbDPHSazba', gbDPHSazba);
  gbAdresa3UpperCase         := rsPropUser.Storage.ReadBoolean('gbAdresa3UpperCase', gbAdresa3UpperCase);
  gbEnableDelete             := rsPropUser.Storage.ReadBoolean('gbEnableDelete', gbEnableDelete);
  gbUserUsePrivateColor      := rsPropUser.Storage.ReadBoolean('gbUserUsePrivateColor', gbUserUsePrivateColor);
  gbUserRight.EnDeleteRecord := rsPropUser.Storage.ReadBoolean('gbUserRight.EnDeleteRecord', gbUserRight.EnDeleteRecord);
  gbUserRight.EnEditProvize  := rsPropUser.Storage.ReadBoolean('gbUserRight.EnEditProvize', gbUserRight.EnEditProvize);
  gbUserRight.EnChangeAopRef := rsPropUser.Storage.ReadBoolean('gbUserRight.EnChangeAopRef', gbUserRight.EnChangeAopRef);
  gbFirebirdDateTimeFormat   := rsPropUser.Storage.ReadString('gbFirebirdDateTimeFormat', gbFirebirdDateTimeFormat);
  gbAutoRefresh              := rsPropUser.Storage.ReadBoolean('gbAutoRefresh', gbAutoRefresh);
  gbAutoRefreshInterval      := rsPropUser.Storage.ReadInteger('gbAutoRefreshInterval', gbAutoRefreshInterval);
  gbGridFilterSearchDialog   := rsPropUser.Storage.ReadBoolean('gbGridFilterSearchDialog', gbGridFilterSearchDialog);

end;

procedure TdmdSystem.rsPropUserAfterSave(Sender: TObject);
begin
  rsPropUser.Storage.WriteString('sfFaxCzServer', sfFaxCzServer);
  rsPropUser.Storage.WriteString('sfFaxCzRegEmail', sfFaxCzRegEmail);
  rsPropUser.Storage.WriteString('sfFaxCzRegEmailPasswd', sfFaxCzRegEmailPasswd);
  rsPropUser.Storage.WriteString('sfMailCCAdress', sfMailCCAdress);
  rsPropUser.Storage.WriteInteger('sfMAPIClientConnect', ORD(sfMAPIClientConnect));
  rsPropUser.Storage.WriteInteger('sfMAPISelectedClientIndex', sfMAPISelectedClientIndex);
  rsPropUser.Storage.WriteBoolean('sfMAPIShowMailDialog', sfMAPIShowMailDialog);
  rsPropUser.Storage.WriteBoolean('sfMailAddToAddres', sfMailAddToAddres);
  rsPropUser.Storage.WriteInteger('sfMAPITypPrilohy', sfMAPITypPrilohy);
  rsPropUser.Storage.WriteBoolean('sfMAPIPDFEmbeddedFont', sfMAPIPDFEmbeddedFont);
  rsPropUser.Storage.WriteBoolean('sfMAPIAutoCloseMailDialog', sfMAPIAutoCloseMailDialog);
  rsPropUser.Storage.WriteString('gbMena', gbMena);
  rsPropUser.Storage.WriteInteger('gbSplatnost', gbSplatnost);
  rsPropUser.Storage.WriteString('gbCoPlati', gbCoPlati);
  rsPropUser.Storage.WriteString('gbJednotka', gbJednotka);
  rsPropUser.Storage.WriteString('gbUcet', gbUcet);
  rsPropUser.Storage.WriteString('gbUhrada', gbUhrada);
  rsPropUser.Storage.WriteString('gbKonstantni', gbKonstantni);
  rsPropUser.Storage.WriteString('gbTypFaktury', gbTypFaktury);
  rsPropUser.Storage.WriteInteger('gbPata', gbPata);
  rsPropUser.Storage.WriteString('gbStredisko', gbStredisko);
  rsPropUser.Storage.WriteInteger('gbZaokrouhleni', ORD(gbZaokrouhleni));
  rsPropUser.Storage.WriteInteger('gbGenFVZDP', ORD(gbGenFVZDP));
  rsPropUser.Storage.WriteInteger('gbDPHSazba', gbDPHSazba);
  rsPropUser.Storage.WriteBoolean('gbAdresa3UpperCase', gbAdresa3UpperCase);
  rsPropUser.Storage.WriteBoolean('gbEnableDelete', gbEnableDelete);
  rsPropUser.Storage.WriteBoolean('gbUserUsePrivateColor', gbUserUsePrivateColor);
  rsPropUser.Storage.WriteBoolean('gbUserRight.EnDeleteRecord', gbUserRight.EnDeleteRecord);
  rsPropUser.Storage.WriteBoolean('gbUserRight.EnEditProvize', gbUserRight.EnEditProvize);
  rsPropUser.Storage.WriteBoolean('gbUserRight.EnChangeAopRef', gbUserRight.EnChangeAopRef);
  rsPropUser.Storage.WriteString('gbFirebirdDateTimeFormat', gbFirebirdDateTimeFormat);
  rsPropUser.Storage.WriteBoolean('gbAutoRefresh', gbAutoRefresh);
  rsPropUser.Storage.WriteInteger('gbAutoRefreshInterval', gbAutoRefreshInterval);
  rsPropUser.Storage.WriteBoolean('gbGridFilterSearchDialog', gbGridFilterSearchDialog);

end;

procedure TdmdSystem.actDBBAckupExecute(Sender: TObject);
begin
  // with FBManager1 do
  // begin
  // Databasename := IBOMainDB.DatabaseName;
  // Destination := ExtractFilePath(Application.ExeName) + 'Backups' ;
  // Filename := 'backup_live.fbk';
  // Backup(True,False);
  // end;
end;

procedure TdmdSystem.actDBBrowseExecute(Sender: TObject);
begin
  iboBrowseDb.Execute;
end;

procedure TdmdSystem.rsndtFormsLoadFromStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
const
  SQL_LoadSet = 'SELECT FORM_SETTINGS FROM SYSUSERS WHERE USERID = :USERID';
begin
  DoStandard := false;
  dtsUsers.Open;
  dtsUsers.Locate('USERID', jfaUserInfo.UserId, []);
  dtsUsersFORM_SETTINGS.SaveToStream(Stream);
end;

procedure TdmdSystem.rsndtFormsSaveToStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
begin
  DoStandard := false;
  dtsUsers.Open;
  dtsUsers.Locate('USERID', jfaUserInfo.UserId, []);
  dtsUsers.Edit;
  dtsUsersFORM_SETTINGS.LoadFromStream(Stream);
  dtsUsers.Post;
end;

const
  SNAME_GRIDPROC = 'SP_GRIDY_IU';

procedure TdmdSystem.AppViewRestoreFromDB(AView: TcxCustomGridView; AStoreName: string; ARestoreFilter: Boolean);
var
  spProc: TIBODataset;
  Fs    : TmemoryStream;
  procedure DelUnUsedCol(AView: TcxCustomGridView);
  var
    SPole: string;
    I    : Integer;
  begin
    if AView is TcxGridDBTableView then
    begin
      for I := 0 to TcxGridDBTableView(AView).ColumnCount - 1 do
      begin
        SPole := TcxGridDBTableView(AView).Columns[I].DataBinding.FieldName;
        if SPole = EmptyStr then
        begin
          TcxGridDBTableView(AView).Columns[I].Destroy;
          DelUnUsedCol(AView);
        end;
      end
    end;
  end;

begin
  spProc := CreateWorkDataSet;
  Fs     := TmemoryStream.Create;
  if AStoreName = EmptyStr then
    AStoreName := AView.Owner.Name + '.' + AView.Name;
  try
    spProc.SQL.Clear;
    spProc.SQL.Add('select DEF_GRIDU from SYSGRIDS');
    spProc.SQL.Add('where NAZEV_GRIDU = :NAZEV_GRIDU');
    spProc.SQL.Add('and REF_USER = :REF_USER');
    spProc.Prepare;

    spProc.ParamByName('NAZEV_GRIDU').AsString := AStoreName;
    spProc.ParamByName('REF_USER').AsString    := jfaUserInfo.UserId;
    try
      spProc.Open;
      if not spProc.IsEmpty then
      begin
        (spProc.FieldByName('DEF_GRIDU') as TBlobField).SaveToStream(Fs);
        Fs.Position := 0;
        if ARestoreFilter then
          AView.RestoreFromStream(Fs, true, false, [GsoUseFilter, GsoUseSummary])
        else
          AView.RestoreFromStream(Fs, true, false, [GsoUseSummary]);
      end;
      spProc.Close;
      DelUnUsedCol(AView);
    except
    end;
  finally
    spProc.Free;
    Fs.Free;
  end;
end;

procedure TdmdSystem.AppViewStoreToDb(AView: TcxCustomGridView; AStoreName: string; AStoreFilter: Boolean);
var
  spProc: TIBOStoredProc;
  Fs    : TmemoryStream;
begin
  Fs := TmemoryStream.Create;

  spProc                := TIBOStoredProc.Create(nil);
  spProc.IB_Connection  := IBOMainDB;
  spProc.IB_Transaction := IBTMainTrans;
  spProc.StoredProcName := SNAME_GRIDPROC;

  if AStoreName = EmptyStr then
    AStoreName := AView.Owner.Name + '.' + AView.Name;

  try
    try
      if AStoreFilter then
        AView.StoreToStream(Fs, [GsoUseFilter, GsoUseSummary])
      else
        AView.StoreToStream(Fs, [GsoUseSummary]);

      spProc.ParamByName('REF_USER').AsString    := jfaUserInfo.UserId;
      spProc.ParamByName('NAZEV_GRIDU').AsString := AStoreName;
      spProc.ParamByName('DEF_GRIDU').LoadFromStream(Fs, FtBlob);
      spProc.ExecProc;
    except
    end;
  finally
    spProc.Free;
    Fs.Free;
  end;
end;

procedure TdmdSystem.rsIniSQLLoadFromStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
const
  SQL_LoadSet = 'SELECT SQL_SETTINGS FROM SYSUSERS WHERE USERID = :USERID';
begin
  DoStandard := false;
  DoStandard := false;
  dtsUsers.Open;
  dtsUsers.Locate('USERID', jfaUserInfo.UserId, []);
  dtsUsersSQL_SETTINGS.SaveToStream(Stream);
end;

procedure TdmdSystem.rsIniSQLSaveToStream(Sender: TObject; Stream: TStream; var DoStandard: Boolean);
begin
  DoStandard := false;
  dtsUsers.Open;
  dtsUsers.Locate('USERID', jfaUserInfo.UserId, []);
  dtsUsers.Edit;
  dtsUsersSQL_SETTINGS.LoadFromStream(Stream);
  dtsUsers.Post;
end;

procedure TdmdSystem.dtsUsersNewRecord(DataSet: TDataSet);
begin
  dtsUsersADMINISTRATOR.AsString := 'F';
  dtsUsersSHOWFV.AsString        := 'F';
  dtsUsersSHOWFD.AsString        := 'F';
  dtsUsersSHOWSTAT.AsString      := 'F';
  dtsUsersSHOWPOPT.AsString      := 'F';
  dtsUsersSHOWPU.AsString        := 'F';
end;

end.
