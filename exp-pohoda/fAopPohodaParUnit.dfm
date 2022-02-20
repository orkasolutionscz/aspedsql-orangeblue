object frmAopParovani: TfrmAopParovani
  Left = 0
  Top = 0
  Caption = 'P'#225'rov'#225'n'#237' adres A-SPED < POHODA SQL '
  ClientHeight = 530
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxgrd1: TcxGrid
    Left = 0
    Top = 0
    Width = 793
    Height = 489
    Align = alClient
    TabOrder = 0
    object tvAspedPohoda: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsAopAsped
      DataController.KeyFieldNames = 'AOPKOD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Adres'#225#345' A-SPED'
          Width = 476
        end
        item
          Caption = 'Adres'#225#345' POHODA SQL'
          Width = 170
        end>
      object tvAspedPohodaAOPKOD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AOPKOD'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvAspedPohodaKOD_ADPOHODA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KOD_ADPOHODA'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvAspedPohodaNAZEV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAZEV'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvAspedPohodaDIC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIC'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvAspedPohodaICO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ICO'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvAspedPohodaKOD_ADPOHODAEdit: TcxGridDBBandedColumn
        Caption = 'Firma'
        DataBinding.FieldName = 'KOD_ADPOHODA'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ClearKey = 16472
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownSizeable = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'Firma'
          end
          item
            FieldName = 'DIC'
          end
          item
            FieldName = 'ICO'
          end>
        Properties.ListSource = dsdsAopPohoda
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object glvGrid1Level1: TcxGridLevel
      GridView = tvAspedPohoda
    end
  end
  object pnlBoorom: TPanel
    Left = 0
    Top = 489
    Width = 793
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      793
      41)
    object btn1: TcxButton
      Left = 714
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Zav'#345#237't'
      TabOrder = 0
      OnClick = btn1Click
    end
  end
  object dsAopAsped: TDataSource
    AutoEdit = False
    DataSet = dtsAopUpdate
    Left = 32
    Top = 24
  end
  object dtsAopUpdate: TIBOQuery
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      'UPDATE AOP AOP SET'
      '   AOP.KOD_ADPOHODA = :KOD_ADPOHODA'
      'WHERE'
      '   AOPKOD = :OLD_AOPKOD')
    IB_Connection = dmdConnect.IBOMainDB
    KeyLinks.Strings = (
      'AOP.AOPKOD')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AOPKOD'
      '     , KOD_ADPOHODA'
      '     , NAZEV'
      '     , DIC'
      '     , ICO'
      'FROM AOP'
      'ORDER BY NAZEV')
    FieldOptions = []
    Left = 32
    Top = 88
    object dtsAopUpdateAOPKOD: TStringField
      DisplayLabel = 'A-SPED K'#243'd'
      FieldName = 'AOPKOD'
      Required = True
      Size = 10
    end
    object dtsAopUpdateKOD_ADPOHODA: TIntegerField
      DisplayLabel = 'ID Pohoda'
      FieldName = 'KOD_ADPOHODA'
    end
    object dtsAopUpdateNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Size = 100
    end
    object dtsAopUpdateDIC: TStringField
      DisplayLabel = 'Di'#269
      FieldName = 'DIC'
      Size = 14
    end
    object dtsAopUpdateICO: TStringField
      DisplayLabel = 'I'#269
      FieldName = 'ICO'
      Size = 10
    end
  end
  object grpm1: TcxGridPopupMenu
    Grid = cxgrd1
    PopupMenus = <>
    Left = 384
    Top = 120
  end
  object dsdsAopPohoda: TDataSource
    DataSet = dmdSqlPohoda.dtsADLocate
    Left = 112
    Top = 24
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdConnect.rstrg1
    RootSection = 'Parovani Adres'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 184
    Top = 184
  end
end
