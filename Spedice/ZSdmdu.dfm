object ZSdmd: TZSdmd
  OldCreateOrder = False
  OnInitModule = jfsDefaultModuleInitModule
  Height = 612
  Width = 877
  object dsZasilky: TDataSource
    AutoEdit = False
    DataSet = Zasilky
    OnDataChange = dsZasilkyDataChange
    Left = 140
    Top = 412
  end
  object dsZasilkySeznam: TDataSource
    AutoEdit = False
    DataSet = ZasilkySeznam
    Left = 324
    Top = 60
  end
  object dsZAPlatci: TDataSource
    DataSet = ZAPlatci
    OnDataChange = dsZAPlatciDataChange
    Left = 139
    Top = 542
  end
  object dsZAPohyby: TDataSource
    AutoEdit = False
    DataSet = ZAPohyby
    Left = 148
    Top = 60
  end
  object ZAPohyby: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSNAKVYK '
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE ZSNAKVYK SET '
      #9'ZSNAKVYK.TYP = :TYP, '
      #9'ZSNAKVYK.PORADI = :PORADI, '
      ' '#9'ZSNAKVYK.ADRESAPOPIS = :ADRESAPOPIS, '
      #9'ZSNAKVYK.ADRESA3 = :ADRESA3, '
      #9'ZSNAKVYK.PSC = :PSC, '
      #9'ZSNAKVYK.ZEMEKOD = :ZEMEKOD,'
      #9'ZSNAKVYK.SPOJENI = :SPOJENI, '
      #9'ZSNAKVYK.DATUM = :DATUM, '
      #9'ZSNAKVYK.CAS = :CAS'
      'WHERE ZSNAKVYK.ID = :ID')
    GeneratorLinks.Strings = (
      'ID = GEN_ZSNAKVYK_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSNAKVYK'
      '    ( ID, REF_ZASILKA, TYP, PORADI, ADRESAPOPIS, ADRESA3,'
      '      PSC, ZEMEKOD, SPOJENI, DATUM, CAS )'
      'VALUES'
      '  (:ID, :REF_ZASILKA, :TYP, :PORADI , :ADRESAPOPIS, :ADRESA3,'
      '   :PSC, :ZEMEKOD, :SPOJENI, :DATUM, :CAS)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = ZSKontrolaVyrizeno
    BeforeDelete = ZSKontrolaVyrizeno
    BeforeInsert = ZSKontrolaVyrizeno
    BeforePost = ZAPohybyBeforePost
    AfterPost = ZAPohybyAfterPost
    OnNewRecord = ZAPohybyNewRecord
    DataSource = dsZasilky
    SQL.Strings = (
      'SELECT * '
      'FROM SP_ZSNakVykSeznam(:SID)'
      'ORDER BY poradi')
    FieldOptions = []
    Left = 205
    Top = 480
    object ZAPohybyID: TIntegerField
      Tag = 9
      FieldName = 'ID'
      Origin = 'SP_ZSNAKVYKSEZNAM.ID'
      Visible = False
    end
    object ZAPohybyREF_ZASILKA: TStringField
      Tag = 9
      DisplayLabel = 'ID Z'#225'silky'
      FieldName = 'REF_ZASILKA'
      Origin = 'SP_ZSNAKVYKSEZNAM.REF_ZASILKA'
      Visible = False
      Size = 22
    end
    object ZAPohybyTyp: TStringField
      DisplayLabel = 'Typ'
      FieldName = 'TYP'
      Origin = 'SP_ZSNAKVYKSEZNAM.TYP'
      Size = 2
    end
    object ZAPohybyPopis: TStringField
      Tag = 9
      DisplayLabel = 'Popis'
      DisplayWidth = 10
      FieldName = 'POPIS'
      Origin = 'SP_ZSNAKVYKSEZNAM.POPIS'
      Size = 32
    end
    object ZAPohybyporadi: TStringField
      DisplayLabel = 'Po'#345'ad'#237
      FieldName = 'PORADI'
      Origin = 'SP_ZSNAKVYKSEZNAM.PORADI'
      Size = 5
    end
    object ZAPohybyZASILKA: TStringField
      Tag = 9
      DisplayLabel = 'Z'#225'silka'
      FieldName = 'ZASILKA'
      Origin = 'SP_ZSNAKVYKSEZNAM.ZASILKA'
      Visible = False
      Size = 10
    end
    object ZAPohybyAdresaPopis: TMemoField
      DisplayLabel = 'Adresa'
      FieldName = 'ADRESAPOPIS'
      Origin = 'SP_ZSNAKVYKSEZNAM.ADRESAPOPIS'
      BlobType = ftMemo
      Size = 8
    end
    object ZAPohybyADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'SP_ZSNAKVYKSEZNAM.ADRESA3'
      Size = 32
    end
    object ZAPohybyPSC: TStringField
      DisplayLabel = 'Ps'#269
      FieldName = 'PSC'
      Origin = 'SP_ZSNAKVYKSEZNAM.PSC'
      Size = 10
    end
    object ZAPohybyZEMEKOD: TStringField
      DisplayLabel = 'K'#243'd st'#225'tu'
      FieldName = 'ZEMEKOD'
      Origin = 'SP_ZSNAKVYKSEZNAM.ZEMEKOD'
      Size = 4
    end
    object ZAPohybySPOJENI: TMemoField
      DisplayLabel = 'Spojen'#237
      FieldName = 'SPOJENI'
      Origin = 'SP_ZSNAKVYKSEZNAM.SPOJENI'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
    object ZAPohybyDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      FieldName = 'DATUM'
      Origin = 'SP_ZSNAKVYKSEZNAM.DATUM'
    end
    object ZAPohybyCAS: TStringField
      DisplayLabel = #268'as'
      DisplayWidth = 10
      FieldName = 'CAS'
      Origin = 'SP_ZSNAKVYKSEZNAM.CAS'
      Size = 32
    end
  end
  object Zasilky: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '1'
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZS WHERE SID = :OLD_SID')
    EditSQL.Strings = (
      'UPDATE ZS SET'
      '   INTOBJ = :INTOBJ,'
      '   ZASILKA= :ZASILKA,'
      '   DATPORIZENI = :DATPORIZENI,'
      '   REF_ZSPODMINKY = :REF_ZSPODMINKY,'
      '   REF_POTVRZENI = :REF_POTVRZENI,'
      '   TYP = :TYP,'
      '   DISPECER = :DISPECER,'
      '   INTSTREDISKO = :INTSTREDISKO,'
      '   AOPKOD_OBJ = :AOPKOD_OBJ,'
      '   AOPKOD_DOP = :AOPKOD_DOP,'
      '   SUBSTRATINFO = :SUBSTRATINFO,'
      '   SUBSTRAT = :SUBSTRAT,'
      '   HMBRUTTO = :HMBRUTTO,'
      '   HMTEXT = :HMTEXT,'
      '   CLO = :CLO,'
      '   VOZIDLO = :VOZIDLO,'
      '   PRIKAZ = :PRIKAZ,'
      '   AUTOSPZ = :AUTOSPZ,'
      '   CENASMLUVNI = :CENASMLUVNI,'
      '   CENAJEDNOTKY = :CENAJEDNOTKY,'
      '   CENAJEDNOTKA = :CENAJEDNOTKA,'
      '   CENASRAZKY = :CENASRAZKY,'
      '   CENADPHPROC = :CENADPHPROC,'
      '   CENADPH = :CENADPH,'
      '   CENASUMA = :CENASUMA,'
      '   CENAMENA = :CENAMENA,'
      '   CENAKURS = :CENAKURS,'
      '   PODMINKY = :PODMINKY,'
      '   DSPLATNOST = :D_SPLATNOST,'
      '   POZNAMKA = :POZNAMKA,'
      '   KRATKEINFO = :KRATKEINFO,'
      '   OBJ_EMAILS = :OBJ_EMAILS,'
      '   DOP_EMAILS = :DOP_EMAILS,'
      '   VYRIZENO   = :VYRIZENO,'
      '   UPDID = :UPDID,'
      '   UPDDATE = current_timestamp'
      'WHERE'
      '   SID = :SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZS'
      
        '   ( SID, ZASILKA,DATPORIZENI, REF_ZSPODMINKY, REF_POTVRZENI, IN' +
        'TOBJ, TYP, DISPECER, INTSTREDISKO,'
      '     AOPKOD_OBJ, AOPKOD_DOP, SUBSTRATINFO, SUBSTRAT, HMBRUTTO,'
      '     OBJ_EMAILS,DOP_EMAILS,'
      '     HMTEXT, VOZIDLO, PRIKAZ, AUTOSPZ, CLO,'
      '     CENASMLUVNI, CENAJEDNOTKY, CENAJEDNOTKA, CENASRAZKY,'
      '     CENADPHPROC, CENADPH, CENASUMA, CENAMENA, CENAKURS,'
      '     PODMINKY, DSPLATNOST, POZNAMKA,KRATKEINFO,'
      '     CREADATE, CREAID, UPDDATE, UPDID, STAV, INTTYPZAZNAMU )'
      'VALUES'
      
        '   ( :SID, :ZASILKA, :DATPORIZENI, :REF_ZSPODMINKY, :REF_POTVRZE' +
        'NI, :INTOBJ, :TYP, :DISPECER, :INTSTREDISKO,'
      
        '     :AOPKOD_OBJ, :AOPKOD_DOP, :SUBSTRATINFO, :SUBSTRAT, :HMBRUT' +
        'TO,'
      '     :OBJ_EMAILS, :DOP_EMAILS,'
      '     :HMTEXT, :VOZIDLO, :PRIKAZ, :AUTOSPZ, :CLO,'
      '     :CENASMLUVNI, :CENAJEDNOTKY, :CENAJEDNOTKA, :CENASRAZKY,'
      '     :CENADPHPROC, :CENADPH, :CENASUMA, :CENAMENA, :CENAKURS,'
      '     :PODMINKY, :D_SPLATNOST, :POZNAMKA,:KRATKEINFO,'
      
        '     CURRENT_TIMESTAMP, :CREAID, CURRENT_TIMESTAMP, :CREAID, 1, ' +
        '0'
      '     )')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = ZSKontrolaVyrizeno
    BeforeDelete = ZSKontrolaVyrizeno
    AfterOpen = ZasilkyAfterOpen
    BeforePost = ZasilkyBeforePost
    AfterPost = ZasilkyAfterPost
    OnCalcFields = ZasilkyCalcFields
    OnNewRecord = ZasilkyNewRecord
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT * from SP_ZSZAZNAM(:SID)')
    FieldOptions = []
    Left = 140
    Top = 357
    object ZasilkySID: TStringField
      Tag = 9
      FieldName = 'SID'
      Origin = 'SP_ZSZAZNAM.SID'
      Size = 22
    end
    object ZasilkyVYBER: TStringField
      Tag = 9
      DisplayLabel = 'X'
      FieldName = 'VYBER'
      Origin = 'SP_ZSZAZNAM.VYBER'
      Size = 1
    end
    object ZasilkyZASILKA: TStringField
      Tag = 9
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'SP_ZSZAZNAM.ZASILKA'
      Required = True
      Size = 10
    end
    object ZasilkyREF_ZSPODMINKY: TIntegerField
      Tag = 9
      DisplayLabel = 'Podm'#237'nky dopravce'
      FieldName = 'REF_ZSPODMINKY'
      Origin = 'SP_ZSZAZNAM.REF_ZSPODMINKY'
    end
    object ZasilkyREF_POTVRZENI: TIntegerField
      Tag = 9
      FieldName = 'REF_POTVRZENI'
      Origin = 'SP_ZSZAZNAM.REF_POTVRZENI'
    end
    object ZasilkyDATUM: TDateTimeField
      Tag = 9
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'SP_ZSZAZNAM.DATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object ZasilkyINTOBJ: TStringField
      DisplayLabel = 'Objedn'#225'vka'
      DisplayWidth = 10
      FieldName = 'INTOBJ'
      Origin = 'SP_ZSZAZNAM.INTOBJ'
    end
    object ZasilkyVOZIDLO: TStringField
      DisplayLabel = 'Po'#382'.prost'#345'edek'
      DisplayWidth = 10
      FieldName = 'VOZIDLO'
      Origin = 'SP_ZSZAZNAM.VOZIDLO'
      Size = 100
    end
    object ZasilkyAUTOSPZ: TStringField
      DisplayLabel = 'SPZ'
      DisplayWidth = 10
      FieldName = 'AUTOSPZ'
      Origin = 'SP_ZSZAZNAM.AUTOSPZ'
      Size = 32
    end
    object ZasilkyNSTAT: TStringField
      DisplayLabel = 'N.k'#243'd'
      FieldName = 'NSTAT'
      Origin = 'SP_ZSZAZNAM.NSTAT'
      Size = 4
    end
    object ZasilkyNPSC: TStringField
      DisplayLabel = 'N.Ps'#269
      FieldName = 'NPSC'
      Origin = 'SP_ZSZAZNAM.NPSC'
      Size = 10
    end
    object ZasilkyNMISTO: TStringField
      DisplayLabel = 'N.m'#283'sto'
      DisplayWidth = 15
      FieldName = 'NMISTO'
      Origin = 'SP_ZSZAZNAM.NMISTO'
      Size = 32
    end
    object ZasilkyVSTAT: TStringField
      DisplayLabel = 'V.k'#243'd'
      FieldName = 'VSTAT'
      Origin = 'SP_ZSZAZNAM.VSTAT'
      Size = 4
    end
    object ZasilkyVPSC: TStringField
      DisplayLabel = 'V.Ps'#269
      FieldName = 'VPSC'
      Origin = 'SP_ZSZAZNAM.VPSC'
      Size = 10
    end
    object ZasilkyVMISTO: TStringField
      DisplayLabel = 'V.M'#283'sto'
      DisplayWidth = 15
      FieldName = 'VMISTO'
      Origin = 'SP_ZSZAZNAM.VMISTO'
      Size = 32
    end
    object ZasilkyVDATUM: TDateTimeField
      DisplayLabel = 'V.Datum'
      DisplayWidth = 10
      FieldName = 'VDATUM'
      Origin = 'SP_ZSZAZNAM.VDATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object ZasilkyHMBRUTTO: TFloatField
      DisplayLabel = 'Hnotnost'
      DisplayWidth = 8
      FieldName = 'HMBRUTTO'
      Origin = 'SP_ZSZAZNAM.HMBRUTTO'
    end
    object ZasilkyHMTEXT: TStringField
      DisplayLabel = 'Hmotnost up'#345'esn'#283'n'#237
      FieldName = 'HMTEXT'
      Origin = 'SP_ZSZAZNAM.HMTEXT'
      Size = 50
    end
    object ZasilkyPRIKAZ: TStringField
      DisplayLabel = 'Z p'#345#237'kazu'
      DisplayWidth = 15
      FieldName = 'PRIKAZ'
      Origin = 'SP_ZSZAZNAM.PRIKAZ'
      Size = 100
    end
    object ZasilkyCENADOPRAVCE: TFloatField
      Tag = 9
      DisplayLabel = 'Cena Dop.'
      FieldName = 'CENADOPRAVCE'
      Origin = 'SP_ZSZAZNAM.CENADOPRAVCE'
    end
    object ZasilkyCENAPLATCI: TFloatField
      Tag = 9
      DisplayLabel = 'Cena Pl'#225'tci'
      FieldName = 'CENAPLATCI'
      Origin = 'SP_ZSZAZNAM.CENAPLATCI'
    end
    object ZasilkyCENAPROVIZE: TFloatField
      Tag = 9
      DisplayLabel = 'Provize'
      FieldName = 'CENAPROVIZE'
      Origin = 'SP_ZSZAZNAM.CENAPROVIZE'
    end
    object ZasilkyAOPKOD_DOP: TStringField
      DisplayLabel = 'AOP Dopravce'
      FieldName = 'AOPKOD_DOP'
      Origin = 'SP_ZSZAZNAM.AOPKOD_DOP'
      Size = 10
    end
    object ZasilkyAOPKOD_OBJ: TStringField
      DisplayLabel = 'AOP P'#345#237'kazce'
      FieldName = 'AOPKOD_OBJ'
      Origin = 'SP_ZSZAZNAM.AOPKOD_OBJ'
      Size = 10
    end
    object ZasilkySUBSTRATINFO: TStringField
      DisplayLabel = 'Zbo'#382#237
      DisplayWidth = 15
      FieldName = 'SUBSTRATINFO'
      Origin = 'SP_ZSZAZNAM.SUBSTRATINFO'
      Size = 60
    end
    object ZasilkySUBSTRAT: TMemoField
      DisplayLabel = 'Zbo'#382#237' detail'
      FieldName = 'SUBSTRAT'
      Origin = 'SP_ZSZAZNAM.SUBSTRAT'
      BlobType = ftMemo
      Size = 8
    end
    object ZasilkyCLO: TMemoField
      DisplayLabel = 'CLO detail'
      FieldName = 'CLO'
      Origin = 'SP_ZSZAZNAM.CLO'
      BlobType = ftMemo
      Size = 8
    end
    object ZasilkyCENASMLUVNI: TFloatField
      DisplayLabel = 'DC Z'#225'klad'
      FieldName = 'CENASMLUVNI'
      Origin = 'SP_ZSZAZNAM.CENASMLUVNI'
      OnChange = DopravceCalcCena
    end
    object ZasilkyCENAJEDNOTKY: TFloatField
      DisplayLabel = 'DC Jednotky'
      FieldName = 'CENAJEDNOTKY'
      Origin = 'SP_ZSZAZNAM.CENAJEDNOTKY'
      OnChange = DopravceCalcCena
    end
    object ZasilkyCENAJEDNOTKA: TStringField
      DisplayLabel = 'DC Jedn.'
      FieldName = 'CENAJEDNOTKA'
      Origin = 'SP_ZSZAZNAM.CENAJEDNOTKA'
      Size = 10
    end
    object ZasilkyCENASRAZKY: TFloatField
      DisplayLabel = 'DC sr'#225#382'ky'
      FieldName = 'CENASRAZKY'
      Origin = 'SP_ZSZAZNAM.CENASRAZKY'
      OnChange = DopravceCalcCena
    end
    object ZasilkyCENADPHPROC: TFloatField
      DisplayLabel = 'DPH'
      FieldName = 'CENADPHPROC'
      Origin = 'SP_ZSZAZNAM.CENADPHPROC'
      OnChange = DopravceCalcCena
      DisplayFormat = '#%'
      MaxValue = 100.000000000000000000
    end
    object ZasilkyCENADPH: TFloatField
      DisplayLabel = 'DC Dph'
      FieldName = 'CENADPH'
      Origin = 'SP_ZSZAZNAM.CENADPH'
    end
    object ZasilkyCENASUMA: TFloatField
      DisplayLabel = 'DC Celkem'
      FieldName = 'CENASUMA'
      Origin = 'SP_ZSZAZNAM.CENASUMA'
    end
    object ZasilkyCENAMENA: TStringField
      DisplayLabel = 'DC M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'SP_ZSZAZNAM.CENAMENA'
      OnChange = ZasilkyCENAMENAChange
      Size = 3
    end
    object ZasilkyCENAKURS: TFloatField
      DisplayLabel = 'DC Kurs m'#283'ny'
      FieldName = 'CENAKURS'
      Origin = 'SP_ZSZAZNAM.CENAKURS'
      OnChange = DopravceCalcCena
    end
    object ZasilkyCENASAZBADPH: TSmallintField
      DisplayLabel = 'DC Sazba DPH'
      FieldName = 'CENASAZBADPH'
    end
    object ZasilkyPODMINKY: TStringField
      DisplayLabel = 'DC Podm'#237'nky'
      FieldName = 'PODMINKY'
      Origin = 'SP_ZSZAZNAM.PODMINKY'
      Size = 50
    end
    object ZasilkyPOZNAMKA: TMemoField
      DisplayLabel = 'Pozn'#225'mka'
      FieldName = 'POZNAMKA'
      Origin = 'SP_ZSZAZNAM.POZNAMKA'
      BlobType = ftMemo
      Size = 8
    end
    object ZasilkyCREADATE: TDateTimeField
      Tag = 9
      DisplayLabel = 'Zal.datum'
      DisplayWidth = 8
      FieldName = 'CREADATE'
      Origin = 'SP_ZSZAZNAM.CREADATE'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object ZasilkyCREAID: TStringField
      Tag = 9
      DisplayLabel = 'Zalo'#382'il'
      DisplayWidth = 5
      FieldName = 'CREAID'
      Origin = 'SP_ZSZAZNAM.CREAID'
      Size = 10
    end
    object ZasilkyUPDDATE: TDateTimeField
      Tag = 9
      DisplayLabel = 'Opr.datum'
      DisplayWidth = 8
      FieldName = 'UPDDATE'
      Origin = 'SP_ZSZAZNAM.UPDDATE'
      DisplayFormat = 'dd.mm hh:mm'
    end
    object ZasilkyUPDID: TStringField
      Tag = 9
      DisplayLabel = 'Opravil'
      DisplayWidth = 5
      FieldName = 'UPDID'
      Origin = 'SP_ZSZAZNAM.UPDID'
      Size = 10
    end
    object ZasilkySTAV: TIntegerField
      Tag = 9
      DisplayLabel = 'Stav'
      DisplayWidth = 2
      FieldName = 'STAV'
      Origin = 'SP_ZSZAZNAM.STAV'
    end
    object ZasilkyDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      FieldName = 'DISPECER'
      Origin = 'SP_ZSZAZNAM.DISPECER'
      Size = 10
    end
    object ZasilkyIntStredisko: TStringField
      DisplayLabel = 'St'#345'edisko'
      FieldName = 'INTSTREDISKO'
      Origin = 'SP_ZSZAZNAM.INTSTREDISKO'
      Size = 2
    end
    object ZasilkyTyp: TStringField
      FieldName = 'TYP'
      Origin = 'SP_ZSZAZNAM.TYP'
      Size = 15
    end
    object ZasilkyIntTypZaznamu: TSmallintField
      Tag = 9
      FieldName = 'INTTYPZAZNAMU'
      Origin = 'SP_ZSZAZNAM.INTTYPZAZNAMU'
    end
    object ZasilkyMESIC: TStringField
      Tag = 9
      FieldName = 'MESIC'
      Origin = 'SP_ZSZAZNAM.MESIC'
      Size = 7
    end
    object ZasilkyIntPoznamka: TMemoField
      DisplayLabel = 'Intern'#237' pozn'#225'mka'
      FieldName = 'INTPOZNAMKA'
      Origin = 'SP_ZSZAZNAM.INTPOZNAMKA'
      BlobType = ftMemo
      Size = 8
    end
    object ZasilkyD_Nazev: TStringField
      Tag = 9
      FieldName = 'D_NAZEV'
      Origin = 'SP_ZSZAZNAM.D_NAZEV'
      Size = 100
    end
    object ZasilkyD_ADRESA: TStringField
      Tag = 9
      FieldName = 'D_ADRESA'
      Origin = 'SP_ZSZAZNAM.D_ADRESA'
      Size = 32
    end
    object ZasilkyD_MESTO: TStringField
      Tag = 9
      FieldName = 'D_MESTO'
      Origin = 'SP_ZSZAZNAM.D_MESTO'
      Size = 32
    end
    object ZasilkyD_PSC: TStringField
      Tag = 9
      FieldName = 'D_PSC'
      Origin = 'SP_ZSZAZNAM.D_PSC'
      Size = 10
    end
    object ZasilkyD_KODZEME: TStringField
      Tag = 9
      FieldName = 'D_KODZEME'
      Origin = 'SP_ZSZAZNAM.D_KODZEME'
      Size = 4
    end
    object ZasilkyD_ICO: TStringField
      Tag = 9
      FieldName = 'D_ICO'
      Origin = 'SP_ZSZAZNAM.D_ICO'
      Size = 10
    end
    object ZasilkyD_DIC: TStringField
      Tag = 9
      FieldName = 'D_DIC'
      Origin = 'SP_ZSZAZNAM.D_DIC'
      Size = 14
    end
    object ZasilkyD_TELEFON: TStringField
      Tag = 9
      FieldName = 'D_TELEFON'
      Origin = 'SP_ZSZAZNAM.D_TELEFON'
      Size = 24
    end
    object ZasilkyD_FAX: TStringField
      Tag = 9
      FieldName = 'D_FAX'
      Origin = 'SP_ZSZAZNAM.D_FAX'
      Size = 24
    end
    object ZasilkyD_GSM: TStringField
      Tag = 9
      FieldName = 'D_GSM'
      Origin = 'SP_ZSZAZNAM.D_GSM'
      Size = 24
    end
    object ZasilkyD_EMAIL: TStringField
      Tag = 9
      FieldName = 'D_EMAIL'
      Origin = 'SP_ZSZAZNAM.D_EMAIL'
      Size = 100
    end
    object ZasilkyD_KODSTBS: TStringField
      Tag = 9
      FieldName = 'D_KODSTBS'
      Origin = 'SP_ZSZAZNAM.D_KODSTBS'
      Size = 15
    end
    object ZasilkyD_SPLATNOST: TIntegerField
      Tag = 9
      FieldName = 'D_SPLATNOST'
      Origin = 'SP_ZSZAZNAM.D_SPLATNOST'
    end
    object ZasilkyP_Nazev: TStringField
      Tag = 9
      FieldName = 'P_NAZEV'
      Origin = 'SP_ZSZAZNAM.P_NAZEV'
      Size = 100
    end
    object ZasilkyP_ADRESA: TStringField
      Tag = 9
      FieldName = 'P_ADRESA'
      Origin = 'SP_ZSZAZNAM.P_ADRESA'
      Size = 32
    end
    object ZasilkyP_MESTO: TStringField
      Tag = 9
      FieldName = 'P_MESTO'
      Origin = 'SP_ZSZAZNAM.P_MESTO'
      Size = 32
    end
    object ZasilkyP_PSC: TStringField
      Tag = 9
      FieldName = 'P_PSC'
      Origin = 'SP_ZSZAZNAM.P_PSC'
      Size = 10
    end
    object ZasilkyP_KODZEME: TStringField
      Tag = 9
      FieldName = 'P_KODZEME'
      Origin = 'SP_ZSZAZNAM.P_KODZEME'
      Size = 4
    end
    object ZasilkyP_ICO: TStringField
      Tag = 9
      FieldName = 'P_ICO'
      Origin = 'SP_ZSZAZNAM.P_ICO'
      Size = 10
    end
    object ZasilkyP_DIC: TStringField
      Tag = 9
      FieldName = 'P_DIC'
      Origin = 'SP_ZSZAZNAM.P_DIC'
      Size = 14
    end
    object ZasilkyP_TELEFON: TStringField
      Tag = 9
      FieldName = 'P_TELEFON'
      Origin = 'SP_ZSZAZNAM.P_TELEFON'
      Size = 24
    end
    object ZasilkyP_FAX: TStringField
      Tag = 9
      FieldName = 'P_FAX'
      Origin = 'SP_ZSZAZNAM.P_FAX'
      Size = 24
    end
    object ZasilkyP_GSM: TStringField
      Tag = 9
      FieldName = 'P_GSM'
      Origin = 'SP_ZSZAZNAM.P_GSM'
      Size = 24
    end
    object ZasilkyP_EMAIL: TStringField
      Tag = 9
      FieldName = 'P_EMAIL'
      Origin = 'SP_ZSZAZNAM.P_EMAIL'
      Size = 100
    end
    object ZasilkyP_KODSTBS: TStringField
      Tag = 9
      FieldName = 'P_KODSTBS'
      Origin = 'SP_ZSZAZNAM.P_KODSTBS'
      Size = 15
    end
    object ZasilkyP_SPLATNOST: TIntegerField
      Tag = 9
      FieldName = 'P_SPLATNOST'
      Origin = 'SP_ZSZAZNAM.P_SPLATNOST'
    end
    object ZasilkyD_POBOCKA: TStringField
      Tag = 9
      FieldName = 'D_POBOCKA'
      Origin = 'SP_ZSZAZNAM.D_POBOCKA'
      Size = 32
    end
    object ZasilkyP_POBOCKA: TStringField
      Tag = 9
      FieldName = 'P_POBOCKA'
      Origin = 'SP_ZSZAZNAM.P_POBOCKA'
      Size = 32
    end
    object ZasilkyPODMINKY_DOPRAVCE: TMemoField
      Tag = 9
      DisplayLabel = 'Dohodnut'#233' podm'#237'nky'
      FieldName = 'PODMINKY_DOPRAVCE'
      Origin = 'SP_ZSZAZNAM.PODMINKY_DOPRAVCE'
      BlobType = ftMemo
      Size = 8
    end
    object ZasilkyJEFAKTURA: TStringField
      Tag = 9
      DisplayLabel = 'FV'
      FieldName = 'JEFAKTURA'
      Origin = 'SP_ZSZAZNAM.JEFAKTURA'
      Size = 1
    end
    object ZasilkyP_POPIS: TStringField
      Tag = 9
      FieldName = 'P_POPIS'
      Size = 185
    end
    object ZasilkyD_POPIS: TStringField
      Tag = 9
      FieldName = 'D_POPIS'
      Size = 185
    end
    object ZasilkyFDCELKEM: TBCDField
      Tag = 9
      FieldName = 'FDCELKEM'
      Precision = 18
      Size = 3
    end
    object ZasilkyFVCELKEM: TBCDField
      Tag = 9
      FieldName = 'FVCELKEM'
      Precision = 18
      Size = 3
    end
    object ZasilkySTATEUSER: TIntegerField
      DisplayLabel = 'U'#382'ivatelsk'#253' stav'
      FieldName = 'STATEUSER'
    end
    object ZasilkyVYRIZENO: TStringField
      Tag = 9
      FieldName = 'VYRIZENO'
      FixedChar = True
      Size = 1
    end
    object ZasilkyKRATKEINFO: TStringField
      FieldName = 'KRATKEINFO'
      Size = 255
    end
    object ZasilkyCENASUMASDPH: TCurrencyField
      Tag = 9
      FieldKind = fkCalculated
      FieldName = 'CENASUMASDPH'
      Calculated = True
    end
    object ZasilkyDATPORIZENI: TDateField
      Tag = 9
      FieldName = 'DATPORIZENI'
    end
    object ZasilkyOBJ_EMAILS: TStringField
      DisplayLabel = 'P'#345'ikazce emaily'
      DisplayWidth = 15
      FieldName = 'OBJ_EMAILS'
      Size = 255
    end
    object ZasilkyDOP_EMAILS: TStringField
      DisplayLabel = 'Dopravce emaily'
      DisplayWidth = 15
      FieldName = 'DOP_EMAILS'
      Size = 255
    end
  end
  object ZAPlatci: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSPLATCI ZSPLATCI'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE ZSPLATCI ZSPLATCI SET'
      '   ZSPLATCI.REFFV = :REFFV,'
      '   ZSPLATCI.AOPKOD = :AOPKOD,'
      '   pla_emails = :pla_emails,'
      '   ZSPLATCI.POZICE = :POZICE,'
      '   ZSPLATCI.PODMINKY = :PODMINKY,'
      '   ZSPLATCI.CENAMENA = :CENAMENA,'
      '   ZSPLATCI.CENAKURS = :CENAKURS,'
      '   ZSPLATCI.CREAID = :CREAID,'
      '   ZSPLATCI.UPDDATE = :UPDDATE,'
      '   ZSPLATCI.UPDID = :UPDID,'
      '   ZSPLATCI.CREADATE = :CREADATE,'
      '   ZSPLATCI.STAV = :STAV'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_ZSPLATCI_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSPLATCI('
      '   ID, /*PK*/'
      '   REFFV,'
      '   REF_ZASILKA,'
      '   AOPKOD,'
      '   pla_emails,'
      '   POZICE,'
      '   PODMINKY,'
      '   CENAMENA,'
      '   CENAKURS,'
      '   CREAID,'
      '   CREADATE,'
      '   STAV)'
      'VALUES ('
      '   :ID,'
      '   :REFFV,'
      '   :REF_ZASILKA,'
      '   :AOPKOD,'
      '   :pla_emails,'
      '   :POZICE,'
      '   :PODMINKY,'
      '   :CENAMENA,'
      '   :CENAKURS,'
      '   :CREAID,'
      '   :CREADATE,'
      '   :STAV)')
    KeyLinks.Strings = (
      'SP_ORG_ZSPLATCISEZNAM.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = ZAPlatciBeforeEdit
    BeforeDelete = ZAPlatciBeforeDelete
    BeforeInsert = ZAPlatciBeforeInsert
    AfterPost = ZAPlatciAfterPost
    OnCalcFields = ZAPlatciCalcFields
    OnNewRecord = ZAPlatciNewRecord
    DataSource = dsZasilky
    RequestLive = True
    SQL.Strings = (
      'select * from SP_ORG_ZSPLATCISEZNAM(:SID)')
    FieldOptions = []
    Left = 142
    Top = 474
    object ZAPlatciID: TIntegerField
      Tag = 9
      FieldName = 'ID'
      Origin = 'SP_ZSPLATCISEZNAM.ID'
    end
    object ZAPlatciREF_ZASILKA: TStringField
      Tag = 9
      FieldName = 'REF_ZASILKA'
      Origin = 'SP_ZSPLATCISEZNAM.REF_ZASILKA'
      Size = 22
    end
    object ZAPlatciZASILKA: TStringField
      Tag = 9
      DisplayLabel = 'Z'#225'silka'
      DisplayWidth = 10
      FieldName = 'ZASILKA'
      Origin = 'SP_ZSPLATCISEZNAM.ZASILKA'
      Size = 50
    end
    object ZAPlatciAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'SP_ZSPLATCISEZNAM.AOPKOD'
      Size = 10
    end
    object ZAPlatciPLA_EMAILS: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 15
      FieldName = 'PLA_EMAILS'
      Size = 255
    end
    object ZAPlatciPOZICE: TStringField
      DisplayLabel = 'Pozice pl'#225'tce'
      DisplayWidth = 15
      FieldName = 'POZICE'
      Origin = 'SP_ZSPLATCISEZNAM.POZICE'
      Size = 100
    end
    object ZAPlatciICO: TStringField
      Tag = 9
      DisplayLabel = 'I'#269
      FieldName = 'ICO'
      Origin = 'SP_ZSPLATCISEZNAM.ICO'
      Size = 10
    end
    object ZAPlatciDIC: TStringField
      Tag = 9
      DisplayLabel = 'Di'#269
      FieldName = 'DIC'
      Origin = 'SP_ZSPLATCISEZNAM.DIC'
      Size = 14
    end
    object ZAPlatciSPLATNOST: TIntegerField
      Tag = 9
      DisplayLabel = 'Splatnost'
      FieldName = 'SPLATNOST'
      Origin = 'SP_ZSPLATCISEZNAM.SPLATNOST'
    end
    object ZAPlatciNAZEV: TStringField
      Tag = 9
      DisplayLabel = 'Pl'#225'tce'
      DisplayWidth = 15
      FieldName = 'NAZEV'
      Origin = 'SP_ZSPLATCISEZNAM.NAZEV'
      Size = 100
    end
    object ZAPlatciADRESA1: TStringField
      Tag = 9
      DisplayLabel = 'Adr.up'#345'esn'#283'n'#237
      DisplayWidth = 15
      FieldName = 'ADRESA1'
      Origin = 'SP_ZSPLATCISEZNAM.ADRESA1'
      Size = 32
    end
    object ZAPlatciADRESA2: TStringField
      Tag = 9
      FieldName = 'ADRESA2'
      Origin = 'SP_ZSPLATCISEZNAM.ADRESA2'
      Size = 32
    end
    object ZAPlatciADRESA3: TStringField
      Tag = 9
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'SP_ZSPLATCISEZNAM.ADRESA3'
      Size = 32
    end
    object ZAPlatciPSC: TStringField
      Tag = 9
      FieldName = 'PSC'
      Origin = 'SP_ZSPLATCISEZNAM.PSC'
      Size = 10
    end
    object ZAPlatciKODZEME: TStringField
      Tag = 9
      FieldName = 'KODZEME'
      Origin = 'SP_ZSPLATCISEZNAM.KODZEME'
      Size = 4
    end
    object ZAPlatciFAKTURA: TStringField
      Tag = 9
      DisplayLabel = 'FV'
      FieldName = 'FAKTURA'
      Origin = 'SP_ZSPLATCISEZNAM.FAKTURA'
      Size = 10
    end
    object ZAPlatciREFFV: TStringField
      Tag = 9
      FieldName = 'REFFV'
      Origin = 'SP_ZSPLATCISEZNAM.REFFV'
      Visible = False
      Size = 22
    end
    object ZAPlatciPODMINKY: TStringField
      DisplayLabel = 'Podm'#237'nky'
      DisplayWidth = 10
      FieldName = 'PODMINKY'
      Origin = 'SP_ZSPLATCISEZNAM.PODMINKY'
      Visible = False
      Size = 255
    end
    object ZAPlatciCENASUMA: TFloatField
      Tag = 9
      DisplayLabel = 'Celkem'
      FieldName = 'CENASUMA'
      Origin = 'SP_ZSPLATCISEZNAM.CENASUMA'
    end
    object ZAPlatciCENADPH: TBCDField
      Tag = 9
      DisplayLabel = 'Dph'
      FieldName = 'CENADPH'
      Origin = 'SP_ORG_ZSPLATCISEZNAM.CENADPH'
      Precision = 18
      Size = 1
    end
    object ZAPlatciCENASUMASDPH: TCurrencyField
      Tag = 9
      FieldKind = fkCalculated
      FieldName = 'CENASUMASDPH'
      Calculated = True
    end
    object ZAPlatciCENASUMAKC: TBCDField
      Tag = 9
      DisplayLabel = 'Do provize'
      DisplayWidth = 10
      FieldName = 'CENASUMAKC'
      Precision = 18
      Size = 1
    end
    object ZAPlatciCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'SP_ZSPLATCISEZNAM.CENAMENA'
      OnChange = dtsPlatciCENAMENAChange
      Size = 3
    end
    object ZAPlatciCENAPROVIZE: TBCDField
      DisplayLabel = 'Suma Provize'
      FieldName = 'CENAPROVIZE'
      Precision = 18
      Size = 3
    end
    object ZAPlatciCENAKURS: TFloatField
      DisplayLabel = 'Kurz'
      FieldName = 'CENAKURS'
      Origin = 'SP_ZSPLATCISEZNAM.CENAKURS'
      OnChange = PlatciCalcCena
    end
    object ZAPlatciCREAID: TStringField
      Tag = 9
      FieldName = 'CREAID'
      Origin = 'SP_ZSPLATCISEZNAM.CREAID'
      Size = 10
    end
    object ZAPlatciUPDDATE: TDateTimeField
      Tag = 9
      FieldName = 'UPDDATE'
      Origin = 'SP_ZSPLATCISEZNAM.UPDDATE'
    end
    object ZAPlatciUPDID: TStringField
      Tag = 9
      FieldName = 'UPDID'
      Origin = 'SP_ZSPLATCISEZNAM.UPDID'
      Size = 10
    end
    object ZAPlatciCREADATE: TDateTimeField
      Tag = 9
      FieldName = 'CREADATE'
      Origin = 'SP_ZSPLATCISEZNAM.CREADATE'
    end
  end
  object ZAViewHistorie: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
        Value = '1'
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSHIST ZSHIST'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE ZSHIST ZSHIST SET'
      '   ZSHIST.HISTTYP = :HISTTYP,'
      '   ZSHIST.HISTTEXT = :HISTTEXT,'
      '   ZSHIST.CREAID = :CREAID,'
      '   ZSHIST.CREADATE = :CREADATE,'
      '   ZSHIST.UPDID = :UPDID,'
      '   ZSHIST.UPDDATE = :UPDDATE,'
      '   ZSHIST.STAV = :STAV'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_ZSHIST_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSHIST('
      '   ID, /*PK*/'
      '   REF_ZASILKA,'
      '   HISTTYP,'
      '   HISTTEXT,'
      '   CREAID,'
      '   CREADATE,'
      '   UPDID,'
      '   UPDDATE,'
      '   STAV)'
      'VALUES ('
      '   :ID,'
      '   :REF_ZASILKA,'
      '   :HISTTYP,'
      '   :HISTTEXT,'
      '   :CREAID,'
      '   :CREADATE,'
      '   :UPDID,'
      '   :UPDDATE,'
      '   :STAV)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = ZAViewHistorieBeforeEdit
    OnNewRecord = ZAViewHistorieNewRecord
    SQL.Strings = (
      'SELECT * FROM ZSHIST WHERE REF_ZASILKA = :SID')
    FieldOptions = []
    Left = 412
    Top = 264
    object ZAViewHistorieID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZSHIST.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object ZAViewHistorieREF_ZASILKA: TStringField
      FieldName = 'REF_ZASILKA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 22
    end
    object ZAViewHistorieHisttyp: TStringField
      DisplayLabel = 'Popis'
      FieldName = 'HISTTYP'
      Origin = 'ZSHIST.HISTTYP'
      Size = 15
    end
    object ZAViewHistorieHisttext: TStringField
      DisplayLabel = 'Up'#345'esn'#283'n'#237
      DisplayWidth = 25
      FieldName = 'HISTTEXT'
      Origin = 'ZSHIST.HISTTEXT'
      Size = 100
    end
    object ZAViewHistorieCreaid: TStringField
      DisplayLabel = 'Zalo'#382'il'
      FieldName = 'CREAID'
      Origin = 'ZSHIST.CREAID'
      Visible = False
      Size = 10
    end
    object ZAViewHistorieCreadate: TDateTimeField
      DisplayLabel = 'Vytvo'#345'eno'
      DisplayWidth = 15
      FieldName = 'CREADATE'
      Origin = 'ZSHIST.CREADATE'
      DisplayFormat = 'dd.mm.yyy hh:mm'
    end
    object ZAViewHistorieUpdid: TStringField
      DisplayLabel = 'Opravil'
      FieldName = 'UPDID'
      Origin = 'ZSHIST.UPDID'
      Visible = False
      Size = 10
    end
    object ZAViewHistorieUpddate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'UPDDATE'
      Origin = 'ZSHIST.UPDDATE'
      Visible = False
      DisplayFormat = 'dd.mm.yyy hh:mm'
    end
    object ZAViewHistorieStav: TIntegerField
      DisplayLabel = 'Typ'
      DisplayWidth = 3
      FieldName = 'STAV'
    end
  end
  object KTLHistorie: TIBOQuery
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM HIST_TYP HIST_TYP'
      'WHERE'
      '   TYP = :OLD_TYP')
    EditSQL.Strings = (
      'UPDATE HIST_TYP HIST_TYP SET'
      '   HIST_TYP.TYP = :TYP, /*PK*/'
      '   HIST_TYP.DEFAULTTEXT = :DEFAULTTEXT'
      'WHERE'
      '   TYP = :OLD_TYP')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO HIST_TYP('
      '   TYP, /*PK*/'
      '   DEFAULTTEXT)'
      'VALUES ('
      '   :TYP,'
      '   :DEFAULTTEXT)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM HIST_TYP')
    FieldOptions = []
    Left = 324
    Top = 264
    object KTLHistorieTYP: TStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'TYP'
      Origin = 'HIST_TYP.TYP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object KTLHistorieDEFAULTTEXT: TStringField
      DisplayLabel = 'Z'#225'kladn'#237' text'
      DisplayWidth = 25
      FieldName = 'DEFAULTTEXT'
      Origin = 'HIST_TYP.DEFAULTTEXT'
      Size = 100
    end
  end
  object KTLZSSablony: TIBOQuery
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
      'ID=GEN_DOCSABLONY_ID')
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
    SQL.Strings = (
      'SELECT * FROM DOCSABLONY')
    FieldOptions = []
    Left = 236
    Top = 264
    object KTLZSSablonyID: TIntegerField
      FieldName = 'ID'
      Origin = 'DOCSABLONY.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object KTLZSSablonyEvidence: TStringField
      FieldName = 'EVIDENCE'
      Origin = 'DOCSABLONY.EVIDENCE'
      Visible = False
      Size = 10
    end
    object KTLZSSablonyPopis: TStringField
      DisplayLabel = #352'ablona'
      FieldName = 'POPIS'
      Origin = 'DOCSABLONY.POPIS'
      Size = 32
    end
    object KTLZSSablonySablona: TMemoField
      FieldName = 'SABLONA'
      Origin = 'DOCSABLONY.SABLONA'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
    object KTLZSSablonyVEC: TStringField
      FieldName = 'VEC'
      Size = 255
    end
  end
  object ZasilkySeznam: TIBOQuery
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE ZS SET'
      '   VYBER = :VYBER,'
      '   STAV = :STAV,'
      '   STATEUSER = :STATEUSER,'
      '   VYRIZENO = :VYRIZENO,'
      '   INTPOZNAMKA = :INTPOZNAMKA'
      'WHERE'
      '  SID = :OLD_SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'ZSSeznam.SID')
    KeyLinksAutoDefine = False
    PreparedEdits = False
    PreparedInserts = False
    RecordCountAccurate = False
    AfterPost = ZasilkySeznamAfterPost
    SQL.Strings = (
      'SELECT * FROM ZSSeznam WHERE 0=0')
    FieldOptions = []
    Left = 236
    Top = 196
    object ZasilkySeznamZASILKA: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'ZSSEZNAM.ZASILKA'
      Size = 10
    end
    object ZasilkySeznamTYP: TStringField
      DisplayLabel = 'Typ'
      DisplayWidth = 5
      FieldName = 'TYP'
      Origin = 'ZSSEZNAM.TYP'
      Size = 15
    end
    object ZasilkySeznamDATPORIZENI: TDateField
      DisplayLabel = 'Datum'
      FieldName = 'DATPORIZENI'
      DisplayFormat = 'dd.mm.yyy'
    end
    object ZasilkySeznamINTOBJ: TStringField
      DisplayLabel = 'Objedn'#225'vka'
      DisplayWidth = 10
      FieldName = 'INTOBJ'
      Origin = 'ZSSEZNAM.INTOBJ'
      Visible = False
    end
    object ZasilkySeznamDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      DisplayWidth = 3
      FieldName = 'DISPECER'
      Origin = 'ZSSEZNAM.DISPECER'
      Visible = False
      Size = 10
    end
    object ZasilkySeznamIntStredisko: TStringField
      DisplayLabel = 'St'#345'edisko'
      DisplayWidth = 3
      FieldName = 'INTSTREDISKO'
      Origin = 'ZSSEZNAM.INTSTREDISKO'
      Visible = False
      Size = 2
    end
    object ZasilkySeznamMESIC: TStringField
      DisplayLabel = 'M'#283's'#237'c'
      FieldName = 'MESIC'
      Origin = 'ZSSEZNAM.MESIC'
      Visible = False
      Size = 7
    end
    object ZasilkySeznamTYDEN: TStringField
      DisplayLabel = 'T'#253'den'
      DisplayWidth = 7
      FieldName = 'TYDEN'
      Visible = False
      Size = 9
    end
    object ZasilkySeznamPrikazce: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 20
      FieldName = 'PRIKAZCE'
      Origin = 'ZSSEZNAM.PRIKAZCE'
      Size = 100
    end
    object ZasilkySeznamSUBSTRATINFO: TStringField
      DisplayLabel = 'Zbo'#382#237
      DisplayWidth = 20
      FieldName = 'SUBSTRATINFO'
      Origin = 'ZSSEZNAM.SUBSTRATINFO'
      Visible = False
      Size = 60
    end
    object ZasilkySeznamDopravce: TStringField
      DisplayLabel = 'Dopravce'
      DisplayWidth = 20
      FieldName = 'DOPRAVCE'
      Origin = 'ZSSEZNAM.DOPRAVCE'
      Size = 100
    end
    object ZasilkySeznamVOZIDLO: TStringField
      DisplayLabel = 'Vozidlo'
      DisplayWidth = 10
      FieldName = 'VOZIDLO'
      Origin = 'ZSSEZNAM.VOZIDLO'
      Size = 100
    end
    object ZasilkySeznamDATUM: TDateTimeField
      DisplayLabel = 'Datum nakl'#225'dky'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'ZSSEZNAM.DATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object ZasilkySeznamAUTOSPZ: TStringField
      DisplayLabel = 'SPZ'
      DisplayWidth = 10
      FieldName = 'AUTOSPZ'
      Origin = 'ZSSEZNAM.AUTOSPZ'
      Size = 32
    end
    object ZasilkySeznamNSTAT: TStringField
      DisplayLabel = 'N.k'#243'd'
      FieldName = 'NSTAT'
      Origin = 'ZSSEZNAM.NSTAT'
      Size = 4
    end
    object ZasilkySeznamNPSC: TStringField
      DisplayLabel = 'N.Ps'#269
      DisplayWidth = 7
      FieldName = 'NPSC'
      Origin = 'ZSSEZNAM.NPSC'
      Size = 10
    end
    object ZasilkySeznamNMISTO: TStringField
      DisplayLabel = 'N.m'#283'sto'
      DisplayWidth = 15
      FieldName = 'NMISTO'
      Origin = 'ZSSEZNAM.NMISTO'
      Size = 32
    end
    object ZasilkySeznamVDATUM: TDateTimeField
      DisplayLabel = 'V.Datum'
      DisplayWidth = 10
      FieldName = 'VDATUM'
      Origin = 'ZSSEZNAM.VDATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object ZasilkySeznamVSTAT: TStringField
      DisplayLabel = 'V.k'#243'd'
      FieldName = 'VSTAT'
      Origin = 'ZSSEZNAM.VSTAT'
      Size = 4
    end
    object ZasilkySeznamVPSC: TStringField
      DisplayLabel = 'V.Ps'#269
      DisplayWidth = 7
      FieldName = 'VPSC'
      Origin = 'ZSSEZNAM.VPSC'
      Size = 10
    end
    object ZasilkySeznamVMISTO: TStringField
      DisplayLabel = 'V.M'#283'sto'
      DisplayWidth = 15
      FieldName = 'VMISTO'
      Origin = 'ZSSEZNAM.VMISTO'
      Size = 32
    end
    object ZasilkySeznamHMBRUTTO: TFloatField
      DisplayLabel = 'Hmotnost'
      DisplayWidth = 8
      FieldName = 'HMBRUTTO'
      Origin = 'ZSSEZNAM.HMBRUTTO'
    end
    object ZasilkySeznamHMTEXT: TStringField
      DisplayLabel = 'Hmotnost popis'
      DisplayWidth = 10
      FieldName = 'HMTEXT'
      Origin = 'ZSSEZNAM.HMTEXT'
      Visible = False
      Size = 50
    end
    object ZasilkySeznamPRIKAZ: TStringField
      DisplayLabel = 'Z p'#345#237'kazu'
      DisplayWidth = 15
      FieldName = 'PRIKAZ'
      Origin = 'ZSSEZNAM.PRIKAZ'
      Visible = False
      Size = 100
    end
    object ZasilkySeznamCENASMLUVNI: TFloatField
      DisplayLabel = 'DC Z'#225'klad'
      DisplayWidth = 8
      FieldName = 'CENASMLUVNI'
      Origin = 'ZSSEZNAM.CENASMLUVNI'
      Visible = False
    end
    object ZasilkySeznamCENAJEDNOTKA: TStringField
      DisplayLabel = 'DC Jednotka'
      DisplayWidth = 4
      FieldName = 'CENAJEDNOTKA'
      Origin = 'ZSSEZNAM.CENAJEDNOTKA'
      Visible = False
      Size = 10
    end
    object ZasilkySeznamCENAJEDNOTKY: TFloatField
      DisplayLabel = 'DC Jednotky'
      DisplayWidth = 8
      FieldName = 'CENAJEDNOTKY'
      Origin = 'ZSSEZNAM.CENAJEDNOTKY'
      Visible = False
    end
    object ZasilkySeznamCENAMENA: TStringField
      DisplayLabel = 'DC M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'ZSSEZNAM.CENAMENA'
      Visible = False
      Size = 3
    end
    object ZasilkySeznamCENADOPRAVCE: TFloatField
      DisplayLabel = 'Cena Dop.'
      FieldName = 'CENADOPRAVCE'
      Origin = 'ZSSEZNAM.CENADOPRAVCE'
    end
    object ZasilkySeznamCENAPLATCI: TFloatField
      DisplayLabel = 'Cena Pl'#225'tci'
      FieldName = 'CENAPLATCI'
      Origin = 'ZSSEZNAM.CENAPLATCI'
    end
    object ZasilkySeznamCENAPROVIZE: TFloatField
      DisplayLabel = 'Provize'
      FieldName = 'CENAPROVIZE'
      Origin = 'ZSSEZNAM.CENAPROVIZE'
    end
    object ZasilkySeznamCREADATE: TDateTimeField
      DisplayLabel = 'Zal.datum'
      DisplayWidth = 15
      FieldName = 'CREADATE'
      Origin = 'ZSSEZNAM.CREADATE'
      Visible = False
      DisplayFormat = 'dd.mm.yyyy hh:mm'
    end
    object ZasilkySeznamCREAID: TStringField
      DisplayLabel = 'Zalo'#382'il'
      DisplayWidth = 5
      FieldName = 'CREAID'
      Origin = 'ZSSEZNAM.CREAID'
      Visible = False
      Size = 10
    end
    object ZasilkySeznamUPDDATE: TDateTimeField
      DisplayLabel = 'Opr.datum'
      DisplayWidth = 15
      FieldName = 'UPDDATE'
      Origin = 'ZSSEZNAM.UPDDATE'
      Visible = False
      DisplayFormat = 'dd.mm.yyyy hh:mm'
    end
    object ZasilkySeznamUPDID: TStringField
      DisplayLabel = 'Opravil'
      DisplayWidth = 5
      FieldName = 'UPDID'
      Origin = 'ZSSEZNAM.UPDID'
      Visible = False
      Size = 10
    end
    object ZasilkySeznamIntPoznamka: TMemoField
      FieldName = 'INTPOZNAMKA'
      Origin = 'ZSSEZNAM.INTPOZNAMKA'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
    object ZasilkySeznamAOPKOD_OBJ: TStringField
      DisplayLabel = 'ID P'#345#237'kazce'
      FieldName = 'AOPKOD_OBJ'
      Origin = 'ZSSEZNAM.AOPKOD_OBJ'
      Visible = False
      Size = 10
    end
    object ZasilkySeznamAOPKOD_DOP: TStringField
      DisplayLabel = 'ID Dopravce'
      FieldName = 'AOPKOD_DOP'
      Origin = 'ZSSEZNAM.AOPKOD_DOP'
      Visible = False
      Size = 10
    end
    object ZasilkySeznamSTATEUSER: TIntegerField
      DisplayLabel = 'U'#382'. stav'
      DisplayWidth = 2
      FieldName = 'STATEUSER'
      Origin = 'ZSSEZNAM.STATEUSER'
    end
    object ZasilkySeznamVYBER: TStringField
      DisplayLabel = 'X'
      FieldName = 'VYBER'
      Origin = 'ZSSEZNAM.VYBER'
      Size = 1
    end
    object ZasilkySeznamJEFAKTURA: TStringField
      DisplayLabel = 'Fakturov'#225'no'
      FieldName = 'JEFAKTURA'
      Origin = 'ZSSEZNAM.JEFAKTURA'
      Size = 1
    end
    object ZasilkySeznamSID: TStringField
      FieldName = 'SID'
      Origin = 'ZSSEZNAM.SID'
      Size = 22
    end
    object ZasilkySeznamSTAV: TSmallintField
      DisplayLabel = 'Stav'
      DisplayWidth = 2
      FieldName = 'STAV'
      Origin = 'ZSSEZNAM.STAV'
    end
    object ZasilkySeznamNAKLADKA: TStringField
      DisplayLabel = 'M'#237'sto nakl'#225'dky'
      DisplayWidth = 20
      FieldName = 'NAKLADKA'
      Size = 48
    end
    object ZasilkySeznamVYKLADKA: TStringField
      DisplayLabel = 'M'#237'sto vykl'#225'dky'
      DisplayWidth = 20
      FieldName = 'VYKLADKA'
      Size = 48
    end
    object ZasilkySeznamFDCELKEM: TBCDField
      DisplayLabel = 'FD Celkem'
      DisplayWidth = 9
      FieldName = 'FDCELKEM'
      Visible = False
      Precision = 18
      Size = 1
    end
    object ZasilkySeznamFVCELKEM: TBCDField
      DisplayLabel = 'FV Celkem'
      DisplayWidth = 9
      FieldName = 'FVCELKEM'
      Visible = False
      Precision = 18
      Size = 1
    end
    object ZasilkySeznamFVDPROVIZE: TBCDField
      DisplayLabel = 'Fakt. provize'
      DisplayWidth = 9
      FieldName = 'FVDPROVIZE'
      Precision = 18
      Size = 1
    end
    object ZasilkySeznamVYRIZENO: TStringField
      DisplayLabel = 'Vy'#345#237'zeno'
      DisplayWidth = 5
      FieldName = 'VYRIZENO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object ZasilkySeznamONCELKEM: TBCDField
      DisplayLabel = 'ON Celkem'
      DisplayWidth = 9
      FieldName = 'ONCELKEM'
      Visible = False
      Precision = 18
      Size = 1
    end
    object ZasilkySeznamOVCELKEM: TBCDField
      DisplayLabel = 'OV Celkem'
      DisplayWidth = 9
      FieldName = 'OVCELKEM'
      Visible = False
      Precision = 18
      Size = 1
    end
    object ZasilkySeznamKRATKEINFO: TStringField
      DisplayLabel = 'Kr'#225'tk'#233' info'
      DisplayWidth = 30
      FieldName = 'KRATKEINFO'
      Visible = False
      Size = 255
    end
    object ZasilkySeznamSTATEUSERCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'STATEUSERCOLOR'
    end
    object ZasilkySeznamTRASYPOCET: TIntegerField
      DisplayLabel = 'NV Po'#269'et'
      DisplayWidth = 5
      FieldName = 'TRASYPOCET'
    end
  end
  object ZAPlatciSrazky: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'REFPLATCE'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'ZSPLATSR.ISDOPROVIZE=REQUIRED'
      'ZSPLATCIPOL.ISDOPROVIZE=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSPLATCIPOL ZSPLATCIPOL'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE ZSPLATCIPOL ZSPLATCIPOL SET'
      '   ZSPLATCIPOL.CENATEXT = :CENATEXT,'
      '   ZSPLATCIPOL.CENAPOPIS = :CENAPOPIS,'
      '   ZSPLATCIPOL.CENAMENAZAKLAD = :CENAMENAZAKLAD,'
      '   ZSPLATCIPOL.CENAMENA = :CENAMENA,'
      '   ZSPLATCIPOL.CENAKURZ = :CENAKURZ,'
      '   ZSPLATCIPOL.CENAZAKLAD = :CENAZAKLAD,'
      '   ZSPLATCIPOL.CENAJEDNOTKA = :CENAJEDNOTKA,'
      '   ZSPLATCIPOL.CENAJEDNOTKY = :CENAJEDNOTKY,'
      '   ZSPLATCIPOL.CENASLEVA = :CENASLEVA,'
      '   ZSPLATCIPOL.CENASUMA = :CENASUMA,'
      '   ZSPLATCIPOL.CENASAZBADPH = :CENASAZBADPH,'
      '   ZSPLATCIPOL.CENADPHPROC = :CENADPHPROC,'
      '   ZSPLATCIPOL.CENADPH = :CENADPH,'
      '   ZSPLATCIPOL.ISDOPROVIZE = :ISDOPROVIZE'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_ZSPLATCIPOL_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSPLATCIPOL('
      '   ID, /*PK*/'
      '   REFPLATCE,'
      '   CENATEXT,'
      '   CENAPOPIS,'
      '   CENAMENAZAKLAD,'
      '   CENAMENA,'
      '   CENAKURZ,'
      '   CENAZAKLAD,'
      '   CENAJEDNOTKA,'
      '   CENAJEDNOTKY,'
      '   CENASLEVA,'
      '   CENASUMA,'
      '   CENASAZBADPH,'
      '   CENADPHPROC,'
      '   CENADPH,'
      '   ISDOPROVIZE)'
      'VALUES ('
      '   :ID,'
      '   :REFPLATCE,'
      '   :CENATEXT,'
      '   :CENAPOPIS,'
      '   :CENAMENAZAKLAD,'
      '   :CENAMENA,'
      '   :CENAKURZ,'
      '   :CENAZAKLAD,'
      '   :CENAJEDNOTKA,'
      '   :CENAJEDNOTKY,'
      '   :CENASLEVA,'
      '   :CENASUMA,'
      '   :CENASAZBADPH,'
      '   :CENADPHPROC,'
      '   :CENADPH,'
      '   :ISDOPROVIZE)')
    KeyLinks.Strings = (
      'ZSPLATCIPOL.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = ZAPlatciSrazkyBeforeEdit
    BeforeDelete = ZAPlatciSrazkyBeforeDelete
    AfterDelete = ZAPlatciSrazkyAfterPost
    BeforeInsert = ZAPlatciSrazkyBeforeInsert
    BeforePost = ZAPlatciSrazkyBeforePost
    AfterPost = ZAPlatciSrazkyAfterPost
    OnNewRecord = ZAPlatciSrazkyNewRecord
    DataSource = dsZAPlatci
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      '     ID'
      '     , REFPLATCE'
      '     , CENATEXT'
      '     , CENAPOPIS'
      '     , CENAMENAZAKLAD'
      '     , CENAMENA'
      '     , CENAKURZ'
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
      'FROM ZSPLATCIPOL WHERE ZSPLATCIPOL.REFPLATCE = :ID')
    FieldOptions = []
    Left = 210
    Top = 544
    object ZAPlatciSrazkyID: TIntegerField
      Tag = 9
      FieldName = 'ID'
      Origin = 'ZSPLATSR.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object ZAPlatciSrazkyRefPlatce: TIntegerField
      Tag = 9
      DisplayLabel = 'ID Master'
      FieldName = 'REFPLATCE'
      Origin = 'ZSPLATSR.REFPLATCE'
      Visible = False
    end
    object ZAPlatciSrazkyCenaText: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 15
      FieldName = 'CENATEXT'
      Origin = 'ZSPLATSR.CENATEXT'
      Size = 100
    end
    object ZAPlatciSrazkyCENAMENAZAKLAD: TBCDField
      DisplayLabel = 'P.Cena'
      DisplayWidth = 10
      FieldName = 'CENAMENAZAKLAD'
      Visible = False
      OnChange = CenaZakladMenaCalc
      Precision = 18
      Size = 3
    end
    object ZAPlatciSrazkyCENAMENA: TStringField
      DisplayLabel = 'P.M'#283'na'
      FieldName = 'CENAMENA'
      Visible = False
      OnChange = ZAPlatciSrazkyCENAMENAChange
      Size = 3
    end
    object ZAPlatciSrazkyCENAKURZ: TBCDField
      DisplayLabel = 'P.Kurz'
      DisplayWidth = 5
      FieldName = 'CENAKURZ'
      Visible = False
      OnChange = CenaZakladMenaCalc
      Precision = 18
    end
    object ZAPlatciSrazkyCenaZaklad: TFloatField
      DisplayLabel = 'Cena z'#225'klad'
      FieldName = 'CENAZAKLAD'
      Origin = 'ZSPLATSR.CENAZAKLAD'
      OnChange = SrazkyCalc
    end
    object ZAPlatciSrazkyCenaJednotka: TStringField
      DisplayLabel = 'Jednotka'
      FieldName = 'CENAJEDNOTKA'
      Origin = 'ZSPLATSR.CENAJEDNOTKA'
      Size = 10
    end
    object ZAPlatciSrazkyCenaJednotky: TFloatField
      DisplayLabel = 'Po'#269'et'
      FieldName = 'CENAJEDNOTKY'
      Origin = 'ZSPLATSR.CENAJEDNOTKY'
      OnChange = SrazkyCalc
    end
    object ZAPlatciSrazkyCenaSuma: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CENASUMA'
      Origin = 'ZSPLATSR.CENASUMA'
    end
    object ZAPlatciSrazkyCENAPOPIS: TMemoField
      DisplayLabel = 'Popis polo'#382'ky'
      FieldName = 'CENAPOPIS'
      Origin = 'ZSPLATSR.CENAPOPIS'
      Visible = False
      BlobType = ftMemo
      Size = 2500
    end
    object ZAPlatciSrazkyCENASLEVA: TBCDField
      DisplayLabel = 'Sleva'
      DisplayWidth = 10
      FieldName = 'CENASLEVA'
      Origin = 'ZSPLATSR.CENASLEVA'
      Visible = False
      OnChange = SrazkyCalc
      Precision = 18
      Size = 3
    end
    object ZAPlatciSrazkyISDOPROVIZE: TStringField
      DisplayLabel = 'Do provize'
      FieldName = 'ISDOPROVIZE'
      Origin = 'ZSPLATSR.ISDOPROVIZE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ZAPlatciSrazkyCENASAZBADPH: TSmallintField
      DisplayLabel = 'Sazba DPH'
      FieldName = 'CENASAZBADPH'
      Origin = 'ZSPLATSR.CENASAZBADPH'
      OnChange = SrazkyCalc
    end
    object ZAPlatciSrazkyCENADPHPROC: TBCDField
      DisplayLabel = 'DPH %'
      DisplayWidth = 10
      FieldName = 'CENADPHPROC'
      Origin = 'ZSPLATSR.CENADPHPROC'
      Precision = 18
      Size = 1
    end
    object ZAPlatciSrazkyCENADPH: TBCDField
      DisplayLabel = 'Dph'
      DisplayWidth = 10
      FieldName = 'CENADPH'
      Origin = 'ZSPLATSR.CENADPH'
      Precision = 18
      Size = 3
    end
  end
  object ZSVyber: TIBOQuery
    ColumnAttributes.Strings = (
      'ZSSEZNAM.ZASILKA=REQUIRED')
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '        ZSSEZNAM.SID,'
      #9'ZSSEZNAM.ZASILKA,'
      #9'ZSSEZNAM.DISPECER,'
      '        ZSSEZNAM.AOPKOD_DOP,'
      '        ZSSEZNAM.DOPRAVCE,'
      '        ZSSEZNAM.PRIKAZCE,'
      '        ZSSEZNAM.DATUM,'
      '        ZSSEZNAM.AUTOSPZ,'
      '        ZSSEZNAM.NAKLADKA,'
      '        ZSSEZNAM.VYKLADKA,'
      '        ZSSEZNAM.CENASUMA,'
      '        ZSSEZNAM.CENAMENA,'
      '        ZSSEZNAM.CENADOPRAVCE'
      'FROM'
      '        ZSSEZNAM'
      'WHERE 0=0')
    FieldOptions = []
    Left = 148
    Top = 128
    object ZSVyberSID: TStringField
      DisplayLabel = 'ID P'#345'epravy'
      FieldName = 'SID'
      Origin = 'ZSSEZNAM.SID'
      Visible = False
      Size = 22
    end
    object ZSVyberZASILKA: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'ZSSEZNAM.ZASILKA'
      Required = True
      Size = 10
    end
    object ZSVyberDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      DisplayWidth = 5
      FieldName = 'DISPECER'
      Size = 10
    end
    object ZSVyberAOPKOD_DOP: TStringField
      DisplayLabel = 'K'#243'd dopravce'
      FieldName = 'AOPKOD_DOP'
      Origin = 'ZSSEZNAM.AOPKOD_DOP'
      Size = 10
    end
    object ZSVyberDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'ZSSEZNAM.DATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object ZSVyberDopravce: TStringField
      DisplayLabel = 'Dopravce'
      DisplayWidth = 20
      FieldName = 'DOPRAVCE'
      Origin = 'ZSSEZNAM.DOPRAVCE'
      Size = 40
    end
    object ZSVyberPrikazce: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 20
      FieldName = 'PRIKAZCE'
      Origin = 'ZSSEZNAM.PRIKAZCE'
      Size = 40
    end
    object ZSVyberNAKLADKA: TStringField
      DisplayLabel = 'Nakl'#225'dka'
      DisplayWidth = 20
      FieldName = 'NAKLADKA'
      Origin = 'ZSSEZNAM.NAKLADKA'
      Size = 48
    end
    object ZSVyberAUTOSPZ: TStringField
      DisplayLabel = 'RZ'
      DisplayWidth = 15
      FieldName = 'AUTOSPZ'
      Origin = 'ZSSEZNAM.AUTOSPZ'
      Size = 32
    end
    object ZSVyberCENASUMA: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CENASUMA'
      Origin = 'ZSSEZNAM.CENASUMA'
    end
    object ZSVyberCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'ZSSEZNAM.CENAMENA'
      Size = 3
    end
    object ZSVyberCENADOPRAVCE: TFloatField
      DisplayLabel = 'Cena celkem (K'#269')'
      FieldName = 'CENADOPRAVCE'
      Origin = 'ZSSEZNAM.CENADOPRAVCE'
    end
    object ZSVyberVYKLADKA: TStringField
      DisplayLabel = 'Vykl'#225'dka'
      DisplayWidth = 20
      FieldName = 'VYKLADKA'
      Origin = 'ZSSEZNAM.VYKLADKA'
      Size = 48
    end
  end
  object sqPohyby: TIBOQuery
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM SP_ZSNAKVYKVYBER WHERE 0=0')
    FieldOptions = []
    Left = 60
    Top = 128
    object sqPohybyTyp: TStringField
      FieldName = 'Typ'
      Size = 2
    end
    object sqPohybyZEMEKOD: TStringField
      DisplayLabel = 'St'#225't'
      FieldName = 'ZEMEKOD'
      Size = 4
    end
    object sqPohybyPSC: TStringField
      DisplayLabel = 'Ps'#269
      FieldName = 'PSC'
      Size = 10
    end
    object sqPohybyADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Size = 32
    end
    object sqPohybyAdresaPopis: TMemoField
      DisplayLabel = 'Adresa'
      FieldName = 'AdresaPopis'
      Visible = False
      BlobType = ftMemo
    end
    object sqPohybySPOJENI: TMemoField
      DisplayLabel = 'Spojen'#237
      FieldName = 'SPOJENI'
      Visible = False
      BlobType = ftMemo
    end
  end
  object ZSPLAVyber: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = '1'
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * from SP_FVGETZASILKA(:AOPKOD)')
    FieldOptions = []
    Left = 322
    Top = 128
    object ZSPLAVyberID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZSPLATCI.ID'
      Visible = False
    end
    object ZSPLAVyberAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Origin = 'ZSPLATCI.AOPKOD'
      Visible = False
      Size = 10
    end
    object ZSPLAVyberZASILKA: TStringField
      DisplayLabel = 'P'#345'eprava'
      DisplayWidth = 10
      FieldName = 'ZASILKA'
      Origin = 'ZS.ZASILKA'
      Size = 50
    end
    object ZSPLAVyberCO: TStringField
      DisplayLabel = 'Co plat'#237
      FieldName = 'CO'
      Origin = 'ZSPLATCI.CO'
      Size = 3
    end
    object ZSPLAVyberPOZICE: TStringField
      DisplayLabel = 'CODE pl'#225'tce'
      DisplayWidth = 20
      FieldName = 'POZICE'
      Origin = 'ZSPLATCI.POZICE'
      Size = 100
    end
    object ZSPLAVyberCENASUMA: TFloatField
      DisplayLabel = 'Cena'
      FieldName = 'CENASUMA'
      Origin = 'ZSPLATCI.CENASUMA'
    end
    object ZSPLAVyberCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'ZSPLATCI.CENAMENA'
      Size = 3
    end
    object ZSPLAVyberNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 15
      FieldName = 'NAZEV'
      Origin = 'AOP.NAZEV'
      Visible = False
      Size = 100
    end
    object ZSPLAVyberADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      FieldName = 'ADRESA3'
      Origin = 'AOP.ADRESA3'
      Visible = False
      Size = 32
    end
    object ZSPLAVyberDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'ZS.DATUM'
    end
    object ZSPLAVyberNAKLADKA: TStringField
      DisplayLabel = 'Nakl'#225'dka'
      DisplayWidth = 25
      FieldName = 'NAKLADKA'
      Origin = 'SP_FVGETZASILKA.NAKLADKA'
      Size = 255
    end
    object ZSPLAVyberVYKLADKA: TStringField
      DisplayLabel = 'Vykl'#225'dka'
      DisplayWidth = 25
      FieldName = 'VYKLADKA'
      Origin = 'SP_FVGETZASILKA.VYKLADKA'
      Size = 255
    end
    object ZSPLAVyberAUTOSPZ: TStringField
      DisplayLabel = 'SPZ'
      DisplayWidth = 15
      FieldName = 'AUTOSPZ'
      Origin = 'ZS.AUTOSPZ'
      Size = 32
    end
    object ZSPLAVyberSTAV: TIntegerField
      DisplayLabel = 'Stav'
      FieldName = 'STAV'
      Origin = 'ZS.STATE'
      Visible = False
    end
    object ZSPLAVyberCENASMLUVNI: TFloatField
      DisplayLabel = 'Cena smluvn'#237
      FieldName = 'CENASMLUVNI'
      Origin = 'ZSPLATCI.CENASMLUVNI'
      Visible = False
    end
    object ZSPLAVyberCENAJEDNOTKY: TFloatField
      DisplayLabel = 'Po'#269'et jednotek'
      FieldName = 'CENAJEDNOTKY'
      Origin = 'ZSPLATCI.CENAJEDNOTKY'
      Visible = False
    end
    object ZSPLAVyberCENADPHPROC: TBCDField
      DisplayLabel = 'Sazba DPH'
      FieldName = 'CENADPHPROC'
      Origin = 'ZSPLATCI.CENADPHPROC'
      Precision = 18
      Size = 1
    end
    object ZSPLAVyberCENAJEDNOTKA: TStringField
      DisplayLabel = 'Jednotky'
      FieldName = 'CENAJEDNOTKA'
      Origin = 'ZSPLATCI.CENAJEDNOTKA'
      Visible = False
      Size = 10
    end
    object ZSPLAVyberSUBSTRATINFO: TStringField
      FieldName = 'SUBSTRATINFO'
      Origin = 'ZS.SUBSTRATINFO'
      Size = 60
    end
    object ZSPLAVyberSUBSTRAT: TMemoField
      FieldName = 'SUBSTRAT'
      Origin = 'ZS.SUBSTRAT'
      BlobType = ftMemo
      Size = 8
    end
    object ZSPLAVyberHMBRUTTO: TFloatField
      FieldName = 'HMBRUTTO'
      Origin = 'ZS.HMBRUTTO'
    end
    object ZSPLAVyberHMTEXT: TStringField
      FieldName = 'HMTEXT'
      Origin = 'ZS.HMTEXT'
      Size = 50
    end
    object ZSPLAVyberPRIKAZ: TStringField
      FieldName = 'PRIKAZ'
      Origin = 'ZS.PRIKAZ'
      Size = 100
    end
    object ZSPLAVyberNSTAT: TStringField
      FieldName = 'NSTAT'
      Origin = 'ZS.NSTAT'
      Size = 4
    end
    object ZSPLAVyberNPSC: TStringField
      FieldName = 'NPSC'
      Origin = 'ZS.NPSC'
      Size = 10
    end
    object ZSPLAVyberNMISTO: TStringField
      FieldName = 'NMISTO'
      Origin = 'ZS.NMISTO'
      Size = 32
    end
    object ZSPLAVyberVSTAT: TStringField
      FieldName = 'VSTAT'
      Origin = 'ZS.VSTAT'
      Size = 4
    end
    object ZSPLAVyberVPSC: TStringField
      FieldName = 'VPSC'
      Origin = 'ZS.VPSC'
      Size = 10
    end
    object ZSPLAVyberVMISTO: TStringField
      FieldName = 'VMISTO'
      Origin = 'ZS.VMISTO'
      Size = 32
    end
  end
  object ZADopisy: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'sid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OWNER'
        ParamType = ptInput
        Value = '1'
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
      'WHERE OWNER = :sid')
    FieldOptions = []
    Left = 148
    Top = 196
    object ZADopisySID: TStringField
      DisplayLabel = 'ID Z'#225'znamu'
      FieldName = 'SID'
      Required = True
      Visible = False
      Size = 22
    end
    object ZADopisyZNACKA: TStringField
      DisplayLabel = 'Zna'#269'ka'
      FieldName = 'ZNACKA'
      Size = 10
    end
    object ZADopisyAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Visible = False
      Size = 10
    end
    object ZADopisyOWNER: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'OWNER'
      Visible = False
      Size = 10
    end
    object ZADopisyNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Size = 100
    end
    object ZADopisyDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object ZADopisyVEC: TStringField
      DisplayLabel = 'V'#283'c'
      DisplayWidth = 25
      FieldName = 'VEC'
      Size = 255
    end
  end
  object ZAOstNakl: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSOSTNV ZSOSTNV'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE ZSOSTNV ZSOSTNV SET'
      '   ZSOSTNV.REF_FAKTURA = :REF_FAKTURA,'
      '   ZSOSTNV.VN_TYP = :VN_TYP,'
      '   ZSOSTNV.RADEK = :RADEK,'
      '   ZSOSTNV.POPIS = :POPIS,'
      '   ZSOSTNV.CENAPROVIZE = :CENAPROVIZE,'
      '   ZSOSTNV.FAKTUROVANO = :FAKTUROVANO'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSOSTNV('
      '   ID, /*PK*/'
      '   REF_ZASILKY,'
      '   REF_FAKTURA,'
      '   VN_TYP,'
      '   RADEK,'
      '   POPIS,'
      '   CENAPROVIZE,'
      '   FAKTUROVANO)'
      'VALUES ('
      '   :ID,'
      '   :REF_ZASILKY,'
      '   :REF_FAKTURA,'
      '   :VN_TYP,'
      '   :RADEK,'
      '   :POPIS,'
      '   :CENAPROVIZE,'
      '   :FAKTUROVANO)')
    KeyLinks.Strings = (
      'ZSOSTNV.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeEdit = ZSKontrolaVyrizeno
    BeforeDelete = ZSKontrolaVyrizeno
    AfterDelete = ZAOstNaklAfterDelete
    BeforeInsert = ZSKontrolaVyrizeno
    BeforePost = ZAOstNaklBeforePost
    AfterPost = ZAOstNaklAfterPost
    OnNewRecord = ZAOstNaklNewRecord
    DataSource = dsZasilky
    SQL.Strings = (
      'SELECT *'
      'FROM ZSOSTNV'
      'WHERE REF_ZASILKY = :SID')
    FieldOptions = []
    Left = 268
    Top = 476
    object ZAOstNaklID: TStringField
      Tag = 9
      DisplayLabel = 'Index'
      FieldName = 'ID'
      Required = True
      Visible = False
      FixedChar = True
      Size = 22
    end
    object ZAOstNaklREF_ZASILKY: TStringField
      Tag = 9
      DisplayLabel = 'ID Z'#225'silky'
      FieldName = 'REF_ZASILKY'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object ZAOstNaklVN_TYP: TSmallintField
      Tag = 9
      DisplayLabel = 'Typ'
      FieldName = 'VN_TYP'
      Visible = False
    end
    object ZAOstNaklRADEK: TIntegerField
      DisplayLabel = 'Po'#345'ad'#237
      FieldName = 'RADEK'
      Visible = False
    end
    object ZAOstNaklPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Size = 100
    end
    object ZAOstNaklCENAPROVIZE: TBCDField
      DisplayLabel = #268#225'stka'
      DisplayWidth = 10
      FieldName = 'CENAPROVIZE'
      Precision = 18
      Size = 1
    end
    object ZAOstNaklREF_FAKTURA: TStringField
      Tag = 9
      DisplayLabel = 'ID Faktury'
      FieldName = 'REF_FAKTURA'
      FixedChar = True
      Size = 22
    end
    object ZAOstNaklFAKTUROVANO: TStringField
      Tag = 9
      DisplayLabel = 'Fakturov'#225'no'
      FieldName = 'FAKTUROVANO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 60
    Top = 60
    object tvPlatci: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsZAPlatci
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPlatciID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object tvPlatciAOPKOD: TcxGridDBColumn
        DataBinding.FieldName = 'AOPKOD'
        Visible = False
        Options.Editing = False
        Width = 78
      end
      object tvPlatciNAZEV: TcxGridDBColumn
        DataBinding.FieldName = 'NAZEV'
        Options.Editing = False
        Width = 115
      end
      object tvPlatciFAKTURA: TcxGridDBColumn
        DataBinding.FieldName = 'FAKTURA'
        Options.Editing = False
      end
      object tvPlatciPODMINKY: TcxGridDBColumn
        DataBinding.FieldName = 'PODMINKY'
        Visible = False
        Options.Editing = False
      end
      object tvPlatciCENASUMA: TcxGridDBColumn
        DataBinding.FieldName = 'CENASUMA'
        RepositoryItem = dmdGlobal.repCena
        Options.Editing = False
      end
      object tvPlatciCENASUMACZK: TcxGridDBColumn
        DataBinding.FieldName = 'CENASUMAKC'
        RepositoryItem = dmdGlobal.repCenaRO
        Options.Editing = False
      end
      object tvPlatciCENAMENA: TcxGridDBColumn
        DataBinding.FieldName = 'CENAMENA'
        Options.Editing = False
      end
    end
    object tvPlatciDetail: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPlatciPol
      DataController.DetailKeyFieldNames = 'REFPLATCE'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPlatciDetailID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvPlatciDetailREFPLATCE: TcxGridDBColumn
        DataBinding.FieldName = 'REFPLATCE'
        Visible = False
      end
      object tvPlatciDetailCENATEXT: TcxGridDBColumn
        DataBinding.FieldName = 'CENATEXT'
        Visible = False
      end
      object tvPlatciDetailCENAMENAZAKLAD: TcxGridDBColumn
        DataBinding.FieldName = 'CENAMENAZAKLAD'
        Visible = False
      end
      object tvPlatciDetailCENAMENA: TcxGridDBColumn
        DataBinding.FieldName = 'CENAMENA'
        Visible = False
      end
      object tvPlatciDetailCENAKURZ: TcxGridDBColumn
        DataBinding.FieldName = 'CENAKURZ'
        Visible = False
      end
      object tvPlatciDetailCENAZAKLAD: TcxGridDBColumn
        DataBinding.FieldName = 'CENAZAKLAD'
      end
      object tvPlatciDetailCENAJEDNOTKA: TcxGridDBColumn
        DataBinding.FieldName = 'CENAJEDNOTKA'
      end
      object tvPlatciDetailCENAJEDNOTKY: TcxGridDBColumn
        DataBinding.FieldName = 'CENAJEDNOTKY'
      end
      object tvPlatciDetailCENASUMA: TcxGridDBColumn
        DataBinding.FieldName = 'CENASUMA'
      end
      object tvPlatciDetailCENAPOPIS: TcxGridDBColumn
        DataBinding.FieldName = 'CENAPOPIS'
        Visible = False
      end
      object tvPlatciDetailCENASLEVA: TcxGridDBColumn
        DataBinding.FieldName = 'CENASLEVA'
        Visible = False
      end
      object tvPlatciDetailISDOPROVIZE: TcxGridDBColumn
        DataBinding.FieldName = 'ISDOPROVIZE'
      end
      object tvPlatciDetailCENASAZBADPH: TcxGridDBColumn
        DataBinding.FieldName = 'CENASAZBADPH'
      end
      object tvPlatciDetailCENADPHPROC: TcxGridDBColumn
        DataBinding.FieldName = 'CENADPHPROC'
      end
      object tvPlatciDetailCENADPH: TcxGridDBColumn
        DataBinding.FieldName = 'CENADPH'
      end
    end
  end
  object dtsZSProvize: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM ZSPROVIZE ZSPROVIZE'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE ZSPROVIZE ZSPROVIZE SET'
      '   ZSPROVIZE.DISPECER = :DISPECER,'
      '   ZSPROVIZE.PROC_Z_PROV = :PROC_Z_PROV,'
      '   ZSPROVIZE.PROPLACENO = :PROPLACENO,'
      '   ZSPROVIZE.PROPLACENO_DATUM = :PROPLACENO_DATUM,'
      '   ZSPROVIZE.PROPLACENO_IDSESTAVY = :PROPLACENO_IDSESTAVY'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_ZSPROVIZE_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO ZSPROVIZE('
      '   ID, /*PK*/'
      '   REF_ZASILKA,'
      '   DISPECER,'
      '   PROC_Z_PROV,'
      '   ISMASTER,'
      '   PROPLACENO,'
      '   PROPLACENO_DATUM,'
      '   PROPLACENO_IDSESTAVY)'
      'VALUES ('
      '   :ID,'
      '   :REF_ZASILKA,'
      '   :DISPECER,'
      '   :PROC_Z_PROV,'
      '   :ISMASTER,'
      '   :PROPLACENO,'
      '   :PROPLACENO_DATUM,'
      '   :PROPLACENO_IDSESTAVY)')
    KeyLinks.Strings = (
      'ZSPROVIZE.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeDelete = ProvizeCheckIsMaster
    AfterPost = dtsZSProvizeAfterPost
    OnCalcFields = dtsZSProvizeCalcFields
    OnNewRecord = dtsZSProvizeNewRecord
    DataSource = dsZasilky
    SQL.Strings = (
      'SELECT *'
      'FROM ZSPROVIZE'
      'WHERE REF_ZASILKA = :SID')
    FieldOptions = []
    Left = 348
    Top = 484
    object dtsZSProvizeID: TIntegerField
      Tag = 9
      FieldName = 'ID'
      Required = True
    end
    object dtsZSProvizeREF_ZASILKA: TStringField
      Tag = 9
      FieldName = 'REF_ZASILKA'
      FixedChar = True
      Size = 22
    end
    object dtsZSProvizeISMASTER: TStringField
      DisplayLabel = 'Hlavn'#237
      FieldName = 'ISMASTER'
      FixedChar = True
      Size = 1
    end
    object dtsZSProvizeDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      FieldName = 'DISPECER'
      Size = 10
    end
    object dtsZSProvizePROC_Z_PROV: TIntegerField
      DisplayLabel = 'Procento z provize'
      FieldName = 'PROC_Z_PROV'
    end
    object dtsZSProvizePROPLACENO: TStringField
      DisplayLabel = 'Proplaceno'
      FieldName = 'PROPLACENO'
      FixedChar = True
      Size = 1
    end
    object dtsZSProvizePROPLACENO_DATUM: TDateField
      DisplayLabel = 'Proplaceno k datu'
      FieldName = 'PROPLACENO_DATUM'
    end
    object dtsZSProvizePROPLACENO_IDSESTAVY: TIntegerField
      DisplayLabel = 'ID Sestavy proplacen'#237
      FieldName = 'PROPLACENO_IDSESTAVY'
    end
    object dtsZSProvizeCALC_PROC_PROC: TCurrencyField
      DisplayLabel = 'P'#345'epo'#269'ten'#225' '#269#225'stka'
      FieldKind = fkCalculated
      FieldName = 'CALC_PROC_PROC'
      Calculated = True
    end
  end
  object dsPlatciPol: TDataSource
    AutoEdit = False
    DataSet = ZAPlatciSrazky
    Left = 496
    Top = 55
  end
  object dtsZAFd: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'SID'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'FDSEZNAM.FAKTURADO=REQUIRED'
      'SP_FDPOLZASILKY.FAKTURADO=REQUIRED')
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    DataSource = dsZasilky
    RequestLive = True
    SQL.Strings = (
      'SELECT * from SP_FDPOLZASILKY(:SID)')
    FieldOptions = []
    Left = 420
    Top = 484
    object dtsZAFdREFFD: TStringField
      DisplayLabel = 'ID Faktury'
      FieldName = 'REFFD'
      Origin = 'SP_FDPOLZASILKY.REFFD'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object dtsZAFdID: TIntegerField
      DisplayLabel = 'ID Polo'#382'ky'
      FieldName = 'ID'
      Origin = 'SP_FDPOLZASILKY.ID'
    end
    object dtsZAFdFakturaDO: TStringField
      DisplayLabel = 'Doklad'
      FieldName = 'FAKTURADO'
      Origin = 'FDSEZNAM.FAKTURADO'
      Required = True
      Size = 10
    end
    object dtsZAFdPOLTEXT: TStringField
      DisplayLabel = 'Polo'#382'ka'
      DisplayWidth = 15
      FieldName = 'POLTEXT'
      Origin = 'SP_FDPOLZASILKY.POLTEXT'
      Size = 255
    end
    object dtsZAFdVariabilni: TStringField
      DisplayLabel = 'Variabiln'#237
      DisplayWidth = 10
      FieldName = 'VARIABILNI'
      Origin = 'FDSEZNAM.VARIABILNI'
    end
    object dtsZAFdDATSPLATNOST: TDateTimeField
      DisplayLabel = 'Splatno dne'
      DisplayWidth = 10
      FieldName = 'DATSPLATNOST'
      Origin = 'FDSEZNAM.DATSPLATNOST'
      DisplayFormat = 'dd.mm.yyy'
    end
    object dtsZAFdLIKVOK: TStringField
      DisplayLabel = 'Zlikvidovan'#225
      FieldName = 'LIKVOK'
      Origin = 'FDSEZNAM.LIKVOK'
      Size = 1
    end
    object dtsZAFdCENASUMA: TBCDField
      DisplayLabel = 'Celkem'
      DisplayWidth = 10
      FieldName = 'CENASUMA'
      Origin = 'SP_FDPOLZASILKY.CENASUMA'
      Precision = 18
      Size = 3
    end
    object dtsZAFdISDOPROVIZE: TStringField
      DisplayLabel = 'Do provize'
      FieldName = 'ISDOPROVIZE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object dtsZAFdCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Size = 3
    end
    object dtsZAFdCENASUMASDPH: TBCDField
      DisplayLabel = 'Celkem s DPH'
      DisplayWidth = 10
      FieldName = 'CENASUMASDPH'
      Precision = 18
      Size = 3
    end
  end
end
