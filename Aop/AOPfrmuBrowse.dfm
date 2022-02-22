inherited AOPBrowseFrm: TAOPBrowseFrm
  Left = 323
  Top = 226
  Caption = 'Seznam adres'
  ClientHeight = 679
  ClientWidth = 986
  OnFormPrint = gbCustomMDIModulePrint
  ExplicitWidth = 1002
  ExplicitHeight = 717
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBrowse: TPanel
    Top = 50
    Width = 986
    Height = 629
    ExplicitTop = 50
    ExplicitWidth = 986
    ExplicitHeight = 629
    inherited cxGrid1: TcxGrid
      Width = 986
      Height = 421
      ExplicitWidth = 986
      ExplicitHeight = 421
      inherited tvView: TcxGridDBTableView
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        OptionsData.Editing = True
        OptionsView.HeaderEndEllipsis = False
        Styles.OnGetContentStyle = tvViewStylesGetContentStyle
        object tvViewAOPKOD: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD'
          Options.Editing = False
        end
        object tvViewVYBER: TcxGridDBColumn
          DataBinding.FieldName = 'VYBER'
          Visible = False
          Options.Editing = False
        end
        object tvViewNAZEV: TcxGridDBColumn
          DataBinding.FieldName = 'NAZEV'
          Options.Editing = False
        end
        object tvViewADRESA1: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA1'
          Visible = False
          Options.Editing = False
        end
        object tvViewADRESA2: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA2'
          Visible = False
          Options.Editing = False
        end
        object tvViewPSC: TcxGridDBColumn
          DataBinding.FieldName = 'PSC'
          Options.Editing = False
        end
        object tvViewADRESA3: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA3'
          Options.Editing = False
        end
        object tvViewKODZEME: TcxGridDBColumn
          DataBinding.FieldName = 'KODZEME'
          Options.Editing = False
        end
        object tvViewKOD_RAAL: TcxGridDBColumn
          DataBinding.FieldName = 'KOD_RAAL'
          Options.Editing = False
        end
        object tvViewKOD_TIMO: TcxGridDBColumn
          DataBinding.FieldName = 'KOD_TIMO'
          Options.Editing = False
        end
        object tvViewICO: TcxGridDBColumn
          DataBinding.FieldName = 'ICO'
          Options.Editing = False
        end
        object tvViewDIC: TcxGridDBColumn
          DataBinding.FieldName = 'DIC'
          Visible = False
          Options.Editing = False
        end
        object tvViewSPLATNOST: TcxGridDBColumn
          DataBinding.FieldName = 'SPLATNOST'
          Visible = False
          Options.Editing = False
        end
        object tvViewTELEFON: TcxGridDBColumn
          DataBinding.FieldName = 'TELEFON'
          Options.Editing = False
        end
        object tvViewFAX: TcxGridDBColumn
          DataBinding.FieldName = 'FAX'
          Options.Editing = False
        end
        object tvViewGSM: TcxGridDBColumn
          DataBinding.FieldName = 'GSM'
          Options.Editing = False
        end
        object tvViewEMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
          Options.Editing = False
          Width = 97
        end
        object tvViewSKUPINA: TcxGridDBColumn
          DataBinding.FieldName = 'SKUPINA'
          Options.Editing = False
        end
        object tvViewK1: TcxGridDBColumn
          DataBinding.FieldName = 'K1'
          Visible = False
          Options.Editing = False
        end
        object tvViewK2: TcxGridDBColumn
          DataBinding.FieldName = 'K2'
          Visible = False
          Options.Editing = False
        end
        object tvViewUPDDATE: TcxGridDBColumn
          DataBinding.FieldName = 'UPDDATE'
          Visible = False
          Options.Editing = False
        end
        object tvViewUPDID: TcxGridDBColumn
          DataBinding.FieldName = 'UPDID'
          Visible = False
          Options.Editing = False
        end
        object tvViewPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
          Visible = False
          Options.Editing = False
        end
        object tvViewSTAV: TcxGridDBColumn
          DataBinding.FieldName = 'STAV'
          Visible = False
          Options.Editing = False
        end
        object tvViewSTATEUSER: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSER'
          Options.Editing = False
        end
        object tvViewSTATEUSERCOLOR: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSERCOLOR'
          Visible = False
          Options.Editing = False
        end
      end
    end
    object pnlKontakty: TPanel
      Left = 0
      Top = 429
      Width = 986
      Height = 200
      Align = alBottom
      TabOrder = 1
      object pgAOPInfo: TcxPageControl
        Left = 1
        Top = 1
        Width = 984
        Height = 198
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tbsKontakty
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 198
        ClientRectRight = 984
        ClientRectTop = 24
        object tbsKontakty: TcxTabSheet
          Caption = 'Kontakty'
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 421
      Width = 986
      Height = 8
      AlignSplitter = salBottom
      Control = pnlKontakty
    end
  end
  inherited MasterDs: TDataSource
    AutoEdit = True
    OnDataChange = MasterDsDataChange
  end
  inherited ActionList1: TActionList
    Left = 60
    inherited actRecKopie: TAction
      Visible = False
    end
    object actRecAdministrator: TAction
      Category = 'Dataset'
      Caption = 'Administr'#225'tor'
      ImageIndex = 34
      OnExecute = actRecAdministratorExecute
    end
    object actPrevedAdresu: TAction
      Caption = 'P'#345'evod adresy'
      Hint = 'Funkce zm'#283'n'#237' v'#353'echny odkazy v A-SPED z  jedn'#233' adresy na druhou'
      ImageIndex = 62
      OnExecute = actPrevedAdresuExecute
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
    object actZmenNaKontakt: TAction
      Caption = 'P'#345'ev'#233'st na Kontakt'
      ImageIndex = 63
      OnExecute = actZmenNaKontaktExecute
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
  object rspForm: TrsPropSaver [4]
    Storage = dmdSystem.rstrgForms
    Options = [poStoreFormPlacement]
    RootSection = 'AOP.Modul'
    Properties.Strings = (
      'pgAOPInfo.Height')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 340
    Top = 136
  end
  inherited cxsModul: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited SQLControler: TjfsSQLContr
    TableName = 'AOPSeznam'
    UpdateTableName = 'AOP'
    KeyField = 'AOPKOD'
    ZnackaFindPole = 'ICO'
    Left = 196
    Top = 128
  end
  object dxBarManager1: TdxBarManager
    AlwaysMerge = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    Left = 332
    Top = 60
    DockControlHeights = (
      0
      0
      50
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Z'#225'znam'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 24
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
          ItemName = 'dxbFltDnesOpravene'
        end
        item
          Visible = True
          ItemName = 'dxbFltDnesNove'
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
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
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
    object dxbAopSendMail: TdxBarButton
      Caption = 'Odeslat E-mail'
      Category = 0
      Visible = ivAlways
      ImageIndex = 58
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton1: TdxBarButton
      Action = actSetUS
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb1: TdxBarButton
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
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxb1'
        end>
    end
    object dxiVybery: TdxBarSubItem
      Caption = 'V'#253'b'#283'ry'
      Category = 2
      MergeKind = mkMergeByCaption
      Visible = ivAlways
      DetachingBar = 1
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
      DetachingBar = 1
      ItemLinks = <
        item
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb3'
        end
        item
          Visible = True
          ItemName = 'dxbGrdRestore'
        end
        item
          Visible = True
          ItemName = 'dxbGrdSaveSetting'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbExportGrid'
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
    object dxb3: TdxBarButton
      Action = actGridStyle
      Category = 3
    end
    object dxbAdmUpravitVse: TdxBarButton
      Action = actRecUpdateAll
      Category = 4
    end
    object dxbAdministrator: TdxBarSubItem
      Action = actRecAdministrator
      Category = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbAdmUpravitVse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbAopPrevodAdresy'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    object dxbAopPrevodAdresy: TdxBarButton
      Action = actPrevedAdresu
      Category = 4
    end
    object dxBarButton2: TdxBarButton
      Action = actZmenNaKontakt
      Category = 4
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
    end
    object dxbPrintPreview: TdxBarButton
      Action = actPrintPrew
      Category = 6
    end
    object dxbExportGrid: TdxBarButton
      Action = actExportGrid
      Category = 6
    end
    object dxbgAdmins: TdxBarGroup
      Items = (
        'dxbAdmUpravitVse'
        'dxbAdministrator'
        'dxbAopPrevodAdresy')
    end
  end
  object dxpSeznam: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxb3'
      end
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
    RootSection = 'AOPBrowseFrm.rspSQL'
    Properties.Strings = (
      'SQLControler.AllRecord'
      'SQLControler.Options.StartingOrder'
      'SQLControler.Options.StartingWhere')
    WhenLoad = wlManual
    WhenSave = wsOnClose
    Left = 252
    Top = 128
  end
end
