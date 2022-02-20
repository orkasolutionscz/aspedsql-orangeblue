inherited FPUfrmBrowse: TFPUfrmBrowse
  Left = 584
  Top = 241
  Caption = 'P'#345#237'kazy k '#250'hrad'#283
  ClientHeight = 552
  ClientWidth = 832
  OnFormPrint = gbCustomMDIFormPrint
  ExplicitWidth = 840
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBrowse: TPanel
    Top = 49
    Width = 832
    Height = 503
    ExplicitTop = 49
    ExplicitWidth = 832
    ExplicitHeight = 503
    inherited cxGrid1: TcxGrid
      Width = 832
      Height = 503
      ExplicitWidth = 832
      ExplicitHeight = 503
      inherited tvView: TcxGridDBTableView
        DataController.KeyFieldNames = 'ID'
        object tvViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvViewREF_UCET: TcxGridDBColumn
          DataBinding.FieldName = 'REF_UCET'
        end
        object tvViewUCET: TcxGridDBColumn
          DataBinding.FieldName = 'UCET'
        end
        object tvViewBANKA: TcxGridDBColumn
          DataBinding.FieldName = 'BANKA'
        end
        object tvViewDAT_ZAPISU: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_ZAPISU'
        end
        object tvViewDAT_PLATBY: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_PLATBY'
        end
        object tvViewPRIK_TEXT: TcxGridDBColumn
          DataBinding.FieldName = 'PRIK_TEXT'
        end
        object tvViewPRIKAZ_UDAJ: TcxGridDBColumn
          DataBinding.FieldName = 'PRIKAZ_UDAJ'
        end
        object tvViewSYMB_KONST: TcxGridDBColumn
          DataBinding.FieldName = 'SYMB_KONST'
        end
        object tvViewCELKEM: TcxGridDBColumn
          DataBinding.FieldName = 'CELKEM'
        end
        object tvViewPOZNAMKA: TcxGridDBColumn
          DataBinding.FieldName = 'POZNAMKA'
        end
      end
    end
  end
  inherited MasterDs: TDataSource
    Left = 332
  end
  inherited ActionList1: TActionList
    Left = 128
    inherited actRecFind: TAction
      Visible = False
    end
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        GridView = tvView
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = dxpSeznam
      end>
    Left = 196
  end
  object rspForm: TrsPropSaver [4]
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgForms
    Options = [poStoreDefValues]
    RootSection = 'Modul.FPU.Seznam'
    Properties.Strings = (
      'actShowSQLPanel.Checked'
      'tvView.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    OnAfterLoad = rspFormAfterLoad
    Left = 264
    Top = 128
  end
  object ActionListFD: TActionList [5]
    Images = dmdGlobal.imglDefault
    Left = 60
    Top = 60
    object actFDShowZasilka: TAction
      Caption = 'P'#345'eprava...'
      Hint = 'Zobraz'#237' p'#345'i'#345'azenou p'#345'epravu'
      ImageIndex = 29
    end
    object actFDLikvidace: TAction
      Caption = 'Likvidace...'
      ImageIndex = 53
      ShortCut = 114
    end
  end
  inherited cxsModul: TcxStyleRepository
    Left = 264
    PixelsPerInch = 96
  end
  inherited SQLControler: TjfsSQLContr
    TableName = 'FPUSEZNAM'
    UpdateTableName = 'FPUHR'
    KeyField = 'ID'
    Left = 196
    Top = 128
  end
  object dxBarManager1: TdxBarManager
    AlwaysMerge = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Zaznam'
      'SubMenus'
      'Seznam'
      'Administrator'
      'Filtry'
      'Tisk')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 60
    Top = 128
    DockControlHeights = (
      0
      0
      49
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Z'#225'znam'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 23
      DockingStyle = dsTop
      FloatLeft = 487
      FloatTop = 205
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbModulZavrit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbGrdFirst'
        end
        item
          Visible = True
          ItemName = 'dxbGrdPrior'
        end
        item
          Visible = True
          ItemName = 'dxbGrdNext'
        end
        item
          Visible = True
          ItemName = 'dxbGrdLast'
        end
        item
          Visible = True
          ItemName = 'dxbGrdRefresh'
        end
        item
          Visible = True
          ItemName = 'dxbGrdHledej'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbPrintMng'
        end
        item
          Visible = True
          ItemName = 'dxbPrintPreview'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbExportGrid'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbFltSpeed'
        end
        item
          Visible = True
          ItemName = 'dxbFltHodnota'
        end
        item
          Visible = True
          ItemName = 'dxbFltDialog'
        end
        item
          Visible = True
          ItemName = 'dxbFltStored'
        end
        item
          Visible = True
          ItemName = 'dxbFltClear'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbRecDetail'
        end
        item
          Visible = True
          ItemName = 'dxbRecNew'
        end
        item
          Visible = True
          ItemName = 'dxbRecCopy'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrMain: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 467
      FloatTop = 283
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxiZaznam'
        end
        item
          Visible = True
          ItemName = 'dxiVybery'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbModulZavrit: TdxBarButton
      Action = actClose
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actSQLStartSave
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actSQLStartEdit
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actSQLStartClear
      Category = 0
    end
    object dxbRecCopy: TdxBarButton
      Action = actRecKopie
      Category = 1
    end
    object dxbRecNew: TdxBarButton
      Action = actRecNew
      Category = 1
    end
    object dxbRecDetail: TdxBarButton
      Action = actRecDetail
      Category = 1
    end
    object dxiZaznam: TdxBarSubItem
      Caption = 'Z'#225'znam'
      Category = 2
      MergeKind = mkMergeByCaption
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbRecDetail'
        end
        item
          Visible = True
          ItemName = 'dxbRecNew'
        end
        item
          Visible = True
          ItemName = 'dxbRecCopy'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbAdministrator'
        end>
    end
    object dxiVybery: TdxBarSubItem
      Caption = 'V'#253'b'#283'ry'
      Category = 2
      MergeKind = mkMergeByCaption
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbFltHistory'
        end
        item
          Visible = True
          ItemName = 'dxbFltDnesNove'
        end
        item
          Visible = True
          ItemName = 'dxbFltDnesOpravene'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbFltSpeed'
        end
        item
          Visible = True
          ItemName = 'dxbFltHodnota'
        end
        item
          Visible = True
          ItemName = 'dxbFltStored'
        end
        item
          Visible = True
          ItemName = 'dxbFltDialog'
        end
        item
          Visible = True
          ItemName = 'dxbFltClear'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbFltManager'
        end
        item
          Visible = True
          ItemName = 'dxbFltSave'
        end>
    end
    object dxbGrdFirst: TdxBarButton
      Action = actRecFirst
      Category = 3
    end
    object dxbGrdLast: TdxBarButton
      Action = actRecLast
      Category = 3
    end
    object dxbGrdNext: TdxBarButton
      Action = actRecNext
      Category = 3
    end
    object dxbGrdPrior: TdxBarButton
      Action = actRecPrior
      Category = 3
    end
    object dxbGrdHledej: TdxBarButton
      Action = actRecFind
      Category = 3
    end
    object dxbGrdRefresh: TdxBarButton
      Action = actRecRefresh
      Category = 3
    end
    object dxbGrdOznacit: TdxBarButton
      Action = actSQLOznacit
      Category = 3
    end
    object dxbGrdOznacitZrusit: TdxBarButton
      Action = actSQLZrusitOznacit
      Category = 3
    end
    object dxbGrdSaveSetting: TdxBarButton
      Action = actSQLSaveCurSetting
      Category = 3
    end
    object dxbGrdRestore: TdxBarButton
      Action = actGridRestore
      Category = 3
    end
    object dxbAdmUpravitVse: TdxBarButton
      Action = actRecUpdateAll
      Category = 4
    end
    object dxbAdministrator: TdxBarSubItem
      Caption = 'Administr'#225'tor'
      Category = 4
      Visible = ivAlways
      ImageIndex = 34
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbAdmUpravitVse'
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
          ItemName = 'dxBarButton3'
        end>
    end
    object dxbFltDnesOpravene: TdxBarButton
      Action = actSQLDayChange
      Category = 5
    end
    object dxbFltDnesNove: TdxBarButton
      Action = actSQLDayNew
      Category = 5
    end
    object dxbFltClear: TdxBarButton
      Action = actSQLCancel
      Category = 5
    end
    object dxbFltHistory: TdxBarButton
      Action = actSQLHistory
      Category = 5
    end
    object dxbFltDialog: TdxBarButton
      Action = actSQLOne
      Category = 5
    end
    object dxbFltSave: TdxBarButton
      Action = actSQLSaveWhere
      Category = 5
    end
    object dxbFltManager: TdxBarButton
      Action = actSQLEditWhere
      Category = 5
    end
    object dxbFltHodnota: TdxBarButton
      Action = actSQLSpeed
      Category = 5
    end
    object dxbFltStored: TdxBarButton
      Action = actSQLStored
      Category = 5
      ButtonStyle = bsDropDown
    end
    object dxbFltSpeed: TdxBarButton
      Action = actSQLValue
      Category = 5
    end
    object dxbFltGenerator: TdxBarButton
      Action = actSQLUserWhere
      Category = 5
    end
    object dxb1: TdxBarButton
      Action = actShowSQLPanel
      Category = 5
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxbPrintMng: TdxBarButton
      Action = actPrintMng
      Category = 6
    end
    object dxbPrintPreview: TdxBarButton
      Action = actPrintPrew
      Category = 6
    end
    object dxbExportGrid: TdxBarButton
      Action = actExportGrid
      Category = 6
    end
  end
  object dxpSeznam: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbGrdSaveSetting'
      end
      item
        Visible = True
        ItemName = 'dxbGrdRestore'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxbFltSpeed'
      end
      item
        Visible = True
        ItemName = 'dxbFltHodnota'
      end
      item
        Visible = True
        ItemName = 'dxbFltClear'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxbRecDetail'
      end
      item
        Visible = True
        ItemName = 'dxbRecCopy'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxbGrdFirst'
      end
      item
        Visible = True
        ItemName = 'dxbGrdPrior'
      end
      item
        Visible = True
        ItemName = 'dxbGrdNext'
      end
      item
        Visible = True
        ItemName = 'dxbGrdLast'
      end
      item
        Visible = True
        ItemName = 'dxbGrdRefresh'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxbGrdOznacit'
      end
      item
        Visible = True
        ItemName = 'dxbGrdOznacitZrusit'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxbExportGrid'
      end>
    UseOwnFont = False
    Left = 128
    Top = 128
  end
  object rspSQL: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgSQL
    Options = [poStoreDefValues]
    RootSection = 'FPUfrmBrowse.rspSQL'
    Properties.Strings = (
      'SQLControler.AllRecord'
      'SQLControler.Options.StartingOrder'
      'SQLControler.Options.StartingWhere')
    WhenLoad = wlManual
    WhenSave = wsOnClose
    Left = 332
    Top = 128
  end
end
