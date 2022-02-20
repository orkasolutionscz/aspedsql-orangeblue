object dmdPohoExpImp: TdmdPohoExpImp
  OldCreateOrder = False
  Height = 315
  Width = 460
  object EVF_PohodaData: TdxMemData
    Indexes = <>
    SortOptions = []
    OnNewRecord = EVF_PohodaDataNewRecord
    Left = 262
    Top = 130
    object EVF_PohodaDataID: TStringField
      FieldName = 'ID'
      Size = 22
    end
    object EVF_PohodaDataRelPk: TIntegerField
      FieldName = 'RelPk'
    end
    object EVF_PohodaDataRelTpDPH: TIntegerField
      FieldName = 'RelTpDPH'
    end
    object EVF_PohodaDataRelTpFak: TIntegerField
      FieldName = 'RelTpFak'
    end
    object EVF_PohodaDataRelForUh: TIntegerField
      FieldName = 'RelForUh'
    end
    object EVF_PohodaDataZaokrFV: TIntegerField
      FieldName = 'ZaokrFV'
    end
    object EVF_PohodaDataSel: TIntegerField
      FieldName = 'Sel'
    end
    object EVF_PohodaDataPolozky: TIntegerField
      FieldName = 'Polozky'
    end
    object EVF_PohodaDataRelCR: TIntegerField
      FieldName = 'RelCR'
    end
    object EVF_PohodaDataCislo: TStringField
      FieldName = 'Cislo'
      Size = 15
    end
    object EVF_PohodaDataVarSym: TStringField
      FieldName = 'VarSym'
      Size = 15
    end
    object EVF_PohodaDataSText: TMemoField
      FieldName = 'SText'
      BlobType = ftMemo
    end
    object EVF_PohodaDataDatum: TDateField
      FieldName = 'Datum'
    end
    object EVF_PohodaDataDatUcP: TDateField
      FieldName = 'DatUcP'
    end
    object EVF_PohodaDataDatSplat: TDateField
      FieldName = 'DatSplat'
    end
    object EVF_PohodaDataTpStorn: TIntegerField
      FieldName = 'TpStorn'
    end
    object EVF_PohodaDataDatZdPln: TDateField
      FieldName = 'DatZdPln'
    end
    object EVF_PohodaDataKc0: TCurrencyField
      FieldName = 'Kc0'
    end
    object EVF_PohodaDataKc1: TCurrencyField
      FieldName = 'Kc1'
    end
    object EVF_PohodaDataKcDPH1: TCurrencyField
      FieldName = 'KcDPH1'
    end
    object EVF_PohodaDataKc2: TCurrencyField
      FieldName = 'Kc2'
    end
    object EVF_PohodaDataKcDPH2: TCurrencyField
      FieldName = 'KcDPH2'
    end
    object EVF_PohodaDataKcZaloha: TCurrencyField
      FieldName = 'KcZaloha'
    end
    object EVF_PohodaDataKcCelkem: TCurrencyField
      FieldName = 'KcCelkem'
    end
    object EVF_PohodaDataKcLikv: TCurrencyField
      FieldName = 'KcLikv'
    end
    object EVF_PohodaDataKcU: TCurrencyField
      FieldName = 'KcU'
    end
    object EVF_PohodaDataKcZaokr: TCurrencyField
      FieldName = 'KcZaokr'
    end
    object EVF_PohodaDataKcP: TCurrencyField
      FieldName = 'KcP'
    end
    object EVF_PohodaDataDenEUR: TCurrencyField
      FieldName = 'DenEUR'
    end
    object EVF_PohodaDataCm0: TCurrencyField
      FieldName = 'Cm0'
    end
    object EVF_PohodaDataCmCelkem: TCurrencyField
      FieldName = 'CmCelkem'
    end
    object EVF_PohodaDataCmLikv: TCurrencyField
      FieldName = 'CmLikv'
    end
    object EVF_PohodaDataCmU: TCurrencyField
      FieldName = 'CmU'
    end
    object EVF_PohodaDataCmZaokr: TCurrencyField
      FieldName = 'CmZaokr'
    end
    object EVF_PohodaDataPohodaID: TIntegerField
      FieldName = 'PohodaID'
    end
    object EVF_PohodaDataFirma: TStringField
      FieldName = 'Firma'
      Size = 100
    end
    object EVF_PohodaDataUtvar: TStringField
      FieldName = 'Utvar'
      Size = 40
    end
    object EVF_PohodaDataUlice: TStringField
      FieldName = 'Ulice'
      Size = 40
    end
    object EVF_PohodaDataObec: TStringField
      FieldName = 'Obec'
      Size = 40
    end
    object EVF_PohodaDatapsc: TStringField
      FieldName = 'psc'
      Size = 10
    end
    object EVF_PohodaDataico: TStringField
      FieldName = 'ico'
    end
    object EVF_PohodaDatadic: TStringField
      FieldName = 'dic'
    end
    object EVF_PohodaDataUcetni: TStringField
      FieldName = 'Ucetni'
    end
    object EVF_PohodaDataCisloObj: TStringField
      FieldName = 'CisloObj'
      Size = 100
    end
    object EVF_PohodaDataCmKurs: TCurrencyField
      FieldName = 'CmKurs'
    end
    object EVF_PohodaDataCmMnoz: TCurrencyField
      FieldName = 'CmMnoz'
    end
    object EVF_PohodaDataRefCM: TFloatField
      FieldName = 'RefCM'
    end
    object EVF_PohodaDataRefAD: TWordField
      FieldName = 'RefAD'
    end
    object EVF_PohodaDataMena: TStringField
      FieldName = 'Mena'
      Size = 6
    end
    object EVF_PohodaDataUcetZkr: TStringField
      FieldName = 'UcetZkr'
      Size = 3
    end
    object EVF_PohodaDataTuzKlient: TSmallintField
      FieldName = 'TuzKlient'
    end
  end
  object xmlFVExportxx: TXMLDocument
    FileName = 'D:\OutputFolder\orpofvz.xml'
    Left = 384
    Top = 36
    DOMVendorDesc = 'MSXML'
  end
  object dtsFVP: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'ID=REQUIRED'
      'TYP=REQUIRED')
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE FV SET'
      '   STAV = :STAV'
      'WHERE'
      '   SID = :OLD_SID')
    IB_Connection = dmdConnect.IBOMainDB
    KeyLinks.Strings = (
      'FV.SID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT FV.*,   '
      '    aop.kod_adpohoda'
      'from fv'
      '   left outer join aop on (fv.aopkod = aop.aopkod)'
      'where SID = :SID')
    FieldOptions = []
    Left = 54
    Top = 150
    object dtsFVPSID: TStringField
      FieldName = 'SID'
      Required = True
      FixedChar = True
      Size = 22
    end
    object dtsFVPFAKTURA: TStringField
      FieldName = 'FAKTURA'
      Required = True
      Size = 10
    end
    object dtsFVPVYBER: TStringField
      FieldName = 'VYBER'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsFVPFAKTTYP: TStringField
      FieldName = 'FAKTTYP'
      Size = 5
    end
    object dtsFVPTYP: TSmallintField
      FieldName = 'TYP'
      Required = True
    end
    object dtsFVPREF_ZASILKA: TStringField
      FieldName = 'REF_ZASILKA'
      FixedChar = True
      Size = 22
    end
    object dtsFVPREFPLATCE: TIntegerField
      FieldName = 'REFPLATCE'
    end
    object dtsFVPAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Size = 10
    end
    object dtsFVPNAZEV: TStringField
      FieldName = 'NAZEV'
      Size = 100
    end
    object dtsFVPADRESA1: TStringField
      FieldName = 'ADRESA1'
      Size = 32
    end
    object dtsFVPADRESA2: TStringField
      FieldName = 'ADRESA2'
      Size = 32
    end
    object dtsFVPADRESA3: TStringField
      FieldName = 'ADRESA3'
      Size = 32
    end
    object dtsFVPPSC: TStringField
      FieldName = 'PSC'
      Size = 10
    end
    object dtsFVPZEME: TStringField
      FieldName = 'ZEME'
      Size = 32
    end
    object dtsFVPICO: TStringField
      FieldName = 'ICO'
      Size = 10
    end
    object dtsFVPDIC: TStringField
      FieldName = 'DIC'
      Size = 14
    end
    object dtsFVPPLA_EMAILS: TStringField
      FieldName = 'PLA_EMAILS'
      Size = 255
    end
    object dtsFVPUCETZKR: TStringField
      FieldName = 'UCETZKR'
      Size = 3
    end
    object dtsFVPSYMBVARIA: TStringField
      FieldName = 'SYMBVARIA'
      Size = 10
    end
    object dtsFVPSYMBKONST: TStringField
      FieldName = 'SYMBKONST'
      Size = 5
    end
    object dtsFVPOBJEDNAVKA: TStringField
      FieldName = 'OBJEDNAVKA'
      Size = 100
    end
    object dtsFVPOBJEDDATUM: TDateField
      FieldName = 'OBJEDDATUM'
    end
    object dtsFVPDATVYSTAVENI: TDateField
      FieldName = 'DATVYSTAVENI'
    end
    object dtsFVPDATDANPOV: TDateField
      FieldName = 'DATDANPOV'
    end
    object dtsFVPDATSPLATNOST: TDateField
      FieldName = 'DATSPLATNOST'
    end
    object dtsFVPFORMUHRADY: TStringField
      FieldName = 'FORMUHRADY'
      Size = 15
    end
    object dtsFVPPRILOHY: TStringField
      FieldName = 'PRILOHY'
      Size = 32
    end
    object dtsFVPSUMA00: TBCDField
      FieldName = 'SUMA00'
      Precision = 18
      Size = 3
    end
    object dtsFVPSUMA05: TBCDField
      FieldName = 'SUMA05'
      Precision = 18
      Size = 3
    end
    object dtsFVPSUMA22: TBCDField
      FieldName = 'SUMA22'
      Precision = 18
      Size = 3
    end
    object dtsFVPSUMAZAKLAD: TBCDField
      FieldName = 'SUMAZAKLAD'
      Precision = 18
      Size = 3
    end
    object dtsFVPDPH05: TBCDField
      FieldName = 'DPH05'
      Precision = 18
      Size = 3
    end
    object dtsFVPDPH22: TBCDField
      FieldName = 'DPH22'
      Precision = 18
      Size = 3
    end
    object dtsFVPSUMADPH: TBCDField
      FieldName = 'SUMADPH'
      Precision = 18
      Size = 3
    end
    object dtsFVPCENAMENA: TStringField
      FieldName = 'CENAMENA'
      Required = True
      Size = 3
    end
    object dtsFVPCELKEM: TBCDField
      FieldName = 'CELKEM'
      Precision = 18
      Size = 3
    end
    object dtsFVPCENAZALOHY: TBCDField
      FieldName = 'CENAZALOHY'
      Precision = 18
      Size = 3
    end
    object dtsFVPCENALIKV: TBCDField
      FieldName = 'CENALIKV'
      Precision = 18
      Size = 3
    end
    object dtsFVPCENAUHRAZENO: TBCDField
      FieldName = 'CENAUHRAZENO'
      Precision = 18
      Size = 3
    end
    object dtsFVPCENAZAOKR: TBCDField
      FieldName = 'CENAZAOKR'
      Precision = 18
      Size = 3
    end
    object dtsFVPCENAKURS: TBCDField
      FieldName = 'CENAKURS'
      Precision = 18
    end
    object dtsFVPCENASUMAKC: TBCDField
      FieldName = 'CENASUMAKC'
      Precision = 18
      Size = 3
    end
    object dtsFVPLIKVOK: TStringField
      FieldName = 'LIKVOK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsFVPDATUHRAZENO: TDateField
      FieldName = 'DATUHRAZENO'
    end
    object dtsFVPDOKLAD: TStringField
      FieldName = 'DOKLAD'
    end
    object dtsFVPUCTODATUM: TDateField
      FieldName = 'UCTODATUM'
    end
    object dtsFVPFAKTTEXT: TMemoField
      FieldName = 'FAKTTEXT'
      BlobType = ftMemo
      Size = 8
    end
    object dtsFVPTEXTBEFORE: TSmallintField
      FieldName = 'TEXTBEFORE'
    end
    object dtsFVPTEXTAFTER: TSmallintField
      FieldName = 'TEXTAFTER'
    end
    object dtsFVPPOZNAMKA: TMemoField
      FieldName = 'POZNAMKA'
      BlobType = ftMemo
      Size = 8
    end
    object dtsFVPNPOZ: TStringField
      FieldName = 'NPOZ'
      Size = 10
    end
    object dtsFVPVPOZ: TStringField
      FieldName = 'VPOZ'
      Size = 100
    end
    object dtsFVPSPZ: TStringField
      FieldName = 'SPZ'
      Size = 32
    end
    object dtsFVPDATNAKL: TDateField
      FieldName = 'DATNAKL'
    end
    object dtsFVPDATVYKL: TDateField
      FieldName = 'DATVYKL'
    end
    object dtsFVPMNAKL: TStringField
      FieldName = 'MNAKL'
      Size = 40
    end
    object dtsFVPMVYKL: TStringField
      FieldName = 'MVYKL'
      Size = 40
    end
    object dtsFVPSUBSTRAT: TStringField
      FieldName = 'SUBSTRAT'
      Size = 100
    end
    object dtsFVPCREADATE: TDateTimeField
      FieldName = 'CREADATE'
    end
    object dtsFVPCREAID: TStringField
      FieldName = 'CREAID'
      Size = 10
    end
    object dtsFVPUPDID: TStringField
      FieldName = 'UPDID'
      Size = 10
    end
    object dtsFVPUPDDATE: TDateTimeField
      FieldName = 'UPDDATE'
    end
    object dtsFVPSTATEUSER: TIntegerField
      FieldName = 'STATEUSER'
    end
    object dtsFVPSTAV: TSmallintField
      FieldName = 'STAV'
    end
    object dtsFVPKOD_ADPOHODA: TIntegerField
      FieldName = 'KOD_ADPOHODA'
    end
  end
  object dtsFD: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'ID=REQUIRED'
      'TYP=REQUIRED'
      'FADOSLE.SID=REQUIRED'
      'FADOSLE.FAKTURADO=REQUIRED'
      'FADOSLE.VYBER=REQUIRED'
      'FADOSLE.LIKVOK=REQUIRED'
      'FADOSLE.PREVOD=REQUIRED'
      'FADOSLE.ISPOLOZKY=REQUIRED')
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE FV SET'
      '   STAV = :STAV'
      'WHERE'
      '   SID = :OLD_SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT fadosle.*, aop.kod_adpohoda'
      'from fadosle'
      '   left outer join aop on (fadosle.aopkod = aop.aopkod)'
      'where SID = :SID')
    FieldOptions = []
    Left = 54
    Top = 222
    object dtsFDSID: TStringField
      FieldName = 'SID'
      Origin = 'FADOSLE.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 22
    end
    object dtsFDFAKTURADO: TStringField
      FieldName = 'FAKTURADO'
      Origin = 'FADOSLE.FAKTURADO'
      Required = True
      Size = 10
    end
    object dtsFDVYBER: TStringField
      FieldName = 'VYBER'
      Origin = 'FADOSLE.VYBER'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsFDVARIABILNI: TStringField
      FieldName = 'VARIABILNI'
      Origin = 'FADOSLE.VARIABILNI'
    end
    object dtsFDREF_ZASILKA: TStringField
      FieldName = 'REF_ZASILKA'
      Origin = 'FADOSLE.REF_ZASILKA'
      FixedChar = True
      Size = 22
    end
    object dtsFDDATDORUCENI: TDateField
      FieldName = 'DATDORUCENI'
      Origin = 'FADOSLE.DATDORUCENI'
    end
    object dtsFDDATVYSTAVENI: TDateField
      FieldName = 'DATVYSTAVENI'
      Origin = 'FADOSLE.DATVYSTAVENI'
    end
    object dtsFDDATSPLATNOST: TDateField
      FieldName = 'DATSPLATNOST'
      Origin = 'FADOSLE.DATSPLATNOST'
    end
    object dtsFDDATDANPOV: TDateField
      FieldName = 'DATDANPOV'
      Origin = 'FADOSLE.DATDANPOV'
    end
    object dtsFDAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Origin = 'FADOSLE.AOPKOD'
      Size = 10
    end
    object dtsFDNAZEV: TStringField
      FieldName = 'NAZEV'
      Origin = 'FADOSLE.NAZEV'
      Size = 100
    end
    object dtsFDADRESA1: TStringField
      FieldName = 'ADRESA1'
      Origin = 'FADOSLE.ADRESA1'
      Size = 32
    end
    object dtsFDADRESA2: TStringField
      FieldName = 'ADRESA2'
      Origin = 'FADOSLE.ADRESA2'
      Size = 32
    end
    object dtsFDADRESA3: TStringField
      FieldName = 'ADRESA3'
      Origin = 'FADOSLE.ADRESA3'
      Size = 32
    end
    object dtsFDPSC: TStringField
      FieldName = 'PSC'
      Origin = 'FADOSLE.PSC'
      Size = 10
    end
    object dtsFDZEME: TStringField
      FieldName = 'ZEME'
      Origin = 'FADOSLE.ZEME'
      Size = 32
    end
    object dtsFDICO: TStringField
      FieldName = 'ICO'
      Origin = 'FADOSLE.ICO'
      Size = 10
    end
    object dtsFDDIC: TStringField
      FieldName = 'DIC'
      Origin = 'FADOSLE.DIC'
      Size = 14
    end
    object dtsFDFORMUHRADY: TStringField
      FieldName = 'FORMUHRADY'
      Origin = 'FADOSLE.FORMUHRADY'
      Size = 15
    end
    object dtsFDSUMA00: TBCDField
      FieldName = 'SUMA00'
      Origin = 'FADOSLE.SUMA00'
      Precision = 18
      Size = 3
    end
    object dtsFDSUMA05: TBCDField
      FieldName = 'SUMA05'
      Origin = 'FADOSLE.SUMA05'
      Precision = 18
      Size = 3
    end
    object dtsFDSUMA22: TBCDField
      FieldName = 'SUMA22'
      Origin = 'FADOSLE.SUMA22'
      Precision = 18
      Size = 3
    end
    object dtsFDSUMAZAKLAD: TBCDField
      FieldName = 'SUMAZAKLAD'
      Origin = 'FADOSLE.SUMAZAKLAD'
      Precision = 18
      Size = 3
    end
    object dtsFDDPH05: TBCDField
      FieldName = 'DPH05'
      Origin = 'FADOSLE.DPH05'
      Precision = 18
      Size = 3
    end
    object dtsFDDPH22: TBCDField
      FieldName = 'DPH22'
      Origin = 'FADOSLE.DPH22'
      Precision = 18
      Size = 3
    end
    object dtsFDSUMADPH: TBCDField
      FieldName = 'SUMADPH'
      Origin = 'FADOSLE.SUMADPH'
      Precision = 18
      Size = 3
    end
    object dtsFDCENAMENA: TStringField
      FieldName = 'CENAMENA'
      Origin = 'FADOSLE.CENAMENA'
      Size = 3
    end
    object dtsFDCENAKURZ: TBCDField
      FieldName = 'CENAKURZ'
      Origin = 'FADOSLE.CENAKURZ'
      Precision = 18
    end
    object dtsFDCELKEM: TBCDField
      FieldName = 'CELKEM'
      Origin = 'FADOSLE.CELKEM'
      Precision = 18
      Size = 3
    end
    object dtsFDCELKEMKC: TBCDField
      FieldName = 'CELKEMKC'
      Origin = 'FADOSLE.CELKEMKC'
      Precision = 18
      Size = 3
    end
    object dtsFDCENAZALOHY: TBCDField
      FieldName = 'CENAZALOHY'
      Origin = 'FADOSLE.CENAZALOHY'
      Precision = 18
      Size = 3
    end
    object dtsFDCENALIKV: TBCDField
      FieldName = 'CENALIKV'
      Origin = 'FADOSLE.CENALIKV'
      Precision = 18
      Size = 3
    end
    object dtsFDCENAUHRAZENO: TBCDField
      FieldName = 'CENAUHRAZENO'
      Origin = 'FADOSLE.CENAUHRAZENO'
      Precision = 18
      Size = 3
    end
    object dtsFDDATUHRAZENO: TDateField
      FieldName = 'DATUHRAZENO'
      Origin = 'FADOSLE.DATUHRAZENO'
    end
    object dtsFDLIKVOK: TStringField
      FieldName = 'LIKVOK'
      Origin = 'FADOSLE.LIKVOK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsFDDOKLAD: TStringField
      FieldName = 'DOKLAD'
      Origin = 'FADOSLE.DOKLAD'
    end
    object dtsFDUCTODATUM: TDateField
      FieldName = 'UCTODATUM'
      Origin = 'FADOSLE.UCTODATUM'
    end
    object dtsFDPOZNAMKA: TMemoField
      FieldName = 'POZNAMKA'
      Origin = 'FADOSLE.POZNAMKA'
      BlobType = ftMemo
      Size = 8
    end
    object dtsFDCREADATE: TDateTimeField
      FieldName = 'CREADATE'
      Origin = 'FADOSLE.CREADATE'
    end
    object dtsFDCREAID: TStringField
      FieldName = 'CREAID'
      Origin = 'FADOSLE.CREAID'
      Size = 10
    end
    object dtsFDUPDID: TStringField
      FieldName = 'UPDID'
      Origin = 'FADOSLE.UPDID'
      Size = 10
    end
    object dtsFDUPDDATE: TDateTimeField
      FieldName = 'UPDDATE'
      Origin = 'FADOSLE.UPDDATE'
    end
    object dtsFDUCET_CISLO: TStringField
      FieldName = 'UCET_CISLO'
      Origin = 'FADOSLE.UCET_CISLO'
      Size = 45
    end
    object dtsFDUCET_BANKA: TStringField
      FieldName = 'UCET_BANKA'
      Origin = 'FADOSLE.UCET_BANKA'
      Size = 11
    end
    object dtsFDUCET_IBAN: TStringField
      FieldName = 'UCET_IBAN'
      Origin = 'FADOSLE.UCET_IBAN'
      Size = 30
    end
    object dtsFDUCET_SWIFT: TStringField
      FieldName = 'UCET_SWIFT'
      Origin = 'FADOSLE.UCET_SWIFT'
      Size = 11
    end
    object dtsFDUCET_SPECIF: TStringField
      FieldName = 'UCET_SPECIF'
      Origin = 'FADOSLE.UCET_SPECIF'
    end
    object dtsFDSTATEUSER: TSmallintField
      FieldName = 'STATEUSER'
      Origin = 'FADOSLE.STATEUSER'
    end
    object dtsFDSTAV: TSmallintField
      FieldName = 'STAV'
      Origin = 'FADOSLE.STAV'
    end
    object dtsFDPREVOD: TStringField
      FieldName = 'PREVOD'
      Origin = 'FADOSLE.PREVOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsFDISPOLOZKY: TStringField
      FieldName = 'ISPOLOZKY'
      Origin = 'FADOSLE.ISPOLOZKY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtsFDKOD_ADPOHODA: TIntegerField
      FieldName = 'KOD_ADPOHODA'
    end
    object dtsFDDATDANPOVDOD: TDateField
      FieldName = 'DATDANPOVDOD'
    end
  end
  object dsdsFV: TDataSource
    AutoEdit = False
    DataSet = dtsFVP
    Left = 56
    Top = 88
  end
  object EDF_PohodaData: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F310000001600000001000300494400040000000300
      060052656C506B00040000000300090052656C54704450480004000000030009
      0052656C547046616B00040000000300090052656C466F725568000400000003
      0008005A616F6B72465600040000000300040053656C00040000000300080050
      6F6C6F7A6B7900040000000300060052656C4352000F00000001000600436973
      6C6F000F0000000100070056617253796D00000000000E000600535465787400
      0400000009000600446174756D00040000000900070044617455635000040000
      000900090044617453706C6174000400000003000800547053746F726E000400
      0000090009004461745A64506C6E0008000000070004004B6330000800000007
      0004004B63310008000000070007004B63445048310008000000070004004B63
      320008000000070007004B63445048320008000000070009004B635A616C6F68
      610008000000070009004B6343656C6B656D0008000000070007004B634C696B
      760008000000070004004B63550008000000070008004B635A616F6B72000800
      0000070004004B635000080000000700070044656E4555520008000000070004
      00436D30000800000007000900436D43656C6B656D000800000007000700436D
      4C696B76000800000007000400436D55000800000007000800436D5A616F6B72
      0064000000010006004669726D61002800000001000600557476617200280000
      0001000600556C6963650028000000010005004F626563000A00000001000400
      70736300140000000100040069636F0014000000010004006469630014000000
      01000700556365746E690064000000010009004369736C6F4F626A0008000000
      07000700436D4B757273000800000007000700436D4D6E6F7A00080000000600
      0600526566434D00020000000400060052656641440006000000010005004D65
      6E61000300000001000800556365745A6B7200}
    SortOptions = []
    OnNewRecord = EDF_PohodaDataNewRecord
    Left = 262
    Top = 202
    object EDF_PohodaDataID: TStringField
      FieldName = 'ID'
      Size = 22
    end
    object EDF_PohodaDataRelPk: TIntegerField
      FieldName = 'RelPk'
    end
    object EDF_PohodaDataRelTpDPH: TIntegerField
      FieldName = 'RelTpDPH'
    end
    object EDF_PohodaDataRelTpFak: TIntegerField
      FieldName = 'RelTpFak'
    end
    object EDF_PohodaDataRelForUh: TIntegerField
      FieldName = 'RelForUh'
    end
    object EDF_PohodaDataZaokrFV: TIntegerField
      FieldName = 'ZaokrFV'
    end
    object EDF_PohodaDataSel: TIntegerField
      FieldName = 'Sel'
    end
    object EDF_PohodaDataPolozky: TIntegerField
      FieldName = 'Polozky'
    end
    object EDF_PohodaDataRelCR: TIntegerField
      FieldName = 'RelCR'
    end
    object EDF_PohodaDataCislo: TStringField
      FieldName = 'Cislo'
      Size = 15
    end
    object EDF_PohodaDataVarSym: TStringField
      FieldName = 'VarSym'
      Size = 15
    end
    object EDF_PohodaDataSText: TMemoField
      FieldName = 'SText'
      BlobType = ftMemo
    end
    object EDF_PohodaDataDatum: TDateField
      FieldName = 'Datum'
    end
    object EDF_PohodaDataDatUcP: TDateField
      FieldName = 'DatUcP'
    end
    object EDF_PohodaDataDatZdPln: TDateField
      FieldName = 'DatZdPln'
    end
    object EDF_PohodaDataDatSplat: TDateField
      FieldName = 'DatSplat'
    end
    object EDF_PohodaDataDatKH: TDateField
      FieldName = 'DatKH'
    end
    object EDF_PohodaDataTpStorn: TIntegerField
      FieldName = 'TpStorn'
    end
    object EDF_PohodaDataKc0: TCurrencyField
      FieldName = 'Kc0'
    end
    object EDF_PohodaDataKc1: TCurrencyField
      FieldName = 'Kc1'
    end
    object EDF_PohodaDataKcDPH1: TCurrencyField
      FieldName = 'KcDPH1'
    end
    object EDF_PohodaDataKc2: TCurrencyField
      FieldName = 'Kc2'
    end
    object EDF_PohodaDataKcDPH2: TCurrencyField
      FieldName = 'KcDPH2'
    end
    object EDF_PohodaDataKcZaloha: TCurrencyField
      FieldName = 'KcZaloha'
    end
    object EDF_PohodaDataKcCelkem: TCurrencyField
      FieldName = 'KcCelkem'
    end
    object EDF_PohodaDataKcLikv: TCurrencyField
      FieldName = 'KcLikv'
    end
    object EDF_PohodaDataKcU: TCurrencyField
      FieldName = 'KcU'
    end
    object EDF_PohodaDataKcZaokr: TCurrencyField
      FieldName = 'KcZaokr'
    end
    object EDF_PohodaDataKcP: TCurrencyField
      FieldName = 'KcP'
    end
    object EDF_PohodaDataDenEUR: TCurrencyField
      FieldName = 'DenEUR'
    end
    object EDF_PohodaDataCm0: TCurrencyField
      FieldName = 'Cm0'
    end
    object EDF_PohodaDataCmCelkem: TCurrencyField
      FieldName = 'CmCelkem'
    end
    object EDF_PohodaDataCmLikv: TCurrencyField
      FieldName = 'CmLikv'
    end
    object EDF_PohodaDataCmU: TCurrencyField
      FieldName = 'CmU'
    end
    object EDF_PohodaDataCmZaokr: TCurrencyField
      FieldName = 'CmZaokr'
    end
    object EDF_PohodaDataPohodaID: TIntegerField
      FieldName = 'PohodaID'
    end
    object EDF_PohodaDataFirma: TStringField
      FieldName = 'Firma'
      Size = 100
    end
    object EDF_PohodaDataUtvar: TStringField
      FieldName = 'Utvar'
      Size = 40
    end
    object EDF_PohodaDataUlice: TStringField
      FieldName = 'Ulice'
      Size = 40
    end
    object EDF_PohodaDataObec: TStringField
      FieldName = 'Obec'
      Size = 40
    end
    object EDF_PohodaDatapsc: TStringField
      FieldName = 'psc'
      Size = 10
    end
    object EDF_PohodaDataico: TStringField
      FieldName = 'ico'
    end
    object EDF_PohodaDatadic: TStringField
      FieldName = 'dic'
    end
    object EDF_PohodaDataUcetni: TStringField
      FieldName = 'Ucetni'
    end
    object EDF_PohodaDataCisloObj: TStringField
      FieldName = 'CisloObj'
      Size = 100
    end
    object EDF_PohodaDataCmKurs: TCurrencyField
      FieldName = 'CmKurs'
    end
    object EDF_PohodaDataCmMnoz: TCurrencyField
      FieldName = 'CmMnoz'
    end
    object EDF_PohodaDataRefCM: TFloatField
      FieldName = 'RefCM'
    end
    object EDF_PohodaDataRefAD: TWordField
      FieldName = 'RefAD'
    end
    object EDF_PohodaDataMena: TStringField
      FieldName = 'Mena'
      Size = 6
    end
    object EDF_PohodaDataUcetZkr: TStringField
      FieldName = 'UcetZkr'
      Size = 3
    end
    object EDF_PohodaDataUcetNo: TStringField
      FieldName = 'UcetNo'
    end
    object EDF_PohodaDataUcetBanka: TStringField
      FieldName = 'UcetBanka'
      Size = 4
    end
  end
end
