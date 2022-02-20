inherited DocBrowseFrm: TDocBrowseFrm
  Left = 599
  Top = 281
  Caption = 'Seznam korespondence'
  ClientHeight = 653
  ClientWidth = 889
  OnFormPrint = gbCustomMDIFormPrint
  ExplicitWidth = 897
  ExplicitHeight = 680
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBrowse: TPanel
    Top = 49
    Width = 889
    Height = 604
    ExplicitTop = 49
    ExplicitWidth = 889
    ExplicitHeight = 604
    inherited cxGrid1: TcxGrid
      Width = 889
      Height = 604
      ExplicitWidth = 889
      ExplicitHeight = 604
      inherited tvView: TcxGridDBTableView
        DataController.KeyFieldNames = 'SID'
        OptionsData.Editing = True
        Styles.OnGetContentStyle = tvViewStylesGetContentStyle
        object tvViewSID: TcxGridDBColumn
          DataBinding.FieldName = 'SID'
          Visible = False
          Options.Editing = False
        end
        object tvViewZNACKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZNACKA'
          Options.Editing = False
        end
        object tvViewVYBER: TcxGridDBColumn
          DataBinding.FieldName = 'VYBER'
          Options.Editing = False
        end
        object tvViewDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
          Options.Editing = False
        end
        object tvViewVEC: TcxGridDBColumn
          DataBinding.FieldName = 'VEC'
          Options.Editing = False
        end
        object tvViewNAZEV: TcxGridDBColumn
          DataBinding.FieldName = 'NAZEV'
          Options.Editing = False
        end
        object tvViewADRESA3: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA3'
          Options.Editing = False
        end
        object tvViewZEME: TcxGridDBColumn
          DataBinding.FieldName = 'ZEME'
          Options.Editing = False
        end
        object tvViewCREAID: TcxGridDBColumn
          DataBinding.FieldName = 'CREAID'
          Visible = False
          Options.Editing = False
        end
        object tvViewCREADATE: TcxGridDBColumn
          DataBinding.FieldName = 'CREADATE'
          Visible = False
          Options.Editing = False
        end
        object tvViewUPDID: TcxGridDBColumn
          DataBinding.FieldName = 'UPDID'
          Visible = False
          Options.Editing = False
        end
        object tvViewUPDDATE: TcxGridDBColumn
          DataBinding.FieldName = 'UPDDATE'
          Visible = False
          Options.Editing = False
        end
        object tvViewSTATEUSERCOLOR: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSERCOLOR'
          Visible = False
        end
        object tvViewSTATEUSER: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSER'
          Visible = False
        end
      end
    end
  end
  inherited MasterDs: TDataSource
    AutoEdit = True
  end
  inherited ActionList1: TActionList
    Left = 60
    object actExportData: TAction
      Category = 'Formular'
      Caption = 'Export ...'
    end
    object actSetUS: TAction
      Caption = 'U'#382'ivatelsk'#253' stav'
      ImageIndex = 40
      OnExecute = actSetUSExecute
    end
    object actSetUSClear: TAction
      Caption = 'Bez u'#382'ivatelsk'#233'ho stavu'
      ImageIndex = 37
      OnExecute = actSetUSClearExecute
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
  end
  object rspPropForm: TrsPropSaver [4]
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgForms
    Options = [poStoreDefValues]
    RootSection = 'DOC.Modul'
    Properties.Strings = (
      'tvView.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 332
    Top = 128
  end
  inherited cxsModul: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited SQLControler: TjfsSQLContr
    TableName = 'DOCSeznam'
    UpdateTableName = 'DOC'
    KeyField = 'SID'
    ZnackaFindPole = 'ZNACKA'
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
    Left = 340
    Top = 60
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
          Visible = True
          ItemName = 'dxbPrintToEmail'
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
        end
        item
          Visible = True
          ItemName = 'dxbSubSeznam'
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
    object dxBarButton5: TdxBarButton
      Action = actSetUSClear
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
    object dxBarButton4: TdxBarButton
      Action = actSetUS
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
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
    object dxbSubSeznam: TdxBarSubItem
      Caption = 'Seznam'
      Category = 2
      MergeOrder = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbGrdRestore'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbGridStyle'
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
          ItemName = 'dxbGrdOznacit'
        end
        item
          Visible = True
          ItemName = 'dxbGrdOznacitZrusit'
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
    object dxbGridStyle: TdxBarButton
      Action = actGridStyle
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
      DropDownMenu = dxpPodm
    end
    object dxbFltSpeed: TdxBarButton
      Action = actSQLValue
      Category = 5
    end
    object dxbFltGenerator: TdxBarButton
      Action = actSQLUserWhere
      Category = 5
    end
    object dxbPrintMng: TdxBarButton
      Action = actPrintMng
      Category = 6
      PaintStyle = psCaptionInMenu
    end
    object dxbPrintPreview: TdxBarButton
      Action = actPrintPrew
      Category = 6
    end
    object dxbExportGrid: TdxBarButton
      Action = actExportGrid
      Category = 6
    end
    object dxbPrintToEmail: TdxBarButton
      Action = actPrintToEmail
      Category = 6
    end
    object dxbgAdmins: TdxBarGroup
      Items = (
        'dxbAdmUpravitVse'
        'dxbAdministrator')
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
        ItemName = 'dxbGridStyle'
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
    Left = 60
    Top = 128
  end
  object dxpPodm: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbFltManager'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxbFltGenerator'
      end
      item
        Visible = True
        ItemName = 'dxbFltSave'
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
    RootSection = 'DocBrowseFrm.rspSQL'
    Properties.Strings = (
      'SQLControler.AllRecord'
      'SQLControler.Options.StartingOrder'
      'SQLControler.Options.StartingWhere')
    WhenLoad = wlManual
    WhenSave = wsOnClose
    Left = 264
    Top = 128
  end
end
