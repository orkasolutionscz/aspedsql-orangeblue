object dmdConnect: TdmdConnect
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 518
  Width = 637
  object IBOMainDB: TIBODatabase
    CacheStatementHandles = False
    SQLDialect = 3
    DatabaseName = 'fbAspedSql'
    Params.Strings = (
      'SERVER=localhost'
      'PATH=C:\data\orange\aspedsql.fdb'
      'PROTOCOL=TCP/IP'
      'USER NAME=SYSDBA'
      'SQL DIALECT=3'
      'CHARACTER SET=WIN1250')
    Isolation = tiCommitted
    Left = 60
    Top = 52
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
  object dtsFV: TIBOQuery
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE FV SET'
      '   VYBER = :VYBER,'
      '   LIKVOK = :LIKVOK,'
      '   DATUHRAZENO = :DATUHRAZENO,'
      '   STATEUSER = :STATEUSER,'
      '   CENALIKV = :CENALIKV,'
      '   UCTODATUM = :UCTODATUM,'
      '   DOKLAD = :DOKLAD'
      'WHERE'
      #9'FV.SID=:SID')
    IB_Connection = IBOMainDB
    KeyLinks.Strings = (
      'FVSEZNAM.SID')
    KeyLinksAutoDefine = False
    PreparedEdits = False
    PreparedInserts = False
    RecordCountAccurate = False
    SQL.Strings = (
      'SELECT '
      '     SID'
      '     , FAKTURA'
      '     , VYBER'
      '     , TYP'
      '     , REF_ZASILKA'
      '     , NAZEV'
      '     , ADRESA3'
      '     , ZEME'
      '     , ICO'
      '     , DIC'
      '     , SYMBVARIA'
      '     , DATVYSTAVENI'
      '     , DATDANPOV'
      '     , DATSPLATNOST'
      '     , LIKVOK'
      '     , DATUHRAZENO'
      '     , UPDID'
      '     , UPDDATE'
      '     , CREAID'
      '     , CREADATE'
      '     , ZASILKA'
      '     , STAV'
      '     , STATEUSER'
      '     , STATEUSERCOLOR'
      '     , SUMAZAKLAD'
      '     , SUMADPH'
      '     , CENAZALOHY'
      '     , CENAKURS'
      '     , CENASUMAKC'
      '     , CENALIKV'
      '     , CENAMENA'
      '     , CELKEM'
      '     , UCTODATUM'
      '     , DOKLAD'
      'FROM FVSEZNAM'
      'WHERE STAV = 1')
    FieldOptions = []
    Left = 148
    Top = 44
    object dtsFVSID: TStringField
      DisplayLabel = 'ID Faktury'
      FieldName = 'SID'
      Origin = 'FV.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 22
    end
    object dtsFVTYP: TSmallintField
      DisplayLabel = 'Typ'
      FieldName = 'TYP'
      Origin = 'FVSEZNAM.TYP'
    end
    object dtsFVFAKTURA: TStringField
      DisplayLabel = 'Faktura'
      FieldName = 'FAKTURA'
      Origin = 'FV.FAKTURA'
      Size = 10
    end
    object dtsFVUCTODATUM: TDateField
      DisplayLabel = #218#269'to p'#345'evedeno'
      FieldName = 'UCTODATUM'
      Origin = 'FVSEZNAM.UCTODATUM'
    end
    object dtsFVSYMBVARIA: TStringField
      DisplayLabel = 'Variabiln'#237
      FieldName = 'SYMBVARIA'
      Origin = 'FVSEZNAM.SYMBVARIA'
      Size = 10
    end
    object dtsFVZASILKA: TStringField
      DisplayLabel = 'Z'#225'silka'
      DisplayWidth = 10
      FieldName = 'ZASILKA'
      Origin = 'FVSEZNAM.ZASILKA'
      Size = 22
    end
    object dtsFVREF_ZASILKA: TStringField
      DisplayLabel = 'ID Z'#225'silky'
      FieldName = 'REF_ZASILKA'
      Origin = 'FVSEZNAM.REF_ZASILKA'
      Visible = False
      Size = 22
    end
    object dtsFVNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Origin = 'FV.NAZEV'
      Size = 100
    end
    object dtsFVADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'FV.ADRESA3'
      Visible = False
      Size = 32
    end
    object dtsFVZEME: TStringField
      DisplayLabel = 'Zem'#283
      DisplayWidth = 15
      FieldName = 'ZEME'
      Origin = 'FV.ZEME'
      Visible = False
      Size = 32
    end
    object dtsFVICO: TStringField
      DisplayLabel = 'I'#269'o'
      DisplayWidth = 9
      FieldName = 'ICO'
      Origin = 'FV.ICO'
      Visible = False
      Size = 10
    end
    object dtsFVDIC: TStringField
      DisplayLabel = 'Di'#269
      DisplayWidth = 13
      FieldName = 'DIC'
      Origin = 'FV.DIC'
      Visible = False
      Size = 14
    end
    object dtsFVDATVYSTAVENI: TDateTimeField
      DisplayLabel = 'Dat.vystaven'#237
      DisplayWidth = 10
      FieldName = 'DATVYSTAVENI'
      Origin = 'FV.DATVYSTAVENI'
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object dtsFVDATDANPOV: TDateTimeField
      DisplayLabel = 'Dat.da'#328'.povinnosti'
      DisplayWidth = 10
      FieldName = 'DATDANPOV'
      Origin = 'FV.DATDANPOV'
      Visible = False
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object dtsFVDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Dat.splatnosti'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FV.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object dtsFVSUMAZAKLAD: TBCDField
      DisplayLabel = 'Sou'#269'et z'#225'klad'
      FieldName = 'SUMAZAKLAD'
      Origin = 'FVSEZNAM.SUMAZAKLAD'
      Precision = 18
      Size = 3
    end
    object dtsFVSUMADPH: TBCDField
      DisplayLabel = 'Sou'#269'et DPH'
      FieldName = 'SUMADPH'
      Origin = 'FVSEZNAM.SUMADPH'
      Precision = 18
      Size = 3
    end
    object dtsFVCELKEM: TBCDField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
      Origin = 'FVSEZNAM.CELKEM'
      Precision = 18
      Size = 3
    end
    object dtsFVCENASUMAKC: TBCDField
      DisplayLabel = 'Celkem CZK'
      FieldName = 'CENASUMAKC'
      Origin = 'FVSEZNAM.CENASUMAKC'
      Precision = 18
      Size = 3
    end
    object dtsFVCENAKURS: TBCDField
      DisplayLabel = 'Cena Kurz'
      FieldName = 'CENAKURS'
      Origin = 'FVSEZNAM.CENAKURS'
      Precision = 18
    end
    object dtsFVCENALIKV: TFloatField
      DisplayLabel = 'K likvidaci'
      FieldName = 'CENALIKV'
      Origin = 'FV.CENALIKV'
    end
    object dtsFVCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'FV.CENAMENA'
      Size = 3
    end
    object dtsFVCENAZALOHY: TBCDField
      DisplayLabel = 'Cena Z'#225'lohy'
      FieldName = 'CENAZALOHY'
      Origin = 'FVSEZNAM.CENAZALOHY'
      Precision = 18
      Size = 3
    end
    object dtsFVDatUhrazeno: TDateTimeField
      DisplayLabel = 'Dat. '#250'hrady'
      DisplayWidth = 10
      FieldName = 'DATUHRAZENO'
      Origin = 'FV.DATUHRAZENO'
      Visible = False
      DisplayFormat = 'dd.mm.yyy'
    end
    object dtsFVSTAV: TIntegerField
      DisplayLabel = 'Stav'
      DisplayWidth = 5
      FieldName = 'STAV'
      Origin = 'FVSEZNAM.STAV'
    end
    object dtsFVDOKLAD: TStringField
      DisplayLabel = #218#269'etn'#237' doklad'
      FieldName = 'DOKLAD'
      Origin = 'FVSEZNAM.DOKLAD'
      Visible = False
    end
  end
  object rstrg1: TrsStorage
    Active = True
    StorageData = rsIniData1
    Left = 64
    Top = 208
  end
  object rsIniData1: TrsIniData
    Left = 144
    Top = 208
  end
  object dtsFD: TIBOQuery
    ColumnAttributes.Strings = (
      'FDSEZNAM.FAKTURADO=REQUIRED')
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE FADOSLE SET'
      '   VYBER = :VYBER,'
      '   STATEUSER = :STATEUSER'
      'WHERE'
      '   SID = :SID')
    IB_Connection = IBOMainDB
    KeyLinks.Strings = (
      'FDSEZNAM.SID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = False
    SQL.Strings = (
      'select * from FDSeznam')
    FieldOptions = []
    Left = 144
    Top = 128
    object dtsFDSID: TStringField
      DisplayLabel = 'ID Faktura'
      FieldName = 'SID'
      Origin = 'FDSEZNAM.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
      Size = 22
    end
    object dtsFDFakturaDO: TStringField
      DisplayLabel = 'Doklad'
      FieldName = 'FAKTURADO'
      Origin = 'FDSEZNAM.FAKTURADO'
      Required = True
      Size = 10
    end
    object dtsFDVariabilni: TStringField
      DisplayLabel = 'Variabiln'#237' symbol'
      DisplayWidth = 10
      FieldName = 'VARIABILNI'
      Origin = 'FDSEZNAM.VARIABILNI'
    end
    object dtsFDZASILKA: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'FDSEZNAM.ZASILKA'
      Size = 10
    end
    object dtsFDDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Dat.splatnosti'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FDSEZNAM.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
    end
    object dtsFDDATDANPOV: TDateTimeField
      DisplayLabel = 'Dat.odpo'#269'tu'
      FieldName = 'DATDANPOV'
      Origin = 'FDSEZNAM.DATDANPOV'
      DisplayFormat = 'dd.mm.yyy'
    end
    object dtsFDNAZEV: TStringField
      DisplayLabel = 'Dopravce'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'FDSEZNAM.NAZEV'
      Size = 40
    end
    object dtsFDICO: TStringField
      DisplayLabel = 'I'#268
      FieldName = 'ICO'
      Origin = 'FDSEZNAM.ICO'
      Visible = False
      Size = 10
    end
    object dtsFDDIC: TStringField
      DisplayLabel = 'DI'#268
      FieldName = 'DIC'
      Size = 14
    end
    object dtsFDADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 10
      FieldName = 'ADRESA3'
      Visible = False
      Size = 32
    end
    object dtsFDZEME: TStringField
      DisplayLabel = 'St'#225't'
      DisplayWidth = 10
      FieldName = 'ZEME'
      Size = 32
    end
    object dtsFDCELKEM: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
      Origin = 'FDSEZNAM.CELKEM'
    end
    object dtsFDCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'FDSEZNAM.CENAMENA'
      Size = 3
    end
    object dtsFDSTAV: TIntegerField
      DisplayLabel = 'Stav'
      FieldName = 'STAV'
      Visible = False
    end
  end
  object rsPropSaver1: TrsPropSaver
    Storage = rstrg1
    RootSection = 'dmdConnect.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnDestroy
    OnAfterLoad = rsPropSaver1AfterLoad
    OnAfterSave = rsPropSaver1AfterSave
    Left = 232
    Top = 208
  end
  object dtsFVCisla: TIBOQuery
    DatabaseName = 'fbAspedSql'
    IB_Connection = IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    fv.faktura'
      'from fv'
      'order by faktura')
    FieldOptions = []
    Left = 232
    Top = 128
    object dtsFVCislaFAKTURA: TStringField
      DisplayLabel = 'Faktura'
      FieldName = 'FAKTURA'
      Required = True
      Size = 10
    end
  end
  object dtsFDCisla: TIBOQuery
    DatabaseName = 'fbAspedSql'
    IB_Connection = IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    fadosle.fakturado as faktura'
      'from fadosle'
      'order by fakturado')
    FieldOptions = []
    Left = 232
    Top = 48
    object dtsFDCislaFAKTURA: TStringField
      FieldName = 'FAKTURA'
      Required = True
      Size = 10
    end
  end
end
