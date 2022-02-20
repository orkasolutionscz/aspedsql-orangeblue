inherited FDfrmBrowse: TFDfrmBrowse
  Left = 626
  Top = 180
  Caption = 'Faktury p'#345'ijat'#233
  ClientHeight = 585
  ClientWidth = 1060
  OnFormPrint = gbCustomMDIFormPrint
  ExplicitWidth = 1068
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBrowse: TPanel
    Top = 50
    Width = 1060
    Height = 535
    ExplicitTop = 49
    ExplicitWidth = 1060
    ExplicitHeight = 536
    inherited cxGrid1: TcxGrid
      Width = 1060
      Height = 536
      ExplicitWidth = 1060
      ExplicitHeight = 536
      inherited tvView: TcxGridDBTableView
        OptionsData.Editing = True
        Styles.OnGetContentStyle = tvViewStylesGetContentStyle
        object tvViewSID: TcxGridDBColumn
          DataBinding.FieldName = 'SID'
          Visible = False
          Options.Editing = False
        end
        object tvViewVYBER: TcxGridDBColumn
          DataBinding.FieldName = 'VYBER'
          Options.Editing = False
        end
        object tvViewFAKTURADO: TcxGridDBColumn
          DataBinding.FieldName = 'FAKTURADO'
          Options.Editing = False
        end
        object tvViewVARIABILNI: TcxGridDBColumn
          DataBinding.FieldName = 'VARIABILNI'
          Options.Editing = False
        end
        object tvViewDATSPLATNOST: TcxGridDBColumn
          DataBinding.FieldName = 'DATSPLATNOST'
          Options.Editing = False
          Styles.OnGetContentStyle = tvViewDATSPLATNOSTStylesGetContentStyle
        end
        object tvViewDATDANPOV: TcxGridDBColumn
          DataBinding.FieldName = 'DATDANPOV'
          Options.Editing = False
        end
        object tvViewNAZEV: TcxGridDBColumn
          DataBinding.FieldName = 'NAZEV'
          Options.Editing = False
          Styles.OnGetContentStyle = tvViewNAZEVStylesGetContentStyle
        end
        object tvViewICO: TcxGridDBColumn
          DataBinding.FieldName = 'ICO'
          Visible = False
          Options.Editing = False
        end
        object tvViewDIC: TcxGridDBColumn
          DataBinding.FieldName = 'DIC'
          Options.Editing = False
        end
        object tvViewADRESA3: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA3'
          Visible = False
          Options.Editing = False
        end
        object tvViewZEME: TcxGridDBColumn
          DataBinding.FieldName = 'ZEME'
          Options.Editing = False
        end
        object tvViewCELKEM: TcxGridDBColumn
          DataBinding.FieldName = 'CELKEM'
          Options.Editing = False
        end
        object tvViewCENALIKV: TcxGridDBColumn
          DataBinding.FieldName = 'CENALIKV'
          Options.Editing = False
        end
        object tvViewCENAMENA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENA'
          Options.Editing = False
        end
        object tvViewDATUHRAZENO: TcxGridDBColumn
          DataBinding.FieldName = 'DATUHRAZENO'
          Options.Editing = False
        end
        object tvViewDOKLAD: TcxGridDBColumn
          DataBinding.FieldName = 'DOKLAD'
          Visible = False
          Options.Editing = False
        end
        object tvViewUCTODATUM: TcxGridDBColumn
          DataBinding.FieldName = 'UCTODATUM'
          Visible = False
          Options.Editing = False
        end
        object tvViewCREADATE: TcxGridDBColumn
          DataBinding.FieldName = 'CREADATE'
          Visible = False
          Options.Editing = False
        end
        object tvViewCREAID: TcxGridDBColumn
          DataBinding.FieldName = 'CREAID'
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
        object tvViewSTAV: TcxGridDBColumn
          DataBinding.FieldName = 'STAV'
          Visible = False
          Options.Editing = False
        end
        object tvViewSTATEUSER: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSER'
          Options.Editing = False
        end
        object tvViewLIKVOK: TcxGridDBColumn
          DataBinding.FieldName = 'LIKVOK'
          Options.Editing = False
        end
        object tvViewSTATEUSERCOLOR: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSERCOLOR'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object tvViewAOPKOD: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD'
          Visible = False
          VisibleForCustomization = False
        end
        object tvViewCELKEMKC: TcxGridDBColumn
          DataBinding.FieldName = 'CELKEMKC'
          Visible = False
          VisibleForCustomization = False
        end
      end
    end
  end
  object rsPropSaver1: TrsPropSaver [1]
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Modul.FD.Seznam'
    Properties.Strings = (
      'SQLControler.Options.StartingOrder'
      'SQLControler.Options.StartingWhere'
      'SQLControler.AllRecord'
      'actShowSQLPanel.Checked'
      'actFullRefresh.Checked'
      'actIncFind.Checked')
    WhenLoad = wlManual
    WhenSave = wsOnClose
    OnAfterLoad = rsPropSaver1AfterLoad
    Left = 332
    Top = 128
  end
  inherited MasterDs: TDataSource
    AutoEdit = True
    DataSet = FDdmd.FDSeznam
    Left = 332
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
  object ActionListFD: TActionList [5]
    Images = dmdGlobal.imglDefault
    Left = 128
    Top = 60
    object actFDShowZasilka: TAction
      Caption = 'P'#345'eprava...'
      Hint = 'Zobraz'#237' p'#345'i'#345'azenou p'#345'epravu'
      ImageIndex = 57
      OnExecute = actFDShowZasilkaExecute
    end
    object actFDLikvidace: TAction
      Caption = 'Likvidace...'
      ImageIndex = 53
      ShortCut = 114
      OnExecute = actFDLikvidaceExecute
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
  inherited cxsModul: TcxStyleRepository
    Left = 264
    PixelsPerInch = 96
  end
  inherited SQLControler: TjfsSQLContr
    TableName = 'FADOSLE'
    UpdateTableName = 'FADOSLE'
    KeyField = 'SID'
    ZnackaFindPole = 'FAKTURADO'
    Left = 264
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
    Left = 60
    Top = 128
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
          ItemName = 'dxbFullRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbGrdHledej'
        end
        item
          Visible = True
          ItemName = 'dxbIncFind'
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
    object dxBarButton2: TdxBarButton
      Action = actSetUS
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = actFDLikvidace
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actFDShowZasilka
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = actSQLStartSave
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actSQLStartEdit
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actSQLStartClear
      Category = 0
    end
    object dxb1: TdxBarButton
      Action = actShowSQLPanel
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxb2: TdxBarButton
      Action = actSetUSClear
      Category = 0
    end
    object dxbFullRefresh: TdxBarButton
      Action = actFullRefresh
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxbIncFind: TdxBarButton
      Action = actIncFind
      Category = 0
      ButtonStyle = bsChecked
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
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxb2'
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
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
end
