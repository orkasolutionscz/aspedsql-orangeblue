object FPUdmd: TFPUdmd
  OldCreateOrder = False
  Height = 479
  Width = 741
  object dsFPURecord: TDataSource
    AutoEdit = False
    DataSet = FPURecord
    OnDataChange = dsFPURecordDataChange
    Left = 60
    Top = 60
  end
  object FPURecord: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    AutoFetchAll = True
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'delete from FPUHR WHERE ID = :OLD_ID')
    EditSQL.Strings = (
      ' UPDATE FPUHR SET'
      '  REF_UCET = :REF_UCET,'
      '  DAT_ZAPISU = :DAT_ZAPISU,'
      '  DAT_PLATBY = :DAT_PLATBY,'
      '  PRIK_TEXT = :PRIK_TEXT,'
      '  PRIKAZ_UDAJ = :PRIKAZ_UDAJ,'
      '  SYMB_KONST = :SYMB_KONST,'
      '  CELKEM = :CELKEM,'
      '  POZNAMKA = :POZNAMKA'
      'WHERE ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_FPUHR_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO FPUHR'
      '  ('
      '    ID,'
      '    REF_UCET,'
      '    DAT_ZAPISU,'
      '    DAT_PLATBY,'
      '    PRIK_TEXT,'
      '    PRIKAZ_UDAJ,'
      '    SYMB_KONST,'
      '    CELKEM,'
      '    POZNAMKA'
      '  )'
      'VALUES'
      '  ('
      '   :ID,'
      '   :REF_UCET,'
      '   :DAT_ZAPISU,'
      '   :DAT_PLATBY,'
      '   :PRIK_TEXT,'
      '   :PRIKAZ_UDAJ,'
      '   :SYMB_KONST,'
      '   :CELKEM,'
      '   :POZNAMKA'
      '  )')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterPost = FPURecordAfterPost
    OnNewRecord = FPURecordNewRecord
    RequestLive = True
    SQL.Strings = (
      'select * from SP_FPUZAZNAM(:ID)')
    FieldOptions = []
    Left = 152
    Top = 152
    object FPURecordID: TIntegerField
      FieldName = 'ID'
    end
    object FPURecordREF_UCET: TStringField
      FieldName = 'REF_UCET'
      Size = 3
    end
    object FPURecordDAT_ZAPISU: TDateField
      FieldName = 'DAT_ZAPISU'
    end
    object FPURecordDAT_PLATBY: TDateField
      FieldName = 'DAT_PLATBY'
    end
    object FPURecordPRIK_TEXT: TStringField
      FieldName = 'PRIK_TEXT'
      Size = 100
    end
    object FPURecordPRIKAZ_UDAJ: TStringField
      FieldName = 'PRIKAZ_UDAJ'
      Size = 100
    end
    object FPURecordSYMB_KONST: TStringField
      FieldName = 'SYMB_KONST'
      Size = 5
    end
    object FPURecordCELKEM: TBCDField
      FieldName = 'CELKEM'
      Precision = 18
      Size = 3
    end
    object FPURecordPOZNAMKA: TBlobField
      FieldName = 'POZNAMKA'
      Size = 8
    end
    object FPURecordUCET: TStringField
      FieldName = 'UCET'
      Size = 45
    end
    object FPURecordKODBANKY: TStringField
      FieldName = 'KODBANKY'
      Size = 11
    end
    object FPURecordMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'MENA'
      Size = 3
    end
  end
  object FPUPolozky: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REF_FUHR'
        ParamType = ptInput
        Value = 0
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FPUHR_POL FPUHR_POL'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE FPUHR_POL FPUHR_POL SET'
      '   FPUHR_POL.CISLO_DOKL = :CISLO_DOKL,'
      '   FPUHR_POL.PRIJEMCE = :PRIJEMCE,'
      '   FPUHR_POL.REF_DOKLAD = :REF_DOKLAD,'
      '   FPUHR_POL.VARIABILNI = :VARIABILNI,'
      '   FPUHR_POL.UCET_CISLO = :UCET_CISLO,'
      '   FPUHR_POL.UCET_BANKA = :UCET_BANKA,'
      '   FPUHR_POL.UCET_KONST = :UCET_KONST,'
      '   FPUHR_POL.UCET_SPECIF = :UCET_SPECIF,'
      '   FPUHR_POL.CASTKA = :CASTKA,'
      '   FPUHR_POL.VRACENO = :VRACENO'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_FPUHR_POL_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO FPUHR_POL('
      '   ID, /*PK*/'
      '   REF_FUHR,'
      '   CISLO_DOKL,'
      '   PRIJEMCE,'
      '   REF_DOKLAD,'
      '   VARIABILNI,'
      '   UCET_CISLO,'
      '   UCET_BANKA,'
      '   UCET_KONST,'
      '   UCET_SPECIF,'
      '   CASTKA,'
      '   VRACENO)'
      'VALUES ('
      '   :ID,'
      '   :REF_FUHR,'
      '   :CISLO_DOKL,'
      '   :PRIJEMCE,'
      '   :REF_DOKLAD,'
      '   :VARIABILNI,'
      '   :UCET_CISLO,'
      '   :UCET_BANKA,'
      '   :UCET_KONST,'
      '   :UCET_SPECIF,'
      '   :CASTKA,'
      '   :VRACENO)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = PostMasterDataset
    BeforeDelete = FPUPolozkyBeforeDelete
    AfterDelete = FPUPolozkyAfterDelete
    BeforeInsert = PostMasterDataset
    AfterScroll = FPUPolozkyAfterScroll
    AfterPost = FPUPolozkyAfterPost
    OnNewRecord = FPUPolozkyNewRecord
    SQL.Strings = (
      'SELECT * FROM FPUHR_POL'
      'WHERE REF_FUHR = :REF_FUHR')
    FieldOptions = []
    Left = 153
    Top = 223
    object FPUPolozkyID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Visible = False
    end
    object FPUPolozkyCISLO_DOKL: TStringField
      DisplayLabel = #268#237'slo'
      FieldName = 'CISLO_DOKL'
      Size = 10
    end
    object FPUPolozkyREF_FUHR: TIntegerField
      DisplayLabel = 'ID P'#345#237'kazu'
      FieldName = 'REF_FUHR'
      Visible = False
    end
    object FPUPolozkyPRIJEMCE: TStringField
      DisplayLabel = 'P'#345#237'jemce'
      DisplayWidth = 25
      FieldName = 'PRIJEMCE'
      Size = 40
    end
    object FPUPolozkyREF_DOKLAD: TStringField
      DisplayLabel = 'Odkaz na doklad'
      DisplayWidth = 10
      FieldName = 'REF_DOKLAD'
      Visible = False
      Size = 50
    end
    object FPUPolozkyVARIABILNI: TStringField
      DisplayLabel = 'Var.symbol'
      DisplayWidth = 15
      FieldName = 'VARIABILNI'
    end
    object FPUPolozkyUCET_CISLO: TStringField
      DisplayLabel = #268#237'slo '#250#269'tu'
      DisplayWidth = 20
      FieldName = 'UCET_CISLO'
      Size = 45
    end
    object FPUPolozkyUCET_BANKA: TStringField
      DisplayLabel = 'K'#243'd banky'
      FieldName = 'UCET_BANKA'
      Size = 5
    end
    object FPUPolozkyUCET_KONST: TStringField
      DisplayLabel = 'Konst.symbol'
      FieldName = 'UCET_KONST'
      Size = 5
    end
    object FPUPolozkyUCET_SPECIF: TStringField
      DisplayLabel = 'Specif.symbol'
      FieldName = 'UCET_SPECIF'
    end
    object FPUPolozkyCASTKA: TFloatField
      DisplayLabel = #268#225'stka'
      FieldName = 'CASTKA'
    end
    object FPUPolozkyVRACENO: TStringField
      DisplayLabel = 'Vr'#225'ceno'
      FieldName = 'VRACENO'
      Size = 1
    end
  end
  object FPUSeznam: TIBOQuery
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'FPUSEZNAM.ID')
    KeyLinksAutoDefine = False
    PreparedEdits = False
    PreparedInserts = False
    RecordCountAccurate = False
    AfterPost = FPUSeznamAfterPost
    SQL.Strings = (
      'SELECT * FROM FPUSEZNAM')
    FieldOptions = []
    Left = 152
    Top = 60
    object FPUSeznamID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object FPUSeznamREF_UCET: TStringField
      DisplayLabel = 'U'#269'et zkratka'
      FieldName = 'REF_UCET'
      Size = 2
    end
    object FPUSeznamUCET: TStringField
      DisplayLabel = #268#237'slo '#250#269'tu'
      DisplayWidth = 20
      FieldName = 'UCET'
      Size = 34
    end
    object FPUSeznamBANKA: TStringField
      DisplayLabel = 'Banka'
      DisplayWidth = 10
      FieldName = 'BANKA'
      Size = 34
    end
    object FPUSeznamDAT_ZAPISU: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DAT_ZAPISU'
      DisplayFormat = 'dd.mm.yy'
    end
    object FPUSeznamDAT_PLATBY: TDateTimeField
      DisplayLabel = 'Splatno'
      DisplayWidth = 10
      FieldName = 'DAT_PLATBY'
      DisplayFormat = 'dd.mm.yy'
    end
    object FPUSeznamPRIK_TEXT: TStringField
      DisplayLabel = 'Text'
      DisplayWidth = 25
      FieldName = 'PRIK_TEXT'
      Size = 100
    end
    object FPUSeznamPRIKAZ_UDAJ: TStringField
      DisplayLabel = #218'daj p'#345#237'kazce'
      DisplayWidth = 25
      FieldName = 'PRIKAZ_UDAJ'
      Size = 100
    end
    object FPUSeznamSYMB_KONST: TStringField
      DisplayLabel = 'Symb.konst.'
      DisplayWidth = 5
      FieldName = 'SYMB_KONST'
      Size = 5
    end
    object FPUSeznamCELKEM: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
    end
    object FPUSeznamPOZNAMKA: TMemoField
      DisplayLabel = 'Pozn'#225'mka'
      FieldName = 'POZNAMKA'
      BlobType = ftMemo
    end
  end
  object qrVyberDoklady: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MENA'
        ParamType = ptUnknown
        Value = 'CZK'
      end>
    ColumnAttributes.Strings = (
      'FADOSLE.SID=REQUIRED'
      'FADOSLE.FAKTURADO=REQUIRED')
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT SID, FAKTURADO, VARIABILNI, NAZEV, CENALIKV, CENAMENA, UC' +
        'ET_CISLO, UCET_BANKA, UCET_SPECIF, DATSPLATNOST'
      'FROM FADOSLE'
      'WHERE CENALIKV > 0 AND CENAMENA = :MENA ')
    FieldOptions = []
    Left = 236
    Top = 60
    object qrVyberDokladySID: TStringField
      FieldName = 'SID'
      Origin = 'FADOSLE.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 22
    end
    object qrVyberDokladyDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Splatn'#225
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FADOSLE.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yy'
    end
    object qrVyberDokladyFAKTURADO: TStringField
      DisplayLabel = 'Faktura'
      FieldName = 'FAKTURADO'
      Origin = 'FADOSLE.FAKTURADO'
      Required = True
      Size = 10
    end
    object qrVyberDokladyVARIABILNI: TStringField
      DisplayLabel = 'Symb.variabiln'#237
      FieldName = 'VARIABILNI'
      Origin = 'FADOSLE.VARIABILNI'
    end
    object qrVyberDokladyNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Origin = 'FADOSLE.NAZEV'
      Size = 40
    end
    object qrVyberDokladyCENALIKV: TFloatField
      DisplayLabel = #268#225'stka'
      FieldName = 'CENALIKV'
      Origin = 'FADOSLE.CENALIKV'
    end
    object qrVyberDokladyUCET_CISLO: TStringField
      DisplayLabel = #268#237'slo '#250#269'tu'
      DisplayWidth = 20
      FieldName = 'UCET_CISLO'
      Origin = 'FADOSLE.UCET_CISLO'
      Size = 45
    end
    object qrVyberDokladyUCET_BANKA: TStringField
      DisplayLabel = 'K'#243'd banky'
      FieldName = 'UCET_BANKA'
      Origin = 'FADOSLE.UCET_BANKA'
      Size = 5
    end
    object qrVyberDokladyUCET_SPECIF: TStringField
      DisplayLabel = 'Symb.specifick'#253
      FieldName = 'UCET_SPECIF'
      Origin = 'FADOSLE.UCET_SPECIF'
      Size = 16
    end
  end
  object qrSumFPUPolozky: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REF_FUHR'
        ParamType = ptInput
        Value = 0
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SUM(FPUHR_POL.CASTKA) AS CELKEM'
      'FROM FPUHR_POL '
      'WHERE REF_FUHR =:REF_FUHR')
    FieldOptions = []
    Left = 352
    Top = 60
    object qrSumFPUPolozkyCELKEM: TBCDField
      FieldName = 'CELKEM'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object FPUVybFakContr: TjfsSQLContr
    DataSet = qrVyberDoklady
    AllRecord = '0=0'
    TableName = 'FADosle'
    UpdateTableName = 'FADosle'
    KeyField = 'FakturaDO'
    Options.StartingWhere = '0=0'
    Syntax.Strings = (
      'SELECT'
      'INTO'
      'FROM'
      'WHERE'
      'GROUP'
      'HAVING'
      'UNION'
      'PLAN'
      'ORDER'
      'COMPUTE'
      'FOR'
      'INTO TEMP')
    Left = 352
    Top = 136
  end
end
