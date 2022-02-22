object AOPfraJMPrehled: TAOPfraJMPrehled
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object cxGridKtl1: TcxGrid
    Left = 0
    Top = 26
    Width = 451
    Height = 278
    Align = alClient
    TabOrder = 0
    object tvPrehled: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsView
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPrehledID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object tvPrehledPRIJMENI: TcxGridDBColumn
        DataBinding.FieldName = 'PRIJMENI'
      end
      object tvPrehledJMENO: TcxGridDBColumn
        DataBinding.FieldName = 'JMENO'
      end
      object tvPrehledEMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'EMAIL'
      end
      object tvPrehledFUNKCE: TcxGridDBColumn
        DataBinding.FieldName = 'FUNKCE'
        Visible = False
      end
      object tvPrehledTELEFON1: TcxGridDBColumn
        DataBinding.FieldName = 'TELEFON1'
      end
      object tvPrehledTELEFON2: TcxGridDBColumn
        DataBinding.FieldName = 'TELEFON2'
        Visible = False
      end
      object tvPrehledMOBIL: TcxGridDBColumn
        DataBinding.FieldName = 'MOBIL'
      end
      object tvPrehledFAX: TcxGridDBColumn
        DataBinding.FieldName = 'FAX'
      end
    end
    object cxGridKtl1Level1: TcxGridLevel
      GridView = tvPrehled
    end
  end
  object ActionList2: TActionList
    Images = dmdGlobal.imglDefault
    Left = 60
    Top = 60
    object actSendMail: TAction
      Caption = 'Odeslat E-mail'
      ImageIndex = 57
      OnExecute = actSendMailExecute
    end
  end
  object dsView: TDataSource
    AutoEdit = False
    DataSet = AOPdmd.ViewAOPJmena
    Left = 236
    Top = 60
  end
  object dxBarManager1: TdxBarManager
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
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    RegistryPath = '\Software\LMSS\ASPED\aspedsql\'
    UseSystemFont = True
    Left = 324
    Top = 60
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Hlavni'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 294
      FloatTop = 238
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton3: TdxBarButton
      Action = actSendMail
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGridKtl1
    PopupMenus = <>
    Left = 148
    Top = 60
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgForms
    Options = [poStoreDefValues]
    RootSection = 'AOPfraJMPrehled.rsPropSaver1'
    Properties.Strings = (
      'tvPrehled.Styles.StyleSheet')
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 408
    Top = 64
  end
end
