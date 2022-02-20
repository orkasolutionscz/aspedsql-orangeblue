object AOPdmd: TAOPdmd
  OldCreateOrder = False
  OnInitModule = jfsDefaultModuleInitModule
  Height = 613
  Width = 1034
  object dsAop: TDataSource
    DataSet = dtsAOP
    OnDataChange = dsAopDataChange
    Left = 440
    Top = 43
  end
  object dtsAOP: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = 'AOPKOD1'
      end>
    AutoFetchAll = True
    ColumnAttributes.Strings = (
      '[P_AOPKOD]);.AOPKOD=REQUIRED'
      '[P_AOPKOD]);.VYBER=REQUIRED'
      '[P_AOPKOD]);.JSOUKONTAKTY=REQUIRED'
      'SP_AOPZAZNAM.AOPKOD=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOP WHERE AOPKOD = :OLD_AOPKOD')
    EditSQL.Strings = (
      'UPDATE AOP SET'
      '   AOPKOD = :AOPKOD,'
      #9'AOP.NAZEV = :NAZEV, '
      #9'AOP.ADRESA1 =:ADRESA1, '
      #9'AOP.ADRESA2 = :ADRESA2, '
      #9'AOP.ADRESA3 = :ADRESA3, '
      #9'AOP.PSC = :PSC, '
      #9'AOP.KODZEME = :KODZEME, '
      #9'AOP.ICO = :ICO, '
      #9'AOP.DIC = :DIC, '
      #9'AOP.UCET = :UCET, '
      #9'AOP.BANKAKOD = :BANKAKOD, '
      #9'AOP.BANKANAZEV = :BANKANAZEV, '
      #9'AOP.SPLATNOST = :SPLATNOST, '
      #9'AOP.TELEFON = :TELEFON, '
      #9'AOP.FAX = :FAX, '
      #9'AOP.GSM = :GSM, '
      #9'AOP.EMAIL = :EMAIL, '
      #9'AOP.WWW = :WWW, '
      #9'AOP.PREFMAIL = :PREFMAIL, '
      #9'AOP.SKUPINA = :SKUPINA, '
      #9'AOP.K1 = :K1, '
      #9'AOP.K2 = :K2, '
      #9'AOP.UPDID = :UPDID, '
      #9'AOP.UPDDATE = current_timestamp, '
      #9'AOP.SMSSluzba = :SMSSLUZBA,'
      #9'AOP.KodStbs = :KODSTBS, '
      '        KOD_RAAL    = :KOD_RAAL,'
      '        VLASTNIK = :VLASTNIK,'
      '        PR_DSTART = :PR_DSTART,'
      '        PR_CNSTART = :PR_CNSTART,'
      '        PR_CNCONT = :PR_CNCONT,'
      '        KOD_TIMO    = :KOD_TIMO'
      'WHERE '
      #9' AOPKOD = :OLD_AOPKOD'
      ' ')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO AOP'
      '   ('
      '      AOPKOD,'
      '      VLASTNIK,'
      '      PR_DSTART,'
      '      PR_CNSTART,'
      '      PR_CNCONT,'
      '      NAZEV,'
      '      ADRESA1,'
      '      ADRESA2,'
      '      ADRESA3,'
      '      PSC,'
      '      KODZEME,'
      '      ICO,'
      '      DIC,'
      '      UCET,'
      '      BANKAKOD,'
      '      BANKANAZEV,'
      '      SPLATNOST,'
      '      TELEFON,'
      '      FAX,'
      '      GSM,'
      '      EMAIL,'
      '      WWW,'
      '      PREFMAIL,'
      '      SKUPINA,'
      '      K1,'
      '      K2,'
      '      CREAID,'
      '      CREADATE,'
      '      STAV,'
      '      SMSSLUZBA,'
      '      KODSTBS,'
      '      KOD_RAAL,'
      '      KOD_TIMO'
      '   )'
      'values'
      '   ('
      '      :AOPKOD,'
      '      :VLASTNIK,'
      '      :PR_DSTART, '
      '      :PR_CNSTART,'
      '      :PR_CNCONT,'
      '      :NAZEV,'
      '      :ADRESA1,'
      '      :ADRESA2,'
      '      :ADRESA3,'
      '      :PSC,'
      '      :KODZEME,'
      '      :ICO,'
      '      :DIC,'
      '      :UCET,'
      '      :BANKAKOD,'
      '      :BANKANAZEV,'
      '      :SPLATNOST,'
      '      :TELEFON,'
      '      :FAX,'
      '      :GSM,'
      '      :EMAIL,'
      '      :WWW,'
      '      :PREFMAIL,'
      '      :SKUPINA,'
      '      :K1,'
      '      :K2,'
      '      :CREAID,'
      '      current_timestamp,'
      '      1,'
      '      :SMSSLUZBA,'
      '      :KODSTBS,'
      '      :KOD_RAAL,'
      '      :KOD_TIMO'
      '   )'
      ' ')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterDelete = dtsAOPAfterDelete
    BeforePost = dtsAOPBeforePost
    AfterPost = dtsAOPAfterPost
    OnNewRecord = dtsAOPNewRecord
    RequestLive = True
    SQL.Strings = (
      
        'SELECT SP_AOPZAZNAM.*, SP_AOPZAZNAM.AOPKOD SID FROM SP_AOPZAZNAM' +
        '(:AOPKOD);')
    FieldOptions = []
    Left = 439
    Top = 114
    object dtsAOPAOPKOD: TStringField
      Tag = 9
      FieldName = 'AOPKOD'
      Origin = 'SP_AOPZAZNAM.AOPKOD'
      Required = True
      Size = 10
    end
    object dtsAOPVYBER: TStringField
      Tag = 9
      FieldName = 'VYBER'
      Origin = 'SP_AOPZAZNAM.VYBER'
      Size = 1
    end
    object dtsAOPNAZEV: TStringField
      FieldName = 'NAZEV'
      Origin = 'SP_AOPZAZNAM.NAZEV'
      Size = 100
    end
    object dtsAOPADRESA1: TStringField
      FieldName = 'ADRESA1'
      Origin = 'SP_AOPZAZNAM.ADRESA1'
      Size = 32
    end
    object dtsAOPADRESA2: TStringField
      FieldName = 'ADRESA2'
      Origin = 'SP_AOPZAZNAM.ADRESA2'
      Size = 32
    end
    object dtsAOPADRESA3: TStringField
      FieldName = 'ADRESA3'
      Origin = 'SP_AOPZAZNAM.ADRESA3'
      Size = 40
    end
    object dtsAOPPSC: TStringField
      FieldName = 'PSC'
      Origin = 'SP_AOPZAZNAM.PSC'
      OnChange = dtsAOPPSCChange
      Size = 10
    end
    object dtsAOPKODZEME: TStringField
      FieldName = 'KODZEME'
      Origin = 'SP_AOPZAZNAM.KODZEME'
      Size = 4
    end
    object dtsAOPICO: TStringField
      DisplayLabel = 'I'#269
      FieldName = 'ICO'
      Origin = 'SP_AOPZAZNAM.ICO'
      Size = 10
    end
    object dtsAOPDIC: TStringField
      DisplayLabel = 'Di'#269
      FieldName = 'DIC'
      Origin = 'SP_AOPZAZNAM.DIC'
      Size = 14
    end
    object dtsAOPUCET: TStringField
      FieldName = 'UCET'
      Origin = 'SP_AOPZAZNAM.UCET'
      Size = 45
    end
    object dtsAOPBANKAKOD: TStringField
      FieldName = 'BANKAKOD'
      Origin = 'SP_AOPZAZNAM.BANKAKOD'
      Size = 4
    end
    object dtsAOPBANKANAZEV: TStringField
      FieldName = 'BANKANAZEV'
      Origin = 'SP_AOPZAZNAM.BANKANAZEV'
      Size = 22
    end
    object dtsAOPSPLATNOST: TIntegerField
      FieldName = 'SPLATNOST'
      Origin = 'SP_AOPZAZNAM.SPLATNOST'
    end
    object dtsAOPUTO: TStringField
      FieldName = 'UTO'
      Origin = 'SP_AOPZAZNAM.UTO'
      Visible = False
      Size = 8
    end
    object dtsAOPTELEFON: TStringField
      FieldName = 'TELEFON'
      Origin = 'SP_AOPZAZNAM.TELEFON'
      Visible = False
      Size = 50
    end
    object dtsAOPFAX: TStringField
      FieldName = 'FAX'
      Origin = 'SP_AOPZAZNAM.FAX'
      Visible = False
      Size = 50
    end
    object dtsAOPGSM: TStringField
      FieldName = 'GSM'
      Origin = 'SP_AOPZAZNAM.GSM'
      Visible = False
      Size = 50
    end
    object dtsAOPEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'SP_AOPZAZNAM.EMAIL'
      Visible = False
      Size = 100
    end
    object dtsAOPWWW: TStringField
      FieldName = 'WWW'
      Origin = 'SP_AOPZAZNAM.WWW'
      Visible = False
      Size = 100
    end
    object dtsAOPPREFMAIL: TStringField
      Tag = 9
      FieldName = 'PREFMAIL'
      Origin = 'SP_AOPZAZNAM.PREFMAIL'
      Size = 10
    end
    object dtsAOPSMSSLUZBA: TStringField
      Tag = 9
      FieldName = 'SMSSLUZBA'
      Origin = 'SP_AOPZAZNAM.SMSSLUZBA'
      Visible = False
      Size = 15
    end
    object dtsAOPSKUPINA: TStringField
      FieldName = 'SKUPINA'
      Origin = 'SP_AOPZAZNAM.SKUPINA'
      Size = 32
    end
    object dtsAOPK1: TStringField
      FieldName = 'K1'
      Origin = 'SP_AOPZAZNAM.K1'
      Size = 8
    end
    object dtsAOPK2: TStringField
      FieldName = 'K2'
      Origin = 'SP_AOPZAZNAM.K2'
      Size = 8
    end
    object dtsAOPKODSTBS: TStringField
      FieldName = 'KODSTBS'
      Origin = 'SP_AOPZAZNAM.KODSTBS'
      Visible = False
      Size = 15
    end
    object dtsAOPDIR: TStringField
      FieldName = 'DIR'
      Origin = 'SP_AOPZAZNAM.DIR'
      Visible = False
      Size = 50
    end
    object dtsAOPJSOUKONTAKTY: TStringField
      Tag = 9
      FieldName = 'JSOUKONTAKTY'
      Origin = 'SP_AOPZAZNAM.JSOUKONTAKTY'
      Visible = False
      Size = 1
    end
    object dtsAOPCREAID: TStringField
      Tag = 9
      FieldName = 'CREAID'
      Origin = 'SP_AOPZAZNAM.CREAID'
      Visible = False
      Size = 10
    end
    object dtsAOPCREADATE: TDateTimeField
      Tag = 9
      FieldName = 'CREADATE'
      Origin = 'SP_AOPZAZNAM.CREADATE'
      Visible = False
    end
    object dtsAOPUPDID: TStringField
      Tag = 9
      FieldName = 'UPDID'
      Origin = 'SP_AOPZAZNAM.UPDID'
      Visible = False
      Size = 10
    end
    object dtsAOPUPDDATE: TDateTimeField
      Tag = 9
      FieldName = 'UPDDATE'
      Origin = 'SP_AOPZAZNAM.UPDDATE'
      Visible = False
    end
    object dtsAOPSTAV: TIntegerField
      Tag = 9
      FieldName = 'STAV'
      Origin = 'SP_AOPZAZNAM.STAV'
      Visible = False
    end
    object dtsAOPPOPISZEME: TStringField
      Tag = 9
      FieldName = 'POPISZEME'
      Origin = 'SP_AOPZAZNAM.POPISZEME'
      Visible = False
      Size = 32
    end
    object dtsAOPKODTEL: TStringField
      Tag = 9
      FieldName = 'KODTEL'
      Origin = 'SP_AOPZAZNAM.KODTEL'
      Size = 6
    end
    object dtsAOPKOD_RAAL: TStringField
      FieldName = 'KOD_RAAL'
      Origin = 'SP_AOPZAZNAM.KOD_RAAL'
      Size = 10
    end
    object dtsAOPKOD_TIMO: TStringField
      FieldName = 'KOD_TIMO'
      Origin = 'SP_AOPZAZNAM.KOD_TIMO'
      Size = 10
    end
    object dtsAOPSID: TStringField
      Tag = 9
      FieldName = 'SID'
      Origin = 'SP_AOPZAZNAM.AOPKOD'
      Visible = False
      Size = 10
    end
    object dtsAOPVLASTNIK: TStringField
      DisplayLabel = 'Referent'
      FieldName = 'VLASTNIK'
      Origin = 'SP_AOPZAZNAM.VLASTNIK'
      Size = 10
    end
    object dtsAOPPR_DSTART: TDateField
      FieldName = 'PR_DSTART'
      Origin = 'SP_AOPZAZNAM.PR_DSTART'
    end
    object dtsAOPPR_CNSTART: TBCDField
      FieldName = 'PR_CNSTART'
      Origin = 'SP_AOPZAZNAM.PR_CNSTART'
      Precision = 18
      Size = 1
    end
    object dtsAOPPR_CNCONT: TBCDField
      FieldName = 'PR_CNCONT'
      Origin = 'SP_AOPZAZNAM.PR_CNCONT'
      Precision = 18
      Size = 1
    end
  end
  object dtsAOPJmena: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
      end>
    AutoFetchAll = True
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOPJMENA AOPJMENA'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE AOPJMENA AOPJMENA SET'
      '   AOPJMENA.JMENO = :JMENO,'
      '   AOPJMENA.PRIJMENI = :PRIJMENI,'
      '   AOPJMENA.EMAIL = :EMAIL,'
      '   AOPJMENA.FUNKCE = :FUNKCE,'
      '   AOPJMENA.TELEFON1 = :TELEFON1,'
      '   AOPJMENA.TELEFON2 = :TELEFON2,'
      '   AOPJMENA.MOBIL = :MOBIL,'
      '   AOPJMENA.FAX = :FAX,'
      '   AOPJMENA.ISVYCHOZI = :ISVYCHOZI,'
      '   AOPJMENA.COMMTYP = :COMMTYP'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_AOPJMENA_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO AOPJMENA('
      '   ID, /*PK*/'
      '   AOPKOD,'
      '   JMENO,'
      '   PRIJMENI,'
      '   EMAIL,'
      '   FUNKCE,'
      '   TELEFON1,'
      '   TELEFON2,'
      '   MOBIL,'
      '   FAX,'
      '   ISVYCHOZI,'
      '   COMMTYP)'
      'VALUES ('
      '   :ID,'
      '   :AOPKOD,'
      '   :JMENO,'
      '   :PRIJMENI,'
      '   :EMAIL,'
      '   :FUNKCE,'
      '   :TELEFON1,'
      '   :TELEFON2,'
      '   :MOBIL,'
      '   :FAX,'
      '   :ISVYCHOZI,'
      '   :COMMTYP)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = dtsAOPJmenaBeforeEdit
    AfterDelete = dtsAOPJmenaAfterPost
    BeforeInsert = dtsAOPJmenaBeforeInsert
    AfterPost = dtsAOPJmenaAfterPost
    OnNewRecord = dtsAOPJmenaNewRecord
    DataSource = dsAop
    RequestLive = True
    SQL.Strings = (
      'select * from AOPJmena '
      'where AOPJmena.AOPKOD = :AOPKOD')
    FieldOptions = []
    Left = 517
    Top = 113
    object dtsAOPJmenaID: TIntegerField
      FieldName = 'ID'
      Origin = 'AOPJMENA.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object dtsAOPJmenaAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Origin = 'AOPJMENA.AOPKOD'
      Visible = False
      Size = 10
    end
    object dtsAOPJmenaPRIJMENI: TStringField
      DisplayLabel = 'P'#345#237'jmen'#237
      DisplayWidth = 25
      FieldName = 'PRIJMENI'
      Origin = 'AOPJMENA.PRIJMENI'
      Size = 50
    end
    object dtsAOPJmenaJMENO: TStringField
      DisplayLabel = 'Jm'#233'no'
      DisplayWidth = 25
      FieldName = 'JMENO'
      Origin = 'AOPJMENA.JMENO'
      Size = 45
    end
    object dtsAOPJmenaEMAIL: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'AOPJMENA.EMAIL'
      Size = 100
    end
    object dtsAOPJmenaFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'AOPJMENA.FAX'
      Size = 50
    end
    object dtsAOPJmenaTELEFON1: TStringField
      DisplayLabel = 'Telefon 1'
      DisplayWidth = 15
      FieldName = 'TELEFON1'
      Origin = 'AOPJMENA.TELEFON1'
      Size = 50
    end
    object dtsAOPJmenaTELEFON2: TStringField
      DisplayLabel = 'Telefon 2'
      DisplayWidth = 15
      FieldName = 'TELEFON2'
      Origin = 'AOPJMENA.TELEFON2'
      Size = 50
    end
    object dtsAOPJmenaFUNKCE: TStringField
      DisplayLabel = 'Pozice'
      DisplayWidth = 15
      FieldName = 'FUNKCE'
      Origin = 'AOPJMENA.FUNKCE'
      Size = 50
    end
    object dtsAOPJmenaMOBIL: TStringField
      DisplayLabel = 'Mobil'
      DisplayWidth = 15
      FieldName = 'MOBIL'
      Origin = 'AOPJMENA.MOBIL'
      Size = 50
    end
    object dtsAOPJmenaCOMMTYP: TSmallintField
      DisplayLabel = 'Typ p'#345#237'lohy'
      FieldName = 'COMMTYP'
    end
    object dtsAOPJmenaISVYCHOZI: TStringField
      DisplayLabel = 'V'#253'choz'#237
      FieldName = 'ISVYCHOZI'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object AOPSeznam: TIBOQuery
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE AOP SET'
      '  VYBER = :VYBER,'
      '  STATEUSER = :STATEUSER'
      ' '
      'WHERE '
      '  AOPKOD = :AOPKOD;'
      ' ')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'AOPSEZNAM.AOPKOD')
    KeyLinksAutoDefine = False
    PreparedEdits = False
    PreparedInserts = False
    RecordCountAccurate = False
    AfterPost = AOPSeznamAfterPost
    SQL.Strings = (
      'select * from AOPSeznam where 0=0')
    FieldOptions = []
    Left = 228
    Top = 220
    object AOPSeznamAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'AOPSEZNAM.AOPKOD'
      Size = 10
    end
    object AOPSeznamVYBER: TStringField
      DisplayLabel = 'X'
      FieldName = 'VYBER'
      Origin = 'AOPSEZNAM.VYBER'
      Size = 1
    end
    object AOPSeznamNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Origin = 'AOPSEZNAM.NAZEV'
      Size = 100
      AttributeSet = 'Firma'
    end
    object AOPSeznamADRESA1: TStringField
      DisplayLabel = 'Adresa 1'
      DisplayWidth = 15
      FieldName = 'ADRESA1'
      Origin = 'AOPSEZNAM.ADRESA1'
      Size = 32
      AttributeSet = 'Adresa'
    end
    object AOPSeznamADRESA2: TStringField
      DisplayLabel = 'Adresa'
      DisplayWidth = 15
      FieldName = 'ADRESA2'
      Origin = 'AOPSEZNAM.ADRESA2'
      Size = 32
      AttributeSet = 'AdrUlice'
    end
    object AOPSeznamPSC: TStringField
      DisplayLabel = 'Ps'#269
      FieldName = 'PSC'
      Origin = 'AOPSEZNAM.PSC'
      Size = 10
      AttributeSet = 'PSC'
    end
    object AOPSeznamADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'AOPSEZNAM.ADRESA3'
      Size = 32
      AttributeSet = 'AdrMesto'
    end
    object AOPSeznamPOPIS: TStringField
      DisplayLabel = 'N'#225'zev zem'#283
      DisplayWidth = 15
      FieldName = 'POPIS'
      Origin = 'AOPSEZNAM.POPIS'
      Size = 32
    end
    object AOPSeznamKODZEME: TStringField
      DisplayLabel = 'K'#243'd zem'#283
      FieldName = 'KODZEME'
      Origin = 'AOPSEZNAM.KODZEME'
      Size = 4
    end
    object AOPSeznamICO: TStringField
      DisplayLabel = 'I'#269
      DisplayWidth = 9
      FieldName = 'ICO'
      Origin = 'AOPSEZNAM.ICO'
      Size = 10
    end
    object AOPSeznamDIC: TStringField
      DisplayLabel = 'Di'#269
      DisplayWidth = 13
      FieldName = 'DIC'
      Origin = 'AOPSEZNAM.DIC'
      Size = 14
    end
    object AOPSeznamSPLATNOST: TIntegerField
      DisplayLabel = 'Splatnost'
      FieldName = 'SPLATNOST'
      Origin = 'AOPSEZNAM.SPLATNOST'
    end
    object AOPSeznamTELEFON: TStringField
      DisplayLabel = 'Telef'#243'n'
      DisplayWidth = 10
      FieldName = 'TELEFON'
      Origin = 'AOPSEZNAM.TELEFON'
      Size = 24
    end
    object AOPSeznamFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 10
      FieldName = 'FAX'
      Origin = 'AOPSEZNAM.FAX'
      Size = 24
    end
    object AOPSeznamGSM: TStringField
      DisplayLabel = 'Mobil'
      DisplayWidth = 10
      FieldName = 'GSM'
      Origin = 'AOPSEZNAM.GSM'
      Size = 24
    end
    object AOPSeznamEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'AOPSEZNAM.EMAIL'
      Size = 100
    end
    object AOPSeznamKOD_RAAL: TStringField
      DisplayLabel = 'RaalTrans'
      FieldName = 'KOD_RAAL'
      Size = 10
    end
    object AOPSeznamKOD_TIMO: TStringField
      DisplayLabel = 'TimoCom'
      FieldName = 'KOD_TIMO'
      Size = 10
    end
    object AOPSeznamSKUPINA: TStringField
      DisplayLabel = 'Skupina'
      DisplayWidth = 10
      FieldName = 'SKUPINA'
      Origin = 'AOPSEZNAM.SKUPINA'
      Size = 32
    end
    object AOPSeznamK1: TStringField
      FieldName = 'K1'
      Origin = 'AOPSEZNAM.K1'
      Visible = False
      Size = 8
    end
    object AOPSeznamK2: TStringField
      FieldName = 'K2'
      Origin = 'AOPSEZNAM.K2'
      Visible = False
      Size = 8
    end
    object AOPSeznamUPDDATE: TDateTimeField
      DisplayLabel = 'Opr.datum'
      DisplayWidth = 8
      FieldName = 'UPDDATE'
      Origin = 'AOPSEZNAM.UPDDATE'
      Visible = False
      DisplayFormat = 'dd.mm hh:mm'
      AttributeSet = 'OprDatum'
    end
    object AOPSeznamUPDID: TStringField
      DisplayLabel = 'Opravil'
      DisplayWidth = 5
      FieldName = 'UPDID'
      Origin = 'AOPSEZNAM.UPDID'
      Visible = False
      Size = 10
      AttributeSet = 'OprKdo'
    end
    object AOPSeznamSTAV: TIntegerField
      DisplayLabel = 'Stav'
      DisplayWidth = 2
      FieldName = 'STAV'
      Origin = 'AOPSEZNAM.STAV'
      Visible = False
    end
    object AOPSeznamSTATEUSER: TIntegerField
      DisplayLabel = 'Status'
      DisplayWidth = 10
      FieldName = 'STATEUSER'
      Origin = 'AOPSEZNAM.STATEUSER'
    end
    object AOPSeznamSTATEUSERCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'STATEUSERCOLOR'
    end
  end
  object dsAdresy: TDataSource
    AutoEdit = False
    DataSet = AOPSeznam
    Left = 52
    Top = 36
  end
  object ViewAOPJmena: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = 'AOP1'
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOPJMENA WHERE ID = :OLD_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM AOPJMENA'
      'WHERE AOPJMENA.AOPKOD = :AOPKOD'
      'ORDER BY AOPJMENA.PRIJMENI;')
    FieldOptions = []
    Left = 52
    Top = 132
    object ViewAOPJmenaID: TIntegerField
      FieldName = 'ID'
      Origin = 'AOPJMENA.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object ViewAOPJmenaPrijmeni: TStringField
      DisplayLabel = 'P'#345#237'jmen'#237
      DisplayWidth = 20
      FieldName = 'PRIJMENI'
      Origin = 'AOPJMENA.PRIJMENI'
      Size = 50
    end
    object ViewAOPJmenaJmeno: TStringField
      DisplayLabel = 'Jm'#233'no'
      DisplayWidth = 20
      FieldName = 'JMENO'
      Origin = 'AOPJMENA.JMENO'
      Size = 45
    end
    object ViewAOPJmenaEmail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'AOPJMENA.EMAIL'
      Size = 100
    end
    object ViewAOPJmenaFunkce: TStringField
      DisplayLabel = 'Pozice'
      DisplayWidth = 20
      FieldName = 'FUNKCE'
      Origin = 'AOPJMENA.FUNKCE'
      Size = 50
    end
    object ViewAOPJmenaTelefon1: TStringField
      DisplayLabel = 'Tel.1'
      DisplayWidth = 15
      FieldName = 'TELEFON1'
      Origin = 'AOPJMENA.TELEFON1'
      Size = 50
    end
    object ViewAOPJmenaTelefon2: TStringField
      DisplayLabel = 'Tel.2'
      DisplayWidth = 15
      FieldName = 'TELEFON2'
      Origin = 'AOPJMENA.TELEFON2'
      Size = 50
    end
    object ViewAOPJmenaMobil: TStringField
      DisplayLabel = 'Mobil'
      DisplayWidth = 15
      FieldName = 'MOBIL'
      Origin = 'AOPJMENA.MOBIL'
      Size = 50
    end
    object ViewAOPJmenaFax: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'AOPJMENA.FAX'
      Size = 50
    end
    object ViewAOPJmenaISVYCHOZI: TStringField
      DisplayLabel = 'V'#253'choz'#237
      FieldName = 'ISVYCHOZI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ViewAOPJmenaCOMMTYP: TSmallintField
      DisplayLabel = 'Typ p'#345#237'lohy'
      FieldName = 'COMMTYP'
    end
  end
  object dtsAopInfo: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = 'AOP1'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM SP_AOPZAZNAM(:AOPKOD);')
    FieldOptions = []
    Left = 140
    Top = 132
    object dtsAopInfoAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Size = 10
    end
    object dtsAopInfoVYBER: TStringField
      FieldName = 'VYBER'
      FixedChar = True
      Size = 1
    end
    object dtsAopInfoNAZEV: TStringField
      FieldName = 'NAZEV'
      Size = 100
    end
    object dtsAopInfoADRESA1: TStringField
      FieldName = 'ADRESA1'
      Size = 32
    end
    object dtsAopInfoADRESA2: TStringField
      FieldName = 'ADRESA2'
      Size = 32
    end
    object dtsAopInfoADRESA3: TStringField
      FieldName = 'ADRESA3'
      Size = 40
    end
    object dtsAopInfoPSC: TStringField
      FieldName = 'PSC'
      Size = 10
    end
    object dtsAopInfoKODZEME: TStringField
      FieldName = 'KODZEME'
      Size = 4
    end
    object dtsAopInfoICO: TStringField
      FieldName = 'ICO'
      Size = 10
    end
    object dtsAopInfoDIC: TStringField
      FieldName = 'DIC'
      Size = 14
    end
    object dtsAopInfoUCET: TStringField
      FieldName = 'UCET'
      Size = 45
    end
    object dtsAopInfoBANKAKOD: TStringField
      FieldName = 'BANKAKOD'
      Size = 11
    end
    object dtsAopInfoBANKANAZEV: TStringField
      FieldName = 'BANKANAZEV'
      Size = 34
    end
    object dtsAopInfoSPLATNOST: TSmallintField
      FieldName = 'SPLATNOST'
    end
    object dtsAopInfoUTO: TStringField
      FieldName = 'UTO'
      Size = 8
    end
    object dtsAopInfoTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 50
    end
    object dtsAopInfoFAX: TStringField
      FieldName = 'FAX'
      Size = 50
    end
    object dtsAopInfoGSM: TStringField
      FieldName = 'GSM'
      Size = 50
    end
    object dtsAopInfoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object dtsAopInfoWWW: TStringField
      FieldName = 'WWW'
      Size = 200
    end
    object dtsAopInfoPREFMAIL: TStringField
      FieldName = 'PREFMAIL'
      Size = 10
    end
    object dtsAopInfoSMSSLUZBA: TStringField
      FieldName = 'SMSSLUZBA'
      Size = 15
    end
    object dtsAopInfoSKUPINA: TStringField
      FieldName = 'SKUPINA'
      Size = 32
    end
    object dtsAopInfoK1: TStringField
      FieldName = 'K1'
      Size = 8
    end
    object dtsAopInfoK2: TStringField
      FieldName = 'K2'
      Size = 8
    end
    object dtsAopInfoKODSTBS: TStringField
      FieldName = 'KODSTBS'
      FixedChar = True
      Size = 22
    end
    object dtsAopInfoKOD_RAAL: TStringField
      FieldName = 'KOD_RAAL'
      Size = 10
    end
    object dtsAopInfoKOD_TIMO: TStringField
      FieldName = 'KOD_TIMO'
      Size = 10
    end
    object dtsAopInfoDIR: TStringField
      FieldName = 'DIR'
      Size = 50
    end
    object dtsAopInfoJSOUKONTAKTY: TStringField
      FieldName = 'JSOUKONTAKTY'
      FixedChar = True
      Size = 1
    end
    object dtsAopInfoCREAID: TStringField
      FieldName = 'CREAID'
      Size = 10
    end
    object dtsAopInfoCREADATE: TDateTimeField
      FieldName = 'CREADATE'
    end
    object dtsAopInfoUPDID: TStringField
      FieldName = 'UPDID'
      Size = 10
    end
    object dtsAopInfoUPDDATE: TDateTimeField
      FieldName = 'UPDDATE'
    end
    object dtsAopInfoSTAV: TSmallintField
      FieldName = 'STAV'
    end
    object dtsAopInfoPOPISZEME: TStringField
      FieldName = 'POPISZEME'
      Size = 32
    end
    object dtsAopInfoKODTEL: TStringField
      FieldName = 'KODTEL'
      Size = 8
    end
    object dtsAopInfoVLASTNIK: TStringField
      FieldName = 'VLASTNIK'
      Size = 10
    end
  end
  object dtsKontrolaIc: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = 'AOP1'
      end
      item
        DataType = ftString
        Name = 'DIC'
        ParamType = ptInput
        Value = '10'
      end>
    AutoFetchAll = True
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      
        'select AOP.AOPKOD from AOP where AOP.aopkod <> :AOPKOD and AOP.D' +
        'IC = :DIC')
    FieldOptions = []
    Left = 228
    Top = 132
  end
  object KTLZeme: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOPZEME AOPZEME'
      'WHERE'
      '   KOD = :OLD_KOD')
    EditSQL.Strings = (
      'UPDATE AOPZEME AOPZEME SET'
      '   AOPZEME.KOD = :KOD, /*PK*/'
      '   AOPZEME.POPIS = :POPIS,'
      '   AOPZEME.KODTEL = :KODTEL'
      'WHERE'
      '   KOD = :OLD_KOD')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO AOPZEME('
      '   KOD, /*PK*/'
      '   POPIS,'
      '   KODTEL)'
      'VALUES ('
      '   :KOD,'
      '   :POPIS,'
      '   :KODTEL)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLZemeAfterOpen
    SQL.Strings = (
      'select * from aopzeme')
    FieldOptions = []
    Left = 237
    Top = 316
    object KTLZemeKOD: TStringField
      DisplayLabel = 'K'#243'd st'#225'tu'
      DisplayWidth = 10
      FieldName = 'KOD'
      Required = True
      Size = 4
    end
    object KTLZemePOPIS: TStringField
      DisplayLabel = 'N'#225'zev st'#225'tu'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Size = 32
    end
    object KTLZemeKODTEL: TStringField
      DisplayLabel = 'Tel p'#345'edvolba'
      FieldName = 'KODTEL'
      Size = 6
    end
  end
  object KTLSkupiny: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOPSKUP AOPSKUP'
      'WHERE'
      '   POPIS = :OLD_POPIS')
    EditSQL.Strings = (
      'UPDATE AOPSKUP AOPSKUP SET'
      '   AOPSKUP.POPIS = :POPIS  /*PK*/'
      'WHERE'
      '   POPIS = :OLD_POPIS')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO AOPSKUP('
      '   POPIS) /*PK*/'
      'VALUES ('
      '   :POPIS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      'FROM AOPSKUP')
    FieldOptions = []
    Left = 324
    Top = 316
    object KTLSkupinyPOPIS: TStringField
      DisplayLabel = 'N'#225'zev skupiny'
      DisplayWidth = 40
      FieldName = 'POPIS'
      Size = 32
    end
  end
  object KTLPsc: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOPPSC AOPPSC'
      'WHERE'
      '   KODZEME = :OLD_KODZEME AND'
      '   PSC = :OLD_PSC AND'
      '   MESTO = :OLD_MESTO')
    EditSQL.Strings = (
      'UPDATE AOPPSC AOPPSC SET'
      '   AOPPSC.KODZEME = :KODZEME, /*PK*/'
      '   AOPPSC.PSC = :PSC, /*PK*/'
      '   AOPPSC.MESTO = :MESTO  /*PK*/'
      'WHERE'
      '   KODZEME = :OLD_KODZEME AND'
      '   PSC = :OLD_PSC AND'
      '   MESTO = :OLD_MESTO')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO AOPPSC('
      '   KODZEME, /*PK*/'
      '   PSC, /*PK*/'
      '   MESTO) /*PK*/'
      'VALUES ('
      '   :KODZEME,'
      '   :PSC,'
      '   :MESTO)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    OnNewRecord = KTLPscNewRecord
    SQL.Strings = (
      'SELECT '
      '      KODZEME'
      '     , PSC'
      '     , MESTO'
      'FROM AOPPSC ORDER BY KODZEME, PSC, MESTO')
    FieldOptions = []
    Left = 60
    Top = 316
    object KTLPscKODZEME: TStringField
      CustomConstraint = 'kodzeme <> '#39#39
      ConstraintErrorMessage = 'Pole St'#225't mus'#237' obsahovat zkratku st'#225'tu z katalogu Zem'#283'.'
      DisplayLabel = 'K'#243'd'
      FieldName = 'KODZEME'
      Required = True
      Size = 4
    end
    object KTLPscPSC: TStringField
      DisplayLabel = 'Ps'#269
      FieldName = 'PSC'
      Required = True
      Size = 10
    end
    object KTLPscMESTO: TStringField
      CustomConstraint = 'mesto <> '#39#39
      ConstraintErrorMessage = 'Vypl'#328'te n'#225'zev m'#283'sta'
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'MESTO'
      Required = True
      Size = 40
    end
  end
  object dtsAopSU: TIBOQuery
    ColumnAttributes.Strings = (
      'SYSSTATEUSER.ID=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSSTATEUSER SYSSTATEUSER'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE SYSSTATEUSER SYSSTATEUSER SET'
      '   SYSSTATEUSER.KOD = :KOD,'
      '   SYSSTATEUSER.POPIS = :POPIS,'
      '   SYSSTATEUSER.COLOR = :COLOR'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_SYSSTATEUSER_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO SYSSTATEUSER('
      '   ID, /*PK*/'
      '   EVIDENCE,'
      '   KOD,'
      '   POPIS,'
      '   COLOR)'
      'VALUES ('
      '   :ID,'
      '   1,'
      '   :KOD,'
      '   :POPIS,'
      '   :COLOR)')
    KeyLinks.Strings = (
      'SYSSTATEUSER.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT '
      '      ID'
      '     , EVIDENCE'
      '     , KOD'
      '     , POPIS'
      '     , COLOR'
      'FROM SYSSTATEUSER WHERE EVIDENCE = 1')
    FieldOptions = []
    Left = 148
    Top = 316
    object dtsAopSUID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Origin = 'SYSSTATEUSER.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsAopSUEVIDENCE: TIntegerField
      DisplayLabel = 'Evidence'
      FieldName = 'EVIDENCE'
      Origin = 'SYSSTATEUSER.EVIDENCE'
      Visible = False
    end
    object dtsAopSUKOD: TStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'KOD'
      Origin = 'SYSSTATEUSER.KOD'
      Size = 10
    end
    object dtsAopSUPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Origin = 'SYSSTATEUSER.POPIS'
      Size = 100
    end
    object dtsAopSUCOLOR: TIntegerField
      DisplayLabel = 'Barva'
      FieldName = 'COLOR'
    end
  end
  object dtsAOPLook: TIBOQuery
    ColumnAttributes.Strings = (
      'AOP.JSOUKONTAKTY=REQUIRED')
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      ' ')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'AOP.AOPKOD')
    PreparedEdits = False
    PreparedInserts = False
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    aop.aopkod,'
      '    aop.nazev,'
      '    aop.adresa3,'
      '    aop.psc,'
      '    aop.kodzeme,'
      '    aop.ico,'
      '    aop.dic,'
      '    aop.adresa1,'
      '    aop.k1,'
      '    aop.kod_raal,'
      '    aop.kod_timo,'
      '    aop.stateuser,'
      '    sysstateuser.color,'
      '    aop.fax,'
      '    aop.gsm,'
      '    aop.email,'
      '    aop.jsoukontakty,'
      '    aop.skupina'
      'from aop'
      
        '   left outer join sysstateuser on (aop.stateuser = sysstateuser' +
        '.id)'
      'order by nazev')
    FieldOptions = []
    Left = 414
    Top = 318
    object dtsAOPLookPSC: TStringField
      FieldName = 'PSC'
      Origin = 'AOP.PSC'
      Size = 10
    end
    object dtsAOPLookAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'AOP.AOPKOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 10
    end
    object dtsAOPLookICO: TStringField
      DisplayLabel = 'I'#268
      FieldName = 'ICO'
      Origin = 'AOP.ICO'
      Size = 10
    end
    object dtsAOPLookNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'AOP.NAZEV'
      Size = 40
    end
    object dtsAOPLookADRESA1: TStringField
      DisplayLabel = 'Pobo'#269'ka'
      DisplayWidth = 10
      FieldName = 'ADRESA1'
      Origin = 'AOP.ADRESA1'
      Size = 32
    end
    object dtsAOPLookADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'AOP.ADRESA3'
      Size = 40
    end
    object dtsAOPLookEMAIL: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 25
      FieldName = 'EMAIL'
      Origin = 'AOP.EMAIL'
      Size = 100
    end
    object dtsAOPLookFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'AOP.FAX'
      Size = 50
    end
    object dtsAOPLookGSM: TStringField
      DisplayLabel = 'Mobil'
      DisplayWidth = 15
      FieldName = 'GSM'
      Origin = 'AOP.GSM'
      Size = 50
    end
    object dtsAOPLookKODZEME: TStringField
      DisplayLabel = 'St'#225't'
      FieldName = 'KODZEME'
      Origin = 'AOP.KODZEME'
      Size = 4
    end
    object dtsAOPLookSKUPINA: TStringField
      DisplayLabel = 'Skupina'
      DisplayWidth = 10
      FieldName = 'SKUPINA'
      Origin = 'AOP.SKUPINA'
      Size = 32
    end
    object dtsAOPLookK1: TStringField
      FieldName = 'K1'
      Origin = 'AOP.K1'
      Size = 8
    end
    object dtsAOPLookKOD_TIMO: TStringField
      DisplayLabel = 'Timocom'
      FieldName = 'KOD_TIMO'
      Origin = 'AOP.KOD_TIMO'
      Size = 10
    end
    object dtsAOPLookKOD_RAAL: TStringField
      DisplayLabel = 'RAAL Trans'
      FieldName = 'KOD_RAAL'
      Origin = 'AOP.KOD_RAAL'
      Size = 10
    end
    object dtsAOPLookSTATEUSER: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATEUSER'
      Origin = 'AOPSEZNAM.STATEUSER'
    end
    object dtsAOPLookDIC: TStringField
      DisplayLabel = 'DI'#268
      FieldName = 'DIC'
      Origin = 'AOP.DIC'
      Size = 14
    end
    object dtsAOPLookJSOUKONTAKTY: TStringField
      DisplayLabel = 'Kontakty'
      FieldName = 'JSOUKONTAKTY'
      Origin = 'AOP.JSOUKONTAKTY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsAOPLookCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'COLOR'
    end
  end
  object dtsAOPFirmy: TIBOQuery
    AutoFetchAll = True
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      ' ')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'SP_AOPFIRMA.AOPKOD')
    PreparedEdits = False
    PreparedInserts = False
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM SP_AOPFIRMA'
      'ORDER BY NAZEV')
    FieldOptions = []
    Left = 598
    Top = 318
    object dtsAOPFirmyAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'AOP.AOPKOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 10
    end
    object dtsAOPFirmyNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'AOP.NAZEV'
      Size = 40
    end
    object dtsAOPFirmyFIRMA_INFO: TStringField
      DisplayLabel = 'Firma Info'
      DisplayWidth = 30
      FieldName = 'FIRMA_INFO'
      Size = 185
    end
  end
  object dtsKontakty: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = 'aop1'
      end>
    ColumnAttributes.Strings = (
      'AOPJMENA.ID=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOPJMENA AOPJMENA'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE AOPJMENA AOPJMENA SET'
      '   AOPJMENA.JMENO = :JMENO,'
      '   AOPJMENA.PRIJMENI = :PRIJMENI,'
      '   AOPJMENA.FAX = :FAX,'
      '   AOPJMENA.EMAIL = :EMAIL,'
      '   AOPJMENA.MOBIL = :MOBIL,'
      '   AOPJMENA.TELEFON1 = :TELEFON1'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_AOPJMENA_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO AOPJMENA('
      '   ID, /*PK*/'
      '   AOPKOD,'
      '   JMENO,'
      '   PRIJMENI,'
      '   FAX,'
      '   EMAIL,'
      '   MOBIL,'
      '   TELEFON1)'
      'VALUES ('
      '   :ID,'
      '   :AOPKOD,'
      '   :JMENO,'
      '   :PRIJMENI,'
      '   :FAX,'
      '   :EMAIL,'
      '   :MOBIL,'
      '   :TELEFON1)')
    KeyLinks.Strings = (
      'AOPJMENA.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    OnNewRecord = dtsKontaktyNewRecord
    SQL.Strings = (
      
        'SELECT AOPJmena.ID, AOPJmena.AOPKOD, AOPJmena.Jmeno, AOPJmena.Pr' +
        'ijmeni, AOPJmena.Fax, AOPJmena.Email'
      '     , MOBIL'
      '     , TELEFON1'
      'FROM AOPJmena'
      'WHERE AOPKOD = :AOPKOD'
      'ORDER BY AOPKOD, AOPJmena.Prijmeni;')
    FieldOptions = []
    Left = 510
    Top = 318
    object dtsKontaktyID: TIntegerField
      FieldName = 'ID'
      Origin = 'AOPJMENA.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsKontaktyAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Origin = 'AOPJMENA.AOPKOD'
      Visible = False
      Size = 10
    end
    object dtsKontaktyPrijmeni: TStringField
      DisplayLabel = 'P'#345#237'jmen'#237
      DisplayWidth = 25
      FieldName = 'PRIJMENI'
      Origin = 'AOPJMENA.PRIJMENI'
      Size = 50
    end
    object dtsKontaktyJmeno: TStringField
      DisplayLabel = 'Jm'#233'no'
      DisplayWidth = 25
      FieldName = 'JMENO'
      Origin = 'AOPJMENA.JMENO'
      Size = 45
    end
    object dtsKontaktyEmail: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'AOPJMENA.EMAIL'
      Size = 100
    end
    object dtsKontaktyFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'AOPJMENA.FAX'
      Size = 50
    end
    object dtsKontaktyMOBIL: TStringField
      DisplayLabel = 'GSM'
      DisplayWidth = 15
      FieldName = 'MOBIL'
      Size = 50
    end
    object dtsKontaktyTELEFON1: TStringField
      DisplayLabel = 'Telefon'
      DisplayWidth = 15
      FieldName = 'TELEFON1'
      Size = 50
    end
  end
  object ibsFillStaty: TIB_Script
    SQL.Strings = (
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'A'#39', '#39#214'sterreich'#39', '#39'+43'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'AFG'#39', '#39'Afganistan'#39', '#39'+93'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'AL'#39', '#39'Alb'#225'nie'#39', '#39'+355'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'AND'#39', '#39'Andorra'#39', '#39'+376'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'ANG'#39', '#39'Angola'#39', '#39'+244'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'AR'#39', '#39'Arm'#233'nie'#39', '#39'+374'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'AUS'#39', '#39'Austr'#225'lie'#39', '#39'+61'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'AZ'#39', '#39'Azerbajd'#382#225'n'#39', '#39'+994'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'B'#39', '#39'Belgique'#39', '#39'+32'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BD'#39', '#39'Banglad'#233#353#39', '#39'+880'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BDS'#39', '#39'Barbados'#39', '#39'+126'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BG'#39', '#39'Bulgarija'#39', '#39'+359'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BiH'#39', '#39'Bosna i Hercegovina'#39', '#39'+387'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BOL'#39', '#39'Bol'#237'vie'#39', '#39'+591'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BR'#39', '#39'Braz'#237'lie'#39', '#39'+55'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BRN'#39', '#39'Bahrajn'#39', '#39'+973'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BY'#39', '#39'Belarus'#39', '#39'+357'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'CY'#39', '#39'Kypros'#39', '#39'+357'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'CZ'#39', '#39#268'esk'#225' republika'#39', '#39'+420'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'D'#39', '#39'Deutschland'#39', '#39'+49'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'DK'#39', '#39'Danmark'#39', '#39'+45'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'DZ'#39', '#39'Al'#382#237'rsko'#39', '#39'+213'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'E'#39', '#39'Espania'#39', '#39'+34'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'EC'#39', '#39'Ekv'#225'dor'#39', '#39'+593'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'EG'#39', '#39'Egypt'#39', NULL);'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'ET'#39', '#39'Egypt'#39', '#39'+20'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'ETH'#39', '#39'Etiopie'#39', '#39'+251'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'EW'#39', '#39'Estonia'#39', '#39'+372'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'F'#39', '#39'France'#39', '#39'+33'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'FIN'#39', '#39'Suomi Finland'#39', '#39'+358'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'FL'#39', '#39'Liechtenstein'#39', '#39'+4175'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'GB'#39', '#39'United Kingdom'#39', '#39'+44'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'GCA'#39', '#39'Guatemala'#39', '#39'+502'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'GE'#39', '#39'Gruzie'#39', '#39'+995'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'GR'#39', '#39'Grece'#39', '#39'+30'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'H'#39', '#39'Hungaria'#39', '#39'+36'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'HN'#39', '#39'Honduras'#39', '#39'+504'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'HR'#39', '#39'Hrvatska'#39', '#39'+385'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'CH'#39', '#39'Schweiz'#39', '#39'+41'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'I'#39', '#39'Italia'#39', '#39'+39'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'IL'#39', '#39'Israel'#39', '#39'+972'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'IND'#39', '#39'Indie'#39', '#39'+91'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'IRL'#39', '#39'Ireland'#39', '#39'+353'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'IRQ'#39', '#39'Iraq'#39', '#39'+964'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'IS'#39', '#39'Iceland'#39', '#39'+354'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'JAR'#39', '#39'Jihoafrick'#225' republika'#39', NULL);'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'JOR'#39', '#39'Jordania'#39', '#39'+962'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'JPN'#39', '#39'Japonsko'#39', '#39'+81'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'L'#39', '#39'Luxembourg'#39', '#39'+352'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'LT'#39', '#39'Lithuania ( Litva )'#39', '#39'+370'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'LUX'#39', '#39'Luxembourg'#39', '#39'+352'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'LV'#39', '#39'Latvia ( Loty'#353'sko )'#39', '#39'+371'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'M'#39', '#39'Malta'#39', '#39'+356'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'MA'#39', '#39'Marocco'#39', '#39'+212'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'MC'#39', '#39'Monaco'#39', '#39'+377'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'MD'#39', '#39'Moldova'#39', '#39'+373'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'MK'#39', '#39'Macedonia'#39', '#39'+389'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'MY'#39', '#39'Malaysie'#39', '#39'+60'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'N'#39', '#39'Norge'#39', '#39'+47'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'NL'#39', '#39'Nederland'#39', '#39'+31'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'P'#39', '#39'Portugal'#39', '#39'+351'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'PK'#39', '#39'Pakist'#225'n'#39', NULL);'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'PL'#39', '#39'Polska'#39', '#39'+48'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'RA'#39', '#39'Argentina'#39', '#39'+54'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'RCH'#39', '#39'Chile'#39', '#39'+56'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'RI'#39', '#39'Indon'#233'sia'#39', '#39'+62'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'RL'#39', '#39'Libanon'#39', '#39'+961'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'RO'#39', '#39'Romania'#39', '#39'+40'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'RSM'#39', '#39'San Marino'#39', '#39'+378'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'RUS'#39', '#39'Rossija'#39', '#39'+7'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'S'#39', '#39#352'v'#233'dsko'#39', '#39'+46'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'SG'#39', '#39'Singapore'#39', '#39'+65'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'SK'#39', '#39'Slovensko'#39', '#39'+421'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'SLO'#39', '#39'Slovenia'#39', '#39'+386'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'SYR'#39', '#39'Syria'#39', '#39'+963'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'TJ'#39', '#39'China'#39', '#39'+86'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'TN'#39', '#39'Tunisko'#39', '#39'+216'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'TR'#39', '#39'T'#252'rkiye'#39', '#39'+90'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'UA'#39', '#39'Ukraine'#39', NULL);'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'UAE'#39', '#39'Spojen'#233' arabsk'#233' emir'#225'ty'#39', NULL);'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'UK'#39', '#39'Ukraina'#39', '#39'+380'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'USA'#39', '#39'SPOJEN'#201' ST'#193'TY AMERICK'#201#39', NULL);'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'V'#39', '#39'Vaticano'#39', '#39'+39'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'YU'#39', '#39'Yugoslavia'#39', '#39'+381'#39');'
      'INSERT INTO AOPZEME (KOD, POPIS, KODTEL)'
      '             VALUES ('#39'BD1'#39', '#39'Banglad'#233#353#39', '#39'+880'#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 241
    Top = 392
  end
  object tmr1: TTimer
    Interval = 30000
    OnTimer = tmr1Timer
    Left = 616
    Top = 120
  end
  object dtsGetAopColor: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'aopkod'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    sysstateuser.color'
      'from aop'
      
        '   left outer join sysstateuser on (aop.stateuser = sysstateuser' +
        '.id)'
      'where aop.aopkod = :aopkod'
      '')
    FieldOptions = []
    Left = 512
    Top = 408
    object dtsGetAopColorCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
end
