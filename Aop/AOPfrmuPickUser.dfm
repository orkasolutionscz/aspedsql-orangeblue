inherited frmAOPSelectUser: TfrmAOPSelectUser
  Left = 478
  Top = 214
  Caption = 'V'#253'b'#283'r adresy'
  ClientHeight = 541
  ClientWidth = 790
  Constraints.MinHeight = 350
  Constraints.MinWidth = 550
  OnShow = jfsCustomMDIShow
  ExplicitWidth = 798
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrids: TPanel
    Width = 692
    Height = 515
    ExplicitWidth = 692
    ExplicitHeight = 515
    inherited cxGrid1: TcxGrid
      Top = 21
      Width = 692
      Height = 494
      TabOrder = 1
      LevelTabs.Images = dmdGlobal.imglModul
      RootLevelOptions.DetailTabsPosition = dtpTop
      ExplicitTop = 21
      ExplicitWidth = 692
      ExplicitHeight = 494
      inherited tvView: TcxGridDBTableView
        DataController.DataModeController.SyncMode = False
        DataController.KeyFieldNames = 'AOPKOD'
        OptionsBehavior.IncSearch = False
        OptionsSelection.InvertSelect = False
        Styles.OnGetContentStyle = tvViewStylesGetContentStyle
        object tvViewAOPKOD: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD'
          Visible = False
          Options.Editing = False
        end
        object tvViewNAZEV: TcxGridDBColumn
          DataBinding.FieldName = 'NAZEV'
          Options.Editing = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 140
        end
        object tvViewADRESA1: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA1'
          Options.Editing = False
        end
        object tvViewADRESA3: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA3'
          Options.Editing = False
          Width = 100
        end
        object tvViewKODZEME: TcxGridDBColumn
          DataBinding.FieldName = 'KODZEME'
          Options.Editing = False
        end
        object tvViewICO: TcxGridDBColumn
          DataBinding.FieldName = 'ICO'
          Options.Editing = False
        end
        object tvViewDIC: TcxGridDBColumn
          DataBinding.FieldName = 'DIC'
          Options.Editing = False
        end
        object tvViewEMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
          Options.Editing = False
        end
        object tvViewK1: TcxGridDBColumn
          DataBinding.FieldName = 'K1'
          Options.Editing = False
        end
        object tvViewKOD_TIMO: TcxGridDBColumn
          DataBinding.FieldName = 'KOD_TIMO'
          Options.Editing = False
        end
        object tvViewKOD_RAAL: TcxGridDBColumn
          DataBinding.FieldName = 'KOD_RAAL'
          Options.Editing = False
        end
        object tvViewSKUPINA: TcxGridDBColumn
          DataBinding.FieldName = 'SKUPINA'
          Options.Editing = False
        end
        object tvViewSTATEUSER: TcxGridDBColumn
          DataBinding.FieldName = 'STATEUSER'
          Options.Editing = False
        end
        object tvViewJSOUKONTAKTY: TcxGridDBColumn
          DataBinding.FieldName = 'JSOUKONTAKTY'
          RepositoryItem = dmdGlobal.repBoolChar
          Options.Editing = False
        end
        object tvViewCOLOR: TcxGridDBColumn
          DataBinding.FieldName = 'COLOR'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object tvViewFAX: TcxGridDBColumn
          DataBinding.FieldName = 'FAX'
          Options.Editing = False
        end
        object tvViewGSM: TcxGridDBColumn
          DataBinding.FieldName = 'GSM'
          Options.Editing = False
        end
        object tvViewPSC: TcxGridDBColumn
          DataBinding.FieldName = 'PSC'
          Options.Editing = False
        end
      end
      object tvKontakty: TcxGridDBTableView [1]
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
        Navigator.Visible = True
        DataController.DataSource = dsKontakty
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvKontaktyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvKontaktyAOPKOD: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD'
          Visible = False
        end
        object tvKontaktyPRIJMENI: TcxGridDBColumn
          DataBinding.FieldName = 'PRIJMENI'
        end
        object tvKontaktyJMENO: TcxGridDBColumn
          DataBinding.FieldName = 'JMENO'
        end
        object tvKontaktyEMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
        end
        object tvKontaktyFAX: TcxGridDBColumn
          DataBinding.FieldName = 'FAX'
        end
        object tvKontaktyMOBIL: TcxGridDBColumn
          DataBinding.FieldName = 'MOBIL'
        end
      end
      inherited cxGrid1Level1: TcxGridLevel
        Caption = 'Adres'#225#345' firem'
        ImageIndex = 0
        Styles.Tab = dmdGlobal.cxStyle11
      end
      object glvKontakty: TcxGridLevel
        Caption = 'Kontaktn'#237' osoby'
        GridView = tvKontakty
        ImageIndex = 6
      end
    end
    object TabControl1: TTabControl
      Left = 0
      Top = 0
      Width = 692
      Height = 21
      Align = alTop
      RaggedRight = True
      TabOrder = 0
      Tabs.Strings = (
        '*')
      TabIndex = 0
      TabStop = False
      TabWidth = 21
      OnChange = TabControl1Change
    end
  end
  inherited pnlFormButton: TPanel
    Left = 692
    Height = 515
    TabOrder = 2
    ExplicitLeft = 692
    ExplicitHeight = 515
    object btnNew: TcxButton
      Left = 8
      Top = 120
      Width = 81
      Height = 25
      Action = actRecNew
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF003184FF003184FF003184FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700F7F7F700F7F7F700B5848400FF00FF00FF00FF00FF00
        FF003184FF0042B5F7003184FF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
        EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00B5848400FF00FF003184FF003184
        FF003184FF0042B5F7003184FF003184FF003184FF00E7E7E700E7E7E700E7E7
        E700E7E7E700B5847300B5948C00B58C8400B5848400FF00FF003184FF008CD6
        F700B5DEF700B5DEF700B5DEF7008CD6F7003184FF00DEDEDE00DEDEDE00DEDE
        DE00C6C6C600B5847300FFFFFF00FFFFFF00B5848400FF00FF003184FF003184
        FF003184FF00B5DEF7003184FF003184FF003184FF00D6D6D600D6D6D600D6D6
        D600C6C6C600B5847300FFFFFF00B5848400FF00FF00FF00FF00FF00FF00FF00
        FF003184FF00B5DEF7003184FF00CECECE00CECECE00CECECE00CECECE00CECE
        CE00C6C6C600B5847300B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003184FF003184FF003184FF00EFD6C600EFD6C600EFD6C600EFD6C600EFD6
        C600D6BDB500B5847300FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 2
    end
    object btnEdit: TcxButton
      Left = 8
      Top = 88
      Width = 81
      Height = 25
      Action = actRecDetail
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D60031B5DE0021ADD600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D6009CDEEF0084EFFF004AC6E70021ADD60018A5C60018A5C60018A5C600FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D60052BDE7009CFFFF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6
        E70021ADD60018A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D60052BDE700ADFFFF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DE
        F70073DEF7004AC6EF0021ADD600FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D60029ADD600ADDEEF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEF
        FF0073DEF70073DEF7004AC6EF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D60073DEF70029ADD6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEF
        FF008CEFFF0073DEF70073DEF70018A5C600FF00FF00FF00FF00FF00FF0029AD
        D60094F7FF0029ADD600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEF
        FF008CEFFF0073DEF7000073080018A5C600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF0073DEF70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7
        FF0084EFFF00007308005AE78C000073080018A5C600FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDE
        EF000073080052D67B0042D66B0031C64A0000730800FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029AD
        D60018A5C600108C210031C64A00109C210018A5C600FF00FF00FF00FF0029AD
        D600C6FFFF0094FFFF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DE
        F70073DEF7000884100018AD290008841000FF00FF00FF00FF00FF00FF0021AD
        D6009CDEEF00C6FFFF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5
        C60018A5C600088C100008A51800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031B5DE0029ADD60018A5C60018A5C600FF00FF00FF00FF00FF00FF00FF00
        FF00088C100008A5180008841000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000730800087B0800088C
        1000088C1000087B0800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
  end
  inherited MasterDs: TDataSource
    DataSet = AOPdmd.dtsAOPLook
    OnDataChange = MasterDsDataChange
    Left = 324
  end
  inherited ActionList1: TActionList
    inherited actRecKopie: TAction
      Visible = False
    end
    object actRestoreGrids: TAction
      Caption = 'V'#253'choz'#237' nastaven'#237' seznam'#367
      OnExecute = actRestoreGridsExecute
    end
  end
  inherited SQLControler: TjfsSQLContr
    TableName = 'AOPSeznam'
    UpdateTableName = 'AOP'
    KeyField = 'AOPKOD'
    Left = 324
  end
  inherited dxBarManager1: TdxBarManager
    Font.Charset = EASTEUROPE_CHARSET
    UseSystemFont = False
    Left = 60
    Top = 128
    DockControlHeights = (
      0
      0
      0
      26)
    object dxbrManager1Bar: TdxBar [0]
      AllowClose = False
      AllowCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 663
      FloatTop = 279
      FloatClientWidth = 0
      FloatClientHeight = 0
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxbLocate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton9: TdxBarButton
      Action = actRestoreGrids
      Category = 0
    end
    object dxb1: TdxBarButton
      Caption = 'Styl seznamu'
      Category = 0
      Hint = 'Styl seznamu'
      Visible = ivAlways
      ImageIndex = 39
      OnClick = dxb1Click
    end
  end
  inherited cxsModul: TcxStyleRepository
    Left = 236
    PixelsPerInch = 96
  end
  inherited popGrid: TdxBarPopupMenu
    Left = 236
    Top = 128
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        GridView = tvView
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = popGrid
      end
      item
        GridView = tvKontakty
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 1
      end>
    Left = 148
    Top = 60
  end
  object dsKontakty: TDataSource
    AutoEdit = False
    Left = 412
    Top = 60
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'Modul.AOP.AOPLook'
    Properties.Strings = (
      'tvView.Styles.StyleSheet'
      'tvKontakty.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 420
    Top = 128
  end
end
