object dmdSqlPohoda: TdmdSqlPohoda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 352
  Width = 544
  object conPohodaSQL: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=StwPh_25439375_2015;Data Sou' +
      'rce=VMW-DXE\POHODASQLE;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 32
  end
  object dtsADLocate: TADODataSet
    Connection = conPohodaSQL
    CursorType = ctStatic
    CommandText = 'select ID, Firma, ICO, DIC from AD'
    Parameters = <>
    Left = 144
    Top = 32
    object dtsADLocateID: TAutoIncField
      DisplayLabel = 'ID K'#243'd'
      FieldName = 'ID'
      ReadOnly = True
    end
    object dtsADLocateFirma: TStringField
      DisplayLabel = 'N'#225'zev'
      DisplayWidth = 25
      FieldName = 'Firma'
      Size = 255
    end
    object dtsADLocateICO: TStringField
      DisplayLabel = 'I'#269
      FieldName = 'ICO'
      Size = 15
    end
    object dtsADLocateDIC: TStringField
      DisplayLabel = 'Di'#269
      DisplayWidth = 10
      FieldName = 'DIC'
      Size = 18
    end
  end
  object dtsGetKursDatId: TADODataSet
    Connection = conPohodaSQL
    CursorType = ctStatic
    CommandText = 
      'SELECT TOP 1 ID FROM sCKurs where datum <= :vstdatum  order by d' +
      'atum desc'
    Parameters = <
      item
        Name = 'vstdatum'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 144
    Top = 104
    object dtsGetKursDatIdID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object dtsGetKursMena: TADODataSet
    Connection = conPohodaSQL
    CursorType = ctStatic
    CommandText = 
      'select NBs from sCKurspol where RefAg = :refkurz and Kod = :refm' +
      'ena'
    Parameters = <
      item
        Name = 'refkurz'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'refmena'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 144
    Top = 168
    object dtsGetKursMenaNBs: TFloatField
      FieldName = 'NBs'
    end
  end
end
