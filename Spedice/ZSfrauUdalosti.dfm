object ZSfraUdalosti: TZSfraUdalosti
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object cxGridKtl1: TcxGrid
    Left = 0
    Top = 26
    Width = 451
    Height = 278
    Align = alClient
    TabOrder = 0
    object tvPrehled: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsView
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPrehledID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Options.Editing = False
      end
      object tvPrehledZasilka: TcxGridDBColumn
        DataBinding.FieldName = 'Zasilka'
        Visible = False
        Options.Editing = False
      end
      object tvPrehledHisttyp: TcxGridDBColumn
        DataBinding.FieldName = 'Histtyp'
        Options.Editing = False
      end
      object tvPrehledHisttext: TcxGridDBColumn
        DataBinding.FieldName = 'Histtext'
        Width = 206
      end
      object tvPrehledCreaid: TcxGridDBColumn
        DataBinding.FieldName = 'Creaid'
        Visible = False
        Options.Editing = False
      end
      object tvPrehledCreadate: TcxGridDBColumn
        DataBinding.FieldName = 'Creadate'
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object tvPrehledUpdid: TcxGridDBColumn
        DataBinding.FieldName = 'Updid'
        Visible = False
        Options.Editing = False
      end
      object tvPrehledUpddate: TcxGridDBColumn
        DataBinding.FieldName = 'Upddate'
        Visible = False
        Options.Editing = False
      end
      object tvPrehledState: TcxGridDBColumn
        DataBinding.FieldName = 'State'
        Options.Editing = False
        Width = 115
      end
    end
    object cxGridKtl1Level1: TcxGridLevel
      GridView = tvPrehled
    end
  end
  object ActionList2: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 30
    object actNew: TAction
      Caption = 'Nov'#253'...'
      ImageIndex = 6
      OnExecute = actNewExecute
    end
    object actEdit: TDataSetEdit
      Caption = 'Opravit...'
      Hint = 'Edit'
      ImageIndex = 5
      DataSource = dsView
    end
    object actDelete: TAction
      Caption = 'Odstranit'
      ImageIndex = 11
      OnExecute = actDeleteExecute
    end
    object actCancel: TDataSetCancel
      Caption = 'Zapsat'
      ImageIndex = 10
      Visible = False
      DataSource = dsView
    end
    object actPost: TDataSetPost
      Caption = 'Zapsat'
      ImageIndex = 9
      DataSource = dsView
    end
  end
  object dsView: TDataSource
    AutoEdit = False
    DataSet = ZSdmd.ZAViewHistorie
    Left = 118
    Top = 30
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
    Left = 206
    Top = 30
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
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
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
      Action = actNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = actDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actPost
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = actCancel
      Category = 0
    end
  end
end
