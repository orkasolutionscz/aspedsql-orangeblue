object STdmd: TSTdmd
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 671
  Width = 1038
  object dsProvize: TDataSource
    AutoEdit = False
    DataSet = dtsProvize
    Left = 124
    Top = 112
  end
  object dsProvizeFaktura: TDataSource
    DataSet = dtsProvizeFaktura
    Left = 126
    Top = 194
  end
  object dtsCenyPrehled: TIBOQuery
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from SP_ZSPREHLEDCEN')
    FieldOptions = []
    Left = 120
    Top = 32
    object dtsCenyPrehledSID: TStringField
      DisplayLabel = 'ID Z'#225'silky'
      FieldName = 'SID'
      FixedChar = True
      Size = 22
    end
    object dtsCenyPrehledIDPLATCI: TIntegerField
      DisplayLabel = 'ID Pl'#225'tce'
      FieldName = 'IDPLATCI'
    end
    object dtsCenyPrehledZASILKA: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'SP_ZSPREHLEDCEN.ZASILKA'
      Size = 10
    end
    object dtsCenyPrehledDATUM: TDateTimeField
      DisplayLabel = 'Datum nakl'#225'dky'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'SP_ZSPREHLEDCEN.DATUM'
      DisplayFormat = 'dd.mm.yyy'
      AttributeSet = 'Datum'
    end
    object dtsCenyPrehledVDATUM: TDateField
      DisplayLabel = 'Datum vykl'#225'dky'
      FieldName = 'VDATUM'
      Origin = 'SP_ZSPREHLEDCEN.VDATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object dtsCenyPrehledTyp: TStringField
      DisplayWidth = 4
      FieldName = 'TYP'
      Origin = 'SP_ZSPREHLEDCEN.TYP'
      Size = 15
    end
    object dtsCenyPrehledDopravce: TStringField
      DisplayWidth = 25
      FieldName = 'DOPRAVCE'
      Origin = 'SP_ZSPREHLEDCEN.DOPRAVCE'
      Size = 100
    end
    object dtsCenyPrehledPrikazce: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 25
      FieldName = 'PRIKAZCE'
      Origin = 'SP_ZSPREHLEDCEN.PRIKAZCE'
      Size = 100
    end
    object dtsCenyPrehledCO: TStringField
      FieldName = 'CO'
      Origin = 'SP_ZSPREHLEDCEN.CO'
      Size = 3
    end
    object dtsCenyPrehledPCena: TFloatField
      DisplayLabel = 'P.Cena'
      FieldName = 'PCENA'
      Origin = 'SP_ZSPREHLEDCEN.PCENA'
      DisplayFormat = '###,##0.00'
    end
    object dtsCenyPrehledPJednotky: TFloatField
      DisplayLabel = 'P.Jednotky'
      FieldName = 'PJEDNOTKY'
      Origin = 'SP_ZSPREHLEDCEN.PJEDNOTKY'
    end
    object dtsCenyPrehledPJednotka: TStringField
      DisplayLabel = 'P.Jednotka'
      FieldName = 'PJEDNOTKA'
      Origin = 'SP_ZSPREHLEDCEN.PJEDNOTKA'
      Size = 10
    end
    object dtsCenyPrehledPMena: TStringField
      DisplayLabel = 'P.M'#283'na'
      FieldName = 'PMENA'
      Origin = 'SP_ZSPREHLEDCEN.PMENA'
      Size = 3
    end
    object dtsCenyPrehledPCelkem: TFloatField
      DisplayLabel = 'P.Celkem'
      FieldName = 'PCELKEM'
      Origin = 'SP_ZSPREHLEDCEN.PCELKEM'
      DisplayFormat = '###,##0.00'
    end
    object dtsCenyPrehledPCelkemKc: TFloatField
      DisplayLabel = 'P.Celkem K'#269
      FieldName = 'PCELKEMKC'
      Origin = 'SP_ZSPREHLEDCEN.PCELKEMKC'
      DisplayFormat = '###,##0.00'
    end
    object dtsCenyPrehledDCena: TFloatField
      DisplayLabel = 'D.Cena'
      FieldName = 'DCENA'
      Origin = 'SP_ZSPREHLEDCEN.DCENA'
      DisplayFormat = '###,##0.00'
    end
    object dtsCenyPrehledDJednotky: TFloatField
      DisplayLabel = 'D.Jednotky'
      FieldName = 'DJEDNOTKY'
      Origin = 'SP_ZSPREHLEDCEN.DJEDNOTKY'
    end
    object dtsCenyPrehledDJednotka: TStringField
      DisplayLabel = 'D.Jednotka'
      FieldName = 'DJEDNOTKA'
      Origin = 'SP_ZSPREHLEDCEN.DJEDNOTKA'
      Size = 10
    end
    object dtsCenyPrehledDMena: TStringField
      DisplayLabel = 'D.M'#283'na'
      FieldName = 'DMENA'
      Origin = 'SP_ZSPREHLEDCEN.DMENA'
      Size = 3
    end
    object dtsCenyPrehledDCelkem: TFloatField
      DisplayLabel = 'D.Celkem'
      FieldName = 'DCELKEM'
      Origin = 'SP_ZSPREHLEDCEN.DCELKEM'
      DisplayFormat = '###,##0.00'
    end
    object dtsCenyPrehledDCelkemKc: TFloatField
      DisplayLabel = 'D.Celkem K'#269
      FieldName = 'DCELKEMKC'
      Origin = 'SP_ZSPREHLEDCEN.DCELKEMKC'
      DisplayFormat = '###,##0.00'
    end
    object dtsCenyPrehledDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      DisplayWidth = 4
      FieldName = 'DISPECER'
      Origin = 'SP_ZSPREHLEDCEN.DISPECER'
      Size = 10
    end
    object dtsCenyPrehledAUTOSPZ: TStringField
      DisplayLabel = 'SPZ'
      DisplayWidth = 10
      FieldName = 'AUTOSPZ'
      Origin = 'SP_ZSPREHLEDCEN.AUTOSPZ'
      Size = 32
    end
    object dtsCenyPrehledCREAID: TStringField
      FieldName = 'CREAID'
      Origin = 'SP_ZSPREHLEDCEN.CREAID'
      Size = 10
    end
    object dtsCenyPrehledNakladka: TStringField
      DisplayLabel = 'Nakl'#225'dka'
      DisplayWidth = 15
      FieldName = 'NAKLADKA'
      Origin = 'SP_ZSPREHLEDCEN.NAKLADKA'
      Size = 255
    end
    object dtsCenyPrehledVykladka: TStringField
      DisplayLabel = 'Vykl'#225'dka'
      DisplayWidth = 15
      FieldName = 'VYKLADKA'
      Origin = 'SP_ZSPREHLEDCEN.VYKLADKA'
      Size = 255
    end
  end
  object dtsPrikaciPrehled: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'DSTART'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'DSTOP'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT aopkod_obj, Prikazce, COUNT(SID) Pocet, SUM(CENAPLATCI) c' +
        'nPlatci,'
      
        '       SUM(CENADOPRAVCE) cnDopravce, SUM(CENAPROVIZE)  provize, ' +
        'AVG(CENAPROVIZE) provizeavg'
      'FROM ZSSeznam'
      'WHERE (STAV < 2) AND '
      '(DATPORIZENI >= :DSTART and  DATPORIZENI <= :DSTOP)'
      'GROUP BY aopkod_obj, Prikazce'
      'order by Prikazce')
    FieldOptions = []
    Left = 128
    Top = 328
    object dtsPrikaciPrehledaopkod_obj: TStringField
      DisplayLabel = 'AOP'
      FieldName = 'AOPKOD_OBJ'
      Origin = 'ZSSEZNAM.AOPKOD_OBJ'
      Size = 10
    end
    object dtsPrikaciPrehledPrikazce: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 20
      FieldName = 'PRIKAZCE'
      Origin = 'ZSSEZNAM.PRIKAZCE'
      Size = 100
    end
    object dtsPrikaciPrehledPocet: TIntegerField
      DisplayLabel = 'Po'#269'et p'#345'eprav'
      FieldName = 'POCET'
    end
    object dtsPrikaciPrehledcnPlatci: TFloatField
      DisplayLabel = 'Cena pl'#225'tci'
      FieldName = 'CNPLATCI'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
    object dtsPrikaciPrehledcnDopravce: TFloatField
      DisplayLabel = 'Cena dopravce'
      FieldName = 'CNDOPRAVCE'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
    object dtsPrikaciPrehledprovize: TFloatField
      DisplayLabel = 'Sou'#269'et proviz'#237
      DisplayWidth = 15
      FieldName = 'PROVIZE'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
    object dtsPrikaciPrehledprovizeavg: TFloatField
      DisplayLabel = 'Pr'#367'm'#283'rn'#225' provize'
      DisplayWidth = 15
      FieldName = 'PROVIZEAVG'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
  end
  object dtsDopravciPrehled: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'DSTART'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'DSTOP'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT aopkod_dop, Dopravce, COUNT(ZASILKA) Pocet, SUM(CENAPLATC' +
        'I) cnPlatci,'
      
        'SUM(CENADOPRAVCE) cnDopravce, SUM(CENAPROVIZE) provize, AVG(CENA' +
        'PROVIZE) provizeavg'
      'FROM ZSSeznam '
      
        'WHERE (STAV < 2) AND (DATPORIZENI >= :DSTART and  DATPORIZENI <=' +
        ' :DSTOP)'
      'GROUP BY aopkod_dop, dopravce '
      'order by dopravce')
    FieldOptions = []
    Left = 680
    Top = 328
    object dtsDopravciPrehledAOPKOD_DOP: TStringField
      FieldName = 'AOPKOD_DOP'
      Origin = 'ZSSEZNAM.AOPKOD_DOP'
      Visible = False
      Size = 10
    end
    object dtsDopravciPrehledDopravce: TStringField
      DisplayWidth = 15
      FieldName = 'DOPRAVCE'
      Origin = 'ZSSEZNAM.DOPRAVCE'
      Size = 100
    end
    object dtsDopravciPrehledPocet: TIntegerField
      DisplayLabel = 'Po'#269'et p'#345'eprav'
      FieldName = 'POCET'
    end
    object dtsDopravciPrehledcnPlatci: TFloatField
      DisplayLabel = 'Cena pl'#225'tci'
      FieldName = 'CNPLATCI'
      DisplayFormat = '###,##0;-###,##0'
    end
    object dtsDopravciPrehledcnDopravce: TFloatField
      DisplayLabel = 'Cena dopravce'
      FieldName = 'CNDOPRAVCE'
      DisplayFormat = '###,##0;-###,##0'
    end
    object dtsDopravciPrehledprovize: TFloatField
      DisplayLabel = 'Sou'#269'et proviz'#237
      FieldName = 'PROVIZE'
      DisplayFormat = '###,##0;-###,##0'
    end
    object dtsDopravciPrehledprovizeavg: TFloatField
      DisplayLabel = 'Pr'#367'm'#283'rn'#225' provize'
      FieldName = 'PROVIZEAVG'
      DisplayFormat = '###,##0;-###,##0'
    end
  end
  object dtsProvize: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'DSTART'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'DSTOP'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT Mesic, SUM(CENAPROVIZE) PROVIZE '
      'FROM ZS'
      
        'WHERE (STAV < 2) AND (DATPORIZENI >= :DSTART and  DATPORIZENI <=' +
        ' :DSTOP)'
      'GROUP BY MESIC'
      '')
    FieldOptions = []
    Left = 328
    Top = 328
    object dtsProvizeMESIC: TStringField
      FieldName = 'MESIC'
      Size = 7
    end
    object dtsProvizePROVIZE: TBCDField
      DisplayWidth = 10
      FieldName = 'PROVIZE'
      Precision = 18
      Size = 1
    end
  end
  object dtsProvizeFaktura: TIBOQuery
    Params = <
      item
        DataType = ftFixedChar
        Name = 'JEFAKTURA'
        ParamType = ptInput
        Value = 'T'
      end
      item
        DataType = ftDate
        Name = 'DSTART'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'DSTOP'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MESIC, SUM(CENAPROVIZE) PROVIZE'
      'FROM ZS'
      
        'WHERE (STAV < 2) AND (JEFAKTURA = :JEFAKTURA) AND (DATPORIZENI >' +
        '= :DSTART and  DATPORIZENI <= :DSTOP)'
      'GROUP BY MESIC')
    FieldOptions = []
    Left = 432
    Top = 328
    object dtsProvizeFakturaMESIC: TStringField
      FieldName = 'MESIC'
      Size = 7
    end
    object dtsProvizeFakturaPROVIZE: TBCDField
      DisplayWidth = 10
      FieldName = 'PROVIZE'
      Precision = 18
      Size = 1
    end
  end
  object dtsProvizeDispecer: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'DSTART'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'DSTOP'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DISPECER, SUM(CENAPROVIZE) AS PROVIZE FROM ZS'
      
        'WHERE STAV < 2  AND (DATPORIZENI >= :DSTART and  DATPORIZENI <= ' +
        ':DSTOP)'
      'GROUP BY DISPECER')
    FieldOptions = []
    Left = 552
    Top = 328
    object dtsProvizeDispecerDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      FieldName = 'DISPECER'
      Size = 10
    end
    object dtsProvizeDispecerPROVIZE: TFloatField
      DisplayLabel = 'Provize'
      FieldName = 'PROVIZE'
    end
  end
  object dtsPriDis: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'DSTART'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'DSTOP'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT aopkod_obj, Prikazce, Dispecer, COUNT(SID) Pocet, SUM(CEN' +
        'APLATCI) cnPlatci,'
      
        '       SUM(CENADOPRAVCE) cnDopravce, SUM(CENAPROVIZE)  provize, ' +
        'AVG(CENAPROVIZE) provizeavg'
      'FROM ZSSeznam'
      
        'WHERE (STAV < 2) AND (DATPORIZENI >= :DSTART and  DATPORIZENI <=' +
        ' :DSTOP)'
      'GROUP BY aopkod_obj, Prikazce, Dispecer'
      'order by Prikazce')
    FieldOptions = []
    Left = 224
    Top = 328
    object dtsPriDisaopkod_obj: TStringField
      DisplayLabel = 'AOP'
      FieldName = 'aopkod_obj'
      Size = 10
    end
    object dtsPriDisPrikazce: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 20
      FieldName = 'Prikazce'
      Size = 100
    end
    object dtsPriDisDispecer: TStringField
      DisplayLabel = 'Dispe'#269'er'
      FieldName = 'Dispecer'
      Size = 10
    end
    object dtsPriDisPocet: TIntegerField
      DisplayLabel = 'Po'#269'et p'#345'eprav'
      FieldName = 'Pocet'
    end
    object dtsPriDiscnPlatci: TFloatField
      DisplayLabel = 'Cena pl'#225'tci'
      FieldName = 'cnPlatci'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
    object dtsPriDiscnDopravce: TFloatField
      DisplayLabel = 'Cena dopravce'
      FieldName = 'cnDopravce'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
    object dtsPriDisprovize: TFloatField
      DisplayLabel = 'Sou'#269'et proviz'#237
      DisplayWidth = 15
      FieldName = 'provize'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
    object dtsPriDisprovizeavg: TFloatField
      DisplayLabel = 'Pr'#367'm'#283'rn'#225' provize'
      DisplayWidth = 15
      FieldName = 'provizeavg'
      DisplayFormat = '###,##0.00;-###,##0.00'
    end
  end
  object dtsDispAop: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'dstart'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'dstop'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from SP_STDISPPROVIZE(:dstart,:dstop)')
    FieldOptions = []
    Left = 680
    Top = 32
    object dtsDispAopIDPOZICE: TStringField
      FieldName = 'IDPOZICE'
      Origin = 'SP_STDISPPROVIZE.IDPOZICE'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object dtsDispAopPOZICE: TStringField
      DisplayLabel = 'P'#345'eprava'
      FieldName = 'POZICE'
      Origin = 'SP_STDISPPROVIZE.POZICE'
      Size = 10
    end
    object dtsDispAopDISPECER: TStringField
      DisplayLabel = 'Disponent'
      FieldName = 'DISPECER'
      Origin = 'SP_STDISPPROVIZE.DISPECER'
      Size = 10
    end
    object dtsDispAopAOP_NAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'AOP_NAZEV'
      Origin = 'SP_STDISPPROVIZE.AOP_NAZEV'
      Size = 100
    end
    object dtsDispAopCENAPROVIZE: TBCDField
      DisplayLabel = 'Provize celkem'
      DisplayWidth = 10
      FieldName = 'CENAPROVIZE'
      Origin = 'SP_STDISPPROVIZE.CENAPROVIZE'
      Precision = 18
      Size = 1
    end
    object dtsDispAopAOP_DSTART: TDateField
      DisplayLabel = 'Firma aktivn'#237' od'
      FieldName = 'AOP_DSTART'
      Origin = 'SP_STDISPPROVIZE.AOP_DSTART'
    end
    object dtsDispAopAOP_CNSTART: TBCDField
      DisplayLabel = 'Startovac'#237' provize (%)'
      FieldName = 'AOP_CNSTART'
      Origin = 'SP_STDISPPROVIZE.AOP_CNSTART'
      Precision = 18
      Size = 3
    end
    object dtsDispAopAOP_CNCONT: TBCDField
      DisplayLabel = 'B'#283#382'n'#225' provize (%)'
      FieldName = 'AOP_CNCONT'
      Origin = 'SP_STDISPPROVIZE.AOP_CNCONT'
      Precision = 18
      Size = 3
    end
    object dtsDispAopPROCCALCUSED: TBCDField
      DisplayLabel = 'Pou'#382'it'#225' provize (%)'
      FieldName = 'PROCCALCUSED'
      Origin = 'SP_STDISPPROVIZE.PROCCALCUSED'
      Precision = 18
      Size = 3
    end
    object dtsDispAopCALCPROVIZE: TBCDField
      DisplayLabel = 'Vypo'#269#237'tan'#225' provize'
      FieldName = 'CALCPROVIZE'
      Origin = 'SP_STDISPPROVIZE.CALCPROVIZE'
      Precision = 18
      Size = 3
    end
    object dtsDispAopAOPKOD_OBJ: TStringField
      FieldName = 'AOPKOD_OBJ'
      Origin = 'SP_STDISPPROVIZE.AOPKOD_OBJ'
      Visible = False
      Size = 10
    end
  end
  object dtsDispAll: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'DSTART'
        ParamType = ptInput
        Value = 41275d
      end
      item
        DataType = ftDate
        Name = 'dstop'
        ParamType = ptInput
        Value = 41639d
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    KeyLinks.Strings = (
      'ZSSEZNAM.SID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    zsseznam.sid,'
      '    zsseznam.zasilka,'
      '    zsseznam.dispecer,'
      '    zsseznam.mesic,'
      '    zsseznam.prikazce,'
      '    zsseznam.cenaprovize sumprovize,'
      
        '    iif(aop.vlastnik = zsseznam.dispecer, zsseznam.cenaprovize,0' +
        ') sumvlastnifirma'
      'from zsseznam'
      '   left outer join aop on (zsseznam.aopkod_obj = aop.aopkod)'
      '   where'
      '      ('
      '       (ZSSeznam.stav < 2) and'
      '       (ZSSeznam.datporizeni >= :DSTART)'
      '          and '
      '       (ZSSeznam.datporizeni <= :dstop)'
      '       )'
      'order by mesic, prikazce')
    FieldOptions = []
    Left = 680
    Top = 104
    object dtsDispAllSID: TStringField
      DisplayLabel = 'Index'
      FieldName = 'SID'
      Required = True
      Visible = False
      FixedChar = True
      Size = 22
    end
    object dtsDispAllZASILKA: TStringField
      DisplayLabel = 'P'#345'eprava'
      FieldName = 'ZASILKA'
      Required = True
      Size = 10
    end
    object dtsDispAllPRIKAZCE: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 25
      FieldName = 'PRIKAZCE'
      Size = 100
    end
    object dtsDispAllMESIC: TStringField
      DisplayLabel = 'M'#283's'#237'c'
      FieldName = 'MESIC'
      Size = 7
    end
    object dtsDispAllDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      FieldName = 'DISPECER'
      Size = 10
    end
    object dtsDispAllSUMPROVIZE: TBCDField
      DisplayLabel = 'Provize celkem'
      FieldName = 'SUMPROVIZE'
      ReadOnly = True
      Precision = 18
      Size = 1
    end
    object dtsDispAllSUMVLASTNIFIRMA: TBCDField
      DisplayLabel = 'Provize VLF'
      FieldName = 'SUMVLASTNIFIRMA'
      ReadOnly = True
      Precision = 18
      Size = 1
    end
  end
end
