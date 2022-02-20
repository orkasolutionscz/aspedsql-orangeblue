object ZSfraOstNakl: TZSfraOstNakl
  Left = 0
  Top = 0
  Width = 593
  Height = 314
  Align = alClient
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 304
  object cxGridKtl1: TcxGrid
    Left = 0
    Top = 26
    Width = 593
    Height = 288
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 451
    ExplicitHeight = 278
    object tvPrehled: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsView
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = tvPrehledCENAPROVIZE
          DisplayText = 'Celkov'#253' sou'#269'et'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPrehledRADEK: TcxGridDBColumn
        DataBinding.FieldName = 'RADEK'
        Visible = False
      end
      object tvPrehledPOPIS: TcxGridDBColumn
        DataBinding.FieldName = 'POPIS'
        RepositoryItem = dmdGlobal.repFaktPolTextyCombo
        Width = 210
      end
      object tvPrehledCENAPROVIZE: TcxGridDBColumn
        DataBinding.FieldName = 'CENAPROVIZE'
        RepositoryItem = dmdGlobal.repCena
        Width = 164
      end
      object tvPrehledColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'FAKTUROVANO'
        RepositoryItem = dmdGlobal.repBoolChar
        Width = 61
      end
    end
    object cxGridKtl1Level1: TcxGridLevel
      GridView = tvPrehled
    end
  end
  object ActionList2: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 78
    object DataSetInsert1: TDataSetInsert
      Caption = 'Nov'#253'...'
      Hint = 'Nov'#253' z'#225'znam'
      ImageIndex = 6
      DataSource = dsView
    end
    object actInsert: TAction
      Caption = 'Nov'#253'...'
      ImageIndex = 6
      OnExecute = actInsertExecute
    end
    object DataSetPost1: TDataSetPost
      Caption = 'Zapsat'
      Hint = 'Post'
      ImageIndex = 9
      DataSource = dsView
    end
    object DataSetDelete1: TDataSetDelete
      Caption = 'Odstranit'
      Hint = 'Delete'
      ImageIndex = 11
      DataSource = dsView
    end
    object DataSetCancel1: TDataSetCancel
      Caption = 'Storno'
      Hint = 'Strono'
      ImageIndex = 10
      DataSource = dsView
    end
    object actMutiSelect: TAction
      Caption = 'S'#269#237'tat jen vybran'#233
      ImageIndex = 61
      OnExecute = actMutiSelectExecute
    end
  end
  object dsView: TDataSource
    DataSet = ZSdmd.ZAOstNakl
    Left = 134
    Top = 78
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    RegistryPath = '\Software\LMSS\ASPED\aspedsql\'
    UseSystemFont = True
    Left = 222
    Top = 78
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Hlavni'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 294
      FloatTop = 238
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb1'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = actInsert
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = DataSetDelete1
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = DataSetPost1
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = DataSetCancel1
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb1: TdxBarButton
      Action = actMutiSelect
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
  end
end
