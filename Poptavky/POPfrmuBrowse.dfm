inherited POPfrmBrowse: TPOPfrmBrowse
  Left = 442
  Top = 249
  Caption = 'Popt'#225'vky - nab'#237'dky'
  ClientHeight = 575
  ClientWidth = 952
  OnFormPrint = gbCustomMDIFormPrint
  ExplicitWidth = 960
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBrowse: TPanel
    Top = 49
    Width = 952
    Height = 291
    ExplicitTop = 49
    ExplicitWidth = 952
    ExplicitHeight = 291
    inherited cxGrid1: TcxGrid
      Width = 952
      Height = 291
      ExplicitWidth = 952
      ExplicitHeight = 291
      inherited tvView: TcxGridDBTableView
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
        object tvViewZNRAMCOVKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZNRAMCOVKA'
          Visible = False
          Options.Editing = False
        end
        object tvViewDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
          Options.Editing = False
        end
        object tvViewDAT_PLATNOST: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_PLATNOST'
          Options.Editing = False
        end
        object tvViewTYP: TcxGridDBColumn
          DataBinding.FieldName = 'TYP'
          Visible = False
          Options.Editing = False
        end
        object tvViewPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
          Options.Editing = False
        end
        object tvViewREF_AOPKOD: TcxGridDBColumn
          DataBinding.FieldName = 'REF_AOPKOD'
          Visible = False
          Options.Editing = False
        end
        object tvViewNAZEV: TcxGridDBColumn
          DataBinding.FieldName = 'NAZEV'
          Options.Editing = False
        end
        object tvViewKONTAKT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTAKT'
          Options.Editing = False
        end
        object tvViewVOZIDLO: TcxGridDBColumn
          DataBinding.FieldName = 'VOZIDLO'
          Options.Editing = False
        end
        object tvViewNSTAT: TcxGridDBColumn
          DataBinding.FieldName = 'NSTAT'
          Options.Editing = False
        end
        object tvViewNPSC: TcxGridDBColumn
          DataBinding.FieldName = 'NPSC'
          Options.Editing = False
        end
        object tvViewNMISTO: TcxGridDBColumn
          DataBinding.FieldName = 'NMISTO'
          Options.Editing = False
        end
        object tvViewVSTAT: TcxGridDBColumn
          DataBinding.FieldName = 'VSTAT'
          Options.Editing = False
        end
        object tvViewVPSC: TcxGridDBColumn
          DataBinding.FieldName = 'VPSC'
          Options.Editing = False
        end
        object tvViewVMISTO: TcxGridDBColumn
          DataBinding.FieldName = 'VMISTO'
          Options.Editing = False
        end
        object tvViewCENAJEDNOTKA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAJEDNOTKA'
          Options.Editing = False
        end
        object tvViewCENAMENA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENA'
          Options.Editing = False
        end
        object tvViewCENAPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'CENAPOPIS'
          Options.Editing = False
        end
        object tvViewPOZNAMKA: TcxGridDBColumn
          DataBinding.FieldName = 'POZNAMKA'
          Visible = False
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
        object tvViewCENASMLUVNI: TcxGridDBColumn
          DataBinding.FieldName = 'CENASMLUVNI'
          Options.Editing = False
        end
        object tvViewSTAV: TcxGridDBColumn
          DataBinding.FieldName = 'STAV'
          Visible = False
          Options.Editing = False
        end
        object tvViewSTATEUSER: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSER'
          Visible = False
        end
        object tvViewSTATEUSERCOLOR: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSERCOLOR'
          Visible = False
          Options.Editing = False
        end
      end
    end
  end
  object spnlPoznamka: TPanel [1]
    Left = 0
    Top = 348
    Width = 952
    Height = 227
    Align = alBottom
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 1
      Top = 27
      Width = 624
      Height = 199
      Align = alLeft
      TabOrder = 1
      object tvDokumenty: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        OnCellDblClick = tvDokumentyCellDblClick
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsPopDopisy
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvDokumentyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvDokumentyREF_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'REF_DOC'
          Visible = False
          VisibleForCustomization = False
        end
        object tvDokumentyZNACKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZNACKA'
        end
        object tvDokumentyVEC: TcxGridDBColumn
          DataBinding.FieldName = 'VEC'
        end
        object tvDokumentyNAZEV: TcxGridDBColumn
          DataBinding.FieldName = 'NAZEV'
        end
        object tvDokumentyDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = tvDokumenty
      end
    end
    object mePoznamka: TcxMemo
      Left = 633
      Top = 27
      Align = alClient
      Lines.Strings = (
        'mePoznamka')
      ParentFont = False
      Properties.ReadOnly = True
      TabOrder = 0
      Height = 199
      Width = 318
    end
    object Splitter1: TcxSplitter
      Left = 625
      Top = 27
      Width = 8
      Height = 199
      Cursor = crHSplit
      HotZoneClassName = 'TcxSimpleStyle'
      AutoSnap = True
      MinSize = 0
      Control = cxGrid2
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 1
      Top = 1
      Width = 950
      Height = 26
      Align = dalTop
      BarManager = dxBarManager1
    end
  end
  object cxs1: TcxSplitter [2]
    Left = 0
    Top = 340
    Width = 952
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salBottom
    Control = spnlPoznamka
  end
  inherited MasterDs: TDataSource
    AutoEdit = True
    OnDataChange = MasterDsDataChange
    Left = 60
    Top = 128
  end
  inherited ActionList1: TActionList
    Left = 60
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
  object rspForm: TrsPropSaver [6]
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgForms
    Options = [poStoreDefValues]
    RootSection = 'Modul.Poptavky.Seznam'
    Properties.Strings = (
      'spnlPoznamka.Height'
      'mePoznamka.Width'
      'tvView.Styles.StyleSheet'
      'tvDokumenty.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 136
    Top = 196
  end
  object ActionList2: TActionList [7]
    Images = dmdGlobal.imglDefault
    Left = 128
    Top = 60
    object actAktualizuj: TAction
      Caption = 'Aktualizace neplatn'#253'ch'
      ImageIndex = 60
      OnExecute = actAktualizujExecute
    end
    object actZobrazPrepravy: TAction
      Caption = 'Podobn'#233' p'#345'epravy'
      Hint = 'Zobraz'#237' v modulu P'#345'epravy z'#225'znamy se stejnou trasou'
      ImageIndex = 62
      OnExecute = actZobrazPrepravyExecute
    end
    object actDocVytvor: TAction
      Caption = 'Vytvo'#345'it dokument'
      Hint = 'Vytvo'#345#237' nov'#253' dokument v korespondenci'
      ImageIndex = 46
      OnExecute = actDocVytvorExecute
    end
    object actDocVytvorMulti: TAction
      Caption = 'Vytvo'#345'it dokument z v'#253'b'#283'ru'
      ImageIndex = 46
      Visible = False
      OnExecute = actDocVytvorMultiExecute
    end
  end
  object dsPopDopisy: TDataSource [8]
    AutoEdit = False
    DataSet = POPdmd.qrPOPDopisy
    Left = 332
    Top = 60
  end
  inherited cxsModul: TcxStyleRepository
    Left = 264
    PixelsPerInch = 96
  end
  inherited SQLControler: TjfsSQLContr
    DataSet = POPdmd.POPSeznam
    TableName = 'POPSeznam'
    UpdateTableName = 'POPCENY'
    KeyField = 'SID'
    ZnackaFindPole = 'ZNACKA'
    Top = 128
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
      'Administrator'
      'Filtry')
    Categories.ItemsVisibles = (
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
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 128
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
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
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
    object dxBarManager1Bar2: TdxBar
      Caption = 'Spodni'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 524
      FloatTop = 212
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbModulZavrit: TdxBarButton
      Action = actClose
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actAktualizuj
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actDocVytvor
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = actDocVytvorMulti
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actZobrazPrepravy
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actSQLStartSave
      Category = 0
    end
    object dxb1: TdxBarButton
      Action = actSQLStartEdit
      Category = 0
    end
    object dxb2: TdxBarButton
      Action = actSQLStartClear
      Category = 0
    end
    object dxbSubSeznam: TdxBarSubItem
      Caption = 'Seznam'
      Category = 0
      MergeOrder = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbGrdSaveSetting'
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
          ItemName = 'dxbGrdRestore'
        end
        item
          Visible = True
          ItemName = 'dxbGridStyle'
        end>
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
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
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
    object dxbExportGrid: TdxBarButton
      Action = actExportGrid
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
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxb1'
        end
        item
          Visible = True
          ItemName = 'dxb2'
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
    Left = 196
    Top = 128
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
      end
      item
        BeginGroup = True
        Visible = True
      end>
    UseOwnFont = False
    Left = 264
    Top = 128
  end
  object rspSQL: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgSQL
    Options = [poStoreDefValues]
    RootSection = 'POPfrmBrowse.rspSQL'
    Properties.Strings = (
      'SQLControler.AllRecord'
      'SQLControler.Options.StartingOrder'
      'SQLControler.Options.StartingWhere')
    WhenLoad = wlManual
    WhenSave = wsOnClose
    Left = 60
    Top = 196
  end
end
