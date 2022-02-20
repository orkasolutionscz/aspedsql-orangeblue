object POPdmd: TPOPdmd
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 479
  Width = 741
  object dsPOPSeznam: TDataSource
    AutoEdit = False
    DataSet = POPSeznam
    OnDataChange = dsPOPSeznamDataChange
    Left = 100
    Top = 100
  end
  object POPSeznam: TIBOQuery
    ColumnAttributes.Strings = (
      'POPSEZNAM.VYBER=REQUIRED')
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE POPCENY  SET'
      '   VYBER = :VYBER,'
      '   STATEUSER = :STATEUSER'
      'WHERE'
      'POPCENY.SID = :SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'POPSEZNAM.SID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterPost = POPSeznamAfterPost
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      'FROM POPSEZNAM where 0=0')
    FieldOptions = []
    Left = 364
    Top = 100
    object POPSeznamSID: TStringField
      FieldName = 'SID'
      Visible = False
      Size = 22
    end
    object POPSeznamZNACKA: TStringField
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Origin = 'POPSEZNAM.ZNACKA'
      Size = 10
    end
    object POPSeznamVYBER: TStringField
      DisplayLabel = 'X'
      FieldName = 'VYBER'
      Origin = 'POPSEZNAM.VYBER'
      Required = True
      Size = 1
    end
    object POPSeznamZNRAMCOVKA: TStringField
      DisplayLabel = 'R'#225'mc.smlouva'
      DisplayWidth = 10
      FieldName = 'ZNRAMCOVKA'
      Origin = 'POPSEZNAM.ZNRAMCOVKA'
      Visible = False
      Size = 15
    end
    object POPSeznamDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'POPSEZNAM.DATUM'
      DisplayFormat = 'dd.mm.yy'
    end
    object POPSeznamDAT_PLATNOST: TDateTimeField
      DisplayLabel = 'Plat'#237' do'
      DisplayWidth = 10
      FieldName = 'DAT_PLATNOST'
      Origin = 'POPSEZNAM.DAT_PLATNOST'
      DisplayFormat = 'dd.mm.yyy'
    end
    object POPSeznamTYP: TSmallintField
      FieldName = 'TYP'
      Origin = 'POPSEZNAM.TYP'
      Visible = False
    end
    object POPSeznamPOPIS: TStringField
      DisplayLabel = 'Typ'
      DisplayWidth = 15
      FieldName = 'POPIS'
      Origin = 'POPSEZNAM.POPIS'
      Size = 50
    end
    object POPSeznamREF_AOPKOD: TStringField
      DisplayLabel = 'ID Adres'#225#345
      FieldName = 'REF_AOPKOD'
      Origin = 'POPSEZNAM.REF_AOPKOD'
      Visible = False
      Size = 10
    end
    object POPSeznamNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'POPSEZNAM.NAZEV'
      Size = 100
    end
    object POPSeznamKONTAKT: TStringField
      DisplayLabel = 'Kontaktn'#237' osoba'
      DisplayWidth = 25
      FieldName = 'KONTAKT'
      Origin = 'POPSEZNAM.KONTAKT'
      Size = 100
    end
    object POPSeznamVOZIDLO: TStringField
      DisplayLabel = 'Vozidlo'
      DisplayWidth = 20
      FieldName = 'VOZIDLO'
      Origin = 'POPSEZNAM.VOZIDLO'
      Size = 100
    end
    object POPSeznamNSTAT: TStringField
      DisplayLabel = 'N.St'#225't'
      FieldName = 'NSTAT'
      Origin = 'POPSEZNAM.NSTAT'
      Size = 4
    end
    object POPSeznamNPSC: TStringField
      DisplayLabel = 'N.Ps'#269
      FieldName = 'NPSC'
      Origin = 'POPSEZNAM.NPSC'
      Size = 10
    end
    object POPSeznamNMISTO: TStringField
      DisplayLabel = 'N.M'#283'sto'
      DisplayWidth = 15
      FieldName = 'NMISTO'
      Origin = 'POPSEZNAM.NMISTO'
      Size = 32
    end
    object POPSeznamVSTAT: TStringField
      DisplayLabel = 'V.St'#225't'
      FieldName = 'VSTAT'
      Origin = 'POPSEZNAM.VSTAT'
      Size = 4
    end
    object POPSeznamVPSC: TStringField
      DisplayLabel = 'V.Ps'#269
      FieldName = 'VPSC'
      Origin = 'POPSEZNAM.VPSC'
      Size = 10
    end
    object POPSeznamVMISTO: TStringField
      DisplayLabel = 'V.M'#283'sto'
      DisplayWidth = 15
      FieldName = 'VMISTO'
      Origin = 'POPSEZNAM.VMISTO'
      Size = 32
    end
    object POPSeznamCENAJEDNOTKA: TStringField
      DisplayLabel = 'Jednotka'
      FieldName = 'CENAJEDNOTKA'
      Origin = 'POPSEZNAM.CENAJEDNOTKA'
      Size = 10
    end
    object POPSeznamCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'POPSEZNAM.CENAMENA'
      Size = 3
    end
    object POPSeznamCENAPOPIS: TStringField
      DisplayLabel = 'Materi'#225'l'
      DisplayWidth = 20
      FieldName = 'CENAPOPIS'
      Origin = 'POPSEZNAM.CENAPOPIS'
      Size = 50
    end
    object POPSeznamPOZNAMKA: TMemoField
      DisplayLabel = 'Pozn'#225'mka'
      FieldName = 'POZNAMKA'
      Origin = 'POPSEZNAM.POZNAMKA'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
    object POPSeznamSTAV: TSmallintField
      DisplayLabel = 'Stav'
      FieldName = 'STAV'
      Visible = False
    end
    object POPSeznamCREAID: TStringField
      DisplayLabel = 'Zalo'#382'il'
      FieldName = 'CREAID'
      Origin = 'POPSEZNAM.CREAID'
      Visible = False
      Size = 10
    end
    object POPSeznamCREADATE: TDateTimeField
      DisplayLabel = 'Z.Kdy'
      FieldName = 'CREADATE'
      Origin = 'POPSEZNAM.CREADATE'
      Visible = False
    end
    object POPSeznamUPDID: TStringField
      DisplayLabel = 'Opravil'
      FieldName = 'UPDID'
      Origin = 'POPSEZNAM.UPDID'
      Visible = False
      Size = 10
    end
    object POPSeznamUPDDATE: TDateTimeField
      DisplayLabel = 'O.Kdy'
      FieldName = 'UPDDATE'
      Origin = 'POPSEZNAM.UPDDATE'
      Visible = False
    end
    object POPSeznamCENASMLUVNI: TBCDField
      DisplayLabel = 'Cena'
      FieldName = 'CENASMLUVNI'
      Origin = 'POPSEZNAM.CENASMLUVNI'
      Precision = 18
      Size = 1
    end
    object POPSeznamSTATEUSER: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATEUSER'
      Visible = False
    end
    object POPSeznamSTATEUSERCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'STATEUSERCOLOR'
    end
  end
  object qrPOPDopisy: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'POPCENY_DOPISY.ID=REQUIRED')
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    DataSource = dsPOPSeznam
    SQL.Strings = (
      'SELECT'
      '  POPCENY_DOPISY.ID,'
      '  POPCENY_DOPISY.REF_DOC,'
      '  DOC.ZNACKA,'
      '  DOC.NAZEV,'
      '  DOC.VEC,'
      '  DOC.DATUM'
      
        'FROM POPCENY_DOPISY LEFT JOIN DOC ON POPCENY_DOPISY.REF_DOC = DO' +
        'C.SID'
      'WHERE (((POPCENY_DOPISY.REF_POP) = :SID));'
      ' '
      ' ')
    FieldOptions = []
    Left = 372
    Top = 180
    object qrPOPDopisyID: TIntegerField
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Origin = 'POPCENY_DOPISY.ID'
      Required = True
    end
    object qrPOPDopisyREF_DOC: TStringField
      DisplayLabel = 'ID Korespondence'
      FieldName = 'REF_DOC'
      Origin = 'POPCENY_DOPISY.REF_DOC'
      Visible = False
      Size = 22
    end
    object qrPOPDopisyZNACKA: TStringField
      DisplayLabel = #268#237'slo dokladu'
      FieldName = 'ZNACKA'
      Origin = 'DOC.ZNACKA'
      Size = 10
    end
    object qrPOPDopisyNAZEV: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'DOC.NAZEV'
      Size = 100
    end
    object qrPOPDopisyVEC: TStringField
      DisplayLabel = 'V'#283'c'
      DisplayWidth = 25
      FieldName = 'VEC'
      Origin = 'DOC.VEC'
      Size = 255
    end
    object qrPOPDopisyDATUM: TDateField
      DisplayLabel = 'Datum'
      FieldName = 'DATUM'
      Origin = 'DOC.DATUM'
    end
  end
  object POPRecord: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '1'
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM POPCENY WHERE SID = :OLD_SID')
    EditSQL.Strings = (
      'UPDATE POPCENY'
      'SET'
      '  ZNACKA = :ZNACKA,'
      '  ZNRAMCOVKA = :ZNRAMCOVKA,'
      '  DATUM = :DATUM,'
      '  DAT_PLATNOST = :DAT_PLATNOST,'
      '  TYP = :TYP,'
      '  REF_AOPKOD = :REF_AOPKOD,'
      '  KONTAKT = :KONTAKT,'
      '  VOZIDLO = :VOZIDLO,'
      '  NSTAT = :NSTAT,'
      '  NPSC = :NPSC,'
      '  NMISTO = :NMISTO,'
      '  VSTAT = :VSTAT,'
      '  VPSC = :VPSC,'
      '  VMISTO = :VMISTO,'
      '  CENASMLUVNI = :CENASMLUVNI,'
      '  CENAJEDNOTKA = :CENAJEDNOTKA,'
      '  CENAMENA = :CENAMENA,'
      '  CENAPOPIS = :CENAPOPIS,'
      '  POZNAMKA = :POZNAMKA,'
      '  STAV = :STAV,'
      '  UPDID = :UPDID,'
      '  UPDDATE = current_timestamp'
      'WHERE'
      '  SID = :SID')
    FieldsDisplayLabel.Strings = (
      'KONTAKT=Kontaktn'#237' osoba')
    FieldsVisible.Strings = (
      'KONTAKT=TRUE')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO POPCENY'
      '        ('
      
        '                SID, ZNACKA, ZNRAMCOVKA, DATUM, DAT_PLATNOST, TY' +
        'P, REF_AOPKOD,'
      '                KONTAKT, VOZIDLO,'
      '                NSTAT, NPSC, NMISTO,'
      '                VSTAT, VPSC, VMISTO,'
      '                CENASMLUVNI, CENAJEDNOTKA, CENAMENA, CENAPOPIS,'
      '                POZNAMKA,'
      '                CREAID, CREADATE, STAV'
      '        )'
      ''
      'VALUES'
      '        ('
      
        '                :SID, :ZNACKA, :ZNRAMCOVKA, :DATUM,  :DAT_PLATNO' +
        'ST, :TYP, :REF_AOPKOD,'
      '                :KONTAKT, :VOZIDLO,'
      '                :NSTAT, :NPSC, :NMISTO,'
      '                :VSTAT, :VPSC, :VMISTO,'
      
        '                :CENASMLUVNI, :CENAJEDNOTKA, :CENAMENA, :CENAPOP' +
        'IS,'
      '                :POZNAMKA,'
      '                :CREAID, current_timestamp, 1'
      '        )'
      ' '
      ' ')
    KeyLinksAutoDefine = False
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    AfterDelete = POPRecordAfterDelete
    BeforePost = POPRecordBeforePost
    AfterPost = POPRecordAfterPost
    OnCalcFields = POPRecordCalcFields
    OnNewRecord = POPRecordNewRecord
    SQL.Strings = (
      'SELECT * FROM SP_POPZAZNAM(:SID)')
    FieldOptions = []
    Left = 188
    Top = 100
    object POPRecordSID: TStringField
      Tag = 9
      FieldName = 'SID'
      Origin = 'SP_POPZAZNAM.SID'
      Size = 22
    end
    object POPRecordZNACKA: TStringField
      Tag = 9
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Origin = 'SP_POPZAZNAM.ZNACKA'
      Size = 10
    end
    object POPRecordREFTRASA: TStringField
      Tag = 9
      DisplayLabel = 'ID Trasy'
      FieldName = 'REFTRASA'
      Origin = 'SP_POPZAZNAM.REFTRASA'
      Size = 22
    end
    object POPRecordVYBER: TStringField
      Tag = 9
      FieldName = 'VYBER'
      Origin = 'SP_POPZAZNAM.VYBER'
      Size = 1
    end
    object POPRecordDATUM: TDateField
      Tag = 9
      FieldName = 'DATUM'
      Origin = 'SP_POPZAZNAM.DATUM'
    end
    object POPRecordZNRAMCOVKA: TStringField
      DisplayLabel = 'Smlouva'
      FieldName = 'ZNRAMCOVKA'
      Origin = 'SP_POPZAZNAM.ZNRAMCOVKA'
      Size = 15
    end
    object POPRecordDAT_PLATNOST: TDateField
      DisplayLabel = 'Aktivn'#237' do'
      FieldName = 'DAT_PLATNOST'
      Origin = 'SP_POPZAZNAM.DAT_PLATNOST'
    end
    object POPRecordTYP: TSmallintField
      DisplayLabel = 'Typ'
      FieldName = 'TYP'
      Origin = 'SP_POPZAZNAM.TYP'
    end
    object POPRecordREF_AOPKOD: TStringField
      DisplayLabel = 'ID Firmy'
      FieldName = 'REF_AOPKOD'
      Origin = 'SP_POPZAZNAM.REF_AOPKOD'
      Size = 22
    end
    object POPRecordKONTAKT: TStringField
      DisplayLabel = 'Kontaktn'#237' osoba'
      FieldName = 'KONTAKT'
      Origin = 'SP_POPZAZNAM.KONTAKT'
      Size = 100
    end
    object POPRecordNSTAT: TStringField
      DisplayLabel = 'N. st'#225't'
      FieldName = 'NSTAT'
      Origin = 'SP_POPZAZNAM.NSTAT'
      Size = 4
    end
    object POPRecordNPSC: TStringField
      DisplayLabel = 'N. Ps'#269
      FieldName = 'NPSC'
      Origin = 'SP_POPZAZNAM.NPSC'
      Size = 10
    end
    object POPRecordNMISTO: TStringField
      DisplayLabel = 'N. M'#283'sto'
      FieldName = 'NMISTO'
      Origin = 'SP_POPZAZNAM.NMISTO'
      Size = 32
    end
    object POPRecordVSTAT: TStringField
      DisplayLabel = 'V. st'#225't'
      FieldName = 'VSTAT'
      Origin = 'SP_POPZAZNAM.VSTAT'
      Size = 4
    end
    object POPRecordVPSC: TStringField
      DisplayLabel = 'V. Ps'#269
      FieldName = 'VPSC'
      Origin = 'SP_POPZAZNAM.VPSC'
      Size = 10
    end
    object POPRecordVMISTO: TStringField
      DisplayLabel = 'V. M'#283'sto'
      FieldName = 'VMISTO'
      Origin = 'SP_POPZAZNAM.VMISTO'
      Size = 32
    end
    object POPRecordVOZIDLO: TStringField
      DisplayLabel = 'Vozidlo'
      FieldName = 'VOZIDLO'
      Origin = 'SP_POPZAZNAM.VOZIDLO'
      Size = 100
    end
    object POPRecordCENASMLUVNI: TBCDField
      DisplayLabel = 'Cena'
      FieldName = 'CENASMLUVNI'
      Origin = 'SP_POPZAZNAM.CENASMLUVNI'
      Precision = 18
      Size = 1
    end
    object POPRecordCENAJEDNOTKA: TStringField
      DisplayLabel = 'Jednotka'
      FieldName = 'CENAJEDNOTKA'
      Origin = 'SP_POPZAZNAM.CENAJEDNOTKA'
      Size = 10
    end
    object POPRecordCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'SP_POPZAZNAM.CENAMENA'
      Size = 3
    end
    object POPRecordCENAPOPIS: TStringField
      DisplayLabel = 'Cena up'#345'esn'#283'n'#237
      FieldName = 'CENAPOPIS'
      Origin = 'SP_POPZAZNAM.CENAPOPIS'
      Size = 50
    end
    object POPRecordPOZNAMKA: TBlobField
      DisplayLabel = 'Pozn'#225'mka'
      FieldName = 'POZNAMKA'
      Origin = 'SP_POPZAZNAM.POZNAMKA'
      Size = 8
    end
    object POPRecordCREAID: TStringField
      Tag = 9
      FieldName = 'CREAID'
      Origin = 'SP_POPZAZNAM.CREAID'
      Size = 10
    end
    object POPRecordCREADATE: TDateTimeField
      Tag = 9
      FieldName = 'CREADATE'
      Origin = 'SP_POPZAZNAM.CREADATE'
    end
    object POPRecordUPDID: TStringField
      Tag = 9
      FieldName = 'UPDID'
      Origin = 'SP_POPZAZNAM.UPDID'
      Size = 10
    end
    object POPRecordUPDDATE: TDateTimeField
      Tag = 9
      FieldName = 'UPDDATE'
      Origin = 'SP_POPZAZNAM.UPDDATE'
    end
    object POPRecordSTAV: TSmallintField
      Tag = 9
      FieldName = 'STAV'
      Origin = 'SP_POPZAZNAM.STATE'
    end
    object POPRecordNAZEV: TStringField
      Tag = 9
      FieldName = 'NAZEV'
      Origin = 'SP_POPZAZNAM.NAZEV'
      Size = 100
    end
    object POPRecordADRESA1: TStringField
      Tag = 9
      FieldName = 'ADRESA1'
      Origin = 'SP_POPZAZNAM.ADRESA1'
      Size = 32
    end
    object POPRecordADRESA2: TStringField
      Tag = 9
      FieldName = 'ADRESA2'
      Origin = 'SP_POPZAZNAM.ADRESA2'
      Size = 32
    end
    object POPRecordADRESA3: TStringField
      Tag = 9
      FieldName = 'ADRESA3'
      Origin = 'SP_POPZAZNAM.ADRESA3'
      Size = 40
    end
    object POPRecordPSC: TStringField
      Tag = 9
      FieldName = 'PSC'
      Origin = 'SP_POPZAZNAM.PSC'
      Size = 10
    end
    object POPRecordKODZEME: TStringField
      Tag = 9
      FieldName = 'KODZEME'
      Origin = 'SP_POPZAZNAM.KODZEME'
      Size = 4
    end
    object POPRecordICO: TStringField
      Tag = 9
      FieldName = 'ICO'
      Origin = 'SP_POPZAZNAM.ICO'
      Size = 10
    end
    object POPRecordDIC: TStringField
      Tag = 9
      FieldName = 'DIC'
      Origin = 'SP_POPZAZNAM.DIC'
      Size = 14
    end
    object POPRecordUCET: TStringField
      Tag = 9
      FieldName = 'UCET'
      Origin = 'SP_POPZAZNAM.UCET'
      Size = 45
    end
    object POPRecordBANKAKOD: TStringField
      Tag = 9
      FieldName = 'BANKAKOD'
      Origin = 'SP_POPZAZNAM.BANKAKOD'
      Size = 11
    end
    object POPRecordBANKANAZEV: TStringField
      Tag = 9
      FieldName = 'BANKANAZEV'
      Origin = 'SP_POPZAZNAM.BANKANAZEV'
      Size = 34
    end
    object POPRecordSPLATNOST: TSmallintField
      Tag = 9
      FieldName = 'SPLATNOST'
      Origin = 'SP_POPZAZNAM.SPLATNOST'
    end
    object POPRecordUTO: TStringField
      Tag = 9
      FieldName = 'UTO'
      Origin = 'SP_POPZAZNAM.UTO'
      Size = 8
    end
    object POPRecordTELEFON: TStringField
      Tag = 9
      FieldName = 'TELEFON'
      Origin = 'SP_POPZAZNAM.TELEFON'
      Size = 50
    end
    object POPRecordFAX: TStringField
      Tag = 9
      FieldName = 'FAX'
      Origin = 'SP_POPZAZNAM.FAX'
      Size = 50
    end
    object POPRecordGSM: TStringField
      Tag = 9
      FieldName = 'GSM'
      Origin = 'SP_POPZAZNAM.GSM'
      Size = 50
    end
    object POPRecordEMAIL: TStringField
      Tag = 9
      FieldName = 'EMAIL'
      Origin = 'SP_POPZAZNAM.EMAIL'
      Size = 100
    end
    object POPRecordWWW: TStringField
      Tag = 9
      FieldName = 'WWW'
      Origin = 'SP_POPZAZNAM.WWW'
      Size = 200
    end
    object POPRecordPREFMAIL: TStringField
      Tag = 9
      FieldName = 'PREFMAIL'
      Origin = 'SP_POPZAZNAM.PREFMAIL'
      Size = 10
    end
    object POPRecordSKUPINA: TStringField
      Tag = 9
      FieldName = 'SKUPINA'
      Origin = 'SP_POPZAZNAM.SKUPINA'
      Size = 32
    end
    object POPRecordK1: TStringField
      Tag = 9
      FieldName = 'K1'
      Origin = 'SP_POPZAZNAM.K1'
      Size = 8
    end
    object POPRecordK2: TStringField
      Tag = 9
      FieldName = 'K2'
      Origin = 'SP_POPZAZNAM.K2'
      Size = 8
    end
    object POPRecordPOPIS: TStringField
      Tag = 9
      FieldName = 'POPIS'
      Origin = 'SP_POPZAZNAM.POPIS'
      Size = 50
    end
    object POPRecordMNakladka: TStringField
      FieldKind = fkCalculated
      FieldName = 'MNakladka'
      Size = 100
      Calculated = True
    end
    object POPRecordMVykladka: TStringField
      FieldKind = fkCalculated
      FieldName = 'MVykladka'
      Size = 100
      Calculated = True
    end
  end
  object spInsertPopDop: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'REF_POP'
        ParamType = ptInput
        Value = '20040001'
      end
      item
        DataType = ftFixedChar
        Name = 'REF_DOC'
        ParamType = ptInput
        Value = 'A3gURWEYT2M/ZS4/HRYE/A'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      
        'INSERT INTO POPCENY_DOPISY (REF_POP, REF_DOC) VALUES (:REF_POP, ' +
        ':REF_DOC)')
    FieldOptions = []
    Left = 276
    Top = 100
  end
end
