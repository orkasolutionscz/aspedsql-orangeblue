object FDfraPrehled: TFDfraPrehled
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object cxGridKtl1: TcxGrid
    Left = 0
    Top = 26
    Width = 451
    Height = 278
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
        Options.Editing = False
        VisibleForCustomization = False
      end
      object tvPrehledREFFD: TcxGridDBColumn
        DataBinding.FieldName = 'REFFD'
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
      end
      object tvPrehledFAKTURADO: TcxGridDBColumn
        DataBinding.FieldName = 'FAKTURADO'
        Options.Editing = False
      end
      object tvPrehledPOLTEXT: TcxGridDBColumn
        DataBinding.FieldName = 'POLTEXT'
        Options.Editing = False
      end
      object tvPrehledVARIABILNI: TcxGridDBColumn
        DataBinding.FieldName = 'VARIABILNI'
        Options.Editing = False
      end
      object tvPrehledCENASUMA: TcxGridDBColumn
        DataBinding.FieldName = 'CENASUMA'
        Options.Editing = False
      end
      object tvPrehledCENASUMASDPH: TcxGridDBColumn
        DataBinding.FieldName = 'CENASUMASDPH'
        Options.Editing = False
      end
      object tvPrehledCENAMENA: TcxGridDBColumn
        DataBinding.FieldName = 'CENAMENA'
        Options.Editing = False
        Width = 27
      end
      object tvPrehledDATSPLATNOST: TcxGridDBColumn
        DataBinding.FieldName = 'DATSPLATNOST'
        Options.Editing = False
      end
      object tvPrehledLIKVOK: TcxGridDBColumn
        DataBinding.FieldName = 'LIKVOK'
        Options.Editing = False
        Width = 42
      end
      object tvPrehledISDOPROVIZE: TcxGridDBColumn
        DataBinding.FieldName = 'ISDOPROVIZE'
        Visible = False
        Options.Editing = False
      end
    end
    object cxGridKtl1Level1: TcxGridLevel
      GridView = tvPrehled
    end
  end
  object actlFDPrehled: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 30
    object actFDNew: TAction
      Caption = 'Nov'#225' faktura'
      ImageIndex = 6
      OnExecute = actFDNewExecute
    end
    object actFDEdit: TAction
      Caption = 'Otev'#345#237't...'
      ImageIndex = 5
      OnExecute = actFDEditExecute
      OnUpdate = actFDEditUpdate
    end
  end
  object dsView: TDataSource
    AutoEdit = False
    DataSet = ZSdmd.dtsZAFd
    Left = 119
    Top = 29
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    UseSystemFont = False
    Left = 206
    Top = 30
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
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = actFDEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actFDNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
end
