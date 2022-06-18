object dmdSystem: TdmdSystem
  OldCreateOrder = False
  OnDestroy = dmdSystemDestroy
  RecDesMista = 1
  LogAttemptNumber = 0
  LogUpdateCaption = ucAppTitle
  OnLogCheckUser = IboDBSystemModuleLogCheckUser
  Height = 568
  Width = 798
  object dsFirma: TDataSource
    DataSet = Firma
    Left = 252
    Top = 52
  end
  object ActionList1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 52
    Top = 44
    object actAppSetup: TAction
      Caption = 'Nastaven'#237' aplikace'
      ImageIndex = 39
      OnExecute = actAppSetupExecute
    end
    object actLoginUser: TAction
      Caption = 'P'#345'ihl'#225'sit se'
      ImageIndex = 40
      OnExecute = actLoginUserExecute
    end
    object actDBOpen: TAction
      Caption = 'Otev'#345#237't datab'#225'zi...'
      ImageIndex = 37
      Visible = False
      OnExecute = actDBOpenExecute
    end
    object actSetupUsers: TAction
      Caption = 'Seznam u'#382'ivatel'#367
      ImageIndex = 36
      OnExecute = actSetupUsersExecute
    end
    object actDBBAckup: TAction
      Caption = 'Z'#225'loha datab'#225'ze'
      ImageIndex = 51
      OnExecute = actDBBAckupExecute
    end
    object actDBBrowse: TAction
      Caption = 'DB Manager'
      ImageIndex = 26
      OnExecute = actDBBrowseExecute
    end
    object actDBScripts: TAction
      Caption = 'DB Skripty'
      ImageIndex = 39
      OnExecute = actDBScriptsExecute
    end
  end
  object rsSTUser: TrsStorage
    Active = False
    StorageData = rsUserIni
    RootSection = 'User'
    Options = []
    Left = 156
    Top = 308
  end
  object rsPropUser: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Nastaveni'
    Properties.Strings = (
      'RecDesMista')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = rsPropUserAfterLoad
    OnAfterSave = rsPropUserAfterSave
    Left = 44
    Top = 308
  end
  object rsPropRegisty: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = rsSTRegistry
    Options = [poStoreDefValues]
    RootSection = 'Nastaveni'
    Properties.Strings = (
      'LogActiveUser'
      'BckBackupFolder')
    WhenLoad = wlManual
    WhenSave = wsOnDestroy
    Left = 44
    Top = 396
  end
  object rsGlobalIni: TrsIniData
    Options = []
    Left = 564
    Top = 196
  end
  object rsSTRegistry: TrsStorage
    Active = False
    StorageData = rsRegData
    Options = [soSaveOnClose, soSaveEmptySection]
    Left = 156
    Top = 388
  end
  object rsUserIni: TrsIniData
    Options = []
    OnLoadFromStream = rsUserIniLoadFromStream
    OnSaveToStream = rsUserIniSaveToStream
    Left = 236
    Top = 308
  end
  object rsRegData: TrsRegData
    RootKey = rkCurrentUser
    Left = 236
    Top = 388
  end
  object dsUsers: TDataSource
    DataSet = dtsUsers
    Left = 164
    Top = 52
  end
  object IBOMainDB: TIBODatabase
    CacheStatementHandles = False
    SQLDialect = 3
    DatabaseName = 'fbAspedSql'
    Params.Strings = (
      'SERVER=dbsrv'
      'PATH=/mnt/fbdata/orange/aspedsql.fdb'
      'PROTOCOL=TCP/IP'
      'USER NAME=SYSDBA'
      'SQL DIALECT=3'
      'CHARACTER SET=WIN1250')
    BeforeConnect = IBOMainDBBeforeConnect
    AfterConnect = IBOMainDBAfterConnect
    BeforeDisconnect = IBOMainDBBeforeDisconnect
    Isolation = tiCommitted
    Left = 396
    Top = 52
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
  object spProc: TIBOQuery
    DatabaseName = 'fbAspedSql'
    IB_Connection = IBOMainDB
    IB_Transaction = IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ID'
      'FROM VERZE')
    FieldOptions = []
    Left = 564
    Top = 52
  end
  object IBTMainTrans: TIBOTransaction
    IB_Connection = IBOMainDB
    AutoCommit = True
    Isolation = tiCommitted
    Left = 476
    Top = 52
  end
  object dtsUsers: TIBOQuery
    ColumnAttributes.Strings = (
      'SYSUSERS.ADMINISTRATOR=REQUIRED'
      'SYSUSERS.SHOWFV=REQUIRED'
      'SYSUSERS.SHOWFD=REQUIRED'
      'SYSUSERS.SHOWSTAT=REQUIRED'
      'SYSUSERS.SHOWPOPT=REQUIRED'
      'SYSUSERS.SHOWPU=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSUSERS SYSUSERS'
      'WHERE'
      '   USERID = :OLD_USERID')
    EditSQL.Strings = (
      'UPDATE SYSUSERS SYSUSERS SET'
      '   SYSUSERS.USERID = :USERID, /*PK*/'
      '   SYSUSERS.HESLO = :HESLO,'
      '   SYSUSERS.ZNACKA = :ZNACKA,'
      '   SYSUSERS.JMENO = :JMENO,'
      '   SYSUSERS.EMAIL = :EMAIL,'
      '   SYSUSERS.TELEFON1 = :TELEFON1,'
      '   SYSUSERS.TELEFON2 = :TELEFON2,'
      '   SYSUSERS.MOBIL = :MOBIL,'
      '   SYSUSERS.SKUPINA = :SKUPINA,'
      '   SYSUSERS.ADMINISTRATOR = :ADMINISTRATOR,'
      '   SYSUSERS.PODPIS = :PODPIS,'
      '   SYSUSERS.NASTAVENI = :NASTAVENI,'
      '   SYSUSERS.FORM_SETTINGS = :FORM_SETTINGS,'
      '   SYSUSERS.SQL_SETTINGS = :SQL_SETTINGS,'
      '   SYSUSERS.RIGHT_SETTINGS = :RIGHT_SETTINGS,'
      '   SYSUSERS.STREDISKO = :STREDISKO,'
      '   SYSUSERS.SHOWFV = :SHOWFV,'
      '   SYSUSERS.SHOWFD = :SHOWFD,'
      '   SYSUSERS.SHOWSTAT = :SHOWSTAT,'
      '   SYSUSERS.SHOWPOPT = :SHOWPOPT,'
      '   SYSUSERS.SHOWPU = :SHOWPU,'
      '   SYSUSERS.BARVA = :BARVA'
      'WHERE'
      '   USERID = :OLD_USERID')
    IB_Connection = IBOMainDB
    IB_Transaction = IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO SYSUSERS('
      '   USERID, /*PK*/'
      '   HESLO,'
      '   ZNACKA,'
      '   JMENO,'
      '   EMAIL,'
      '   TELEFON1,'
      '   TELEFON2,'
      '   MOBIL,'
      '   SKUPINA,'
      '   ADMINISTRATOR,'
      '   PODPIS,'
      '   NASTAVENI,'
      '   FORM_SETTINGS,'
      '   SQL_SETTINGS,'
      '   RIGHT_SETTINGS,'
      '   STREDISKO,'
      '   SHOWFV,'
      '   SHOWFD,'
      '   SHOWSTAT,'
      '   SHOWPOPT,'
      '   SHOWPU,'
      '   BARVA)'
      'VALUES ('
      '   :USERID,'
      '   :HESLO,'
      '   :ZNACKA,'
      '   :JMENO,'
      '   :EMAIL,'
      '   :TELEFON1,'
      '   :TELEFON2,'
      '   :MOBIL,'
      '   :SKUPINA,'
      '   :ADMINISTRATOR,'
      '   :PODPIS,'
      '   :NASTAVENI,'
      '   :FORM_SETTINGS,'
      '   :SQL_SETTINGS,'
      '   :RIGHT_SETTINGS,'
      '   :STREDISKO,'
      '   :SHOWFV,'
      '   :SHOWFD,'
      '   :SHOWSTAT,'
      '   :SHOWPOPT,'
      '   :SHOWPU,'
      '   :BARVA)')
    KeyLinks.Strings = (
      'SYSUSERS.USERID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = dtsUsersAfterOpen
    AfterPost = dtsUsersAfterPost
    OnNewRecord = dtsUsersNewRecord
    SQL.Strings = (
      'SELECT * FROM sysUsers')
    FieldOptions = []
    Left = 164
    Top = 124
    object dtsUsersUSERID: TStringField
      DisplayLabel = 'ID U'#382'ivatele'
      FieldName = 'USERID'
      Origin = 'SYSUSERS.USERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object dtsUsersHESLO: TStringField
      DisplayLabel = 'Heslo'
      FieldName = 'HESLO'
      Origin = 'SYSUSERS.HESLO'
      Size = 10
    end
    object dtsUsersZNACKA: TStringField
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Origin = 'SYSUSERS.ZNACKA'
      Size = 5
    end
    object dtsUsersJMENO: TStringField
      DisplayLabel = 'Jm'#233'no'
      FieldName = 'JMENO'
      Origin = 'SYSUSERS.JMENO'
      Size = 45
    end
    object dtsUsersEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'SYSUSERS.EMAIL'
      Size = 50
    end
    object dtsUsersTELEFON1: TStringField
      FieldName = 'TELEFON1'
      Origin = 'SYSUSERS.TELEFON1'
      Size = 50
    end
    object dtsUsersTELEFON2: TStringField
      FieldName = 'TELEFON2'
      Origin = 'SYSUSERS.TELEFON2'
      Size = 50
    end
    object dtsUsersMOBIL: TStringField
      FieldName = 'MOBIL'
      Origin = 'SYSUSERS.MOBIL'
      Size = 50
    end
    object dtsUsersSKUPINA: TStringField
      FieldName = 'SKUPINA'
      Origin = 'SYSUSERS.SKUPINA'
      Size = 10
    end
    object dtsUsersADMINISTRATOR: TStringField
      DisplayLabel = 'Administr'#225'tor'
      FieldName = 'ADMINISTRATOR'
      Origin = 'SYSUSERS.ADMINISTRATOR'
      Required = True
      Size = 1
    end
    object dtsUsersPODPIS: TBlobField
      FieldName = 'PODPIS'
      Origin = 'SYSUSERS.PODPIS'
      Size = 8
    end
    object dtsUsersNASTAVENI: TMemoField
      FieldName = 'NASTAVENI'
      Origin = 'SYSUSERS.NASTAVENI'
      BlobType = ftMemo
      Size = 8
    end
    object dtsUsersSTREDISKO: TStringField
      FieldName = 'STREDISKO'
      Origin = 'SYSUSERS.STREDISKO'
      Size = 10
    end
    object dtsUsersSHOWFV: TStringField
      FieldName = 'SHOWFV'
      Origin = 'SYSUSERS.SHOWFV'
      Required = True
      Size = 1
    end
    object dtsUsersSHOWFD: TStringField
      FieldName = 'SHOWFD'
      Origin = 'SYSUSERS.SHOWFD'
      Required = True
      Size = 1
    end
    object dtsUsersSHOWSTAT: TStringField
      FieldName = 'SHOWSTAT'
      Origin = 'SYSUSERS.SHOWSTAT'
      Required = True
      Size = 1
    end
    object dtsUsersSHOWPOPT: TStringField
      FieldName = 'SHOWPOPT'
      Origin = 'SYSUSERS.SHOWPOPT'
      Required = True
      Size = 1
    end
    object dtsUsersSHOWPU: TStringField
      FieldName = 'SHOWPU'
      Origin = 'SYSUSERS.SHOWPU'
      Required = True
      Size = 1
    end
    object dtsUsersRIGHT_SETTINGS: TMemoField
      FieldName = 'RIGHT_SETTINGS'
      BlobType = ftMemo
      Size = 8
    end
    object dtsUsersclBarva: TIntegerField
      DisplayLabel = 'Barva'
      FieldName = 'BARVA'
    end
    object dtsUsersFORM_SETTINGS: TMemoField
      FieldName = 'FORM_SETTINGS'
      BlobType = ftMemo
      Size = 8
    end
    object dtsUsersSQL_SETTINGS: TMemoField
      FieldName = 'SQL_SETTINGS'
      BlobType = ftMemo
      Size = 8
    end
  end
  object Firma: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSUSERSET SYSUSERSET'
      'WHERE'
      '   UNAME = :OLD_UNAME')
    EditSQL.Strings = (
      'UPDATE SYSUSERSET SYSUSERSET SET'
      '   SYSUSERSET.UNAME = :UNAME, /*PK*/'
      '   SYSUSERSET.UNAME2 = :UNAME2,'
      '   SYSUSERSET.UADDRES = :UADDRES,'
      '   SYSUSERSET.UCITY = :UCITY,'
      '   SYSUSERSET.UZIP = :UZIP,'
      '   SYSUSERSET.USTATE = :USTATE,'
      '   SYSUSERSET.UDIC = :UDIC,'
      '   SYSUSERSET.UICO = :UICO,'
      '   SYSUSERSET.UTELEFON = :UTELEFON,'
      '   SYSUSERSET.UFAX = :UFAX,'
      '   SYSUSERSET.UGSM = :UGSM,'
      '   SYSUSERSET.UEMAIL = :UEMAIL,'
      '   SYSUSERSET.UWWW = :UWWW,'
      '   SYSUSERSET.UBANKCODE = :UBANKCODE,'
      '   SYSUSERSET.UBANKNAME = :UBANKNAME,'
      '   SYSUSERSET.UBANKKONTO = :UBANKKONTO,'
      '   SYSUSERSET.ULICENCE = :ULICENCE,'
      '   SYSUSERSET.UAKTIVACE = :UAKTIVACE,'
      '   SYSUSERSET.UREGISTRUDAJE = :UREGISTRUDAJE,'
      '   SYSUSERSET.UTEXTPRIKAZ = :UTEXTPRIKAZ,'
      '   SYSUSERSET.UTEXTPRIKAZ2 = :UTEXTPRIKAZ2,'
      '   SYSUSERSET.UTEXTPOTVRZENI = :UTEXTPOTVRZENI,'
      '   SYSUSERSET.UPLATNOSTDO = :UPLATNOSTDO,'
      '   SYSUSERSET.UNASTAVENI = :UNASTAVENI,'
      '   SYSUSERSET.UPLATNOSTOD = :UPLATNOSTOD,'
      '   SYSUSERSET.ULOGO1 = :ULOGO1,'
      '   SYSUSERSET.ULOGO2 = :ULOGO2,'
      '   SYSUSERSET.ULOGO3 = :ULOGO3'
      'WHERE'
      '   UNAME = :OLD_UNAME')
    IB_Connection = IBOMainDB
    IB_Transaction = IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from sysUserSet')
    FieldOptions = []
    Left = 252
    Top = 124
    object FirmaUNAME: TStringField
      FieldName = 'UNAME'
      Size = 40
    end
    object FirmaUNAME2: TStringField
      FieldName = 'UNAME2'
      Size = 40
    end
    object FirmaUADDRES: TStringField
      FieldName = 'UADDRES'
      Size = 32
    end
    object FirmaUCITY: TStringField
      FieldName = 'UCITY'
      Size = 32
    end
    object FirmaUZIP: TStringField
      FieldName = 'UZIP'
      Size = 10
    end
    object FirmaUSTATE: TStringField
      FieldName = 'USTATE'
      Size = 32
    end
    object FirmaUDIC: TStringField
      FieldName = 'UDIC'
      Size = 14
    end
    object FirmaUICO: TStringField
      FieldName = 'UICO'
      Size = 10
    end
    object FirmaUTELEFON: TStringField
      FieldName = 'UTELEFON'
      Size = 24
    end
    object FirmaUFAX: TStringField
      FieldName = 'UFAX'
      Size = 24
    end
    object FirmaUGSM: TStringField
      FieldName = 'UGSM'
      Size = 24
    end
    object FirmaUEMAIL: TStringField
      FieldName = 'UEMAIL'
      Size = 32
    end
    object FirmaUWWW: TStringField
      FieldName = 'UWWW'
      Size = 32
    end
    object FirmaUBANKCODE: TStringField
      FieldName = 'UBANKCODE'
      Size = 4
    end
    object FirmaUBANKNAME: TStringField
      FieldName = 'UBANKNAME'
      Size = 32
    end
    object FirmaUBANKKONTO: TStringField
      FieldName = 'UBANKKONTO'
      Size = 32
    end
    object FirmaULICENCE: TStringField
      FieldName = 'ULICENCE'
    end
    object FirmaUAKTIVACE: TStringField
      FieldName = 'UAKTIVACE'
    end
    object FirmaUREGISTRUDAJE: TStringField
      DisplayWidth = 50
      FieldName = 'UREGISTRUDAJE'
      Size = 200
    end
    object FirmaUTEXTPRIKAZ: TMemoField
      FieldName = 'UTEXTPRIKAZ'
      BlobType = ftMemo
      Size = 8
    end
    object FirmaUTEXTPRIKAZ2: TMemoField
      FieldName = 'UTEXTPRIKAZ2'
      BlobType = ftMemo
      Size = 8
    end
    object FirmaUTEXTPOTVRZENI: TMemoField
      FieldName = 'UTEXTPOTVRZENI'
      BlobType = ftMemo
      Size = 8
    end
    object FirmaUPLATNOSTDO: TDateTimeField
      FieldName = 'UPLATNOSTDO'
    end
    object FirmaUNASTAVENI: TMemoField
      FieldName = 'UNASTAVENI'
      BlobType = ftMemo
      Size = 8
    end
    object FirmaUPLATNOSTOD: TDateTimeField
      FieldName = 'UPLATNOSTOD'
    end
    object FirmaULOGO1: TBlobField
      FieldName = 'ULOGO1'
      Size = 8
    end
    object FirmaULOGO2: TBlobField
      FieldName = 'ULOGO2'
      Size = 8
    end
    object FirmaULOGO3: TBlobField
      FieldName = 'ULOGO3'
      Size = 8
    end
  end
  object odGDB: TOpenDialog
    Filter = 'Firebird Database (*.GDB)|*.GDB'
    Title = 'A-SPED SQL X1 Database File'
    Left = 452
    Top = 188
  end
  object rstrgForms: TrsStorage
    Active = False
    StorageData = rsndtForms
    RootSection = 'Formulare'
    Options = []
    Left = 156
    Top = 460
  end
  object rsndtForms: TrsIniData
    OnLoadFromStream = rsndtFormsLoadFromStream
    OnSaveToStream = rsndtFormsSaveToStream
    Left = 236
    Top = 460
  end
  object rstrgSQL: TrsStorage
    Active = False
    StorageData = rsIniSQL
    RootSection = 'SQL'
    Left = 156
    Top = 236
  end
  object rsIniSQL: TrsIniData
    OnLoadFromStream = rsIniSQLLoadFromStream
    OnSaveToStream = rsIniSQLSaveToStream
    Left = 236
    Top = 236
  end
  object frxFirma: TfrxDBDataset
    UserName = 'fdsFirma'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UNAME=UNAME'
      'UNAME2=UNAME2'
      'UADDRES=UADDRES'
      'UCITY=UCITY'
      'UZIP=UZIP'
      'USTATE=USTATE'
      'UDIC=UDIC'
      'UICO=UICO'
      'UTELEFON=UTELEFON'
      'UFAX=UFAX'
      'UGSM=UGSM'
      'UEMAIL=UEMAIL'
      'UWWW=UWWW'
      'UBANKCODE=UBANKCODE'
      'UBANKNAME=UBANKNAME'
      'UBANKKONTO=UBANKKONTO'
      'ULICENCE=ULICENCE'
      'UAKTIVACE=UAKTIVACE'
      'UREGISTRUDAJE=UREGISTRUDAJE'
      'UTEXTPRIKAZ=UTEXTPRIKAZ'
      'UTEXTPRIKAZ2=UTEXTPRIKAZ2'
      'UTEXTPOTVRZENI=UTEXTPOTVRZENI'
      'UPLATNOSTDO=UPLATNOSTDO'
      'UNASTAVENI=UNASTAVENI'
      'UPLATNOSTOD=UPLATNOSTOD'
      'ULOGO1=ULOGO1'
      'ULOGO2=ULOGO2'
      'ULOGO3=ULOGO3')
    DataSet = Firma
    BCDToCurrency = False
    DataSetOptions = []
    Left = 316
    Top = 52
  end
  object dtsFormsLoad: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'REF_USER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'FORM_IDENT'
        ParamType = ptInput
        Value = '1'
      end>
    CallbackInc = 1
    ColumnAttributes.Strings = (
      'SYSFORMS.FORM_ID=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_FORMS SYS_FORMS'
      'WHERE'
      '   FORM_ID = :OLD_FORM_ID')
    EditSQL.Strings = (
      'UPDATE SYSFORMS SYSFORMS SET'
      '   SYSFORMS.FORM_DATA = :FORM_DATA'
      'WHERE'
      '   FORM_ID = :OLD_FORM_ID')
    GeneratorLinks.Strings = (
      'FORM_ID=GEN_SYSFORMS_ID')
    IB_Connection = IBOMainDB
    IB_Transaction = IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO SYSFORMS('
      '   FORM_DATA,'
      '   FORM_IDENT,'
      '   REF_USER)'
      'VALUES ('
      '   :FORM_DATA,'
      '   :FORM_IDENT,'
      '   :REF_USER)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT FORM_DATA'
      '     , FORM_ID'
      '     , FORM_IDENT'
      '     , REF_USER'
      
        'FROM SYSFORMS WHERE REF_USER = :REF_USER AND FORM_IDENT =:FORM_I' +
        'DENT')
    FieldOptions = []
    Left = 324
    Top = 122
    object dtsFormsLoadFORM_ID: TIntegerField
      FieldName = 'FORM_ID'
      Origin = 'SYSFORMS.FORM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsFormsLoadREF_USER: TStringField
      FieldName = 'REF_USER'
      Origin = 'SYSFORMS.REF_USER'
      Size = 10
    end
    object dtsFormsLoadFORM_DATA: TBlobField
      FieldName = 'FORM_DATA'
      Origin = 'SYSFORMS.FORM_DATA'
      Size = 8
    end
    object dtsFormsLoadFORM_IDENT: TStringField
      FieldName = 'FORM_IDENT'
      Origin = 'SYSFORMS.FORM_IDENT'
      Size = 80
    end
  end
  object iboBrowseDb: TIB_BrowseDialog
    BaseConnection = IBOMainDB
    Left = 480
    Top = 312
  end
  object iboDBScript: TIB_ScriptDialog
    BaseConnection = IBOMainDB
    Left = 576
    Top = 312
  end
end
