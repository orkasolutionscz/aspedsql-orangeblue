object fraZSDokumenty: TfraZSDokumenty
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object cxGridKtl1: TcxGrid
    Left = 0
    Top = 22
    Width = 451
    Height = 282
    Align = alClient
    TabOrder = 4
    object tvPrehled: TcxGridDBTableView
      OnDblClick = actDOCEditExecute
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsView
      DataController.KeyFieldNames = 'ZNACKA'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPrehledZNACKA: TcxGridDBColumn
        DataBinding.FieldName = 'ZNACKA'
      end
      object tvPrehledAOPKOD: TcxGridDBColumn
        DataBinding.FieldName = 'AOPKOD'
        Visible = False
      end
      object tvPrehledOWNER: TcxGridDBColumn
        DataBinding.FieldName = 'OWNER'
        Visible = False
      end
      object tvPrehledNAZEV: TcxGridDBColumn
        DataBinding.FieldName = 'NAZEV'
      end
      object tvPrehledDATUM: TcxGridDBColumn
        DataBinding.FieldName = 'DATUM'
      end
      object tvPrehledVEC: TcxGridDBColumn
        DataBinding.FieldName = 'VEC'
      end
    end
    object cxGridKtl1Level1: TcxGridLevel
      GridView = tvPrehled
    end
  end
  object acltDOCPrehled: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 30
    object actDOCEdit: TAction
      Caption = 'Otev'#345#237't...'
      ImageIndex = 5
      OnExecute = actDOCEditExecute
      OnUpdate = actDOCEditUpdate
    end
    object actDOCNew: TAction
      Caption = 'Nov'#253'...'
      ImageIndex = 6
      OnExecute = actDOCNewExecute
    end
    object actAVizo: TAction
      Caption = 'Nov'#233' Av'#237'zo'
      ImageIndex = 6
      OnExecute = actAVizoExecute
    end
    object actDOCCopy: TAction
      Caption = 'Kopie...'
      ImageIndex = 7
      OnExecute = actDOCCopyExecute
    end
  end
  object dsView: TDataSource
    AutoEdit = False
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
      22
      0)
    object dxBarManager1Bar1: TdxBar
      BorderStyle = bbsNone
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
        end>
      MultiLine = True
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = actDOCEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actDOCNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Caption = #352'ablony'
      Category = 0
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = actDOCSablonyExecute
    end
    object dxBarButton4: TdxBarButton
      Action = actAVizo
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
end
