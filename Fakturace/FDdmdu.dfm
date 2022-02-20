object FDdmd: TFDdmd
  OldCreateOrder = False
  Height = 426
  Width = 634
  object dsFDSeznam: TDataSource
    AutoEdit = False
    DataSet = FDSeznam
    Left = 100
    Top = 28
  end
  object dsFakturyDO: TDataSource
    AutoEdit = False
    DataSet = FakturyDO
    OnDataChange = dsFakturyDODataChange
    Left = 444
    Top = 36
  end
  object FDSeznam: TIBOQuery
    ColumnAttributes.Strings = (
      'FDSEZNAM.FAKTURADO=REQUIRED')
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE FADOSLE SET'
      '   VYBER = :VYBER,'
      '   STATEUSER = :STATEUSER'
      'WHERE'
      '   SID = :SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'FDSEZNAM.SID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = False
    AfterPost = FDSeznamAfterPost
    SQL.Strings = (
      'select'
      '      SID'
      '     , FAKTURADO'
      '     , VYBER'
      '     , VARIABILNI'
      '     , DATSPLATNOST'
      '     , DATDANPOV'
      '     , AOPKOD'
      '     , NAZEV'
      '     , ICO'
      '     , DIC'
      '     , ADRESA3'
      '     , ZEME'
      '     , CELKEM'
      '     , CELKEMKC'
      '     , CENALIKV'
      '     , CENAUHRAZENO'
      '     , DATUHRAZENO'
      '     , LIKVOK'
      '     , DOKLAD'
      '     , UCTODATUM'
      '     , CREADATE'
      '     , CREAID'
      '     , UPDID'
      '     , UPDDATE'
      '     , STATEUSER'
      '     , ZASILKA'
      '     , REF_ZASILKA'
      '     , STAV'
      '     , CENAMENA'
      '     , STATEUSERCOLOR'
      'from FDSeznam')
    FieldOptions = []
    Left = 100
    Top = 188
    object FDSeznamSID: TStringField
      DisplayLabel = 'ID Faktura'
      FieldName = 'SID'
      Origin = 'FDSEZNAM.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
      Size = 22
    end
    object FDSeznamREF_ZASILKA: TStringField
      DisplayLabel = 'ID Z'#225'silka'
      FieldName = 'REF_ZASILKA'
      Origin = 'FDSEZNAM.REF_ZASILKA'
      ReadOnly = True
      Visible = False
      Size = 22
    end
    object FDSeznamVYBER: TStringField
      DisplayLabel = 'X'
      FieldName = 'VYBER'
      Origin = 'FDSEZNAM.VYBER'
      Size = 1
    end
    object FDSeznamFakturaDO: TStringField
      DisplayLabel = 'Doklad'
      FieldName = 'FAKTURADO'
      Origin = 'FDSEZNAM.FAKTURADO'
      Required = True
      Size = 10
    end
    object FDSeznamVariabilni: TStringField
      DisplayLabel = 'Variabiln'#237' symbol'
      DisplayWidth = 10
      FieldName = 'VARIABILNI'
      Origin = 'FDSEZNAM.VARIABILNI'
    end
    object FDSeznamZASILKA: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'FDSEZNAM.ZASILKA'
      Size = 10
    end
    object FDSeznamDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Dat.splatnosti'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FDSEZNAM.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDSeznamDATDANPOV: TDateTimeField
      DisplayLabel = 'Dat.odpo'#269'tu'
      FieldName = 'DATDANPOV'
      Origin = 'FDSEZNAM.DATDANPOV'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDSeznamAOPKOD: TStringField
      DisplayLabel = 'ID AOP'
      FieldName = 'AOPKOD'
      Visible = False
      Size = 10
    end
    object FDSeznamNAZEV: TStringField
      DisplayLabel = 'Dopravce'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'FDSEZNAM.NAZEV'
      Size = 40
    end
    object FDSeznamICO: TStringField
      DisplayLabel = 'I'#268
      FieldName = 'ICO'
      Origin = 'FDSEZNAM.ICO'
      Visible = False
      Size = 10
    end
    object FDSeznamDIC: TStringField
      DisplayLabel = 'DI'#268
      FieldName = 'DIC'
      Size = 14
    end
    object FDSeznamADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 10
      FieldName = 'ADRESA3'
      Visible = False
      Size = 32
    end
    object FDSeznamZEME: TStringField
      DisplayLabel = 'St'#225't'
      DisplayWidth = 10
      FieldName = 'ZEME'
      Size = 32
    end
    object FDSeznamCELKEM: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
      Origin = 'FDSEZNAM.CELKEM'
    end
    object FDSeznamCELKEMKC: TBCDField
      DisplayLabel = 'Celkem (CZK)'
      DisplayWidth = 10
      FieldName = 'CELKEMKC'
      Precision = 18
      Size = 3
    end
    object FDSeznamCENALIKV: TFloatField
      DisplayLabel = 'K '#250'hrad'#283
      FieldName = 'CENALIKV'
      Origin = 'FDSEZNAM.CENALIKV'
    end
    object FDSeznamCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'FDSEZNAM.CENAMENA'
      Size = 3
    end
    object FDSeznamDATUHRAZENO: TDateTimeField
      DisplayLabel = 'Dat.'#250'hrady'
      DisplayWidth = 10
      FieldName = 'DATUHRAZENO'
      Origin = 'FDSEZNAM.DATUHRAZENO'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDSeznamDOKLAD: TStringField
      DisplayLabel = #218#269'to doklad'
      DisplayWidth = 10
      FieldName = 'DOKLAD'
      Origin = 'FDSEZNAM.DOKLAD'
      Visible = False
    end
    object FDSeznamUCTODATUM: TDateTimeField
      DisplayLabel = #218#269'to datum'
      DisplayWidth = 10
      FieldName = 'UCTODATUM'
      Origin = 'FDSEZNAM.UCTODATUM'
      Visible = False
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDSeznamCREADATE: TDateTimeField
      DisplayLabel = 'Zalo'#382'il kdy'
      FieldName = 'CREADATE'
      Origin = 'FDSEZNAM.CREADATE'
      Visible = False
      DisplayFormat = 'dd.mm.yyy hh:mm'
    end
    object FDSeznamCREAID: TStringField
      DisplayLabel = 'Zalo'#382'il kdo'
      FieldName = 'CREAID'
      Origin = 'FDSEZNAM.CREAID'
      Visible = False
      Size = 10
    end
    object FDSeznamUPDID: TStringField
      DisplayLabel = 'Opravil kdo'
      FieldName = 'UPDID'
      Origin = 'FDSEZNAM.UPDID'
      Visible = False
      Size = 10
    end
    object FDSeznamUPDDATE: TDateTimeField
      DisplayLabel = 'Opravil kdy'
      FieldName = 'UPDDATE'
      Origin = 'FDSEZNAM.UPDDATE'
      Visible = False
      DisplayFormat = 'dd.mm.yyy hh:mm'
    end
    object FDSeznamSTAV: TIntegerField
      DisplayLabel = 'Stav'
      FieldName = 'STAV'
      Visible = False
    end
    object FDSeznamSTATEUSER: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATEUSER'
      Origin = 'FDSEZNAM.STATEUSER'
    end
    object FDSeznamLIKVOK: TStringField
      DisplayLabel = 'Zlikvidov'#225'na'
      FieldName = 'LIKVOK'
      Origin = 'FDSEZNAM.LIKVOK'
      Size = 1
    end
    object FDSeznamSTATEUSERCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'STATEUSERCOLOR'
    end
  end
  object FakturyDO: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '11'
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FADOSLE WHERE SID = :OLD_SID')
    EditSQL.Strings = (
      'UPDATE  FADOSLE SET'
      '        FAKTURADO = :FAKTURADO,'
      '        VARIABILNI = :VARIABILNI,'
      '        REF_ZASILKA = :REF_ZASILKA,'
      '        AOPKOD = :AOPKOD,'
      #9'NAZEV = :NAZEV,'
      #9'ADRESA1 = :ADRESA1,'
      #9'ADRESA2 = :ADRESA2,'
      #9'ADRESA3 = :ADRESA3,'
      #9'PSC = :PSC,'
      #9'ZEME = :ZEME,'
      #9'ICO = :ICO,'
      #9'DIC = :DIC,'
      '        UCET_CISLO = :UCET_CISLO,'
      '        UCET_BANKA = :UCET_BANKA,'
      '        DATDORUCENI = :DATDORUCENI,  '
      #9'DATVYSTAVENI = :DATVYSTAVENI,'
      #9'DATSPLATNOST = :DATSPLATNOST,'
      #9'DATDANPOV = :DATDANPOV,'
      #9'DATDANPOVDOD = :DATDANPOVDOD,'
      #9'CENAMENA = :CENAMENA,'
      '        CENAKURZ = :CENAKURZ,'
      '        SUMA00 = :SUMA00,'
      '        SUMA05 = :SUMA05,'
      '        SUMA22 = :SUMA22,'
      '        SUMAZAKLAD = :SUMAZAKLAD,'
      '        DPH05 = :DPH05,'
      '        DPH22 = :DPH22,'
      '        SUMADPH = :SUMADPH,'
      #9'CELKEM = :CELKEM,'
      '        CENALIKV = :CENALIKV,'
      #9'FORMUHRADY = :FORMUHRADY,'
      #9'UPDDATE = current_timestamp,'
      #9'UPDID = :UPDID,'
      #9'POZNAMKA = :POZNAMKA'
      'WHERE'#9'SID = :SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO FADOSLE'
      '        ('
      '        SID,'
      #9'FAKTURADO,'
      '        VARIABILNI,'
      '        REF_ZASILKA,'
      '        AOPKOD,'
      '        NAZEV,'
      '        ADRESA1,'
      '        ADRESA2,'
      '        ADRESA3,'
      '        PSC,'
      '        ZEME,'
      '        ICO,'
      '        DIC,'
      '        UCET_CISLO,'
      '        UCET_BANKA,'
      '        DATDORUCENI,'
      '        DATVYSTAVENI,'
      '        DATSPLATNOST,'
      '        DATDANPOV,'
      '        DATDANPOVDOD,'
      '        CENAMENA,'
      '        CENAKURZ,'
      '        CELKEM,'
      '        SUMA00,'
      '        SUMA05,'
      '        SUMA22,'
      '        SUMAZAKLAD,'
      '        DPH05,'
      '        DPH22,'
      '        SUMADPH,'
      '        CENALIKV,'
      #9'FORMUHRADY,'
      '        POZNAMKA,'
      '        STAV,'
      '        CREADATE,'
      '        CREAID'
      '        )'
      ''
      'VALUES'
      '        ('
      #9':SID,'
      '        :FAKTURADO, '
      '        :VARIABILNI, '
      '        :REF_ZASILKA,'
      '        :AOPKOD,'
      '        :NAZEV,'
      '        :ADRESA1,'
      '        :ADRESA2,'
      '        :ADRESA3,'
      '        :PSC,'
      '        :ZEME,'
      '        :ICO,'
      '        :DIC,'
      '        :UCET_CISLO,'
      '        :UCET_BANKA,'
      '        :DATDORUCENI,'
      '        :DATVYSTAVENI,'
      '        :DATSPLATNOST,'
      '        :DATDANPOV,'
      '        :DATDANPOVDOD,'
      '        :CENAMENA,'
      '        :CENAKURZ,'
      '        :CELKEM,'
      '        :SUMA00,'
      '        :SUMA05,'
      '        :SUMA22,'
      '        :SUMAZAKLAD,'
      '        :DPH05,'
      '        :DPH22,'
      '        :SUMADPH,'
      '        :CENALIKV,'
      '        :FORMUHRADY,'
      '        :POZNAMKA,'
      '        1,'
      '        current_timestamp,'
      '        :CREAID'
      '        )')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforePost = FakturyDOBeforePost
    AfterPost = FakturyDOAfterPost
    OnCalcFields = FakturyDOCalcFields
    OnNewRecord = FakturyDONewRecord
    SQL.Strings = (
      'select * from SP_FDZAZNAM(:SID)')
    FieldOptions = []
    Left = 444
    Top = 108
    object FakturyDOSID: TStringField
      FieldName = 'SID'
      Size = 22
    end
    object FakturyDOFAKTURADO: TStringField
      FieldName = 'FAKTURADO'
      Size = 10
    end
    object FakturyDOVYBER: TStringField
      FieldName = 'VYBER'
      Size = 1
    end
    object FakturyDOVARIABILNI: TStringField
      FieldName = 'VARIABILNI'
    end
    object FakturyDOREF_ZASILKA: TStringField
      FieldName = 'REF_ZASILKA'
      Size = 22
    end
    object FakturyDODATDORUCENI: TDateField
      FieldName = 'DATDORUCENI'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object FakturyDODATVYSTAVENI: TDateField
      FieldName = 'DATVYSTAVENI'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object FakturyDODATSPLATNOST: TDateField
      FieldName = 'DATSPLATNOST'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object FakturyDODATDANPOV: TDateField
      FieldName = 'DATDANPOV'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object FakturyDOAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Size = 10
    end
    object FakturyDONAZEV: TStringField
      FieldName = 'NAZEV'
      Size = 100
    end
    object FakturyDOADRESA1: TStringField
      FieldName = 'ADRESA1'
      Size = 32
    end
    object FakturyDOADRESA2: TStringField
      FieldName = 'ADRESA2'
      Size = 32
    end
    object FakturyDOADRESA3: TStringField
      FieldName = 'ADRESA3'
      Size = 32
    end
    object FakturyDOPSC: TStringField
      FieldName = 'PSC'
      Size = 10
    end
    object FakturyDOZEME: TStringField
      FieldName = 'ZEME'
      Size = 32
    end
    object FakturyDOICO: TStringField
      FieldName = 'ICO'
      Size = 10
    end
    object FakturyDODIC: TStringField
      FieldName = 'DIC'
      Size = 14
    end
    object FakturyDOFORMUHRADY: TStringField
      FieldName = 'FORMUHRADY'
      Size = 15
    end
    object FakturyDOSUMA00: TBCDField
      FieldName = 'SUMA00'
      OnChange = FakturyDOSUMA00Change
      Precision = 18
      Size = 3
    end
    object FakturyDOSUMA05: TBCDField
      FieldName = 'SUMA05'
      OnChange = FakturyDOSUMA05Change
      Precision = 18
      Size = 3
    end
    object FakturyDOSUMA22: TBCDField
      FieldName = 'SUMA22'
      OnChange = FakturyDOSUMA22Change
      Precision = 18
      Size = 3
    end
    object FakturyDOSUMAZAKLAD: TBCDField
      FieldName = 'SUMAZAKLAD'
      Precision = 18
      Size = 3
    end
    object FakturyDODPH05: TBCDField
      FieldName = 'DPH05'
      OnChange = DPHChange
      Precision = 18
      Size = 3
    end
    object FakturyDODPH22: TBCDField
      FieldName = 'DPH22'
      OnChange = DPHChange
      Precision = 18
      Size = 3
    end
    object FakturyDOSUMADPH: TBCDField
      FieldName = 'SUMADPH'
      Precision = 18
      Size = 3
    end
    object FakturyDOCENAMENA: TStringField
      FieldName = 'CENAMENA'
      Size = 3
    end
    object FakturyDOCENAKURZ: TBCDField
      DisplayLabel = 'Kurz'
      FieldName = 'CENAKURZ'
      Precision = 18
    end
    object FakturyDOCELKEM: TBCDField
      FieldName = 'CELKEM'
      Precision = 18
      Size = 3
    end
    object FakturyDOCELKEMKC: TBCDField
      FieldName = 'CELKEMKC'
      Precision = 18
      Size = 3
    end
    object FakturyDOCENAZALOHY: TBCDField
      FieldName = 'CENAZALOHY'
      Precision = 18
      Size = 3
    end
    object FakturyDOCENALIKV: TBCDField
      FieldName = 'CENALIKV'
      Precision = 18
      Size = 3
    end
    object FakturyDOCENAUHRAZENO: TBCDField
      FieldName = 'CENAUHRAZENO'
      Precision = 18
      Size = 3
    end
    object FakturyDODATUHRAZENO: TDateField
      FieldName = 'DATUHRAZENO'
    end
    object FakturyDOLIKVOK: TStringField
      FieldName = 'LIKVOK'
      Size = 1
    end
    object FakturyDODOKLAD: TStringField
      FieldName = 'DOKLAD'
    end
    object FakturyDOUCTODATUM: TDateField
      FieldName = 'UCTODATUM'
    end
    object FakturyDOPOZNAMKA: TBlobField
      FieldName = 'POZNAMKA'
      Size = 8
    end
    object FakturyDOCREADATE: TDateTimeField
      FieldName = 'CREADATE'
    end
    object FakturyDOCREAID: TStringField
      FieldName = 'CREAID'
      Size = 10
    end
    object FakturyDOUPDID: TStringField
      FieldName = 'UPDID'
      Size = 10
    end
    object FakturyDOUPDDATE: TDateTimeField
      FieldName = 'UPDDATE'
    end
    object FakturyDOUCET_CISLO: TStringField
      FieldName = 'UCET_CISLO'
      Size = 45
    end
    object FakturyDOUCET_BANKA: TStringField
      FieldName = 'UCET_BANKA'
      Size = 11
    end
    object FakturyDOUCET_IBAN: TStringField
      FieldName = 'UCET_IBAN'
      Size = 30
    end
    object FakturyDOUCET_SWIFT: TStringField
      FieldName = 'UCET_SWIFT'
      Size = 11
    end
    object FakturyDOUCET_SPECIF: TStringField
      FieldName = 'UCET_SPECIF'
    end
    object FakturyDOSTATEUSER: TSmallintField
      FieldName = 'STATEUSER'
    end
    object FakturyDOZASILKA: TStringField
      FieldName = 'ZASILKA'
      Size = 10
    end
    object FakturyDOSTAV: TSmallintField
      DisplayLabel = 'Stav'
      FieldName = 'STAV'
    end
    object FakturyDOCALCDPHZAKL: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CALCDPHZAKL'
      Calculated = True
    end
    object FakturyDOCALCDPHSNIZ: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CALCDPHSNIZ'
      Calculated = True
    end
    object FakturyDOCENA22SDPH: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CENA22SDPH'
      Calculated = True
    end
    object FakturyDOCENA05SDPH: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CENA05SDPH'
      Calculated = True
    end
    object FakturyDODATDANPOVDOD: TDateField
      FieldName = 'DATDANPOVDOD'
    end
  end
  object FDViewAOP: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
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
      'SELECT'
      '        SID,'
      #9#9'FAKTURADO,'
      '        VARIABILNI,'
      '        ZASILKA,'
      '        DATVYSTAVENI,'
      '        DATSPLATNOST,'
      '        AOPKOD,'
      '        NAZEV,'
      '        FORMUHRADY,'
      '        CELKEM,'
      '        CENALIKV,'
      '        LIKVOK,'
      '        DATUHRAZENO,'
      '        DOKLAD,'
      '        UCTODATUM'
      'FROM FDSEZNAM'
      'WHERE AOPKOD = :AOPKOD')
    FieldOptions = []
    Left = 276
    Top = 108
    object FDViewAOPSID: TStringField
      FieldName = 'SID'
      Origin = 'FDSEZNAM.SID'
      Size = 22
    end
    object FDViewAOPFAKTURADO: TStringField
      DisplayLabel = 'Doklad'
      FieldName = 'FAKTURADO'
      Origin = 'FDSEZNAM.FAKTURADO'
      Required = True
      Size = 10
    end
    object FDViewAOPVARIABILNI: TStringField
      DisplayLabel = 'Variabiln'#237
      DisplayWidth = 10
      FieldName = 'VARIABILNI'
      Origin = 'FDSEZNAM.VARIABILNI'
    end
    object FDViewAOPZASILKA: TStringField
      DisplayLabel = 'Z'#225'silka'
      FieldName = 'ZASILKA'
      Origin = 'FDSEZNAM.ZASILKA'
      Visible = False
      Size = 10
    end
    object FDViewAOPDATVYSTAVENI: TDateTimeField
      DisplayLabel = 'Vystaveno dne'
      DisplayWidth = 10
      FieldName = 'DATVYSTAVENI'
      Origin = 'FDSEZNAM.DATVYSTAVENI'
      Visible = False
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDViewAOPDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Splatno dne'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FDSEZNAM.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDViewAOPDATUHRAZENO: TDateTimeField
      DisplayLabel = 'Uhrazeno dne'
      DisplayWidth = 10
      FieldName = 'DATUHRAZENO'
      Origin = 'FDSEZNAM.DATUHRAZENO'
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDViewAOPAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'FDSEZNAM.AOPKOD'
      Visible = False
      Size = 10
    end
    object FDViewAOPNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Origin = 'FDSEZNAM.NAZEV'
      Size = 40
    end
    object FDViewAOPFORMUHRADY: TStringField
      DisplayLabel = 'Forma '#250'hrady'
      DisplayWidth = 10
      FieldName = 'FORMUHRADY'
      Origin = 'FDSEZNAM.FORMUHRADY'
      Visible = False
    end
    object FDViewAOPCELKEM: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CELKEM'
      Origin = 'FDSEZNAM.CELKEM'
      Visible = False
    end
    object FDViewAOPCENALIKV: TFloatField
      DisplayLabel = 'K likvidaci'
      FieldName = 'CENALIKV'
      Origin = 'FDSEZNAM.CENALIKV'
    end
    object FDViewAOPDOKLAD: TStringField
      DisplayLabel = #218#269'to doklad'
      DisplayWidth = 10
      FieldName = 'DOKLAD'
      Origin = 'FDSEZNAM.DOKLAD'
      Visible = False
    end
    object FDViewAOPUCTODATUM: TDateTimeField
      DisplayLabel = #218#269'to datum'
      DisplayWidth = 10
      FieldName = 'UCTODATUM'
      Origin = 'FDSEZNAM.UCTODATUM'
      Visible = False
      DisplayFormat = 'dd.mm.yyy'
    end
    object FDViewAOPLIKVOK: TStringField
      DisplayLabel = 'Zlikvidovan'#225
      FieldName = 'LIKVOK'
      Origin = 'FDSEZNAM.LIKVOK'
      Size = 1
    end
  end
  object ZSRecord: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'REF_ZASILKA'
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
      'SELECT * FROM SP_ZSZAZNAM(:REF_ZASILKA)')
    FieldOptions = []
    Left = 100
    Top = 100
    object ZSRecordSID: TStringField
      FieldName = 'SID'
      Origin = 'SP_ZSZAZNAM.SID'
      Size = 22
    end
    object ZSRecordZASILKA: TStringField
      FieldName = 'ZASILKA'
      Origin = 'SP_ZSZAZNAM.ZASILKA'
      Size = 10
    end
    object ZSRecordVYBER: TStringField
      FieldName = 'VYBER'
      Origin = 'SP_ZSZAZNAM.VYBER'
      Size = 1
    end
    object ZSRecordREF_ZSPODMINKY: TIntegerField
      FieldName = 'REF_ZSPODMINKY'
      Origin = 'SP_ZSZAZNAM.REF_ZSPODMINKY'
    end
    object ZSRecordREF_POTVRZENI: TIntegerField
      FieldName = 'REF_POTVRZENI'
      Origin = 'SP_ZSZAZNAM.REF_POTVRZENI'
    end
    object ZSRecordINTTYPZAZNAMU: TSmallintField
      FieldName = 'INTTYPZAZNAMU'
      Origin = 'SP_ZSZAZNAM.INTTYPZAZNAMU'
    end
    object ZSRecordTYP: TStringField
      FieldName = 'TYP'
      Origin = 'SP_ZSZAZNAM.TYP'
      Size = 15
    end
    object ZSRecordAOPKOD_OBJ: TStringField
      FieldName = 'AOPKOD_OBJ'
      Origin = 'SP_ZSZAZNAM.AOPKOD_OBJ'
      Size = 10
    end
    object ZSRecordAOPKOD_DOP: TStringField
      FieldName = 'AOPKOD_DOP'
      Origin = 'SP_ZSZAZNAM.AOPKOD_DOP'
      Size = 10
    end
    object ZSRecordINTOBJ: TStringField
      FieldName = 'INTOBJ'
      Origin = 'SP_ZSZAZNAM.INTOBJ'
    end
    object ZSRecordDISPECER: TStringField
      FieldName = 'DISPECER'
      Origin = 'SP_ZSZAZNAM.DISPECER'
      Size = 10
    end
    object ZSRecordINTSTREDISKO: TStringField
      FieldName = 'INTSTREDISKO'
      Origin = 'SP_ZSZAZNAM.INTSTREDISKO'
      Size = 2
    end
    object ZSRecordDATUM: TDateField
      FieldName = 'DATUM'
      Origin = 'SP_ZSZAZNAM.DATUM'
    end
    object ZSRecordMESIC: TStringField
      FieldName = 'MESIC'
      Origin = 'SP_ZSZAZNAM.MESIC'
      Size = 7
    end
    object ZSRecordSUBSTRATINFO: TStringField
      FieldName = 'SUBSTRATINFO'
      Origin = 'SP_ZSZAZNAM.SUBSTRATINFO'
      Size = 100
    end
    object ZSRecordSUBSTRAT: TBlobField
      FieldName = 'SUBSTRAT'
      Origin = 'SP_ZSZAZNAM.SUBSTRAT'
      Size = 8
    end
    object ZSRecordHMBRUTTO: TBCDField
      FieldName = 'HMBRUTTO'
      Origin = 'SP_ZSZAZNAM.HMBRUTTO'
      Precision = 18
      Size = 3
    end
    object ZSRecordHMTEXT: TStringField
      FieldName = 'HMTEXT'
      Origin = 'SP_ZSZAZNAM.HMTEXT'
      Size = 50
    end
    object ZSRecordPRIKAZ: TStringField
      FieldName = 'PRIKAZ'
      Origin = 'SP_ZSZAZNAM.PRIKAZ'
      Size = 100
    end
    object ZSRecordVOZIDLO: TStringField
      FieldName = 'VOZIDLO'
      Origin = 'SP_ZSZAZNAM.VOZIDLO'
      Size = 100
    end
    object ZSRecordAUTOSPZ: TStringField
      FieldName = 'AUTOSPZ'
      Origin = 'SP_ZSZAZNAM.AUTOSPZ'
      Size = 32
    end
    object ZSRecordCLO: TBlobField
      FieldName = 'CLO'
      Origin = 'SP_ZSZAZNAM.CLO'
      Size = 8
    end
    object ZSRecordNMISTO: TStringField
      FieldName = 'NMISTO'
      Origin = 'SP_ZSZAZNAM.NMISTO'
      Size = 32
    end
    object ZSRecordNPSC: TStringField
      FieldName = 'NPSC'
      Origin = 'SP_ZSZAZNAM.NPSC'
      Size = 10
    end
    object ZSRecordNSTAT: TStringField
      FieldName = 'NSTAT'
      Origin = 'SP_ZSZAZNAM.NSTAT'
      Size = 4
    end
    object ZSRecordVMISTO: TStringField
      FieldName = 'VMISTO'
      Origin = 'SP_ZSZAZNAM.VMISTO'
      Size = 32
    end
    object ZSRecordVPSC: TStringField
      FieldName = 'VPSC'
      Origin = 'SP_ZSZAZNAM.VPSC'
      Size = 10
    end
    object ZSRecordVSTAT: TStringField
      FieldName = 'VSTAT'
      Origin = 'SP_ZSZAZNAM.VSTAT'
      Size = 4
    end
    object ZSRecordVDATUM: TDateField
      FieldName = 'VDATUM'
      Origin = 'SP_ZSZAZNAM.VDATUM'
    end
    object ZSRecordCENASMLUVNI: TBCDField
      FieldName = 'CENASMLUVNI'
      Origin = 'SP_ZSZAZNAM.CENASMLUVNI'
      Precision = 18
      Size = 3
    end
    object ZSRecordCENAJEDNOTKY: TBCDField
      FieldName = 'CENAJEDNOTKY'
      Origin = 'SP_ZSZAZNAM.CENAJEDNOTKY'
      Precision = 18
      Size = 3
    end
    object ZSRecordCENAJEDNOTKA: TStringField
      FieldName = 'CENAJEDNOTKA'
      Origin = 'SP_ZSZAZNAM.CENAJEDNOTKA'
      Size = 10
    end
    object ZSRecordCENASRAZKY: TBCDField
      FieldName = 'CENASRAZKY'
      Origin = 'SP_ZSZAZNAM.CENASRAZKY'
      Precision = 18
      Size = 3
    end
    object ZSRecordCENADPHPROC: TBCDField
      FieldName = 'CENADPHPROC'
      Origin = 'SP_ZSZAZNAM.CENADPHPROC'
      Precision = 18
      Size = 1
    end
    object ZSRecordCENADPH: TBCDField
      FieldName = 'CENADPH'
      Origin = 'SP_ZSZAZNAM.CENADPH'
      Precision = 18
      Size = 3
    end
    object ZSRecordCENASUMA: TBCDField
      FieldName = 'CENASUMA'
      Origin = 'SP_ZSZAZNAM.CENASUMA'
      Precision = 18
      Size = 3
    end
    object ZSRecordCENAMENA: TStringField
      FieldName = 'CENAMENA'
      Origin = 'SP_ZSZAZNAM.CENAMENA'
      Size = 3
    end
    object ZSRecordCENAKURS: TBCDField
      FieldName = 'CENAKURS'
      Origin = 'SP_ZSZAZNAM.CENAKURS'
      Precision = 18
    end
    object ZSRecordPODMINKY: TStringField
      FieldName = 'PODMINKY'
      Origin = 'SP_ZSZAZNAM.PODMINKY'
      Size = 50
    end
    object ZSRecordCENADOPRAVCE: TBCDField
      FieldName = 'CENADOPRAVCE'
      Origin = 'SP_ZSZAZNAM.CENADOPRAVCE'
      Precision = 18
      Size = 1
    end
    object ZSRecordCENAPLATCI: TBCDField
      FieldName = 'CENAPLATCI'
      Origin = 'SP_ZSZAZNAM.CENAPLATCI'
      Precision = 18
      Size = 1
    end
    object ZSRecordCENAPROVIZE: TBCDField
      FieldName = 'CENAPROVIZE'
      Origin = 'SP_ZSZAZNAM.CENAPROVIZE'
      Precision = 18
      Size = 1
    end
    object ZSRecordPOZNAMKA: TBlobField
      FieldName = 'POZNAMKA'
      Origin = 'SP_ZSZAZNAM.POZNAMKA'
      Size = 8
    end
    object ZSRecordJEFAKTURA: TStringField
      FieldName = 'JEFAKTURA'
      Origin = 'SP_ZSZAZNAM.JEFAKTURA'
      Size = 1
    end
    object ZSRecordCREADATE: TDateTimeField
      FieldName = 'CREADATE'
      Origin = 'SP_ZSZAZNAM.CREADATE'
    end
    object ZSRecordCREAID: TStringField
      FieldName = 'CREAID'
      Origin = 'SP_ZSZAZNAM.CREAID'
      Size = 10
    end
    object ZSRecordUPDDATE: TDateTimeField
      FieldName = 'UPDDATE'
      Origin = 'SP_ZSZAZNAM.UPDDATE'
    end
    object ZSRecordUPDID: TStringField
      FieldName = 'UPDID'
      Origin = 'SP_ZSZAZNAM.UPDID'
      Size = 10
    end
    object ZSRecordSTAV: TSmallintField
      FieldName = 'STAV'
      Origin = 'SP_ZSZAZNAM.STAV'
    end
    object ZSRecordINTPOZNAMKA: TBlobField
      FieldName = 'INTPOZNAMKA'
      Origin = 'SP_ZSZAZNAM.INTPOZNAMKA'
      Size = 8
    end
    object ZSRecordSTATEUSER: TIntegerField
      FieldName = 'STATEUSER'
      Origin = 'SP_ZSZAZNAM.STATEUSER'
    end
    object ZSRecordD_NAZEV: TStringField
      FieldName = 'D_NAZEV'
      Origin = 'SP_ZSZAZNAM.D_NAZEV'
      Size = 100
    end
    object ZSRecordP_NAZEV: TStringField
      FieldName = 'P_NAZEV'
      Origin = 'SP_ZSZAZNAM.P_NAZEV'
      Size = 100
    end
    object ZSRecordPODMINKY_DOPRAVCE: TBlobField
      FieldName = 'PODMINKY_DOPRAVCE'
      Origin = 'SP_ZSZAZNAM.PODMINKY_DOPRAVCE'
      Size = 8
    end
    object ZSRecordD_POBOCKA: TStringField
      FieldName = 'D_POBOCKA'
      Origin = 'SP_ZSZAZNAM.D_POBOCKA'
      Size = 32
    end
    object ZSRecordD_ADRESA: TStringField
      FieldName = 'D_ADRESA'
      Origin = 'SP_ZSZAZNAM.D_ADRESA'
      Size = 32
    end
    object ZSRecordD_MESTO: TStringField
      FieldName = 'D_MESTO'
      Origin = 'SP_ZSZAZNAM.D_MESTO'
      Size = 40
    end
    object ZSRecordD_PSC: TStringField
      FieldName = 'D_PSC'
      Origin = 'SP_ZSZAZNAM.D_PSC'
      Size = 10
    end
    object ZSRecordD_KODZEME: TStringField
      FieldName = 'D_KODZEME'
      Origin = 'SP_ZSZAZNAM.D_KODZEME'
      Size = 4
    end
    object ZSRecordD_ICO: TStringField
      FieldName = 'D_ICO'
      Origin = 'SP_ZSZAZNAM.D_ICO'
      Size = 10
    end
    object ZSRecordD_DIC: TStringField
      FieldName = 'D_DIC'
      Origin = 'SP_ZSZAZNAM.D_DIC'
      Size = 14
    end
    object ZSRecordD_TELEFON: TStringField
      FieldName = 'D_TELEFON'
      Origin = 'SP_ZSZAZNAM.D_TELEFON'
      Size = 50
    end
    object ZSRecordD_FAX: TStringField
      FieldName = 'D_FAX'
      Origin = 'SP_ZSZAZNAM.D_FAX'
      Size = 50
    end
    object ZSRecordD_GSM: TStringField
      FieldName = 'D_GSM'
      Origin = 'SP_ZSZAZNAM.D_GSM'
      Size = 50
    end
    object ZSRecordD_EMAIL: TStringField
      FieldName = 'D_EMAIL'
      Origin = 'SP_ZSZAZNAM.D_EMAIL'
      Size = 100
    end
    object ZSRecordD_KODSTBS: TStringField
      FieldName = 'D_KODSTBS'
      Origin = 'SP_ZSZAZNAM.D_KODSTBS'
      Size = 22
    end
    object ZSRecordD_SPLATNOST: TSmallintField
      FieldName = 'D_SPLATNOST'
      Origin = 'SP_ZSZAZNAM.D_SPLATNOST'
    end
    object ZSRecordP_POBOCKA: TStringField
      FieldName = 'P_POBOCKA'
      Origin = 'SP_ZSZAZNAM.P_POBOCKA'
      Size = 32
    end
    object ZSRecordP_ADRESA: TStringField
      FieldName = 'P_ADRESA'
      Origin = 'SP_ZSZAZNAM.P_ADRESA'
      Size = 32
    end
    object ZSRecordP_MESTO: TStringField
      FieldName = 'P_MESTO'
      Origin = 'SP_ZSZAZNAM.P_MESTO'
      Size = 40
    end
    object ZSRecordP_PSC: TStringField
      FieldName = 'P_PSC'
      Origin = 'SP_ZSZAZNAM.P_PSC'
      Size = 10
    end
    object ZSRecordP_KODZEME: TStringField
      FieldName = 'P_KODZEME'
      Origin = 'SP_ZSZAZNAM.P_KODZEME'
      Size = 4
    end
    object ZSRecordP_ICO: TStringField
      FieldName = 'P_ICO'
      Origin = 'SP_ZSZAZNAM.P_ICO'
      Size = 10
    end
    object ZSRecordP_DIC: TStringField
      FieldName = 'P_DIC'
      Origin = 'SP_ZSZAZNAM.P_DIC'
      Size = 14
    end
    object ZSRecordP_SPLATNOST: TSmallintField
      FieldName = 'P_SPLATNOST'
      Origin = 'SP_ZSZAZNAM.P_SPLATNOST'
    end
    object ZSRecordP_TELEFON: TStringField
      FieldName = 'P_TELEFON'
      Origin = 'SP_ZSZAZNAM.P_TELEFON'
      Size = 50
    end
    object ZSRecordP_FAX: TStringField
      FieldName = 'P_FAX'
      Origin = 'SP_ZSZAZNAM.P_FAX'
      Size = 50
    end
    object ZSRecordP_GSM: TStringField
      FieldName = 'P_GSM'
      Origin = 'SP_ZSZAZNAM.P_GSM'
      Size = 50
    end
    object ZSRecordP_EMAIL: TStringField
      FieldName = 'P_EMAIL'
      Origin = 'SP_ZSZAZNAM.P_EMAIL'
      Size = 100
    end
    object ZSRecordP_KODSTBS: TStringField
      FieldName = 'P_KODSTBS'
      Origin = 'SP_ZSZAZNAM.P_KODSTBS'
      Size = 22
    end
    object ZSRecordCENASAZBADPH: TSmallintField
      FieldName = 'CENASAZBADPH'
    end
  end
  object dtsFDPol: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM FDPOL FDPOL'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE FDPOL FDPOL SET'
      '   FDPOL.POLTEXT = :POLTEXT,'
      '   FDPOL.ZALOHA = :ZALOHA,'
      '   FDPOL.CENASMLUVNI = :CENASMLUVNI,'
      '   FDPOL.CENAJEDNOTKY = :CENAJEDNOTKY,'
      '   FDPOL.CENAJEDNOTKA = :CENAJEDNOTKA,'
      '   FDPOL.CENADPHPROC = :CENADPHPROC,'
      '   FDPOL.CENADPH = :CENADPH,'
      '   FDPOL.CENASUMA = :CENASUMA,'
      '   FDPOL.CENADPHSAZBA = :CENADPHSAZBA,'
      '   FDPOL.ISDOPROVIZE = :ISDOPROVIZE'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=gen_fdpol_id')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO FDPOL('
      '   ID, /*PK*/'
      '   REFFD,'
      '   REFZASILKA,'
      '   POLOZKA,'
      '   POLTEXT,'
      '   ZALOHA,'
      '   CENASMLUVNI,'
      '   CENAJEDNOTKY,'
      '   CENAJEDNOTKA,'
      '   CENADPHPROC,'
      '   CENADPH,'
      '   CENASUMA,'
      '   CENADPHSAZBA,'
      '   ISDOPROVIZE)'
      'VALUES ('
      '   :ID,'
      '   :REFFD,'
      '   :REFZASILKA,'
      '   :POLOZKA, '
      '   :POLTEXT,'
      '   :ZALOHA,'
      '   :CENASMLUVNI,'
      '   :CENAJEDNOTKY,'
      '   :CENAJEDNOTKA,'
      '   :CENADPHPROC,'
      '   :CENADPH,'
      '   :CENASUMA,'
      '   :CENADPHSAZBA,'
      '   :ISDOPROVIZE)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = dtsFDPolBeforeInsert
    BeforeDelete = dtsFDPolBeforeDelete
    AfterDelete = dtsFDPolAfterDelete
    BeforeInsert = dtsFDPolBeforeInsert
    BeforePost = dtsFDPolBeforePost
    AfterPost = dtsFDPolAfterPost
    OnNewRecord = dtsFDPolNewRecord
    DataSource = dsFakturyDO
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SP_FDPOLOZKY(:SID) order by polozka')
    FieldOptions = []
    Left = 532
    Top = 116
    object dtsFDPolID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object dtsFDPolREFFD: TStringField
      FieldName = 'REFFD'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object dtsFDPolREFZASILKA: TStringField
      FieldName = 'REFZASILKA'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object dtsFDPolZASILKA: TStringField
      DisplayLabel = 'P'#345'eprava'
      FieldName = 'ZASILKA'
      Size = 10
    end
    object dtsFDPolPOLOZKA: TSmallintField
      DisplayLabel = 'Polo'#382'ka'
      DisplayWidth = 5
      FieldName = 'POLOZKA'
    end
    object dtsFDPolPOLTEXT: TStringField
      DisplayLabel = 'Polo'#382'ka'
      DisplayWidth = 25
      FieldName = 'POLTEXT'
      Size = 255
    end
    object dtsFDPolCENASMLUVNI: TBCDField
      DisplayLabel = 'Cena'
      FieldName = 'CENASMLUVNI'
      OnChange = ZmenaCastky
      Precision = 18
      Size = 3
    end
    object dtsFDPolCENAJEDNOTKY: TBCDField
      DisplayLabel = 'Po'#269'et'
      FieldName = 'CENAJEDNOTKY'
      OnChange = ZmenaCastky
      Precision = 18
      Size = 3
    end
    object dtsFDPolCENAJEDNOTKA: TStringField
      DisplayLabel = 'Jednotka'
      FieldName = 'CENAJEDNOTKA'
      Size = 10
    end
    object dtsFDPolCENADPHPROC: TBCDField
      DisplayLabel = 'DPH %'
      DisplayWidth = 10
      FieldName = 'CENADPHPROC'
      Precision = 18
      Size = 1
    end
    object dtsFDPolCENADPH: TBCDField
      DisplayLabel = 'DPH'
      FieldName = 'CENADPH'
      Precision = 18
      Size = 3
    end
    object dtsFDPolCENASUMA: TBCDField
      DisplayLabel = 'Sou'#269'et'
      FieldName = 'CENASUMA'
      Precision = 18
      Size = 3
    end
    object dtsFDPolCENADPHSAZBA: TSmallintField
      DisplayLabel = 'Sazba DPH'
      FieldName = 'CENADPHSAZBA'
      OnChange = ZmenaCastky
    end
    object dtsFDPolISDOPROVIZE: TStringField
      DisplayLabel = 'Do provize'
      FieldName = 'ISDOPROVIZE'
      Required = True
      OnChange = ZmenaCastky
      FixedChar = True
      Size = 1
    end
    object dtsFDPolZALOHA: TStringField
      DisplayLabel = 'Z'#225'loha'
      FieldName = 'ZALOHA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dtsCalcPol: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'REFFD'
        ParamType = ptInput
        Value = '11'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'FDPOL.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT '
      '       CENASMLUVNI'
      '     , CENASUMA'
      '     , CENADPH'
      '     , CENADPHSAZBA'
      '     , ID'
      '     , ZALOHA'
      'FROM FDPOL where REFFD = :REFFD')
    FieldOptions = []
    Left = 172
    Top = 276
    object dtsCalcPolCENASMLUVNI: TBCDField
      FieldName = 'CENASMLUVNI'
      Precision = 18
      Size = 3
    end
    object dtsCalcPolCENASUMA: TBCDField
      FieldName = 'CENASUMA'
      Precision = 18
      Size = 3
    end
    object dtsCalcPolCENADPH: TBCDField
      FieldName = 'CENADPH'
      Precision = 18
      Size = 3
    end
    object dtsCalcPolCENADPHSAZBA: TSmallintField
      FieldName = 'CENADPHSAZBA'
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
end
