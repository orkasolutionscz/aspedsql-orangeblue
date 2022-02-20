inherited frmCustomPick: TfrmCustomPick
  Left = 357
  Top = 222
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmCustomPick'
  ClientHeight = 421
  ClientWidth = 644
  Position = poScreenCenter
  Visible = False
  OnShow = jfsCustomMDIShow
  ExplicitWidth = 660
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrids: TPanel [0]
    Left = 0
    Top = 0
    Width = 546
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 546
      Height = 421
      Align = alClient
      TabOrder = 0
      object tvView: TcxGridDBTableView
        OnDblClick = actVybratExecute
        OnKeyDown = tvViewKeyDown
        OnKeyPress = tvViewKeyPressDlg
        OnMouseDown = tvViewMouseDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataModeController.GridMode = True
        DataController.DataSource = MasterDs
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = tvViewDataControllerSortingChanged
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvView
      end
    end
  end
  object pnlFormButton: TPanel [1]
    Left = 546
    Top = 0
    Width = 98
    Height = 421
    Align = alRight
    ParentColor = True
    TabOrder = 5
    object btnOk: TcxButton
      Left = 8
      Top = 16
      Width = 81
      Height = 25
      Hint = 'V'#253'b'#283'r z'#225'znamu'
      Caption = 'Vybrat'
      ModalResult = 1
      TabOrder = 0
      OnClick = actVybratExecute
    end
    object btnCancel: TcxButton
      Left = 8
      Top = 48
      Width = 81
      Height = 25
      Hint = 'Konec pr'#225'ce s modulem'
      Cancel = True
      Caption = 'Storno'
      ModalResult = 2
      TabOrder = 1
      OnClick = actCloseExecute
    end
  end
  inherited MasterDs: TDataSource
    Left = 196
  end
  inherited ActionList1: TActionList
    inherited actClose: TAction
      Caption = 'Storno'
    end
    object actVybrat: TAction
      Category = 'Formular'
      Caption = 'Vybrat'
      Hint = 'V'#253'b'#283'r z'#225'znamu'
      ImageIndex = 33
      OnExecute = actVybratExecute
    end
    object actGridStyle: TAction
      Category = 'Formular'
      Caption = 'Styl seznamu'
      ImageIndex = 39
      OnExecute = actGridStyleExecute
    end
    object actGridReset: TAction
      Category = 'Formular'
      Caption = 'V'#253'choz'#237' nastaven'#237
      OnExecute = actGridResetExecute
    end
  end
  inherited SQLControler: TjfsSQLContr
    Left = 60
    Top = 128
  end
  object dxBarManager1: TdxBarManager
    AutoAlignBars = True
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
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    RegistryPath = '\Software\LMSS\ASPED\aspedsql\'
    UseSystemFont = True
    Left = 264
    Top = 60
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = actRecFirst
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actRecLast
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actRecFind
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actSQLSpeed
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = actSQLValue
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = actSQLCancel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = actRecDetail
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = actRecNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbSubSeznymy: TdxBarSubItem
      Caption = 'Seznam'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxbGridStyle: TdxBarButton
      Action = actGridStyle
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbGridReset: TdxBarButton
      Action = actGridReset
      Category = 0
    end
    object dxbLocate: TdxBarStatic
      Caption = 'Hled'#225'n'#237': '
      Category = 0
      Hint = 'Hled'#225'n'#237': '
      Style = dmdGlobal.cxStyle11
      Visible = ivAlways
    end
  end
  object cxsModul: TcxStyleRepository
    Left = 128
    Top = 60
    PixelsPerInch = 96
    object RowStyle: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
  end
  object popGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbGridStyle'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 332
    Top = 60
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = tvView
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = popGrid
      end>
    Left = 136
    Top = 128
  end
end
