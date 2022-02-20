object frmAopPrevodAdresy: TfrmAopPrevodAdresy
  Left = 0
  Top = 0
  Caption = 'P'#345'evod adresy'
  ClientHeight = 202
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edOldAOP: TcxTextEdit
    Left = 102
    Top = 32
    Enabled = False
    ParentFont = False
    Properties.ReadOnly = True
    TabOrder = 0
    Text = 'edOldAOP'
    Width = 83
  end
  object lbl1: TcxLabel
    Left = 12
    Top = 34
    Caption = 'P'#367'vodn'#237' adresa : '
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edNovyKod: TcxLookupComboBox
    Left = 96
    Top = 96
    ParentFont = False
    Properties.DropDownAutoSize = True
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownSizeable = True
    Properties.DropDownWidth = 200
    Properties.KeyFieldNames = 'AOPKOD'
    Properties.ListColumns = <
      item
        Fixed = True
        SortOrder = soAscending
        FieldName = 'NAZEV'
      end
      item
        Fixed = True
        SortOrder = soAscending
        FieldName = 'ADRESA1'
      end
      item
        FieldName = 'AOPKOD'
      end>
    Properties.ListSource = dsAopList
    TabOrder = 2
    Width = 393
  end
  object lbl2: TcxLabel
    Left = 12
    Top = 98
    Caption = 'Nov'#225' adresa : '
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object chkDeleteOld: TcxCheckBox
    Left = 96
    Top = 122
    Caption = 'Po '#250'sp'#283#353'n'#233'm p'#345'evodu odstranit p'#367'vodn'#237' adresu'
    ParentColor = False
    ParentFont = False
    State = cbsChecked
    TabOrder = 4
    Transparent = True
    Width = 305
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 161
    Width = 498
    Height = 41
    Align = alBottom
    TabOrder = 5
    object btnCancel: TcxButton
      Left = 408
      Top = 8
      Width = 81
      Height = 25
      Cancel = True
      Caption = 'Storno'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOk: TcxButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'P'#345'evod'
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
  object ed1: TcxDBTextEdit
    Left = 184
    Top = 32
    DataBinding.DataField = 'NAZEV'
    DataBinding.DataSource = dsOldAOP
    Enabled = False
    ParentFont = False
    TabOrder = 6
    Width = 305
  end
  object dtsAopSource: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    KeyLinks.Strings = (
      'AOP.AOPKOD')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AOPKOD'
      '     , NAZEV'
      '     , ADRESA2'
      '     , ADRESA3'
      '     , KODZEME'
      '     , TELEFON'
      '     , FAX'
      '     , GSM'
      '     , EMAIL'
      '     , ADRESA1'
      'FROM AOP'
      'where AOPKOD = :AOPKOD')
    FieldOptions = []
    Left = 262
    Top = 56
    object dtsAopSourceAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Required = True
      Size = 10
    end
    object dtsAopSourceNAZEV: TStringField
      FieldName = 'NAZEV'
      Size = 100
    end
    object dtsAopSourceADRESA1: TStringField
      FieldName = 'ADRESA1'
      Size = 32
    end
    object dtsAopSourceADRESA2: TStringField
      FieldName = 'ADRESA2'
      Size = 32
    end
    object dtsAopSourceADRESA3: TStringField
      FieldName = 'ADRESA3'
      Size = 40
    end
    object dtsAopSourceKODZEME: TStringField
      FieldName = 'KODZEME'
      Size = 4
    end
    object dtsAopSourceTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 50
    end
    object dtsAopSourceFAX: TStringField
      FieldName = 'FAX'
      Size = 50
    end
    object dtsAopSourceGSM: TStringField
      FieldName = 'GSM'
      Size = 50
    end
    object dtsAopSourceEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object dsOldAOP: TDataSource
    DataSet = dtsAopSource
    Left = 264
    Top = 8
  end
  object dtsAopList: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AOPKOD'
      '     , NAZEV'
      '     , ADRESA1'
      '     , ADRESA2'
      '     , ADRESA3'
      '     , ICO'
      '     , DIC'
      '     , TELEFON'
      '     , FAX'
      '     , GSM'
      '     , EMAIL'
      'FROM AOP'
      'WHERE AOP.AOPKOD <> :AOPKOD')
    FieldOptions = []
    Left = 328
    Top = 56
    object dtsAopListAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Required = True
      Size = 10
    end
    object dtsAopListNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Size = 100
    end
    object dtsAopListADRESA1: TStringField
      FieldName = 'ADRESA1'
      Size = 32
    end
    object dtsAopListADRESA2: TStringField
      DisplayLabel = 'Adresa'
      DisplayWidth = 10
      FieldName = 'ADRESA2'
      Size = 32
    end
    object dtsAopListADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Size = 40
    end
    object dtsAopListICO: TStringField
      DisplayLabel = 'I'#269
      FieldName = 'ICO'
      Size = 10
    end
    object dtsAopListDIC: TStringField
      DisplayLabel = 'Di'#269
      FieldName = 'DIC'
      Size = 14
    end
  end
  object dsAopList: TDataSource
    DataSet = dtsAopList
    Left = 328
    Top = 8
  end
end
