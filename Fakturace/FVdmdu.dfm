object FVdmd: TFVdmd
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 522
  Width = 801
  object dsFAPolozky: TDataSource
    AutoEdit = False
    DataSet = FAPolozky
    Left = 196
    Top = 60
  end
  object dsFaktury: TDataSource
    AutoEdit = False
    DataSet = Faktury
    Left = 128
    Top = 60
  end
  object dsFakturySeznam: TDataSource
    AutoEdit = False
    DataSet = FakturySeznam
    Left = 60
    Top = 60
  end
  object FakturySeznam: TIBOQuery
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE FV SET'
      '   VYBER = :VYBER,'
      '   VYBER2 = :VYBER2,'
      '   LIKVOK = :LIKVOK,'
      '   DATUHRAZENO = :DATUHRAZENO,'
      '   STATEUSER = :STATEUSER,'
      '   CENALIKV = :CENALIKV,'
      '   UCTODATUM = :UCTODATUM,'
      '   DOKLAD = :DOKLAD'
      'WHERE'
      #9'FV.SID=:SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'FVSEZNAM.SID')
    KeyLinksAutoDefine = False
    PreparedEdits = False
    PreparedInserts = False
    RecordCountAccurate = False
    AfterPost = FakturySeznamAfterPost
    SQL.Strings = (
      'SELECT '
      '     SID'
      '     , FAKTURA'
      '     , VYBER'
      '     , VYBER2'
      '     , TYP'
      '     , REF_ZASILKA'
      '     , AOPKOD'
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
      '     , VPOZ'
      'FROM FVSEZNAM'
      'WHERE 0=0')
    FieldOptions = []
    Left = 60
    Top = 196
    object FakturySeznamSID: TStringField
      DisplayLabel = 'ID Faktury'
      FieldName = 'SID'
      Origin = 'FV.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 22
    end
    object FakturySeznamTYP: TSmallintField
      DisplayLabel = 'Typ'
      FieldName = 'TYP'
      Origin = 'FVSEZNAM.TYP'
    end
    object FakturySeznamVYBER: TStringField
      DisplayLabel = 'X'
      FieldName = 'VYBER'
      Origin = 'FV.VYBER'
      Size = 1
    end
    object FakturySeznamVYBER2: TStringField
      DisplayLabel = 'Uv1'
      FieldName = 'VYBER2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FakturySeznamFAKTURA: TStringField
      DisplayLabel = 'Faktura'
      FieldName = 'FAKTURA'
      Origin = 'FV.FAKTURA'
      Size = 10
    end
    object FakturySeznamSYMBVARIA: TStringField
      DisplayLabel = 'Variabiln'#237
      FieldName = 'SYMBVARIA'
      Origin = 'FVSEZNAM.SYMBVARIA'
      Size = 10
    end
    object FakturySeznamZASILKA: TStringField
      DisplayLabel = 'Z'#225'silka'
      DisplayWidth = 10
      FieldName = 'ZASILKA'
      Origin = 'FVSEZNAM.ZASILKA'
      Size = 22
    end
    object FakturySeznamREF_ZASILKA: TStringField
      DisplayLabel = 'ID Z'#225'silky'
      FieldName = 'REF_ZASILKA'
      Origin = 'FVSEZNAM.REF_ZASILKA'
      Visible = False
      Size = 22
    end
    object FakturySeznamVPOZ: TStringField
      DisplayLabel = 'Objedn'#225'vka pl'#225'tce'
      DisplayWidth = 15
      FieldName = 'VPOZ'
      Size = 100
    end
    object FakturySeznamNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Origin = 'FV.NAZEV'
      Size = 100
    end
    object FakturySeznamADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'FV.ADRESA3'
      Visible = False
      Size = 32
    end
    object FakturySeznamZEME: TStringField
      DisplayLabel = 'Zem'#283
      DisplayWidth = 15
      FieldName = 'ZEME'
      Origin = 'FV.ZEME'
      Visible = False
      Size = 32
    end
    object FakturySeznamICO: TStringField
      DisplayLabel = 'I'#269'o'
      DisplayWidth = 9
      FieldName = 'ICO'
      Origin = 'FV.ICO'
      Visible = False
      Size = 10
    end
    object FakturySeznamDIC: TStringField
      DisplayLabel = 'Di'#269
      DisplayWidth = 13
      FieldName = 'DIC'
      Origin = 'FV.DIC'
      Visible = False
      Size = 14
    end
    object FakturySeznamDATVYSTAVENI: TDateTimeField
      DisplayLabel = 'Dat.vystaven'#237
      DisplayWidth = 10
      FieldName = 'DATVYSTAVENI'
      Origin = 'FV.DATVYSTAVENI'
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object FakturySeznamDATDANPOV: TDateTimeField
      DisplayLabel = 'Dat.da'#328'.povinnosti'
      DisplayWidth = 10
      FieldName = 'DATDANPOV'
      Origin = 'FV.DATDANPOV'
      Visible = False
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object FakturySeznamDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Dat.splatnosti'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FV.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object FakturySeznamSUMAZAKLAD: TBCDField
      DisplayLabel = 'Sou'#269'et z'#225'klad'
      FieldName = 'SUMAZAKLAD'
      Precision = 18
      Size = 3
    end
    object FakturySeznamSUMADPH: TBCDField
      DisplayLabel = 'Sou'#269'et DPH'
      FieldName = 'SUMADPH'
      Precision = 18
      Size = 3
    end
    object FakturySeznamCELKEM: TBCDField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
      Precision = 18
      Size = 3
    end
    object FakturySeznamCENASUMAKC: TBCDField
      DisplayLabel = 'Celkem CZK'
      FieldName = 'CENASUMAKC'
      Precision = 18
      Size = 3
    end
    object FakturySeznamCENAKURS: TBCDField
      DisplayLabel = 'Cena Kurz'
      FieldName = 'CENAKURS'
      Precision = 18
    end
    object FakturySeznamCENALIKV: TFloatField
      DisplayLabel = 'K likvidaci'
      FieldName = 'CENALIKV'
      Origin = 'FV.CENALIKV'
    end
    object FakturySeznamCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'FV.CENAMENA'
      Size = 3
    end
    object FakturySeznamCENAZALOHY: TBCDField
      DisplayLabel = 'Cena Z'#225'lohy'
      FieldName = 'CENAZALOHY'
      Precision = 18
      Size = 3
    end
    object FakturySeznamDatUhrazeno: TDateTimeField
      DisplayLabel = 'Dat. '#250'hrady'
      DisplayWidth = 10
      FieldName = 'DATUHRAZENO'
      Origin = 'FV.DATUHRAZENO'
      Visible = False
      DisplayFormat = 'dd.mm.yyy'
    end
    object FakturySeznamSTAV: TIntegerField
      DisplayLabel = 'Stav'
      DisplayWidth = 5
      FieldName = 'STAV'
      Origin = 'FVSEZNAM.STAV'
    end
    object FakturySeznamUPDID: TStringField
      DisplayLabel = 'Opravil'
      DisplayWidth = 5
      FieldName = 'UPDID'
      Origin = 'FV.UPDID'
      Visible = False
      Size = 10
      AttributeSet = 'OprKdo'
    end
    object FakturySeznamUPDDATE: TDateTimeField
      DisplayLabel = 'Opr.datum'
      DisplayWidth = 8
      FieldName = 'UPDDATE'
      Origin = 'FV.UPDDATE'
      Visible = False
      DisplayFormat = 'dd.mm hh:mm'
      AttributeSet = 'OprDatum'
    end
    object FakturySeznamCREAID: TStringField
      DisplayLabel = 'Zalo'#382'il'
      DisplayWidth = 5
      FieldName = 'CREAID'
      Origin = 'FV.CREAID'
      Visible = False
      Size = 10
      AttributeSet = 'ZalKdo'
    end
    object FakturySeznamCREADATE: TDateTimeField
      DisplayLabel = 'Zal.datum'
      DisplayWidth = 8
      FieldName = 'CREADATE'
      Origin = 'FV.CREADATE'
      Visible = False
      DisplayFormat = 'dd.mm hh:mm'
      AttributeSet = 'ZalDatum'
    end
    object FakturySeznamLIKVOK: TStringField
      DisplayLabel = 'Likvidace'
      FieldName = 'LIKVOK'
      Origin = 'FV.LIKVOK'
      Visible = False
      Size = 1
    end
    object FakturySeznamSTATEUSER: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATEUSER'
      Origin = 'FV.STATEUSER'
    end
    object FakturySeznamUCTODATUM: TDateField
      DisplayLabel = #218#269'to p'#345'evedeno'
      FieldName = 'UCTODATUM'
    end
    object FakturySeznamDOKLAD: TStringField
      DisplayLabel = #218#269'etn'#237' doklad'
      FieldName = 'DOKLAD'
    end
    object FakturySeznamSTATEUSERCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'STATEUSERCOLOR'
    end
    object FakturySeznamAOPKOD: TStringField
      DisplayLabel = 'ID AOP'
      FieldName = 'AOPKOD'
      Visible = False
      Size = 10
    end
  end
  object Faktury: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '11'
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FV WHERE SID = :OLD_SID')
    EditSQL.Strings = (
      'UPDATE FV SET'
      #9'FV.FAKTURA= :FAKTURA,'
      #9'FV.FAKTTYP = :FAKTTYP,'
      #9'FV.AOPKOD = :AOPKOD,'
      #9'FV.NAZEV = :NAZEV,'
      #9'FV.ADRESA1 = :ADRESA1,'
      #9'FV.ADRESA2 = :ADRESA2,'
      #9'FV.ADRESA3 = :ADRESA3,'
      #9'FV.PSC = :PSC,'
      #9'FV.ZEME = :ZEME,'
      #9'FV.ICO = :ICO,'
      #9'FV.DIC = :DIC,'
      '        FV.PLA_EMAILS = :PLA_EMAILS,'
      #9'FV.SYMBVARIA = :SYMBVARIA,'
      #9'FV.SYMBKONST = :SYMBKONST,'
      #9'FV.OBJEDNAVKA = :OBJEDNAVKA,'
      #9'FV.OBJEDDATUM = :OBJEDDATUM,'
      #9'FV.DATVYSTAVENI = :DATVYSTAVENI,'
      #9'FV.DATDANPOV = :DATDANPOV,'
      #9'FV.DATSPLATNOST = :DATSPLATNOST,'
      #9'FV.FORMUHRADY = :FORMUHRADY,'
      #9'FV.CENAMENA = :CENAMENA,'
      '        FV.CENAKURS = :CENAKURS,'
      '        FV.CENASUMAKC = :CENASUMAKC,'
      #9'FV.PRILOHY = :PRILOHY,'
      #9'FV.FAKTTEXT = :FAKTTEXT,'
      #9'FV.TEXTAFTER = :TEXTAFTER,'
      '        FV.TEXTBEFORE = :TEXTBEFORE,'
      #9'FV.UPDDATE = CURRENT_TIMESTAMP,'
      #9'FV.UPDID = :UPDID,'
      #9'FV.UCETZKR = :UCETZKR,'
      #9'FV.POZNAMKA = :POZNAMKA,'
      #9'FV.NPOZ = :NPOZ,'
      #9'FV.VPOZ = :VPOZ,'
      #9'FV.SPZ = :SPZ,'
      #9'FV.DATNAKL = :DATNAKL,'
      #9'FV.DATVYKL = :DATVYKL,'
      #9'FV.MVYKL = :MVYKL,'
      #9'FV.MNAKL = :MNAKL,'
      #9'FV.SUBSTRAT = :SUBSTRAT'
      'WHERE'
      #9'FV.SID=:SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO FV'
      '   ('
      '     SID,'
      '     FAKTURA,'
      '     FAKTTYP,'
      '     TYP,'
      '     REF_ZASILKA,'
      '     REFPLATCE,'
      '     ADRESA3,'
      '     NAZEV,'
      '     ADRESA2,'
      '     ADRESA1,'
      '     AOPKOD,'
      '     PSC,'
      '     ZEME,'
      '     ICO,'
      '     DIC,'
      '     PLA_EMAILS,'
      '     SYMBVARIA,'
      '     SYMBKONST,'
      '     OBJEDNAVKA,'
      '     OBJEDDATUM,'
      '     DATVYSTAVENI,'
      '     DATDANPOV,'
      '     DATSPLATNOST,'
      '     FORMUHRADY,'
      '     CENAMENA,'
      '     CENAKURS,'
      '     PRILOHY,'
      '     FAKTTEXT,'
      '     TEXTAFTER,'
      '     TEXTBEFORE,'
      '     CREADATE,'
      '     CREAID,'
      '     STAV,'
      '     UCETZKR,'
      '     POZNAMKA,'
      '     NPOZ,'
      '     VPOZ,'
      '     SPZ,'
      '     DATNAKL,'
      '     DATVYKL,'
      '     MVYKL,'
      '     MNAKL,'
      '     SUBSTRAT,'
      '     SUMA00,'
      '     SUMA05,'
      '     SUMA22,'
      '     SUMAZAKLAD,'
      '     DPH05,'
      '     DPH22,'
      '     SUMADPH,'
      '     CELKEM,'
      '     CENAZALOHY,'
      '     CENALIKV,'
      '     CENAUHRAZENO,'
      '     CENAZAOKR'
      '   )'
      'VALUES'
      '   ('
      '     :SID,'
      '     :FAKTURA,'
      #9' :FAKTTYP,'
      #9' :TYP,'
      '     :REF_ZASILKA,'
      #9' :REFPLATCE,'
      #9' :ADRESA3,'
      #9' :NAZEV,'
      '     :ADRESA2,'
      '     :ADRESA1,'
      '     :AOPKOD,'
      '     :PSC,'
      '     :ZEME,'
      '     :ICO,'
      '     :DIC,'
      '     :PLA_EMAILS,'
      '     :SYMBVARIA,'
      '     :SYMBKONST,'
      '     :OBJEDNAVKA,'
      '     :OBJEDDATUM,'
      '     :DATVYSTAVENI,'
      '     :DATDANPOV,'
      '     :DATSPLATNOST,'
      '     :FORMUHRADY,'
      '     :CENAMENA,'
      '     :CENAKURS,'
      '     :PRILOHY,'
      '     :FAKTTEXT,'
      '     :TEXTAFTER,'
      '     :TEXTBEFORE,'
      '     CURRENT_TIMESTAMP,'
      #9' :CREAID,'
      #9' 1,'
      '     :UCETZKR,'
      '     :POZNAMKA,'
      '     :NPOZ,'
      '     :VPOZ,'
      '     :SPZ,'
      '     :DATNAKL,'
      '     :DATVYKL,'
      '     :MVYKL,'
      '     :MNAKL,'
      '     :SUBSTRAT,'
      '     0, 0, 0,'
      '     0, 0, 0, 0,'
      '     0, 0, 0, 0, 0'
      '   )')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeDelete = FakturyBeforeDelete
    BeforePost = FakturyBeforePost
    AfterPost = FakturyAfterPost
    OnCalcFields = FakturyCalcFields
    OnNewRecord = FakturyNewRecord
    SQL.Strings = (
      'select * from SP_FVZAZNAM(:SID)')
    FieldOptions = []
    Left = 332
    Top = 128
    object FakturySID: TStringField
      FieldName = 'SID'
      Origin = 'SP_FVZAZNAM.SID'
      Size = 22
    end
    object FakturyFAKTURA: TStringField
      FieldName = 'FAKTURA'
      Origin = 'SP_FVZAZNAM.FAKTURA'
      Size = 10
    end
    object FakturyVYBER: TStringField
      FieldName = 'VYBER'
      Origin = 'SP_FVZAZNAM.VYBER'
      Size = 1
    end
    object FakturyFAKTTYP: TStringField
      FieldName = 'FAKTTYP'
      Origin = 'SP_FVZAZNAM.FAKTTYP'
      Size = 5
    end
    object FakturyTYP: TSmallintField
      FieldName = 'TYP'
      Origin = 'SP_FVZAZNAM.TYP'
    end
    object FakturyREFPLATCE: TIntegerField
      FieldName = 'REFPLATCE'
      Origin = 'SP_FVZAZNAM.REFPLATCE'
    end
    object FakturyZASILKA: TStringField
      DisplayWidth = 10
      FieldName = 'ZASILKA'
      Origin = 'SP_FVZAZNAM.ZASILKA'
      ReadOnly = True
      Size = 10
    end
    object FakturyREF_ZASILKA: TStringField
      FieldName = 'REF_ZASILKA'
      Origin = 'SP_FVZAZNAM.REF_ZASILKA'
      Size = 22
    end
    object FakturyAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Origin = 'SP_FVZAZNAM.AOPKOD'
      Size = 10
    end
    object FakturyNAZEV: TStringField
      FieldName = 'NAZEV'
      Origin = 'SP_FVZAZNAM.NAZEV'
      Size = 100
    end
    object FakturyADRESA1: TStringField
      FieldName = 'ADRESA1'
      Origin = 'SP_FVZAZNAM.ADRESA1'
      Size = 32
    end
    object FakturyADRESA2: TStringField
      FieldName = 'ADRESA2'
      Origin = 'SP_FVZAZNAM.ADRESA2'
      Size = 32
    end
    object FakturyADRESA3: TStringField
      FieldName = 'ADRESA3'
      Origin = 'SP_FVZAZNAM.ADRESA3'
      Size = 32
    end
    object FakturyPSC: TStringField
      FieldName = 'PSC'
      Origin = 'SP_FVZAZNAM.PSC'
      Size = 10
    end
    object FakturyZEME: TStringField
      FieldName = 'ZEME'
      Origin = 'SP_FVZAZNAM.ZEME'
      Size = 32
    end
    object FakturyICO: TStringField
      FieldName = 'ICO'
      Origin = 'SP_FVZAZNAM.ICO'
      Size = 10
    end
    object FakturyDIC: TStringField
      FieldName = 'DIC'
      Origin = 'SP_FVZAZNAM.DIC'
      Size = 14
    end
    object FakturyPLA_EMAILS: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PLA_EMAILS'
      Size = 255
    end
    object FakturyUCETZKR: TStringField
      FieldName = 'UCETZKR'
      Origin = 'SP_FVZAZNAM.UCETZKR'
      Size = 3
    end
    object FakturySYMBVARIA: TStringField
      FieldName = 'SYMBVARIA'
      Origin = 'SP_FVZAZNAM.SYMBVARIA'
      Size = 10
    end
    object FakturySYMBKONST: TStringField
      FieldName = 'SYMBKONST'
      Origin = 'SP_FVZAZNAM.SYMBKONST'
      Size = 5
    end
    object FakturyOBJEDNAVKA: TStringField
      FieldName = 'OBJEDNAVKA'
      Origin = 'SP_FVZAZNAM.OBJEDNAVKA'
      Size = 100
    end
    object FakturyOBJEDDATUM: TDateField
      FieldName = 'OBJEDDATUM'
      Origin = 'SP_FVZAZNAM.OBJEDDATUM'
    end
    object FakturyDATVYSTAVENI: TDateField
      FieldName = 'DATVYSTAVENI'
      Origin = 'SP_FVZAZNAM.DATVYSTAVENI'
      OnChange = FakturyDATVYSTAVENIChange
    end
    object FakturyDATDANPOV: TDateField
      FieldName = 'DATDANPOV'
      Origin = 'SP_FVZAZNAM.DATDANPOV'
    end
    object FakturyDATSPLATNOST: TDateField
      FieldName = 'DATSPLATNOST'
      Origin = 'SP_FVZAZNAM.DATSPLATNOST'
    end
    object FakturyFORMUHRADY: TStringField
      FieldName = 'FORMUHRADY'
      Origin = 'SP_FVZAZNAM.FORMUHRADY'
      Size = 15
    end
    object FakturyPRILOHY: TStringField
      FieldName = 'PRILOHY'
      Origin = 'SP_FVZAZNAM.PRILOHY'
      Size = 32
    end
    object FakturySUMA00: TBCDField
      FieldName = 'SUMA00'
      Origin = 'SP_FVZAZNAM.SUMA00'
      Precision = 18
      Size = 3
    end
    object FakturySUMA05: TBCDField
      FieldName = 'SUMA05'
      Origin = 'SP_FVZAZNAM.SUMA05'
      Precision = 18
      Size = 3
    end
    object FakturySUMA22: TBCDField
      FieldName = 'SUMA22'
      Origin = 'SP_FVZAZNAM.SUMA22'
      Precision = 18
      Size = 3
    end
    object FakturySUMAZAKLAD: TBCDField
      FieldName = 'SUMAZAKLAD'
      Origin = 'SP_FVZAZNAM.SUMAZAKLAD'
      Precision = 18
      Size = 3
    end
    object FakturyDPH05: TBCDField
      FieldName = 'DPH05'
      Origin = 'SP_FVZAZNAM.DPH05'
      Precision = 18
      Size = 3
    end
    object FakturyDPH22: TBCDField
      FieldName = 'DPH22'
      Origin = 'SP_FVZAZNAM.DPH22'
      Precision = 18
      Size = 3
    end
    object FakturySUMADPH: TBCDField
      FieldName = 'SUMADPH'
      Origin = 'SP_FVZAZNAM.SUMADPH'
      Precision = 18
      Size = 3
    end
    object FakturyCENAMENA: TStringField
      FieldName = 'CENAMENA'
      Origin = 'SP_FVZAZNAM.CENAMENA'
      OnChange = FakturyCENAMENAChange
      Size = 3
    end
    object FakturyCELKEM: TBCDField
      FieldName = 'CELKEM'
      Origin = 'SP_FVZAZNAM.CELKEM'
      Precision = 18
      Size = 3
    end
    object FakturyCENAZALOHY: TBCDField
      FieldName = 'CENAZALOHY'
      Origin = 'SP_FVZAZNAM.CENAZALOHY'
      Precision = 18
      Size = 3
    end
    object FakturyCENALIKV: TBCDField
      FieldName = 'CENALIKV'
      Origin = 'SP_FVZAZNAM.CENALIKV'
      Precision = 18
      Size = 3
    end
    object FakturyCENAUHRAZENO: TBCDField
      FieldName = 'CENAUHRAZENO'
      Origin = 'SP_FVZAZNAM.CENAUHRAZENO'
      Precision = 18
      Size = 3
    end
    object FakturyCENAZAOKR: TBCDField
      FieldName = 'CENAZAOKR'
      Origin = 'SP_FVZAZNAM.CENAZAOKR'
      Precision = 18
      Size = 3
    end
    object FakturyCENAKURS: TBCDField
      FieldName = 'CENAKURS'
      Origin = 'SP_FVZAZNAM.CENAKURS'
      OnChange = FakturyCENAKURSChange
      Precision = 18
    end
    object FakturyCENASUMAKC: TBCDField
      FieldName = 'CENASUMAKC'
      Origin = 'SP_FVZAZNAM.CENASUMAKC'
      Precision = 18
      Size = 3
    end
    object FakturyLIKVOK: TStringField
      FieldName = 'LIKVOK'
      Origin = 'SP_FVZAZNAM.LIKVOK'
      Size = 1
    end
    object FakturyDATUHRAZENO: TDateField
      FieldName = 'DATUHRAZENO'
      Origin = 'SP_FVZAZNAM.DATUHRAZENO'
    end
    object FakturyDOKLAD: TStringField
      FieldName = 'DOKLAD'
      Origin = 'SP_FVZAZNAM.DOKLAD'
    end
    object FakturyUCTODATUM: TDateField
      FieldName = 'UCTODATUM'
      Origin = 'SP_FVZAZNAM.UCTODATUM'
    end
    object FakturyFAKTTEXT: TBlobField
      FieldName = 'FAKTTEXT'
      Origin = 'SP_FVZAZNAM.FAKTTEXT'
      Size = 8
    end
    object FakturyTEXTAFTER: TSmallintField
      FieldName = 'TEXTAFTER'
      Origin = 'SP_FVZAZNAM.TEXTAFTER'
    end
    object FakturyPOZNAMKA: TBlobField
      FieldName = 'POZNAMKA'
      Origin = 'SP_FVZAZNAM.POZNAMKA'
      Size = 8
    end
    object FakturyNPOZ: TStringField
      FieldName = 'NPOZ'
      Origin = 'SP_FVZAZNAM.NPOZ'
      Size = 10
    end
    object FakturyVPOZ: TStringField
      FieldName = 'VPOZ'
      Origin = 'SP_FVZAZNAM.VPOZ'
      Size = 100
    end
    object FakturySPZ: TStringField
      FieldName = 'SPZ'
      Origin = 'SP_FVZAZNAM.SPZ'
      Size = 32
    end
    object FakturyDATNAKL: TDateField
      FieldName = 'DATNAKL'
      Origin = 'SP_FVZAZNAM.DATNAKL'
    end
    object FakturyDATVYKL: TDateField
      FieldName = 'DATVYKL'
      Origin = 'SP_FVZAZNAM.DATVYKL'
    end
    object FakturyMNAKL: TStringField
      FieldName = 'MNAKL'
      Origin = 'SP_FVZAZNAM.MNAKL'
      Size = 40
    end
    object FakturyMVYKL: TStringField
      FieldName = 'MVYKL'
      Origin = 'SP_FVZAZNAM.MVYKL'
      Size = 40
    end
    object FakturySUBSTRAT: TStringField
      FieldName = 'SUBSTRAT'
      Origin = 'SP_FVZAZNAM.SUBSTRAT'
      Size = 100
    end
    object FakturyCREADATE: TDateTimeField
      FieldName = 'CREADATE'
      Origin = 'SP_FVZAZNAM.CREADATE'
    end
    object FakturyCREAID: TStringField
      FieldName = 'CREAID'
      Origin = 'SP_FVZAZNAM.CREAID'
      Size = 10
    end
    object FakturyUPDID: TStringField
      FieldName = 'UPDID'
      Origin = 'SP_FVZAZNAM.UPDID'
      Size = 10
    end
    object FakturyUPDDATE: TDateTimeField
      FieldName = 'UPDDATE'
      Origin = 'SP_FVZAZNAM.UPDDATE'
    end
    object FakturySTAV: TSmallintField
      FieldName = 'STAV'
      Origin = 'SP_FVZAZNAM.STAV'
    end
    object FakturySTATEUSER: TIntegerField
      FieldName = 'STATEUSER'
      Origin = 'SP_FVZAZNAM.STATEUSER'
    end
    object FakturyKODBANKY: TStringField
      FieldName = 'KODBANKY'
      Origin = 'SP_FVZAZNAM.KODBANKY'
      Size = 11
    end
    object FakturyBANKA: TStringField
      FieldName = 'BANKA'
      Origin = 'SP_FVZAZNAM.BANKA'
      Size = 34
    end
    object FakturyBANKAWORLD: TStringField
      FieldName = 'BANKAWORLD'
      Origin = 'SP_FVZAZNAM.BANKAWORLD'
      Size = 11
    end
    object FakturyIBAN: TStringField
      FieldName = 'IBAN'
      Origin = 'SP_FVZAZNAM.IBAN'
      Size = 30
    end
    object FakturyPATATEXT: TMemoField
      FieldName = 'PATATEXT'
      Origin = 'SP_FVZAZNAM.PATATEXT'
      BlobType = ftMemo
      Size = 8
    end
    object FakturyUCET: TStringField
      FieldName = 'UCET'
      Size = 45
    end
    object FakturyCENA22SDPH: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CENA22SDPH'
      Calculated = True
    end
    object FakturyCENA05SDPH: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CENA05SDPH'
      Calculated = True
    end
    object FakturyCALCDPHZAKL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CALCDPHZAKL'
      Calculated = True
    end
    object FakturyCALCDPHSNIZ: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CALCDPHSNIZ'
      Calculated = True
    end
    object FakturyTEXTBEFORE: TSmallintField
      FieldName = 'TEXTBEFORE'
    end
    object FakturyBEFORETEXT: TMemoField
      Tag = 9
      FieldName = 'BEFORETEXT'
      BlobType = ftMemo
      Size = 8
    end
  end
  object FAPolozky: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'REFFV'
        ParamType = ptInput
        Value = '11'
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FVPOL FVPOL'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE FVPOL FVPOL SET'
      '   FVPOL.POLTEXT = :POLTEXT,'
      '   FVPOL.ZALOHA = :ZALOHA,'
      '   FVPOL.CENASMLUVNI = :CENASMLUVNI,'
      '   FVPOL.CENAJEDNOTKY = :CENAJEDNOTKY,'
      '   FVPOL.CENAJEDNOTKA = :CENAJEDNOTKA,'
      '   FVPOL.CENADPHPROC = :CENADPHPROC,'
      '   FVPOL.CENASAZBADPH = :CENASAZBADPH,'
      '   FVPOL.CENADPH = :CENADPH,'
      '   FVPOL.CENASUMA = :CENASUMA,'
      '   FVPOL.ISDOPROVIZE = :ISDOPROVIZE'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_FVPOL_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO FVPOL('
      '   ID, /*PK*/'
      '   REFFV,'
      '   REFZASILKA,'
      '   REFPLATCE,'
      '   POLTEXT,'
      '   ZALOHA,'
      '   CENASMLUVNI,'
      '   CENAJEDNOTKY,'
      '   CENAJEDNOTKA,'
      '   CENADPHPROC,'
      '   CENASAZBADPH,'
      '   CENADPH,'
      '   CENASUMA,'
      '   ISDOPROVIZE)'
      'VALUES ('
      '   :ID,'
      '   :REFFV,'
      '   :REFZASILKA,'
      '   :REFPLATCE,'
      '   :POLTEXT,'
      '   :ZALOHA,'
      '   :CENASMLUVNI,'
      '   :CENAJEDNOTKY,'
      '   :CENAJEDNOTKA,'
      '   :CENADPHPROC,'
      '   :CENASAZBADPH,'
      '   :CENADPH,'
      '   :CENASUMA,'
      '   :ISDOPROVIZE)')
    KeyLinks.Strings = (
      'FVPOL.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = PostFaktura
    BeforeDelete = PostFaktura
    AfterDelete = FVPOLUpdateSoucty
    BeforeInsert = PostFaktura
    AfterPost = FVPOLUpdateSoucty
    OnNewRecord = FAPolozkyNewRecord
    SQL.Strings = (
      'SELECT * FROM FVPol WHERE REFFV = :REFFV')
    FieldOptions = []
    Left = 128
    Top = 196
    object FAPolozkyID: TIntegerField
      FieldName = 'ID'
      Origin = 'FVPOL.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object FAPolozkyREFFV: TStringField
      FieldName = 'REFFV'
      Origin = 'FVPOL.REFFV'
      Size = 22
    end
    object FAPolozkyPOLTEXT: TStringField
      DisplayLabel = 'Text'
      DisplayWidth = 25
      FieldName = 'POLTEXT'
      Origin = 'FVPOL.POLTEXT'
      Size = 250
    end
    object FAPolozkyCENASMLUVNI: TFloatField
      DisplayLabel = 'Z'#225'klad'
      DisplayWidth = 10
      FieldName = 'CENASMLUVNI'
      Origin = 'FVPOL.CENASMLUVNI'
      OnChange = FaPolCalcCena
    end
    object FAPolozkyCENAJEDNOTKY: TFloatField
      DisplayLabel = 'Po'#269'et'
      DisplayWidth = 7
      FieldName = 'CENAJEDNOTKY'
      Origin = 'FVPOL.CENAJEDNOTKY'
      OnChange = FaPolCalcCena
    end
    object FAPolozkyCENAJEDNOTKA: TStringField
      DisplayLabel = 'Jedn.'
      DisplayWidth = 10
      FieldName = 'CENAJEDNOTKA'
      Origin = 'FVPOL.CENAJEDNOTKA'
      Size = 10
    end
    object FAPolozkyCENASUMA: TFloatField
      DisplayLabel = 'Sou'#269'et'
      DisplayWidth = 10
      FieldName = 'CENASUMA'
      Origin = 'FVPOL.CENASUMA'
    end
    object FAPolozkyZALOHA: TStringField
      DisplayLabel = 'Z'#225'loha'
      FieldName = 'ZALOHA'
      Origin = 'FVPOL.ZALOHA'
      Size = 1
    end
    object FAPolozkyCENADPH: TFloatField
      DisplayLabel = 'Cena Dph'
      FieldName = 'CENADPH'
      Origin = 'FVPOL.CENADPH'
    end
    object FAPolozkyCENADPHPROC: TBCDField
      DisplayLabel = 'DPH %'
      FieldName = 'CENADPHPROC'
      Origin = 'FVPOL.CENADPHPROC'
      OnChange = FaPolCalcCena
      Precision = 18
      Size = 1
    end
    object FAPolozkyREFTABULKA: TStringField
      FieldName = 'REFTABULKA'
      Size = 50
    end
    object FAPolozkyCENASAZBADPH: TSmallintField
      FieldName = 'CENASAZBADPH'
    end
    object FAPolozkyREFZASILKA: TStringField
      FieldName = 'REFZASILKA'
      FixedChar = True
      Size = 22
    end
    object FAPolozkyISDOPROVIZE: TStringField
      DisplayLabel = 'Do provize'
      FieldName = 'ISDOPROVIZE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FAPolozkyREFPLATCE: TIntegerField
      FieldName = 'REFPLATCE'
    end
  end
  object FVCenaUpdate: TIBOQuery
    Params = <
      item
        DataType = ftBCD
        Precision = 18
        Name = 'SUMA00'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'SUMA05'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'SUMA22'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'SUMAZAKLAD'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'DPH05'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'DPH22'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'SUMADPH'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'CENAZAOKR'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'CELKEM'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'CENASUMAKC'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'CENAZALOHY'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'CENALIKV'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '11'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'UPDATE FV SET'
      '   FV.SUMA00 = :SUMA00,'
      '   FV.SUMA05 = :SUMA05,'
      '   FV.SUMA22 = :SUMA22,'
      '   FV.SUMAZAKLAD = :SUMAZAKLAD,'
      '   FV.DPH05 = :DPH05,'
      '   FV.DPH22 = :DPH22,'
      '   FV.SUMADPH = :SUMADPH,'
      '   FV.CENAZAOKR = :CENAZAOKR,'
      '   FV.CELKEM = :CELKEM,'
      '   FV.CENASUMAKC = :CENASUMAKC,'
      '   FV.CENAZALOHY = :CENAZALOHY,'
      '   FV.CENALIKV = :CENALIKV'
      'WHERE'
      '   FV.SID=:SID')
    FieldOptions = []
    Left = 60
    Top = 128
  end
  object FVPlatceUpdate: TIBOQuery
    Params = <
      item
        DataType = ftBCD
        Precision = 18
        Name = 'CENASUMAKC'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftInteger
        Name = 'ID'
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
      
        'UPDATE ZSPLATCI SET ZSPLATCI.CENASUMAKC = :CENASUMAKC WHERE ZSPL' +
        'ATCI.ID = :ID')
    FieldOptions = []
    Left = 340
    Top = 60
  end
  object FVViewAOP: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = 'aop1'
      end>
    ColumnAttributes.Strings = (
      'FV.FAKTURA=REQUIRED')
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '        SID,'
      '        FAKTURA,'
      '        REF_ZASILKA,'
      '        AOPKOD,'
      '        NAZEV,'
      '        DATVYSTAVENI,'
      '        DATSPLATNOST,'
      '        DatUhrazeno,'
      '        CELKEM,'
      '        CENALIKV,'
      '        CENAUHRAZENO,'
      '        LIKVOK'
      'FROM'
      '        FV'
      'WHERE AOPKOD = :AOPKOD')
    FieldOptions = []
    Left = 264
    Top = 60
    object FVViewAOPSID: TStringField
      FieldName = 'SID'
      Origin = 'FV.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 22
    end
    object FVViewAOPREF_ZASILKA: TStringField
      DisplayLabel = 'ID Z'#225'silka'
      FieldName = 'REF_ZASILKA'
      Origin = 'FV.REF_ZASILKA'
      Visible = False
      Size = 22
    end
    object FVViewAOPFAKTURA: TStringField
      DisplayLabel = 'Faktura'
      FieldName = 'FAKTURA'
      Origin = 'FV.FAKTURA'
      Required = True
      Size = 10
    end
    object FVViewAOPAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'FV.AOPKOD'
      Visible = False
      Size = 10
    end
    object FVViewAOPNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'FV.NAZEV'
      Size = 100
    end
    object FVViewAOPDATVYSTAVENI: TDateTimeField
      DisplayLabel = 'Vystavena dne'
      DisplayWidth = 10
      FieldName = 'DATVYSTAVENI'
      Origin = 'FV.DATVYSTAVENI'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FVViewAOPDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Splatn'#225' dne'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FV.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FVViewAOPDatUhrazeno: TDateTimeField
      DisplayLabel = 'Uhrazen'#225' dne'
      DisplayWidth = 10
      FieldName = 'DATUHRAZENO'
      Origin = 'FV.DATUHRAZENO'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FVViewAOPCELKEM: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
      Origin = 'FV.CELKEM'
    end
    object FVViewAOPCENALIKV: TFloatField
      DisplayLabel = 'K '#250'hrad'#283
      FieldName = 'CENALIKV'
      Origin = 'FV.CENALIKV'
    end
    object FVViewAOPCENAUHRAZENO: TBCDField
      DisplayLabel = 'Uhrazeno'
      FieldName = 'CENAUHRAZENO'
      Origin = 'FV.CENAUHRAZENO'
      Precision = 18
      Size = 3
    end
    object FVViewAOPLIKVOK: TStringField
      DisplayLabel = 'Likvidace'
      FieldName = 'LIKVOK'
      Origin = 'FV.LIKVOK'
      Size = 1
    end
  end
  object FVViewZasilka: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'REF_ZASILKA'
        ParamType = ptInput
        Value = '11'
      end>
    ColumnAttributes.Strings = (
      'FV.FAKTURA=REQUIRED')
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT '
      '    FV.SID,'
      '    FV.FAKTURA,'
      '    FV.AOPKOD,'
      '    FV.NAZEV,'
      '    FV.DATVYSTAVENI,'
      '    FV.DATSPLATNOST,'
      '    FV.DATUHRAZENO,'
      '    FV.CELKEM,'
      '    FV.CENALIKV,'
      '    FV.CENAUHRAZENO,'
      '    FV.LIKVOK'
      'FROM FV'
      'WHERE '
      '   ('
      '      (FV.REF_ZASILKA = :REF_ZASILKA)'
      '   )')
    FieldOptions = []
    Left = 196
    Top = 128
    object FVViewZasilkaSID: TStringField
      FieldName = 'SID'
      Origin = 'FV.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 22
    end
    object FVViewZasilkaFAKTURA: TStringField
      DisplayLabel = 'Faktura'
      FieldName = 'FAKTURA'
      Origin = 'FV.FAKTURA'
      Required = True
      Size = 10
    end
    object FVViewZasilkaAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'FV.AOPKOD'
      Visible = False
      Size = 10
    end
    object FVViewZasilkaNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'FV.NAZEV'
      Size = 100
    end
    object FVViewZasilkaDATVYSTAVENI: TDateTimeField
      DisplayLabel = 'Vystavena dne'
      DisplayWidth = 10
      FieldName = 'DATVYSTAVENI'
      Origin = 'FV.DATVYSTAVENI'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FVViewZasilkaDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Splatn'#225' dne'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FV.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FVViewZasilkaDatUhrazeno: TDateTimeField
      DisplayLabel = 'Uhrazen'#225' dne'
      DisplayWidth = 10
      FieldName = 'DATUHRAZENO'
      Origin = 'FV.DATUHRAZENO'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FVViewZasilkaCELKEM: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
      Origin = 'FV.CELKEM'
    end
    object FVViewZasilkaCENALIKV: TFloatField
      DisplayLabel = 'K '#250'hrad'#283
      FieldName = 'CENALIKV'
      Origin = 'FV.CENALIKV'
    end
    object FVViewZasilkaCENAUHRAZENO: TBCDField
      DisplayLabel = 'Uhrazeno'
      FieldName = 'CENAUHRAZENO'
      Origin = 'FV.CENAUHRAZENO'
      Precision = 18
      Size = 3
    end
    object FVViewZasilkaLIKVOK: TStringField
      DisplayLabel = 'Likvidace'
      FieldName = 'LIKVOK'
      Origin = 'FV.LIKVOK'
      Size = 1
    end
  end
  object spLikvidace: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'LIKVOK'
        ParamType = ptInput
        Value = 'T'
      end
      item
        DataType = ftBCD
        Precision = 18
        Name = 'CENALIKV'
        ParamType = ptInput
        Value = 0c
      end
      item
        DataType = ftDate
        Name = 'DATUMLIKV'
        ParamType = ptInput
        Value = 41640d
      end
      item
        DataType = ftString
        Name = 'DOKLAD'
        ParamType = ptInput
        Value = 'A1'
      end
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '11'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'UPDATE FV SET '
      '  LIKVOK = :LIKVOK, '
      '  CENALIKV = :CENALIKV, '
      '  DATUHRAZENO = :DATUMLIKV, '
      '  DOKLAD = :DOKLAD, '
      '  UCTODATUM = :DATUMLIKV'
      'WHERE SID = :SID')
    FieldOptions = []
    Left = 128
    Top = 128
  end
  object dtsCalcPol: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'REFFV'
        ParamType = ptInput
        Value = '11'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'FVPOL.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CENASMLUVNI'
      '     , CENAJEDNOTKY'
      '     , CENADPHPROC'
      '     , CENASAZBADPH'
      '     , CENADPH'
      '     , CENASUMA'
      '     , ISDOPROVIZE'
      '     , ID'
      '     , ZALOHA'
      'FROM FVPOL'
      'where REFFV = :REFFV')
    FieldOptions = []
    Left = 336
    Top = 192
    object dtsCalcPolCENASMLUVNI: TBCDField
      FieldName = 'CENASMLUVNI'
      Precision = 18
      Size = 3
    end
    object dtsCalcPolCENAJEDNOTKY: TBCDField
      FieldName = 'CENAJEDNOTKY'
      Precision = 18
      Size = 3
    end
    object dtsCalcPolCENADPHPROC: TBCDField
      FieldName = 'CENADPHPROC'
      Precision = 18
      Size = 1
    end
    object dtsCalcPolCENASAZBADPH: TSmallintField
      FieldName = 'CENASAZBADPH'
    end
    object dtsCalcPolCENADPH: TBCDField
      FieldName = 'CENADPH'
      Precision = 18
      Size = 3
    end
    object dtsCalcPolCENASUMA: TBCDField
      FieldName = 'CENASUMA'
      Precision = 18
      Size = 3
    end
    object dtsCalcPolISDOPROVIZE: TStringField
      FieldName = 'ISDOPROVIZE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsCalcPolID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object dtsCalcPolZALOHA: TStringField
      FieldName = 'ZALOHA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dtsGetPol: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REFPLATCE'
        ParamType = ptInput
        Value = '1'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    KeyLinks.Strings = (
      'ZSPLATCIPOL.ID')
    PreparedEdits = True
    PreparedInserts = False
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ID'
      '     , CENATEXT'
      '     , CENAPOPIS'
      '     , CENAZAKLAD'
      '     , CENAJEDNOTKA'
      '     , CENAJEDNOTKY'
      '     , CENASLEVA'
      '     , CENASUMA'
      '     , CENASAZBADPH'
      '     , CENADPHPROC'
      '     , CENADPH'
      '     , ISDOPROVIZE'
      '     , DISPECER'
      'FROM ZSPLATCIPOL '
      'WHERE REFPLATCE = :REFPLATCE')
    FieldOptions = []
    Left = 56
    Top = 272
    object dtsGetPolCENATEXT: TStringField
      FieldName = 'CENATEXT'
      Size = 255
    end
    object dtsGetPolCENAPOPIS: TMemoField
      FieldName = 'CENAPOPIS'
      BlobType = ftMemo
      Size = 2500
    end
    object dtsGetPolCENAZAKLAD: TBCDField
      FieldName = 'CENAZAKLAD'
      Precision = 18
      Size = 3
    end
    object dtsGetPolCENAJEDNOTKA: TStringField
      FieldName = 'CENAJEDNOTKA'
      Size = 10
    end
    object dtsGetPolCENAJEDNOTKY: TBCDField
      FieldName = 'CENAJEDNOTKY'
      Precision = 18
      Size = 3
    end
    object dtsGetPolCENASLEVA: TBCDField
      FieldName = 'CENASLEVA'
      Precision = 18
      Size = 3
    end
    object dtsGetPolCENASUMA: TBCDField
      FieldName = 'CENASUMA'
      Precision = 18
      Size = 3
    end
    object dtsGetPolCENASAZBADPH: TSmallintField
      FieldName = 'CENASAZBADPH'
    end
    object dtsGetPolCENADPHPROC: TBCDField
      FieldName = 'CENADPHPROC'
      Precision = 18
      Size = 1
    end
    object dtsGetPolCENADPH: TBCDField
      FieldName = 'CENADPH'
      Precision = 18
      Size = 3
    end
    object dtsGetPolISDOPROVIZE: TStringField
      FieldName = 'ISDOPROVIZE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
