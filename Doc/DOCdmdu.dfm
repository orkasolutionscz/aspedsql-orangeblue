object DOCdmd: TDOCdmd
  OldCreateOrder = False
  Height = 277
  Width = 388
  object dsDoc: TDataSource
    DataSet = DOC
    Left = 100
    Top = 100
  end
  object DOC: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '11'
      end>
    ColumnAttributes.Strings = (
      'DOC.ZNACKA=REQUIRED'
      'DOC.SID=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM DOC DOC'
      'WHERE'
      '   SID = :OLD_SID')
    EditSQL.Strings = (
      'UPDATE DOC DOC SET'
      '   DOC.ZNACKA = :ZNACKA,'
      '   DOC.VYBER = :VYBER,'
      '   DOC.TYP = :TYP,'
      '   DOC.AOPKOD = :AOPKOD,'
      '   DOC.DOCEMAILY = :DOCEMAILY,'
      '   DOC.NAZEV = :NAZEV,'
      '   DOC.ADRESA1 = :ADRESA1,'
      '   DOC.ADRESA2 = :ADRESA2,'
      '   DOC.ADRESA3 = :ADRESA3,'
      '   DOC.PSC = :PSC,'
      '   DOC.ZEME = :ZEME,'
      '   DOC.ICO = :ICO,'
      '   DOC.DIC = :DIC,'
      '   DOC.DATUM = :DATUM,'
      '   DOC.URCENO = :URCENO,'
      '   DOC.VASDOPIS = :VASDOPIS,'
      '   DOC.VEC = :VEC,'
      '   DOC.VYRIZUJE = :VYRIZUJE,'
      '   DOC.DTEXT = :DTEXT,'
      '   DOC.CREAID = :CREAID,'
      '   DOC.CREADATE = :CREADATE,'
      '   DOC.UPDID = :UPDID,'
      '   DOC.UPDDATE = :UPDDATE,'
      '   DOC.OWNER = :OWNER,'
      '   DOC.EX_FILENAME = :EX_FILENAME,'
      '   DOC.EX_DOPIS = :EX_DOPIS,'
      '   DOC.STAV = :STAV,'
      '   DOC.STATEUSER = :STATEUSER'
      'WHERE'
      '   SID = :OLD_SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO DOC('
      '   SID, /*PK*/'
      '   ZNACKA,'
      '   VYBER,'
      '   TYP,'
      '   AOPKOD,'
      '   DOCEMAILY,'
      '   NAZEV,'
      '   ADRESA1,'
      '   ADRESA2,'
      '   ADRESA3,'
      '   PSC,'
      '   ZEME,'
      '   ICO,'
      '   DIC,'
      '   DATUM,'
      '   URCENO,'
      '   VASDOPIS,'
      '   VEC,'
      '   VYRIZUJE,'
      '   DTEXT,'
      '   CREAID,'
      '   CREADATE,'
      '   UPDID,'
      '   UPDDATE,'
      '   OWNER,'
      '   EX_FILENAME,'
      '   EX_DOPIS,'
      '   STAV,'
      '   STATEUSER)'
      'VALUES ('
      '   :SID,'
      '   :ZNACKA,'
      '   :VYBER,'
      '   :TYP,'
      '   :AOPKOD,'
      '   :DOCEMAILY,'
      '   :NAZEV,'
      '   :ADRESA1,'
      '   :ADRESA2,'
      '   :ADRESA3,'
      '   :PSC,'
      '   :ZEME,'
      '   :ICO,'
      '   :DIC,'
      '   :DATUM,'
      '   :URCENO,'
      '   :VASDOPIS,'
      '   :VEC,'
      '   :VYRIZUJE,'
      '   :DTEXT,'
      '   :CREAID,'
      '   :CREADATE,'
      '   :UPDID,'
      '   :UPDDATE,'
      '   :OWNER,'
      '   :EX_FILENAME,'
      '   :EX_DOPIS,'
      '   :STAV,'
      '   :STATEUSER)')
    KeyLinks.Strings = (
      'DOC.SID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforePost = DOCBeforePost
    AfterPost = DOCAfterPost
    OnNewRecord = DOCNewRecord
    SQL.Strings = (
      'SELECT DOC.*'
      'FROM DOC'
      'WHERE DOC.SID = :SID;')
    FieldOptions = []
    Left = 261
    Top = 99
    object DOCSID: TStringField
      Tag = 9
      DisplayLabel = 'Index'
      FieldName = 'SID'
      Origin = 'DOC.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 22
    end
    object DOCZNACKA: TStringField
      Tag = 9
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Origin = 'DOC.ZNACKA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 22
    end
    object DOCVYBER: TStringField
      DisplayLabel = 'V'#253'b'#283'r'
      FieldName = 'VYBER'
      Origin = 'DOC.VYBER'
      Size = 1
    end
    object DOCTYP: TSmallintField
      Tag = 9
      DisplayLabel = 'Typ korespondence'
      FieldName = 'TYP'
      Origin = 'DOC.TYP'
    end
    object DOCAOPKOD: TStringField
      DisplayLabel = 'ID Adres'#225'ta'
      FieldName = 'AOPKOD'
      Origin = 'DOC.AOPKOD'
      OnChange = DOCAOPKODChange
      Size = 22
    end
    object DOCNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 15
      FieldName = 'NAZEV'
      Origin = 'DOC.NAZEV'
      Size = 100
    end
    object DOCADRESA1: TStringField
      DisplayLabel = 'Adresa 1'
      FieldName = 'ADRESA1'
      Origin = 'DOC.ADRESA1'
      Size = 32
    end
    object DOCADRESA2: TStringField
      DisplayLabel = 'Adresa 2'
      FieldName = 'ADRESA2'
      Origin = 'DOC.ADRESA2'
      Size = 32
    end
    object DOCADRESA3: TStringField
      DisplayLabel = 'Obec'
      FieldName = 'ADRESA3'
      Origin = 'DOC.ADRESA3'
      Size = 32
    end
    object DOCPSC: TStringField
      DisplayLabel = 'Ps'#269
      FieldName = 'PSC'
      Origin = 'DOC.PSC'
      Size = 14
    end
    object DOCZEME: TStringField
      DisplayLabel = 'St'#225't'
      FieldName = 'ZEME'
      Origin = 'DOC.ZEME'
      Size = 32
    end
    object DOCDOCEMAILY: TStringField
      DisplayLabel = 'Emaily'
      DisplayWidth = 15
      FieldName = 'DOCEMAILY'
      Size = 255
    end
    object DOCICO: TStringField
      DisplayLabel = 'I'#268
      FieldName = 'ICO'
      Origin = 'DOC.ICO'
      Size = 10
    end
    object DOCDIC: TStringField
      DisplayLabel = 'DI'#268
      FieldName = 'DIC'
      Origin = 'DOC.DIC'
      Size = 14
    end
    object DOCDATUM: TDateField
      Tag = 9
      DisplayLabel = 'Datum'
      FieldName = 'DATUM'
      Origin = 'DOC.DATUM'
    end
    object DOCURCENO: TStringField
      DisplayLabel = 'Ur'#269'eno'
      DisplayWidth = 15
      FieldName = 'URCENO'
      Origin = 'DOC.URCENO'
      Size = 100
    end
    object DOCVASDOPIS: TStringField
      DisplayLabel = 'V'#225#353' dopis'
      FieldName = 'VASDOPIS'
      Origin = 'DOC.VASDOPIS'
    end
    object DOCVEC: TStringField
      DisplayLabel = 'P'#345'edm'#283't'
      DisplayWidth = 10
      FieldName = 'VEC'
      Origin = 'DOC.VEC'
      Size = 255
    end
    object DOCVYRIZUJE: TStringField
      DisplayLabel = 'Vy'#345'izuje'
      FieldName = 'VYRIZUJE'
      Origin = 'DOC.VYRIZUJE'
      Size = 50
    end
    object DOCDTEXT: TMemoField
      DisplayLabel = 'Vlastn'#237' text'
      FieldName = 'DTEXT'
      Origin = 'DOC.DTEXT'
      BlobType = ftMemo
      Size = 8
    end
    object DOCCREAID: TStringField
      Tag = 9
      DisplayLabel = 'Zalo'#382'il'
      FieldName = 'CREAID'
      Origin = 'DOC.CREAID'
      Size = 10
    end
    object DOCCREADATE: TDateTimeField
      Tag = 9
      DisplayLabel = 'Zalo'#382'eno'
      FieldName = 'CREADATE'
      Origin = 'DOC.CREADATE'
    end
    object DOCUPDID: TStringField
      Tag = 9
      DisplayLabel = 'Opravil'
      FieldName = 'UPDID'
      Origin = 'DOC.UPDID'
      Size = 10
    end
    object DOCUPDDATE: TDateTimeField
      Tag = 9
      DisplayLabel = 'Opraveno'
      FieldName = 'UPDDATE'
      Origin = 'DOC.UPDDATE'
    end
    object DOCSTAV: TIntegerField
      Tag = 9
      DisplayLabel = 'Stav'
      FieldName = 'STAV'
      Origin = 'DOC.STAV'
    end
    object DOCOWNER: TStringField
      Tag = 9
      DisplayLabel = 'Vlatn'#237'k'
      FieldName = 'OWNER'
      Origin = 'DOC.OWNER'
      Size = 22
    end
    object DOCEX_FILENAME: TStringField
      Tag = 9
      DisplayLabel = 'N'#225'zev extern'#237'ho souboru'
      FieldName = 'EX_FILENAME'
      Origin = 'DOC.EX_FILENAME'
      Size = 255
    end
    object DOCEX_DOPIS: TStringField
      Tag = 9
      DisplayLabel = 'Extern'#237' dopis'
      FieldName = 'EX_DOPIS'
      Origin = 'DOC.EX_DOPIS'
      Size = 1
    end
  end
  object DOCSeznam: TIBOQuery
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE DOC SET'
      '   VYBER = :VYBER,'
      '   STATEUSER = :STATEUSER'
      'WHERE'
      '   SID = :SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'DOCSEZNAM.SID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterPost = DOCSeznamAfterPost
    SQL.Strings = (
      'SELECT'
      '     SID'
      '     , ZNACKA'
      '     , VYBER'
      '     , NAZEV'
      '     , ADRESA3'
      '     , ZEME'
      '     , DATUM'
      '     , CREADATE'
      '     , UPDDATE'
      '     , CREAID'
      '     , UPDID'
      '     , STAV'
      '     , VEC'
      '     , STATEUSER'
      '     , STATEUSERCOLOR'
      'FROM DOCSeznam'
      'WHERE 0=0')
    FieldOptions = []
    Left = 100
    Top = 188
    object DOCSeznamSID: TStringField
      DisplayLabel = 'ID Z'#225'znamu'
      DisplayWidth = 10
      FieldName = 'SID'
      Origin = 'DOCSEZNAM.SID'
      Visible = False
      Size = 22
    end
    object DOCSeznamZNACKA: TStringField
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Origin = 'DOCSEZNAM.ZNACKA'
      Size = 10
    end
    object DOCSeznamVYBER: TStringField
      DisplayLabel = 'X'
      FieldName = 'VYBER'
      Origin = 'DOCSEZNAM.VYBER'
      Size = 1
    end
    object DOCSeznamDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'DOCSEZNAM.DATUM'
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object DOCSeznamVEC: TStringField
      DisplayLabel = 'V'#283'c'
      DisplayWidth = 30
      FieldName = 'VEC'
      Origin = 'DOCSEZNAM.VEC'
      Size = 255
    end
    object DOCSeznamNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Origin = 'DOCSEZNAM.NAZEV'
      Size = 100
      AttributeSet = 'Firma'
    end
    object DOCSeznamADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'DOCSEZNAM.ADRESA3'
      Size = 32
    end
    object DOCSeznamZEME: TStringField
      DisplayLabel = 'Zem'#283
      DisplayWidth = 15
      FieldName = 'ZEME'
      Origin = 'DOCSEZNAM.ZEME'
      Size = 32
      AttributeSet = 'AdrZem'#283
    end
    object DOCSeznamCREAID: TStringField
      DisplayLabel = 'Zalo'#382'il'
      DisplayWidth = 5
      FieldName = 'CREAID'
      Origin = 'DOCSEZNAM.CREAID'
      Visible = False
      Size = 10
      AttributeSet = 'ZalKdo'
    end
    object DOCSeznamCREADATE: TDateTimeField
      DisplayLabel = 'Zal.datum'
      DisplayWidth = 8
      FieldName = 'CREADATE'
      Origin = 'DOCSEZNAM.CREADATE'
      Visible = False
      DisplayFormat = 'dd.mm hh:mm'
      AttributeSet = 'ZalDatum'
    end
    object DOCSeznamUPDID: TStringField
      DisplayLabel = 'Opravil'
      DisplayWidth = 5
      FieldName = 'UPDID'
      Origin = 'DOCSEZNAM.UPDID'
      Visible = False
      Size = 10
      AttributeSet = 'OprKdo'
    end
    object DOCSeznamUPDDATE: TDateTimeField
      DisplayLabel = 'Opr.datum'
      DisplayWidth = 8
      FieldName = 'UPDDATE'
      Origin = 'DOCSEZNAM.UPDDATE'
      Visible = False
      DisplayFormat = 'dd.mm hh:mm'
      AttributeSet = 'OprDatum'
    end
    object DOCSeznamSTATEUSER: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATEUSER'
    end
    object DOCSeznamSTATEUSERCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'STATEUSERCOLOR'
    end
  end
  object DOCViewAOP: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'AOPKOD'
        ParamType = ptUnknown
        Value = 'AOP1'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '        SID,'
      '        OWNER,'
      '        ZNACKA,'
      '        AOPKOD,'
      '        NAZEV,'
      '        DATUM,'
      '        VEC'
      'FROM DOC'
      'WHERE AOPKOD = :AOPKOD')
    FieldOptions = []
    Left = 188
    Top = 100
    object DOCViewAOPSID: TStringField
      DisplayLabel = 'ID Z'#225'znamu'
      FieldName = 'SID'
      Required = True
      Visible = False
      Size = 22
    end
    object DOCViewAOPZNACKA: TStringField
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Origin = 'DOCSEZNAM.ZNACKA'
      Size = 10
    end
    object DOCViewAOPAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'DOCSEZNAM.AOPKOD'
      Visible = False
      Size = 10
    end
    object DOCViewAOPOWNER: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'OWNER'
      Origin = 'DOCSEZNAM.OWNER'
      Visible = False
      Size = 10
    end
    object DOCViewAOPNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'DOCSEZNAM.NAZEV'
      Size = 100
    end
    object DOCViewAOPDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'DOCSEZNAM.DATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object DOCViewAOPVEC: TStringField
      DisplayLabel = 'V'#283'c'
      DisplayWidth = 25
      FieldName = 'VEC'
      Origin = 'DOCSEZNAM.VEC'
      Size = 255
    end
  end
  object DOCSablony: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EVIDENCE'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM DOCSABLONY DOCSABLONY'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE DOCSABLONY DOCSABLONY SET'
      '   DOCSABLONY.POPIS = :POPIS,'
      '   DOCSABLONY.SABLONA = :SABLONA,'
      '   DOCSABLONY.VEC = :VEC'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=gen_docsablony_id')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO DOCSABLONY('
      '   ID, /*PK*/'
      '   EVIDENCE,'
      '   POPIS,'
      '   SABLONA,'
      '   VEC)'
      'VALUES ('
      '   :ID,'
      '   :EVIDENCE,'
      '   :POPIS,'
      '   :SABLONA,'
      '   :VEC)')
    KeyLinks.Strings = (
      'DOCSABLONY.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    OnNewRecord = DOCSablonyNewRecord
    SQL.Strings = (
      'SELECT'
      '     ID'
      '     , EVIDENCE'
      '     , POPIS'
      '     , SABLONA'
      '     , VEC'
      'FROM DOCSABLONY'
      'WHERE EVIDENCE = :EVIDENCE')
    FieldOptions = []
    Left = 188
    Top = 188
    object DOCSablonyID: TIntegerField
      FieldName = 'ID'
      Origin = 'DOCSABLONY.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object DOCSablonyEvidence: TStringField
      FieldName = 'EVIDENCE'
      Origin = 'DOCSABLONY.EVIDENCE'
      Visible = False
      Size = 10
    end
    object DOCSablonyPopis: TStringField
      DisplayLabel = #352'ablona'
      FieldName = 'POPIS'
      Origin = 'DOCSABLONY.POPIS'
      Size = 32
    end
    object DOCSablonyVEC: TStringField
      DisplayLabel = #352'ablona - V'#283'c'
      DisplayWidth = 15
      FieldName = 'VEC'
      Size = 255
    end
    object DOCSablonySablona: TMemoField
      FieldName = 'SABLONA'
      Origin = 'DOCSABLONY.SABLONA'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
  end
end
