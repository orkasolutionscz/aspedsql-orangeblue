inherited STfrmCenyView: TSTfrmCenyView
  Left = 0
  Top = 116
  Caption = 'Cenov'#253' p'#345'ehled'
  ClientHeight = 517
  ClientWidth = 857
  OnFormPrint = gbCustomMDIFormPrint
  ExplicitWidth = 865
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBrowse: TPanel
    Top = 49
    Width = 857
    Height = 468
    ExplicitTop = 49
    ExplicitWidth = 857
    ExplicitHeight = 468
    inherited cxGrid1: TcxGrid
      Width = 857
      Height = 468
      ExplicitTop = 0
      ExplicitWidth = 857
      ExplicitHeight = 468
      inherited tvView: TcxGridDBTableView
        DataController.KeyFieldNames = 'ZASILKA'
        object tvViewZASILKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZASILKA'
        end
        object tvViewVDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'VDATUM'
        end
        object tvViewDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
        end
        object tvViewTyp: TcxGridDBColumn
          DataBinding.FieldName = 'Typ'
        end
        object tvViewDopravce: TcxGridDBColumn
          DataBinding.FieldName = 'Dopravce'
        end
        object tvViewPrikazce: TcxGridDBColumn
          DataBinding.FieldName = 'Prikazce'
        end
        object tvViewCO: TcxGridDBColumn
          DataBinding.FieldName = 'CO'
        end
        object tvViewPCena: TcxGridDBColumn
          DataBinding.FieldName = 'PCena'
        end
        object tvViewPJednotky: TcxGridDBColumn
          DataBinding.FieldName = 'PJednotky'
        end
        object tvViewPJednotka: TcxGridDBColumn
          DataBinding.FieldName = 'PJednotka'
        end
        object tvViewPMena: TcxGridDBColumn
          DataBinding.FieldName = 'PMena'
        end
        object tvViewPCelkem: TcxGridDBColumn
          DataBinding.FieldName = 'PCelkem'
        end
        object tvViewPCelkemKc: TcxGridDBColumn
          DataBinding.FieldName = 'PCelkemKc'
        end
        object tvViewDCena: TcxGridDBColumn
          DataBinding.FieldName = 'DCena'
        end
        object tvViewDJednotky: TcxGridDBColumn
          DataBinding.FieldName = 'DJednotky'
        end
        object tvViewDJednotka: TcxGridDBColumn
          DataBinding.FieldName = 'DJednotka'
        end
        object tvViewDMena: TcxGridDBColumn
          DataBinding.FieldName = 'DMena'
        end
        object tvViewDCelkem: TcxGridDBColumn
          DataBinding.FieldName = 'DCelkem'
        end
        object tvViewDCelkemKc: TcxGridDBColumn
          DataBinding.FieldName = 'DCelkemKc'
        end
        object tvViewstate: TcxGridDBColumn
          DataBinding.FieldName = 'state'
        end
        object tvViewDISPECER: TcxGridDBColumn
          DataBinding.FieldName = 'DISPECER'
        end
        object tvViewAUTOSPZ: TcxGridDBColumn
          DataBinding.FieldName = 'AUTOSPZ'
        end
        object tvViewCREAID: TcxGridDBColumn
          DataBinding.FieldName = 'CREAID'
        end
        object tvViewNakladka: TcxGridDBColumn
          DataBinding.FieldName = 'Nakladka'
        end
        object tvViewVykladka: TcxGridDBColumn
          DataBinding.FieldName = 'Vykladka'
        end
      end
    end
  end
  inherited MasterDs: TDataSource
    DataSet = STdmd.dtsCenyPrehled
    Left = 364
    Top = 100
  end
  inherited ActionList1: TActionList
    Left = 100
    Top = 100
    inherited actRecNew: TAction
      Visible = False
    end
    inherited actRecKopie: TAction
      Visible = False
    end
    object actExportData: TAction
      Category = 'Formular'
      Caption = 'Export ...'
    end
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    Left = 188
    Top = 100
  end
  inherited cxsModul: TcxStyleRepository
    Left = 276
    Top = 100
    PixelsPerInch = 96
  end
  inherited SQLControler: TjfsSQLContr
    DataSet = STdmd.dtsCenyPrehled
    TableName = 'SP_ZSPREHLEDCEN'
    UpdateTableName = 'SP_ZSPREHLEDCEN'
    KeyField = 'IDPLATCI'
    Left = 364
    Top = 188
  end
  object dxBarManager1: TdxBarManager
    AlwaysMerge = True
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Zaznam'
      'SubMenus'
      'Seznam'
      'Filtry')
    Categories.ItemsVisibles = (
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
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 100
    Top = 188
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
    object dxbFltDnesOpravene: TdxBarButton
      Action = actSQLDayChange
      Category = 4
    end
    object dxbFltDnesNove: TdxBarButton
      Action = actSQLDayNew
      Category = 4
    end
    object dxbFltClear: TdxBarButton
      Action = actSQLCancel
      Category = 4
    end
    object dxbFltHistory: TdxBarButton
      Action = actSQLHistory
      Category = 4
    end
    object dxbFltDialog: TdxBarButton
      Action = actSQLOne
      Category = 4
    end
    object dxbFltSave: TdxBarButton
      Action = actSQLSaveWhere
      Category = 4
    end
    object dxbFltManager: TdxBarButton
      Action = actSQLEditWhere
      Category = 4
    end
    object dxbFltHodnota: TdxBarButton
      Action = actSQLSpeed
      Category = 4
    end
    object dxbFltStored: TdxBarButton
      Action = actSQLStored
      Category = 4
      ButtonStyle = bsDropDown
      DropDownMenu = dxpPodm
    end
    object dxbFltSpeed: TdxBarButton
      Action = actSQLValue
      Category = 4
    end
    object dxbFltGenerator: TdxBarButton
      Action = actSQLUserWhere
      Category = 4
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
        BeginGroup = True
        Visible = True
        ItemName = 'dxbRecDetail'
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
      end>
    UseOwnFont = False
    Left = 188
    Top = 188
  end
  object dxpPodm: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbFltManager'
      end
      item
        Visible = True
        ItemName = 'dxbFltGenerator'
      end
      item
        Visible = True
        ItemName = 'dxbFltSave'
      end>
    UseOwnFont = False
    Left = 276
    Top = 188
  end
  object rspPropForm: TrsPropSaver
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgForms
    Options = [poStoreDefValues]
    RootSection = 'STfrmCenyView.Modul'
    Properties.Strings = (
      'tvView.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 188
    Top = 276
  end
  object rspSQL: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgSQL
    Options = [poStoreDefValues]
    RootSection = 'STfrmCenyView.rspSQL'
    Properties.Strings = (
      'SQLControler.AllRecord'
      'SQLControler.Options.StartingOrder'
      'SQLControler.Options.StartingWhere')
    WhenLoad = wlManual
    WhenSave = wsOnClose
    Left = 100
    Top = 276
  end
end
