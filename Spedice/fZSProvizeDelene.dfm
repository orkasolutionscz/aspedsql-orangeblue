object fraZSProvize: TfraZSProvize
  Left = 0
  Top = 0
  Width = 600
  Height = 272
  TabOrder = 0
  object cxGridKtl1: TcxGrid
    Left = 0
    Top = 26
    Width = 600
    Height = 246
    Align = alClient
    TabOrder = 4
    object tvPrehled: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsView
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
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
      object tvPrehledID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
      end
      object tvPrehledREF_ZASILKA: TcxGridDBColumn
        DataBinding.FieldName = 'REF_ZASILKA'
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
      end
      object tvPrehledISMASTER: TcxGridDBColumn
        DataBinding.FieldName = 'ISMASTER'
        Options.Editing = False
        Width = 31
      end
      object tvPrehledDISPECER: TcxGridDBColumn
        DataBinding.FieldName = 'DISPECER'
        Width = 99
      end
      object tvPrehledPROC_Z_PROV: TcxGridDBColumn
        DataBinding.FieldName = 'PROC_Z_PROV'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.MaxValue = 100.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Width = 106
      end
      object tvPrehledCALC_PROC_PROC: TcxGridDBColumn
        DataBinding.FieldName = 'CALC_PROC_PROC'
        Options.Editing = False
      end
      object tvPrehledPROPLACENO: TcxGridDBColumn
        DataBinding.FieldName = 'PROPLACENO'
        Options.Editing = False
        Width = 26
      end
      object tvPrehledPROPLACENO_DATUM: TcxGridDBColumn
        DataBinding.FieldName = 'PROPLACENO_DATUM'
        Options.Editing = False
      end
      object tvPrehledPROPLACENO_IDSESTAVY: TcxGridDBColumn
        DataBinding.FieldName = 'PROPLACENO_IDSESTAVY'
        Options.Editing = False
        Width = 65
      end
    end
    object cxGridKtl1Level1: TcxGridLevel
      GridView = tvPrehled
    end
  end
  object actlst1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 78
    object DataSetPost1: TDataSetPost
      Caption = 'Zapsat'
      Hint = 'Post'
      ImageIndex = 9
      DataSource = dsView
    end
    object act2: TDataSetDelete
      Caption = 'Odstranit rozd'#283'len'#237' provize'
      Hint = 'Delete'
      ImageIndex = 11
      OnExecute = act2Execute
      DataSource = dsView
    end
    object DataSetCancel1: TDataSetCancel
      Caption = 'Storno'
      Hint = 'Strono'
      ImageIndex = 10
      DataSource = dsView
    end
    object actNewRadek: TAction
      Caption = 'Nov'#233' d'#283'len'#237' provize'
      ImageIndex = 6
      OnExecute = actNewRadekExecute
    end
  end
  object dsView: TDataSource
    Left = 134
    Top = 78
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
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
          ItemName = 'dxb1'
        end
        item
          Visible = True
          ItemName = 'dxb3'
        end
        item
          Visible = True
          ItemName = 'dxb4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb2'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxb1: TdxBarButton
      Action = actNewRadek
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb2: TdxBarButton
      Action = act2
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb3: TdxBarButton
      Action = DataSetPost1
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb4: TdxBarButton
      Action = DataSetCancel1
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb5: TdxBarButton
      Caption = 'Nov8'
      Category = 0
      Visible = ivAlways
    end
  end
end
