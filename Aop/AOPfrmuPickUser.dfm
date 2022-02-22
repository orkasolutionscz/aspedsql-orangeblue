inherited frmAOPSelectUser: TfrmAOPSelectUser
  Left = 478
  Top = 214
  Caption = 'V'#253'b'#283'r adresy'
  ClientHeight = 541
  ClientWidth = 790
  Constraints.MinHeight = 350
  Constraints.MinWidth = 550
  ExplicitWidth = 806
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrids: TPanel
    Width = 692
    Height = 515
    ExplicitWidth = 692
    ExplicitHeight = 541
    inherited cxGrid1: TcxGrid
      Top = 21
      Width = 692
      Height = 339
      TabOrder = 1
      LevelTabs.Images = dmdGlobal.imglModul
      RootLevelOptions.DetailTabsPosition = dtpTop
      ExplicitTop = 21
      ExplicitWidth = 692
      ExplicitHeight = 339
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
        object tvViewPSC: TcxGridDBColumn
          DataBinding.FieldName = 'PSC'
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
      end
      inherited cxGrid1Level1: TcxGridLevel
        Caption = 'Adres'#225#345' firem'
        ImageIndex = 0
        Styles.Tab = dmdGlobal.cxStyle11
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
    object pgcDetaily: TcxPageControl
      Left = 0
      Top = 360
      Width = 692
      Height = 155
      Align = alBottom
      TabOrder = 2
      Properties.ActivePage = tbsKontakty
      Properties.CustomButtons.Buttons = <>
      ExplicitTop = 386
      ClientRectBottom = 155
      ClientRectRight = 692
      ClientRectTop = 24
      object tbsKontakty: TcxTabSheet
        Caption = 'Kontakty'
        ImageIndex = 0
        object grdKontakty: TcxGrid
          Left = 0
          Top = 3
          Width = 692
          Height = 128
          Align = alClient
          TabOrder = 0
          object tv1: TcxGridDBTableView
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
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = dsKontakty
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klikn'#283'te zde pro p'#345'id'#225'n'#237' nov'#233'ho kontaktu'
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'PRIJMENI'
              Width = 135
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'JMENO'
              Width = 68
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'EMAIL'
              Width = 89
            end
            object tvKontaktyFUNKCE: TcxGridDBColumn
              DataBinding.FieldName = 'FUNKCE'
              Visible = False
            end
            object tvKontaktyTELEFON1: TcxGridDBColumn
              DataBinding.FieldName = 'TELEFON1'
            end
            object tvKontaktyTELEFON2: TcxGridDBColumn
              DataBinding.FieldName = 'TELEFON2'
              Visible = False
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'MOBIL'
              Width = 97
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'FAX'
            end
            object tvKontaktyCOMMTYP: TcxGridDBColumn
              DataBinding.FieldName = 'COMMTYP'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'PDF'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'JPG'
                  Value = 1
                end
                item
                  Description = 'DOC'
                  Value = 2
                end>
              Visible = False
              VisibleForCustomization = False
            end
            object tvKontaktyISVYCHOZI: TcxGridDBColumn
              DataBinding.FieldName = 'ISVYCHOZI'
              RepositoryItem = dmdGlobal.repBoolChar
              Options.Editing = False
            end
          end
          object glKontaktyLevel1: TcxGridLevel
            GridView = tv1
          end
        end
        object dckKontakty: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 692
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object tbsUcty: TcxTabSheet
        Caption = 'Bankovn'#237' '#250#269'ty'
        ImageIndex = 1
        TabVisible = False
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
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
    DataSet = dtsAOPLook
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
    DataSet = dtsAOPLook
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
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 1
      end>
    Left = 148
    Top = 60
  end
  object dsKontakty: TDataSource
    AutoEdit = False
    DataSet = dtsKontakty
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
  object dtsAOPLook: TIBOQuery
    ColumnAttributes.Strings = (
      'AOP.JSOUKONTAKTY=REQUIRED')
    DatabaseName = 'fbAspedSql'
    EditSQL.Strings = (
      ' ')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    KeyLinks.Strings = (
      'AOP.AOPKOD')
    PreparedEdits = False
    PreparedInserts = False
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    aop.aopkod,'
      '    aop.nazev,'
      '    aop.adresa1,'
      '    aop.adresa2,'
      '    aop.adresa3,'
      '    aop.psc,'
      '    aop.kodzeme,'
      '    aopzeme.popis as zeme_popis,'
      '    aop.ico,'
      '    aop.dic,'
      '    aop.k1,'
      '    aop.kod_raal,'
      '    aop.kod_timo,'
      '    aop.stateuser,'
      '    sysstateuser.color,'
      '    aop.www,'
      '    aop.jsoukontakty,'
      '    aop.bankakod,'
      '    aop.splatnost,'
      '    aop.ucet,'
      '    aop.skupina'
      'from aop'
      
        '   left outer join sysstateuser on (aop.stateuser = sysstateuser' +
        '.id)'
      '   left outer join aopzeme on (aop.kodzeme = aopzeme.kod)'
      'order by nazev')
    FieldOptions = []
    Left = 326
    Top = 190
    object dtsAOPLookPSC: TStringField
      FieldName = 'PSC'
      Origin = 'AOP.PSC'
      Size = 10
    end
    object dtsAOPLookAOPKOD: TStringField
      DisplayLabel = 'K'#243'd AOP'
      FieldName = 'AOPKOD'
      Origin = 'AOP.AOPKOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 10
    end
    object dtsAOPLookICO: TStringField
      DisplayLabel = 'I'#268
      FieldName = 'ICO'
      Origin = 'AOP.ICO'
      Size = 10
    end
    object dtsAOPLookNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Origin = 'AOP.NAZEV'
      Size = 40
    end
    object dtsAOPLookADRESA1: TStringField
      DisplayLabel = 'Pobo'#269'ka'
      DisplayWidth = 10
      FieldName = 'ADRESA1'
      Origin = 'AOP.ADRESA1'
      Size = 32
    end
    object dtsAOPLookADRESA2: TStringField
      DisplayLabel = 'Adresa'
      DisplayWidth = 20
      FieldName = 'ADRESA2'
      Size = 32
    end
    object dtsAOPLookADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Origin = 'AOP.ADRESA3'
      Size = 40
    end
    object dtsAOPLookKODZEME: TStringField
      DisplayLabel = 'St'#225't k'#243'd'
      FieldName = 'KODZEME'
      Origin = 'AOP.KODZEME'
      Size = 4
    end
    object dtsAOPLookZEME_POPIS: TStringField
      DisplayLabel = 'St'#225't'
      DisplayWidth = 15
      FieldName = 'ZEME_POPIS'
      Size = 32
    end
    object dtsAOPLookSKUPINA: TStringField
      DisplayLabel = 'Skupina'
      DisplayWidth = 10
      FieldName = 'SKUPINA'
      Origin = 'AOP.SKUPINA'
      Size = 32
    end
    object dtsAOPLookK1: TStringField
      FieldName = 'K1'
      Origin = 'AOP.K1'
      Size = 8
    end
    object dtsAOPLookKOD_TIMO: TStringField
      DisplayLabel = 'Timocom'
      FieldName = 'KOD_TIMO'
      Origin = 'AOP.KOD_TIMO'
      Size = 10
    end
    object dtsAOPLookKOD_RAAL: TStringField
      DisplayLabel = 'RAAL Trans'
      FieldName = 'KOD_RAAL'
      Origin = 'AOP.KOD_RAAL'
      Size = 10
    end
    object dtsAOPLookSTATEUSER: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATEUSER'
      Origin = 'AOPSEZNAM.STATEUSER'
    end
    object dtsAOPLookDIC: TStringField
      DisplayLabel = 'DI'#268
      FieldName = 'DIC'
      Origin = 'AOP.DIC'
      Size = 14
    end
    object dtsAOPLookWWW: TStringField
      FieldName = 'WWW'
      Size = 200
    end
    object dtsAOPLookCOLOR: TIntegerField
      DisplayLabel = 'Status barva'
      FieldName = 'COLOR'
    end
    object dtsAOPLookBANKAKOD: TStringField
      DisplayLabel = 'K'#243'd banky'
      FieldName = 'BANKAKOD'
      Size = 11
    end
    object dtsAOPLookSPLATNOST: TSmallintField
      DisplayLabel = 'Splatnost'
      FieldName = 'SPLATNOST'
    end
    object dtsAOPLookUCET: TStringField
      DisplayLabel = #268#237'slo '#250#269'tu'
      DisplayWidth = 15
      FieldName = 'UCET'
      Size = 45
    end
    object dtsAOPLookJSOUKONTAKTY: TStringField
      DisplayLabel = 'Kontakty'
      FieldName = 'JSOUKONTAKTY'
      Origin = 'AOP.JSOUKONTAKTY'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dtsKontakty: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
        Value = 'aop1'
      end>
    ColumnAttributes.Strings = (
      'AOPJMENA.ID=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM AOPJMENA AOPJMENA'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE AOPJMENA AOPJMENA SET'
      '   AOPJMENA.JMENO = :JMENO,'
      '   AOPJMENA.PRIJMENI = :PRIJMENI,'
      '   AOPJMENA.FAX = :FAX,'
      '   AOPJMENA.EMAIL = :EMAIL,'
      '   AOPJMENA.MOBIL = :MOBIL,'
      '   AOPJMENA.TELEFON1 = :TELEFON1'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID=GEN_AOPJMENA_ID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO AOPJMENA('
      '   ID, /*PK*/'
      '   AOPKOD,'
      '   JMENO,'
      '   PRIJMENI,'
      '   FAX,'
      '   EMAIL,'
      '   MOBIL,'
      '   TELEFON1)'
      'VALUES ('
      '   :ID,'
      '   :AOPKOD,'
      '   :JMENO,'
      '   :PRIJMENI,'
      '   :FAX,'
      '   :EMAIL,'
      '   :MOBIL,'
      '   :TELEFON1)')
    KeyLinks.Strings = (
      'AOPJMENA.ID')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      
        'SELECT AOPJmena.ID, AOPJmena.AOPKOD, AOPJmena.Jmeno, AOPJmena.Pr' +
        'ijmeni, AOPJmena.Fax, AOPJmena.Email'
      '     , MOBIL'
      '     , TELEFON1'
      '     , isvychozi'
      'FROM AOPJmena'
      'WHERE AOPKOD = :AOPKOD'
      'ORDER BY AOPKOD, AOPJmena.Prijmeni;')
    FieldOptions = []
    Left = 422
    Top = 190
    object dtsKontaktyID: TIntegerField
      FieldName = 'ID'
      Origin = 'AOPJMENA.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsKontaktyAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Origin = 'AOPJMENA.AOPKOD'
      Visible = False
      Size = 10
    end
    object dtsKontaktyPrijmeni: TStringField
      DisplayLabel = 'P'#345#237'jmen'#237
      DisplayWidth = 25
      FieldName = 'PRIJMENI'
      Origin = 'AOPJMENA.PRIJMENI'
      Size = 50
    end
    object dtsKontaktyJmeno: TStringField
      DisplayLabel = 'Jm'#233'no'
      DisplayWidth = 25
      FieldName = 'JMENO'
      Origin = 'AOPJMENA.JMENO'
      Size = 45
    end
    object dtsKontaktyEmail: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'AOPJMENA.EMAIL'
      Size = 100
    end
    object dtsKontaktyFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'AOPJMENA.FAX'
      Size = 50
    end
    object dtsKontaktyMOBIL: TStringField
      DisplayLabel = 'GSM'
      DisplayWidth = 15
      FieldName = 'MOBIL'
      Size = 50
    end
    object dtsKontaktyTELEFON1: TStringField
      DisplayLabel = 'Telefon'
      DisplayWidth = 15
      FieldName = 'TELEFON1'
      Size = 50
    end
    object dtsKontaktyISVYCHOZI: TStringField
      DisplayLabel = 'Hlavn'#237' kontakt'
      FieldName = 'ISVYCHOZI'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
