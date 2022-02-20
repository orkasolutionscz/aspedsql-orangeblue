object AppCompsDM: TAppCompsDM
  OldCreateOrder = False
  OnInitModule = gbDefaultModuleInitModule
  Height = 534
  Width = 825
  object KTLJednotky: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSJEDNOTKY SYSJEDNOTKY'
      'WHERE'
      '   JEDNOTKA = :OLD_JEDNOTKA')
    EditSQL.Strings = (
      'UPDATE SYSJEDNOTKY SYSJEDNOTKY SET'
      '   SYSJEDNOTKY.JEDNOTKA = :JEDNOTKA, /*PK*/'
      '   SYSJEDNOTKY.POPIS = :POPIS'
      'WHERE'
      '   JEDNOTKA = :OLD_JEDNOTKA')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO SYSJEDNOTKY('
      '   JEDNOTKA, /*PK*/'
      '   POPIS)'
      'VALUES ('
      '   :JEDNOTKA,'
      '   :POPIS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLJednotkyAfterOpen
    SQL.Strings = (
      'SELECT *'
      'FROM SYSJEDNOTKY')
    FieldOptions = []
    Left = 30
    Top = 30
    object KTLJednotkyJEDNOTKA: TStringField
      DisplayLabel = 'Jednotka'
      FieldName = 'JEDNOTKA'
      Required = True
      Size = 10
    end
    object KTLJednotkyPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 30
      FieldName = 'POPIS'
      Size = 50
    end
  end
  object KTLDPH: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSDPH SYSDPH'
      'WHERE'
      '   DPH_ID = :OLD_DPH_ID')
    EditSQL.Strings = (
      'UPDATE SYSDPH SYSDPH SET'
      '   SYSDPH.DPH_ID = :DPH_ID, /*PK*/'
      '   SYSDPH.PROCDPH = :PROCDPH'
      'WHERE'
      '   DPH_ID = :OLD_DPH_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO SYSDPH('
      '   DPH_ID, /*PK*/'
      '   PROCDPH)'
      'VALUES ('
      '   :DPH_ID,'
      '   :PROCDPH)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM SYSDPH')
    FieldOptions = []
    Left = 118
    Top = 30
    object KTLDPHDPH_ID: TStringField
      DisplayLabel = 'Popis'
      FieldName = 'DPH_ID'
      Required = True
      Size = 3
    end
    object KTLDPHPROCDPH: TBCDField
      DisplayLabel = 'Sazba DPH'
      FieldName = 'PROCDPH'
      Precision = 18
      Size = 1
    end
  end
  object KTLMeny: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSMENY SYSMENY'
      'WHERE'
      '   KOD = :OLD_KOD')
    EditSQL.Strings = (
      'UPDATE SYSMENY SYSMENY SET'
      '   SYSMENY.KOD = :KOD, /*PK*/'
      '   SYSMENY.POPIS = :POPIS,'
      '   SYSMENY.KURS = :KURS'
      'WHERE'
      '   KOD = :OLD_KOD')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO SYSMENY('
      '   KOD, /*PK*/'
      '   POPIS,'
      '   KURS)'
      'VALUES ('
      '   :KOD,'
      '   :POPIS,'
      '   :KURS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLMenyAfterOpen
    SQL.Strings = (
      'SELECT *'
      'FROM SYSMENY')
    FieldOptions = []
    Left = 206
    Top = 30
    object KTLMenyKOD: TStringField
      DisplayLabel = 'K'#243'd m'#283'ny'
      DisplayWidth = 6
      FieldName = 'KOD'
      Size = 3
    end
    object KTLMenyPOPIS: TStringField
      DisplayLabel = 'N'#225'zev'
      DisplayWidth = 15
      FieldName = 'POPIS'
      Size = 32
    end
    object KTLMenyKURS: TFloatField
      DisplayLabel = 'Kurs'
      DisplayWidth = 7
      FieldName = 'KURS'
    end
  end
  object dtsZSUS: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSSTATEUSER'
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
      '   3,'
      '   :KOD,'
      '   :POPIS,'
      '   :COLOR)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM SYSSTATEUSER WHERE EVIDENCE = 3')
    FieldOptions = []
    Left = 294
    Top = 30
    object dtsZSUSID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Required = True
    end
    object dtsZSUSEVIDENCE: TIntegerField
      DisplayLabel = 'Evidence'
      FieldName = 'EVIDENCE'
      Visible = False
    end
    object dtsZSUSKOD: TStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'KOD'
      Size = 10
    end
    object dtsZSUSPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Size = 100
    end
    object dtsZSUSCOLOR: TIntegerField
      DisplayLabel = 'Barva'
      FieldName = 'COLOR'
    end
  end
  object KTLFVTexty: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FVTEXTY FVTEXTY'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE FVTEXTY FVTEXTY SET'
      '   FVTEXTY.POPIS = :POPIS,'
      '   FVTEXTY.TEXTCS = :TEXTCS'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=gen_fvtexty_id')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO FVTEXTY('
      '   ID, /*PK*/'
      '   TYP,'
      '   POPIS,'
      '   TEXTCS)'
      'VALUES ('
      '   :ID,'
      '   0,'
      '   :POPIS,'
      '   :TEXTCS)')
    KeyLinks.Strings = (
      'FVTEXTY.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLFVTextyAfterOpen
    SQL.Strings = (
      'SELECT *'
      'FROM FVTEXTY '
      'where TYP = 0'
      'ORDER BY POPIS'
      '')
    FieldOptions = []
    Left = 382
    Top = 30
    object KTLFVTextyID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object KTLFVTextyTYP: TSmallintField
      DisplayLabel = 'Typ textu'
      FieldName = 'TYP'
    end
    object KTLFVTextyPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 15
      FieldName = 'POPIS'
      Size = 32
    end
    object KTLFVTextyTEXTCS: TMemoField
      DisplayLabel = 'Text z'#225'v'#283'ru'
      FieldName = 'TEXTCS'
      BlobType = ftMemo
      Size = 15
    end
  end
  object KTLFVTyp: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FVTYPY FVTYPY'
      'WHERE'
      '   TYPFV = :OLD_TYPFV')
    EditSQL.Strings = (
      'UPDATE FVTYPY FVTYPY SET'
      '   FVTYPY.TYPFV = :TYPFV, /*PK*/'
      '   FVTYPY.POPIS = :POPIS'
      'WHERE'
      '   TYPFV = :OLD_TYPFV')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO FVTYPY('
      '   TYPFV, /*PK*/'
      '   POPIS)'
      'VALUES ('
      '   :TYPFV,'
      '   :POPIS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLFVTypAfterOpen
    SQL.Strings = (
      'SELECT '
      '     TYPFV'
      '     , POPIS'
      'FROM FVTYPY')
    FieldOptions = []
    Left = 467
    Top = 32
    object KTLFVTypTYPFV: TStringField
      DisplayLabel = 'Zkratka'
      DisplayWidth = 5
      FieldName = 'TYPFV'
      Origin = 'FVTYPY.TYPFV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 5
    end
    object KTLFVTypPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Origin = 'FVTYPY.POPIS'
      Size = 50
    end
  end
  object KTLFVUhrada: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FVUHRADY FVUHRADY'
      'WHERE'
      '   UHRADA = :OLD_UHRADA')
    EditSQL.Strings = (
      'UPDATE FVUHRADY FVUHRADY SET'
      '   UHRADA = :UHRADA, /*PK*/'
      '   POPIS = :POPIS'
      'WHERE'
      '   UHRADA = :OLD_UHRADA')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO FVUHRADY('
      '   UHRADA, /*PK*/'
      '   POPIS)'
      'VALUES ('
      '   :UHRADA,'
      '   :POPIS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLFVUhradaAfterOpen
    SQL.Strings = (
      'SELECT *'
      'FROM FVUHRADY')
    FieldOptions = []
    Left = 559
    Top = 30
    object KTLFVUhradaUHRADA: TStringField
      DisplayLabel = 'Zkratka'
      FieldName = 'UHRADA'
      Required = True
      Size = 15
    end
    object KTLFVUhradaPOPIS: TStringField
      DisplayLabel = 'Popis'
      FieldName = 'POPIS'
      Size = 50
    end
  end
  object KTLFVUcty: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM UCTY UCTY'
      'WHERE'
      '   ZKRATKA = :OLD_ZKRATKA')
    EditSQL.Strings = (
      'UPDATE UCTY UCTY SET'
      '   UCTY.ZKRATKA = :ZKRATKA, /*PK*/'
      '   UCTY.UCET = :UCET,'
      '   UCTY.TYP = :TYP,'
      '   UCTY.KODBANKY = :KODBANKY,'
      '   UCTY.BANKA = :BANKA,'
      '   UCTY.BANKAWORLD = :BANKAWORLD,'
      '   UCTY.SPECSYMBOL = :SPECSYMBOL,'
      '   UCTY.IBAN = :IBAN,'
      '   UCTY.MENA = :MENA'
      'WHERE'
      '   ZKRATKA = :OLD_ZKRATKA')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO UCTY('
      '   ZKRATKA, /*PK*/'
      '   UCET,'
      '   TYP,'
      '   KODBANKY,'
      '   BANKA,'
      '   BANKAWORLD,'
      '   SPECSYMBOL,'
      '   IBAN,'
      '   MENA)'
      'VALUES ('
      '   :ZKRATKA,'
      '   :UCET,'
      '   :TYP,'
      '   :KODBANKY,'
      '   :BANKA,'
      '   :BANKAWORLD,'
      '   :SPECSYMBOL,'
      '   :IBAN,'
      '   :MENA)')
    KeyLinks.Strings = (
      'UCTY.ZKRATKA')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLFVUctyAfterOpen
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      'FROM UCTY')
    FieldOptions = []
    Left = 646
    Top = 30
    object KTLFVUctyZKRATKA: TStringField
      DisplayLabel = 'Zkratka'
      FieldName = 'ZKRATKA'
      Required = True
      Size = 2
    end
    object KTLFVUctyUCET: TStringField
      DisplayLabel = #268#237'slo '#250#269'tu'
      DisplayWidth = 20
      FieldName = 'UCET'
      Required = True
      Size = 34
    end
    object KTLFVUctyTYP: TStringField
      DisplayLabel = 'Typ '#250#269'tu'
      FieldName = 'TYP'
      Required = True
      Size = 10
    end
    object KTLFVUctyKODBANKY: TStringField
      DisplayLabel = 'K'#243'd banky'
      FieldName = 'KODBANKY'
      Size = 5
    end
    object KTLFVUctyBANKA: TStringField
      DisplayLabel = 'N'#225'zev banky'
      DisplayWidth = 25
      FieldName = 'BANKA'
      Size = 34
    end
    object KTLFVUctyBANKAWORLD: TStringField
      DisplayLabel = 'Mezibankovn'#237' spojen'#237
      DisplayWidth = 20
      FieldName = 'BANKAWORLD'
      Size = 45
    end
    object KTLFVUctySPECSYMBOL: TStringField
      DisplayLabel = 'Spec. symbol'
      DisplayWidth = 5
      FieldName = 'SPECSYMBOL'
      Size = 16
    end
    object KTLFVUctyIBAN: TStringField
      DisplayLabel = 'IBAN K'#243'd'
      DisplayWidth = 15
      FieldName = 'IBAN'
      Size = 30
    end
    object KTLFVUctyMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'MENA'
      Size = 3
    end
  end
  object POPKTLTypy: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM POPCENY_TYPY POPCENY_TYPY'
      'WHERE'
      '   KOD = :OLD_KOD')
    EditSQL.Strings = (
      'UPDATE POPCENY_TYPY POPCENY_TYPY SET'
      '   POPCENY_TYPY.KOD = :KOD, /*PK*/'
      '   POPCENY_TYPY.POPIS = :POPIS'
      'WHERE'
      '   KOD = :OLD_KOD')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO POPCENY_TYPY('
      '   KOD, /*PK*/'
      '   POPIS)'
      'VALUES ('
      '   :KOD,'
      '   :POPIS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = POPKTLTypyAfterOpen
    OnNewRecord = POPKTLTypyNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM POPCENY_TYPY')
    FieldOptions = []
    Left = 734
    Top = 30
    object POPKTLTypyKOD: TSmallintField
      DisplayLabel = 'K'#243'd'
      DisplayWidth = 4
      FieldName = 'KOD'
    end
    object POPKTLTypyPOPIS: TStringField
      DisplayLabel = 'Popis'
      FieldName = 'POPIS'
      Size = 50
    end
  end
  object KTLAuta: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM LKW_TYPY LKW_TYPY'
      'WHERE'
      '   TYP = :OLD_TYP')
    EditSQL.Strings = (
      'UPDATE LKW_TYPY LKW_TYPY SET'
      '   LKW_TYPY.TYP = :TYP  /*PK*/'
      'WHERE'
      '   TYP = :OLD_TYP')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO LKW_TYPY('
      '   TYP) /*PK*/'
      'VALUES ('
      '   :TYP)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLAutaAfterOpen
    SQL.Strings = (
      'select * from LKW_TYPY')
    FieldOptions = []
    Left = 30
    Top = 118
    object KTLAutaTYP: TStringField
      DisplayLabel = 'Dopr.prost'#345'edek'
      DisplayWidth = 35
      FieldName = 'TYP'
      Origin = 'LKW_TYPY.TYP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 100
    end
  end
  object KTLTypy: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSTYPY ZSTYPY'
      'WHERE'
      '   TYP = :OLD_TYP')
    EditSQL.Strings = (
      'UPDATE ZSTYPY ZSTYPY SET'
      '   ZSTYPY.TYP = :TYP, /*PK*/'
      '   ZSTYPY.POPIS = :POPIS'
      'WHERE'
      '   TYP = :OLD_TYP')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSTYPY('
      '   TYP, /*PK*/'
      '   POPIS)'
      'VALUES ('
      '   :TYP,'
      '   :POPIS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLTypyAfterOpen
    SQL.Strings = (
      'SELECT '
      '     TYP'
      '     , POPIS'
      'FROM ZSTYPY')
    FieldOptions = []
    Left = 118
    Top = 118
    object KTLTypyTyp: TStringField
      FieldName = 'TYP'
      Origin = 'ZSTYPY.TYP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object KTLTypyPopis: TStringField
      DisplayWidth = 25
      FieldName = 'POPIS'
      Origin = 'ZSTYPY.POPIS'
      Size = 50
    end
  end
  object KTLPodminky: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSPODMINKY ZSPODMINKY'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE ZSPODMINKY ZSPODMINKY SET'
      '   ZSPODMINKY.ID = :ID, /*PK*/'
      '   ZSPODMINKY.POPIS = :POPIS,'
      '   ZSPODMINKY.OBSAH = :OBSAH'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_ZSPODMINKY_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSPODMINKY('
      '   ID, /*PK*/'
      '   POPIS,'
      '   OBSAH)'
      'VALUES ('
      '   :ID,'
      '   :POPIS,'
      '   :OBSAH)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = KTLPodminkyAfterOpen
    SQL.Strings = (
      'SELECT * FROM ZSPODMINKY')
    FieldOptions = []
    Left = 206
    Top = 118
    object KTLPodminkyID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZSPODMINKY.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object KTLPodminkyPopis: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 15
      FieldName = 'POPIS'
      Origin = 'ZSPODMINKY.POPIS'
      Size = 50
    end
    object KTLPodminkyObsah: TMemoField
      DisplayLabel = 'Obsah'
      FieldName = 'OBSAH'
      Origin = 'ZSPODMINKY.OBSAH'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
  end
  object ZSKTLNakVyk: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSKTLNAKVYK ZSKTLNAKVYK'
      'WHERE'
      '   KOD = :OLD_KOD')
    EditSQL.Strings = (
      'UPDATE ZSKTLNAKVYK ZSKTLNAKVYK SET'
      '   ZSKTLNAKVYK.KOD = :KOD, /*PK*/'
      '   ZSKTLNAKVYK.POPIS = :POPIS,'
      '   ZSKTLNAKVYK.NOMODIFY = :NOMODIFY'
      'WHERE'
      '   KOD = :OLD_KOD')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSKTLNAKVYK('
      '   KOD, /*PK*/'
      '   POPIS,'
      '   NOMODIFY)'
      'VALUES ('
      '   :KOD,'
      '   :POPIS,'
      '   :NOMODIFY)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterOpen = ZSKTLNakVykAfterOpen
    OnNewRecord = ZSKTLNakVykNewRecord
    SQL.Strings = (
      'SELECT * FROM ZSKTLNAKVYK')
    FieldOptions = []
    Left = 294
    Top = 118
    object ZSKTLNakVykKod: TStringField
      FieldName = 'KOD'
      Origin = 'ZSKTLNAKVYK.KOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object ZSKTLNakVykPopis: TStringField
      DisplayWidth = 15
      FieldName = 'POPIS'
      Origin = 'ZSKTLNAKVYK.POPIS'
      Size = 32
    end
    object ZSKTLNakVykNOMODIFY: TStringField
      DisplayLabel = 'Syst'#233'mov'#253
      FieldName = 'NOMODIFY'
      Origin = 'ZSKTLNAKVYK.NOMODIFY'
      Size = 1
    end
  end
  object KTLDruhPlatby: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSPLATCO ZSPLATCO'
      'WHERE'
      '   KOD = :OLD_KOD')
    EditSQL.Strings = (
      'UPDATE ZSPLATCO ZSPLATCO SET'
      '   ZSPLATCO.KOD = :KOD, /*PK*/'
      '   ZSPLATCO.POPIS = :POPIS,'
      '   ZSPLATCO.TEXTFAKTURA = :TEXTFAKTURA,'
      '   ZSPLATCO.NOMODIFY = :NOMODIFY'
      'WHERE'
      '   KOD = :OLD_KOD')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSPLATCO('
      '   KOD, /*PK*/'
      '   POPIS,'
      '   TEXTFAKTURA,'
      '   NOMODIFY)'
      'VALUES ('
      '   :KOD,'
      '   :POPIS,'
      '   :TEXTFAKTURA,'
      '   :NOMODIFY)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforePost = KTLDruhPlatbyBeforePost
    OnNewRecord = KTLDruhPlatbyNewRecord
    SQL.Strings = (
      'SELECT'
      '     KOD'
      '     , POPIS'
      '     , TEXTFAKTURA'
      '     , NOMODIFY'
      'FROM ZSPLATCO')
    FieldOptions = []
    Left = 382
    Top = 118
    object KTLDruhPlatbyKOD: TStringField
      DisplayLabel = 'K'#243'd platby'
      FieldName = 'KOD'
      Origin = 'ZSPLATCO.KOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object KTLDruhPlatbyPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Origin = 'ZSPLATCO.POPIS'
      Size = 32
    end
    object KTLDruhPlatbyTEXTFAKTURA: TStringField
      DisplayLabel = 'Text ve faktu'#345'e'
      DisplayWidth = 25
      FieldName = 'TEXTFAKTURA'
      Origin = 'ZSPLATCO.TEXTFAKTURA'
      Size = 50
    end
    object KTLDruhPlatbyNOMODIFY: TStringField
      DisplayLabel = 'Syst'#233'mov'#253
      FieldName = 'NOMODIFY'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dtsDocSU: TIBOQuery
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
      '   2,'
      '   :KOD,'
      '   :POPIS,'
      '   :COLOR)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM SYSSTATEUSER WHERE EVIDENCE = 2')
    FieldOptions = []
    Left = 30
    Top = 206
    object dtsDocSUID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Required = True
    end
    object dtsDocSUEVIDENCE: TIntegerField
      DisplayLabel = 'Evidence'
      FieldName = 'EVIDENCE'
      Visible = False
    end
    object dtsDocSUKOD: TStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'KOD'
      Size = 10
    end
    object dtsDocSUPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Size = 100
    end
    object dtsDocSUCOLOR: TIntegerField
      DisplayLabel = 'Barva'
      FieldName = 'COLOR'
    end
  end
  object dtsFVDUs: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSSTATEUSER'
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
      '   4,'
      '   :KOD,'
      '   :POPIS,'
      '   :COLOR)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM SYSSTATEUSER WHERE EVIDENCE = 4')
    FieldOptions = []
    Left = 118
    Top = 206
    object dtsFVDUsID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Required = True
    end
    object dtsFVDUsEVIDENCE: TIntegerField
      DisplayLabel = 'Evidence'
      FieldName = 'EVIDENCE'
      Visible = False
    end
    object dtsFVDUsKOD: TStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'KOD'
      Size = 10
    end
    object dtsFVDUsPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Size = 100
    end
    object dtsFVDUsCOLOR: TIntegerField
      DisplayLabel = 'Barva'
      FieldName = 'COLOR'
    end
  end
  object dtsPOPUS: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSSTATEUSER'
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
      '   5,'
      '   :KOD,'
      '   :POPIS,'
      '   :COLOR)')
    KeyLinks.Strings = (
      'SYSSTATEUSER.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM SYSSTATEUSER WHERE EVIDENCE = 5')
    FieldOptions = []
    Left = 206
    Top = 206
    object dtsPOPUSID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Required = True
    end
    object dtsPOPUSEVIDENCE: TIntegerField
      DisplayLabel = 'Evidence'
      FieldName = 'EVIDENCE'
      Visible = False
    end
    object dtsPOPUSKOD: TStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'KOD'
      Size = 10
    end
    object dtsPOPUSPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Size = 100
    end
    object dtsPOPUSCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object dtsPUUS: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSSTATEUSER'
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
      '   6,'
      '   :KOD,'
      '   :POPIS,'
      '   :COLOR)')
    KeyLinks.Strings = (
      'SYSSTATEUSER.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM SYSSTATEUSER WHERE EVIDENCE = 6')
    FieldOptions = []
    Left = 294
    Top = 206
    object dtsPUUSID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Required = True
    end
    object dtsPUUSEVIDENCE: TIntegerField
      DisplayLabel = 'Evidence'
      FieldName = 'EVIDENCE'
      Visible = False
    end
    object dtsPUUSKOD: TStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'KOD'
      Size = 10
    end
    object dtsPUUSPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Size = 100
    end
    object dtsPUUSCOLOR: TIntegerField
      DisplayLabel = 'Barva'
      FieldName = 'COLOR'
    end
  end
  object dtsKTLUsers: TIBOQuery
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'SYSUSERS.USERID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT '
      '     USERID'
      '     , ZNACKA'
      '     , JMENO'
      '     , BARVA'
      'FROM SYSUSERS')
    FieldOptions = []
    Left = 382
    Top = 206
    object dtsKTLUsersUSERID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'USERID'
      Required = True
      Size = 10
    end
    object dtsKTLUsersZNACKA: TStringField
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Size = 5
    end
    object dtsKTLUsersJMENO: TStringField
      DisplayLabel = 'Jm'#233'no'
      DisplayWidth = 15
      FieldName = 'JMENO'
      Size = 50
    end
    object dtsKTLUsersBARVA: TIntegerField
      DisplayLabel = 'Barva'
      FieldName = 'BARVA'
    end
  end
  object dtsKTLFaktPol: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSPLATBYTEXTY ZSPLATBYTEXTY'
      'WHERE'
      '   PLATBA_TEXT = :OLD_PLATBA_TEXT')
    EditSQL.Strings = (
      'UPDATE ZSPLATBYTEXTY ZSPLATBYTEXTY SET'
      '   ZSPLATBYTEXTY.PLATBA_TEXT = :PLATBA_TEXT  /*PK*/'
      'WHERE'
      '   PLATBA_TEXT = :OLD_PLATBA_TEXT')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO ZSPLATBYTEXTY('
      '   PLATBA_TEXT) /*PK*/'
      'VALUES ('
      '   :PLATBA_TEXT)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT *'
      'FROM ZSPLATBYTEXTY ORDER BY PLATBA_TEXT')
    FieldOptions = []
    Left = 470
    Top = 206
    object dtsKTLFaktPolPLATBA_TEXT: TStringField
      DisplayLabel = 'Platba '#353'ablona'
      DisplayWidth = 25
      FieldName = 'PLATBA_TEXT'
      Required = True
      Size = 255
    end
  end
  object dtsFVTextyHead: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FVTEXTY FVTEXTY'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE FVTEXTY FVTEXTY SET'
      '   FVTEXTY.POPIS = :POPIS,'
      '   FVTEXTY.TEXTCS = :TEXTCS'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=gen_fvtexty_id')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO FVTEXTY('
      '   ID, /*PK*/'
      '   TYP,'
      '   POPIS,'
      '   TEXTCS)'
      'VALUES ('
      '   :ID,'
      '   1,'
      '   :POPIS,'
      '   :TEXTCS)')
    KeyLinks.Strings = (
      'FVTEXTY.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    OnNewRecord = dtsFVTextyHeadNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM FVTEXTY '
      'where TYP = 1'
      'ORDER BY POPIS')
    FieldOptions = []
    Left = 30
    Top = 294
    object dtsFVTextyHeadID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object dtsFVTextyHeadTYP: TSmallintField
      FieldName = 'TYP'
    end
    object dtsFVTextyHeadPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 15
      FieldName = 'POPIS'
      Size = 32
    end
    object dtsFVTextyHeadTEXTCS: TMemoField
      DisplayLabel = 'Text Z'#225'hlav'#237
      FieldName = 'TEXTCS'
      BlobType = ftMemo
      Size = 15
    end
  end
  object dtsFVTextyAll: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FVTEXTY FVTEXTY'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE FVTEXTY FVTEXTY SET'
      '   FVTEXTY.POPIS = :POPIS,'
      '   FVTEXTY.TEXTCS = :TEXTCS'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=gen_fvtexty_id')
    IB_Connection = dmdSystem.IBOMainDB
    InsertSQL.Strings = (
      'INSERT INTO FVTEXTY('
      '   ID, /*PK*/'
      '   TYP,'
      '   POPIS,'
      '   TEXTCS)'
      'VALUES ('
      '   :ID,'
      '   :TYP,'
      '   :POPIS,'
      '   :TEXTCS)')
    KeyLinks.Strings = (
      'FVTEXTY.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterDelete = UpdateOstatniTexty
    AfterPost = UpdateOstatniTexty
    SQL.Strings = (
      'SELECT '
      '      ID'
      '     , TYP'
      '     , POPIS'
      '     , TEXTCS'
      'FROM FVTEXTY '
      'ORDER BY POPIS')
    FieldOptions = []
    Left = 118
    Top = 294
    object dtsFVTextyAllID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object dtsFVTextyAllTYP: TSmallintField
      DisplayLabel = 'Typ textu'
      FieldName = 'TYP'
    end
    object dtsFVTextyAllPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 15
      FieldName = 'POPIS'
      Size = 32
    end
    object dtsFVTextyAllTEXTCS: TMemoField
      DisplayLabel = 'Text z'#225'v'#283'ru'
      FieldName = 'TEXTCS'
      BlobType = ftMemo
      Size = 15
    end
  end
  object ibsFillFVTexty: TIB_Script
    SQL.Strings = (
      'INSERT INTO FVTEXTY (ID, TYP, POPIS, TEXTCS)'
      '             VALUES (1, 0, '#39'Bez textu'#39', NULL);'
      'INSERT INTO FVTEXTY (ID, TYP, POPIS, TEXTCS)'
      
        '             VALUES (3, 0, '#39'Osvobozeno od DPH'#39', '#39'Osvobozeno od D' +
        'PH ve smyslu '#167' 47 Z'#225'kona '#269'. 588/92 Sb.'#39');'
      'INSERT INTO FVTEXTY (ID, TYP, POPIS, TEXTCS)'
      
        '             VALUES (5, 0, '#39'Z'#225'lohov'#225' faktura'#39', '#39'Z'#225'lohov'#225' faktura' +
        ' nen'#237' da'#328'ov'#253'm dokladem. Da'#328'ov'#253' doklad obdr'#382#237'te po realizaci cel'#233 +
        ' dod'#225'vky'#39');'
      'INSERT INTO FVTEXTY (ID, TYP, POPIS, TEXTCS)'
      
        '             VALUES (2, 1, '#39'Faktururjeme v'#225'm p'#345'epravn'#233#39', '#39'Faktur' +
        'urjeme v'#225'm p'#345'epravn'#233#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 379
    Top = 334
  end
  object ibsFillJednotky: TIB_Script
    SQL.Strings = (
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'ALL'#39', '#39'ALL IN'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'ALL IN'#39', '#39'v'#269'etn'#283' CP a za p'#345'epravn'#233#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'hod'#39', '#39'hodina'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'kg'#39', '#39'hmotnost v kg'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'km'#39', '#39'za kilometr'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'KONT.'#39', '#39'za kontejner'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'ks'#39', '#39'kusy'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'LKW'#39', '#39'za kamion'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39't'#39', '#39'za tunu'#39');'
      'INSERT INTO SYSJEDNOTKY (JEDNOTKA, POPIS)'
      '                 VALUES ('#39'z'#225's.'#39', '#39'z'#225'silka'#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 453
    Top = 334
  end
  object ibsFillMeny: TIB_Script
    SQL.Strings = (
      'INSERT INTO SYSMENY (KOD, POPIS, KURS)'
      '             VALUES ('#39'CHF'#39', '#39#352'v'#253'carsk'#253' frank'#39', 17.5);'
      'INSERT INTO SYSMENY (KOD, POPIS, KURS)'
      '             VALUES ('#39'CZK'#39', '#39'Koruna '#269'esk'#225#39', 1);'
      'INSERT INTO SYSMENY (KOD, POPIS, KURS)'
      '             VALUES ('#39'PLN'#39', '#39'Polsk'#253' zloty'#39', 6.4);'
      'INSERT INTO SYSMENY (KOD, POPIS, KURS)'
      '             VALUES ('#39'USD'#39', '#39'Americk'#253' dolar'#39', 18);'
      'INSERT INTO SYSMENY (KOD, POPIS, KURS)'
      '             VALUES ('#39'EUR'#39', '#39'Euro'#39', 24.8);'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 530
    Top = 334
  end
  object ibsFillFVTyp: TIB_Script
    SQL.Strings = (
      'INSERT INTO FVTYPY (TYPFV, POPIS)'
      '            VALUES ('#39'FD'#39', '#39'Faktura do'#353'l'#225#39');'
      'INSERT INTO FVTYPY (TYPFV, POPIS)'
      '            VALUES ('#39'FV'#39', '#39'Vydan'#225' faktura'#39');'
      'INSERT INTO FVTYPY (TYPFV, POPIS)'
      '            VALUES ('#39'FZ'#39', '#39'Z'#225'lohov'#225' faktura 1'#39');'
      'INSERT INTO FVTYPY (TYPFV, POPIS)'
      '            VALUES ('#39'OD'#39', '#39'Opravn'#253' doklad'#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 600
    Top = 333
  end
  object ibsFillUhrady: TIB_Script
    SQL.Strings = (
      'INSERT INTO FVUHRADY (UHRADA, POPIS)'
      '              VALUES ('#39'HOTOVOST'#39', '#39'Platba v hotovosti'#39');'
      'INSERT INTO FVUHRADY (UHRADA, POPIS)'
      '              VALUES ('#39'P'#344'EVODEM'#39', '#39'Bankovn'#237'm p'#345'evodem'#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 528
    Top = 403
  end
  object ibsFillUcty: TIB_Script
    SQL.Strings = (
      
        'INSERT INTO UCTY (ZKRATKA, UCET, TYP, KODBANKY, BANKA, BANKAWORL' +
        'D, SPECSYMBOL, IBAN, MENA)'
      
        '          VALUES ('#39'PO'#39', '#39'Pokladna'#39', '#39'Hotovostn'#237#39', NULL, NULL, NU' +
        'LL, NULL, NULL, '#39'CZK'#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 453
    Top = 403
  end
  object ibsFillLKWTypy: TIB_Script
    SQL.Strings = (
      'INSERT INTO LKW_TYPY (TYP)'
      '              VALUES ('#39'13,5 m - jumbo'#39');'
      'INSERT INTO LKW_TYPY (TYP)'
      '              VALUES ('#39'13,5m - mulda'#39');'
      'INSERT INTO LKW_TYPY (TYP)'
      '              VALUES ('#39'13,5m -sk'#345#237#328'/Box'#39');'
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 378
    Top = 404
  end
  object ibsFillNakVykTyp: TIB_Script
    SQL.Strings = (
      'INSERT INTO ZSKTLNAKVYK (KOD, POPIS, NOMODIFY)'
      '                 VALUES ('#39'N'#39', '#39'Nakl'#225'dka'#39', '#39'T'#39');'
      'INSERT INTO ZSKTLNAKVYK (KOD, POPIS, NOMODIFY)'
      '                 VALUES ('#39'P'#39', '#39'Prostoj'#39', '#39'F'#39');'
      'INSERT INTO ZSKTLNAKVYK (KOD, POPIS, NOMODIFY)'
      '                 VALUES ('#39'V'#39', '#39'Vykl'#225'dka'#39', '#39'T'#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 608
    Top = 405
  end
  object ibsFillZSTyp: TIB_Script
    SQL.Strings = (
      'INSERT INTO ZSTYPY (TYP, POPIS)'
      '            VALUES ('#39'Export'#39', '#39'Exportn'#237' p'#345'epravy'#39');'
      'INSERT INTO ZSTYPY (TYP, POPIS)'
      '            VALUES ('#39'Import'#39', '#39'Importn'#237' p'#345'epravy'#39');'
      'INSERT INTO ZSTYPY (TYP, POPIS)'
      '            VALUES ('#39'kole'#269'ko'#39', '#39'exp/imp nebo opak'#39');'
      'INSERT INTO ZSTYPY (TYP, POPIS)'
      
        '            VALUES ('#39'mimounijn'#237#39', '#39'p'#345'epravy do a ze zem'#237' mimo EU' +
        #39');'
      'INSERT INTO ZSTYPY (TYP, POPIS)'
      '            VALUES ('#39'Reexport'#39', NULL);'
      'INSERT INTO ZSTYPY (TYP, POPIS)'
      
        '            VALUES ('#39'unijn'#237'/vnitro'#39', '#39'v r'#225'mci '#269'len.zem'#237'  EU/vnit' +
        'ro'#39');'
      'INSERT INTO ZSTYPY (TYP, POPIS)'
      '            VALUES ('#39'Vnitro'#39', '#39'vnitrost'#225'tn'#237' p'#345'epravy'#39');'
      ''
      'COMMIT WORK;')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    Left = 379
    Top = 472
  end
end
