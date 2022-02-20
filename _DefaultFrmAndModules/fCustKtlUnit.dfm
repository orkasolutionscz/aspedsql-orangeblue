object frmCusKtl: TfrmCusKtl
  Left = 139
  Top = 0
  ActiveControl = cxGridKtl1
  BorderIcons = [biSystemMenu]
  Caption = 'Katlogov'#233' okno'
  ClientHeight = 638
  ClientWidth = 472
  Color = clBtnFace
  Constraints.MaxWidth = 480
  Constraints.MinHeight = 468
  Constraints.MinWidth = 480
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  IsDataChanged = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGlobalData: TPanel
    Left = 0
    Top = 26
    Width = 472
    Height = 255
    Align = alTop
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object dxlHlavni: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 470
      Height = 253
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dmdGlobal.dxlsFlat
      object dxlgLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = dmdGlobal.dxlsFlat
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
    end
  end
  object dxbcTop: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 472
    Height = 26
    Align = dalTop
    BarManager = dxBarManager1
  end
  object pnlSeznam: TPanel
    Left = 0
    Top = 281
    Width = 472
    Height = 216
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      472
      216)
    object cxGridKtl1: TcxGrid
      Left = 16
      Top = 24
      Width = 441
      Height = 180
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object tvKatalog: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Filter.Visible = False
        DataController.DataSource = dsZaznam
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
      end
      object cxGridKtl1Level1: TcxGridLevel
        GridView = tvKatalog
      end
    end
  end
  object pnlTlacitka: TPanel
    Left = 0
    Top = 592
    Width = 472
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 7
    Visible = False
    object pnlButtons: TPanel
      Left = 304
      Top = 0
      Width = 168
      Height = 46
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 8
        Top = 8
        Width = 73
        Height = 33
        Action = actSelect
        Default = True
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton2: TcxButton
        Left = 88
        Top = 8
        Width = 73
        Height = 33
        Action = actCancel
        TabOrder = 1
      end
    end
  end
  object ActionList1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 100
    Top = 100
    object actOk: TAction
      Category = 'Formular'
      Caption = 'Zav'#345#237't'
      Hint = 
        'Ukon'#269'en'#237' pr'#225'ce s formul'#225#345'em.'#13#10'Proveden'#233' zm'#283'ny budou zaps'#225'ny do t' +
        'abulky.'
      ImageIndex = 28
      ShortCut = 119
      OnExecute = actOkExecute
    end
    object actRecNew: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Nov'#253
      Hint = 'Nov'#253' z'#225'znam'
      ImageIndex = 6
      ShortCut = 16462
      DataSource = dsZaznam
    end
    object actRecCopy: TAction
      Category = 'Dataset'
      Caption = 'Kopie'
      Hint = 'Kopie aktu'#225'ln'#237'ho z'#225'znamu'
      ImageIndex = 7
      ShortCut = 16459
      OnExecute = actRecCopyExecute
    end
    object actRecEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Opravit'
      Hint = 'Oprava aktu'#225'ln'#237'ho z'#225'znamu'
      ImageIndex = 8
      ShortCut = 16453
      DataSource = dsZaznam
    end
    object actRecPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'Zapsat'
      Hint = 'Zapsat proveden'#233' zm'#283'ny'
      ImageIndex = 9
      ShortCut = 16467
      DataSource = dsZaznam
    end
    object actRecCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Storno'
      Hint = 'P'#345'eru'#353'en'#237' opravy (vkl'#225'd'#225'n'#237')'
      ImageIndex = 10
      ShortCut = 27
      DataSource = dsZaznam
    end
    object actRecDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Odstranit'
      Hint = 'Odstranit aktu'#225'ln'#237' z'#225'znam'
      ImageIndex = 11
      ShortCut = 16430
      OnExecute = actRecDeleteExecute
      DataSource = dsZaznam
    end
    object actCancel: TAction
      Category = 'Formular'
      Caption = 'Zp'#283't'
      OnExecute = actCancelExecute
    end
    object actSelect: TAction
      Category = 'Formular'
      Caption = 'Vybrat'
      OnExecute = actOkExecute
    end
  end
  object dsZaznam: TDataSource
    OnStateChange = dsZaznamStateChange
    OnDataChange = dsZaznamDataChange
    Left = 188
    Top = 100
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    NotDocking = [dsNone, dsLeft, dsRight]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 364
    Top = 100
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Hlavni'
      CaptionButtons = <>
      DockControl = dxbcTop
      DockedDockControl = dxbcTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 294
      FloatTop = 238
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavRefresh1'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          UserDefine = [udPaintStyle]
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxbOk'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton3: TdxBarButton
      Action = actRecNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actRecCopy
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = actRecEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = actRecPost
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = actRecCancel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = actRecDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbOk: TdxBarButton
      Action = actOk
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'SEPARATOR'
      Category = 0
      Hint = 'SEPARATOR'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxb3: TdxBarLargeButton
      Action = actRecNew
      Category = 0
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavRefresh1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = True
    DataSource = dsZaznam
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnLast, dxbnRefresh]
    Left = 276
    Top = 100
  end
end
