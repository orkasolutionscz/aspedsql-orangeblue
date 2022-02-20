inherited ZSBrowseFrm: TZSBrowseFrm
  Left = 47
  Top = 193
  Caption = 'Seznam z'#225'silek'
  ClientHeight = 584
  ClientWidth = 854
  OnKeyDown = jfsCustomMDIKeyDown
  OnFormPrint = gbCustomMDIFormPrint
  ExplicitWidth = 870
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBrowse: TPanel
    Top = 50
    Width = 854
    Height = 353
    ExplicitTop = 50
    ExplicitWidth = 854
    ExplicitHeight = 353
    inherited cxGrid1: TcxGrid
      Width = 854
      Height = 353
      ExplicitWidth = 854
      ExplicitHeight = 353
      inherited tvView: TcxGridDBTableView
        Navigator.Visible = False
        DataController.KeyFieldNames = 'SID'
        OptionsBehavior.IncSearchItem = tvViewZASILKA
        OptionsData.Editing = True
        Styles.OnGetContentStyle = tvViewStylesGetContentStyle
        object tvViewSID: TcxGridDBColumn
          DataBinding.FieldName = 'SID'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object tvViewSTAV: TcxGridDBColumn
          DataBinding.FieldName = 'STAV'
          Options.Editing = False
          Styles.OnGetContentStyle = tvViewSTAVStylesGetContentStyle
        end
        object tvViewZASILKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZASILKA'
          Options.Editing = False
        end
        object tvViewTYP: TcxGridDBColumn
          DataBinding.FieldName = 'TYP'
          Options.Editing = False
        end
        object tvViewDATPORIZENI: TcxGridDBColumn
          DataBinding.FieldName = 'DATPORIZENI'
          Options.Editing = False
        end
        object tvViewINTOBJ: TcxGridDBColumn
          DataBinding.FieldName = 'INTOBJ'
          Visible = False
          Options.Editing = False
        end
        object tvViewDISPECER: TcxGridDBColumn
          DataBinding.FieldName = 'DISPECER'
          Options.Editing = False
        end
        object tvViewINTSTREDISKO: TcxGridDBColumn
          DataBinding.FieldName = 'INTSTREDISKO'
          Visible = False
          Options.Editing = False
        end
        object tvViewTYDEN: TcxGridDBColumn
          DataBinding.FieldName = 'TYDEN'
          Visible = False
          Options.Editing = False
        end
        object tvViewMESIC: TcxGridDBColumn
          DataBinding.FieldName = 'MESIC'
          Visible = False
          Options.Editing = False
        end
        object tvViewPRIKAZCE: TcxGridDBColumn
          DataBinding.FieldName = 'PRIKAZCE'
          Options.Editing = False
          Styles.OnGetContentStyle = tvViewPRIKAZCEStylesGetContentStyle
        end
        object tvViewSUBSTRATINFO: TcxGridDBColumn
          DataBinding.FieldName = 'SUBSTRATINFO'
          Visible = False
          Options.Editing = False
        end
        object tvViewDOPRAVCE: TcxGridDBColumn
          DataBinding.FieldName = 'DOPRAVCE'
          Options.Editing = False
          Styles.OnGetContentStyle = tvViewDOPRAVCEStylesGetContentStyle
        end
        object tvViewVOZIDLO: TcxGridDBColumn
          DataBinding.FieldName = 'VOZIDLO'
          Visible = False
          Options.Editing = False
        end
        object tvViewAUTOSPZ: TcxGridDBColumn
          DataBinding.FieldName = 'AUTOSPZ'
          Options.Editing = False
        end
        object tvViewDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
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
        object tvViewVDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'VDATUM'
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
        object tvViewHMBRUTTO: TcxGridDBColumn
          DataBinding.FieldName = 'HMBRUTTO'
          Options.Editing = False
        end
        object tvViewHMTEXT: TcxGridDBColumn
          DataBinding.FieldName = 'HMTEXT'
          Visible = False
          Options.Editing = False
        end
        object tvViewPRIKAZ: TcxGridDBColumn
          DataBinding.FieldName = 'PRIKAZ'
          Visible = False
          Options.Editing = False
        end
        object tvViewKRATKEINFO: TcxGridDBColumn
          DataBinding.FieldName = 'KRATKEINFO'
          Visible = False
          Options.Editing = False
          Options.IncSearch = False
        end
        object tvViewCENASMLUVNI: TcxGridDBColumn
          DataBinding.FieldName = 'CENASMLUVNI'
          RepositoryItem = dmdGlobal.repCena
          Visible = False
          Options.Editing = False
        end
        object tvViewCENAJEDNOTKA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAJEDNOTKA'
          Visible = False
          Options.Editing = False
        end
        object tvViewCENAJEDNOTKY: TcxGridDBColumn
          DataBinding.FieldName = 'CENAJEDNOTKY'
          RepositoryItem = dmdGlobal.repCena
          Visible = False
          Options.Editing = False
        end
        object tvViewCENAMENA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENA'
          Visible = False
          Options.Editing = False
        end
        object tvViewONCELKEM: TcxGridDBColumn
          DataBinding.FieldName = 'ONCELKEM'
          RepositoryItem = dmdGlobal.repCena0M
          Visible = False
          Options.Editing = False
        end
        object tvViewOVCELKEM: TcxGridDBColumn
          DataBinding.FieldName = 'OVCELKEM'
          RepositoryItem = dmdGlobal.repCena0M
          Visible = False
          Options.Editing = False
        end
        object tvViewCENADOPRAVCE: TcxGridDBColumn
          DataBinding.FieldName = 'CENADOPRAVCE'
          RepositoryItem = dmdGlobal.repCena0M
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Styles.Content = dmdGlobal.cxStyle21
        end
        object tvViewCENAPLATCI: TcxGridDBColumn
          DataBinding.FieldName = 'CENAPLATCI'
          RepositoryItem = dmdGlobal.repCena0M
          Options.Editing = False
          Styles.Content = dmdGlobal.cxStyle21
        end
        object tvViewCENAPROVIZE: TcxGridDBColumn
          DataBinding.FieldName = 'CENAPROVIZE'
          RepositoryItem = dmdGlobal.repCena0M
          Options.Editing = False
          Styles.Content = dmdGlobal.cxStyle21
        end
        object tvViewFDCELKEM: TcxGridDBColumn
          DataBinding.FieldName = 'FDCELKEM'
          RepositoryItem = dmdGlobal.repCena0M
          Visible = False
          Options.Editing = False
          Styles.Content = dmdGlobal.cxStyle11
        end
        object tvViewFVCELKEM: TcxGridDBColumn
          DataBinding.FieldName = 'FVCELKEM'
          RepositoryItem = dmdGlobal.repCena0M
          Visible = False
          Options.Editing = False
          Styles.Content = dmdGlobal.cxStyle11
        end
        object tvViewFVDPROVIZE: TcxGridDBColumn
          DataBinding.FieldName = 'FVDPROVIZE'
          RepositoryItem = dmdGlobal.repCena0M
          Visible = False
          Options.Editing = False
          Styles.Content = dmdGlobal.cxStyle11
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
        object tvViewSTATEUSER: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSER'
          Visible = False
          Options.Editing = False
        end
        object tvViewVYBER: TcxGridDBColumn
          DataBinding.FieldName = 'VYBER'
          RepositoryItem = dmdGlobal.repBoolChar
          Options.Editing = False
        end
        object tvViewJEFAKTURA: TcxGridDBColumn
          DataBinding.FieldName = 'JEFAKTURA'
          RepositoryItem = dmdGlobal.repBoolChar
          Visible = False
          Options.Editing = False
        end
        object tvViewAOPKOD_OBJ: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD_OBJ'
          Visible = False
          Options.Editing = False
        end
        object tvViewAOPKOD_DOP: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD_DOP'
          Visible = False
          Options.Editing = False
        end
        object tvViewSTATEUSERCOLOR: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSERCOLOR'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object tvViewNAKLADKA: TcxGridDBColumn
          DataBinding.FieldName = 'NAKLADKA'
          Visible = False
          Options.Editing = False
        end
        object tvViewVYKLADKA: TcxGridDBColumn
          DataBinding.FieldName = 'VYKLADKA'
          Visible = False
          Options.Editing = False
        end
        object tvViewTRASYPOCET: TcxGridDBColumn
          DataBinding.FieldName = 'TRASYPOCET'
          Options.Editing = False
        end
        object tvViewVYRIZENO: TcxGridDBColumn
          DataBinding.FieldName = 'VYRIZENO'
          RepositoryItem = dmdGlobal.repBoolChar
          Visible = False
          Options.Editing = False
        end
      end
    end
  end
  object spnlMoreInfo: TPanel [1]
    Left = 0
    Top = 411
    Width = 854
    Height = 173
    Align = alBottom
    Constraints.MinHeight = 140
    ParentColor = True
    TabOrder = 1
    object spnlPoznamka: TPanel
      Left = 505
      Top = 1
      Width = 348
      Height = 171
      Align = alRight
      TabOrder = 0
      object mePoznamka: TcxDBMemo
        Left = 1
        Top = 27
        TabStop = False
        Align = alClient
        DataBinding.DataSource = MasterDs
        ParentFont = False
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = False
        TabOrder = 0
        Height = 143
        Width = 346
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 346
        Height = 26
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object pnlHistorieUdalost: TPanel
      Left = 1
      Top = 1
      Width = 496
      Height = 171
      Align = alClient
      BevelOuter = bvNone
      Color = 14672870
      TabOrder = 1
      object pgcPohledy: TcxPageControl
        Left = 0
        Top = 0
        Width = 496
        Height = 171
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tbsHistorie
        Properties.CustomButtons.Buttons = <>
        OnChange = pgcPohledyChange
        ClientRectBottom = 171
        ClientRectRight = 496
        ClientRectTop = 24
        object tbsHistorie: TcxTabSheet
          Caption = 'Ud'#225'losti'
          ImageIndex = 26
          inline fraUdalosti: TZSfraUdalosti
            Left = 0
            Top = 0
            Width = 496
            Height = 147
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 496
            ExplicitHeight = 147
            inherited cxGridKtl1: TcxGrid
              Width = 496
              Height = 121
              ExplicitWidth = 496
              ExplicitHeight = 121
              inherited tvPrehled: TcxGridDBTableView
                inherited tvPrehledCreaid: TcxGridDBColumn
                  Visible = True
                end
                inherited tvPrehledState: TcxGridDBColumn
                  DataBinding.FieldName = 'STAV'
                  Visible = False
                  Width = 51
                end
              end
            end
            inherited ActionList2: TActionList
              inherited actNew: TAction
                OnExecute = fraUdalostiactNewExecute
              end
            end
            inherited dxBarManager1: TdxBarManager
              DockControlHeights = (
                0
                0
                26
                0)
            end
          end
        end
        object tbsFakturyDosle: TcxTabSheet
          Caption = 'Do'#353'l'#233' faktury'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object tbsVydaneFaktury: TcxTabSheet
          Caption = 'Vydan'#233' faktury'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object tbsKorespondence: TcxTabSheet
          Caption = 'Korespondence'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
      end
    end
    object cxs1: TcxSplitter
      Left = 497
      Top = 1
      Width = 8
      Height = 171
      HotZoneClassName = 'TcxSimpleStyle'
      AlignSplitter = salRight
      Control = spnlPoznamka
    end
  end
  object cxssMoreInfo: TcxSplitter [2]
    Left = 0
    Top = 403
    Width = 854
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salBottom
    AutoSnap = True
    Control = spnlMoreInfo
  end
  object dxpPodm: TdxBarPopupMenu [3]
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
  object ActionListZS: TActionList [4]
    Images = dmdGlobal.imglDefault
    Left = 128
    Top = 60
    object actAktualizace: TAction
      Caption = 'Aktualizace'
      ImageIndex = 52
    end
    object actAvizo: TAction
      Caption = 'Vytvo'#345'it av'#237'zo'
    end
    object actPozEdit: TAction
      Caption = 'Upravit'
      Hint = 'Zobraz'#237' dialog pro '#250'pravu intern'#237' pozn'#225'mky'
      ImageIndex = 8
      OnExecute = actPozEditExecute
    end
    object actZobrazDetaily: TAction
      Caption = 'Podrobnosti ...'
      Checked = True
      Hint = 'Informace o ud'#225'lostech, faktur'#225'ch, korespondenci...'
      ImageIndex = 59
      OnExecute = actZobrazDetailyExecute
    end
    object actStateUser: TAction
      Caption = 'U'#382'ivatelsk'#253' stav'
      ImageIndex = 51
      OnExecute = actStateUserExecute
    end
    object actStateUserClear: TAction
      Caption = 'Bez u'#382'ivatelsk'#233'ho stavu'
      ImageIndex = 37
      OnExecute = actStateUserClearExecute
    end
    object actVyrizeno: TAction
      Caption = 'Vy'#345#237'zeno'
      ImageIndex = 65
      OnExecute = actVyrizenoExecute
    end
    object actVyrizenoAll: TAction
      Caption = 'Vy'#345#237'zeno (v'#353'echny vybran'#233')'
      ImageIndex = 65
      OnExecute = actVyrizenoAllExecute
    end
  end
  object rspForm: TrsPropSaver [5]
    Storage = dmdSystem.rstrgForms
    RootSection = 'Modul.ZS.Seznam'
    Properties.Strings = (
      'spnlMoreInfo.Height'
      'spnlPoznamka.Width'
      'actZobrazDetaily.Checked'
      'actShowSQLPanel.Checked'
      'actFullRefresh.Checked'
      'actIncFind.Checked'
      'tvView.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    OnAfterLoad = rspFormAfterLoad
    Left = 68
    Top = 196
  end
  inherited MasterDs: TDataSource
    AutoEdit = True
    DataSet = ZSdmd.ZasilkySeznam
    OnDataChange = MasterDsDataChange
    Left = 332
  end
  inherited ActionList1: TActionList
    Left = 60
    object actStornoDokladu: TAction [28]
      Category = 'Dataset'
      Caption = 'Stornovat'
      ImageIndex = 61
      OnExecute = actStornoDokladuExecute
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
  inherited cxsModul: TcxStyleRepository
    Left = 264
    PixelsPerInch = 96
  end
  inherited SQLControler: TjfsSQLContr
    DataSet = ZSdmd.ZasilkySeznam
    TableName = 'ZSSeznam'
    UpdateTableName = 'ZS'
    KeyField = 'SID'
    ZnackaFindPole = 'ZASILKA'
    Left = 264
    Top = 128
  end
  object dxBarManager1: TdxBarManager
    AlwaysMerge = True
    Font.Charset = EASTEUROPE_CHARSET
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
      'IntPoznamka')
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
          ItemName = 'dxbPnlSQL'
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
          ItemName = 'dxbAdminStorno'
        end
        item
          Visible = True
          ItemName = 'dxbVyrizeno'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbPrint'
        end
        item
          Visible = True
          ItemName = 'dxb2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbGrdExport'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxbZSShowDetail'
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
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Interni'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 318
      FloatTop = 156
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
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
    object dxbPrint: TdxBarButton
      Action = actPrintMng
      Category = 0
    end
    object dxb2: TdxBarButton
      Action = actPrintPrew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbRecCopy: TdxBarButton
      Action = actRecKopie
      Category = 1
    end
    object dxbRecNew: TdxBarButton
      Action = actRecNew
      Category = 1
    end
    object dxbAdminStorno: TdxBarButton
      Action = actStornoDokladu
      Category = 1
    end
    object dxbRecDetail: TdxBarButton
      Action = actRecDetail
      Category = 1
    end
    object dxBarButton1: TdxBarButton
      Action = actStateUser
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxbVyrizeno: TdxBarButton
      Action = actVyrizeno
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxb3: TdxBarButton
      Action = actStateUserClear
      Category = 1
    end
    object dxbZSShowDetail: TdxBarButton
      Action = actZobrazDetaily
      Category = 1
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = actVyrizenoAll
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
          Visible = True
          ItemName = 'dxbVyrizeno'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbAdministrator'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbAdminStorno'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxb3'
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
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
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
          ItemName = 'dxbGrdSaveSetting'
        end
        item
          Visible = True
          ItemName = 'dxbGridStyle'
        end
        item
          Visible = True
          ItemName = 'dxbGrdRestore'
        end>
    end
    object dxbGrdExport: TdxBarButton
      Action = actExportGrid
      Category = 3
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
    object dxbIncFind: TdxBarButton
      Action = actIncFind
      Category = 3
      ButtonStyle = bsChecked
    end
    object dxbFullRefresh: TdxBarButton
      Action = actFullRefresh
      Category = 3
      ButtonStyle = bsChecked
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
          Visible = True
          ItemName = 'dxb1'
        end>
    end
    object dxb1: TdxBarButton
      Action = actAktualizace
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
    object dxbPnlSQL: TdxBarButton
      Action = actShowSQLPanel
      Category = 5
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = actSQLStartSave
      Category = 5
    end
    object dxBarButton7: TdxBarButton
      Action = actSQLStartClear
      Category = 5
    end
    object dxBarButton6: TdxBarButton
      Action = actSQLStartEdit
      Category = 5
    end
    object dxBarButton2: TdxBarButton
      Action = actPozEdit
      Category = 6
      PaintStyle = psCaptionGlyph
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Intern'#237' pozn'#225'mka'
      Category = 6
      Hint = 'Intern'#237' pozn'#225'mka'
      Visible = ivAlways
    end
    object dxbrgrpAdministrator: TdxBarGroup
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
        ItemName = 'dxbGrdExport'
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
    RootSection = 'ZSBrowseFrm.rspSQL'
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
