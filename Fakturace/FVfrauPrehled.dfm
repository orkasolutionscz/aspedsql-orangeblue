object FVfraPrehled: TFVfraPrehled
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
      object tvPrehledFAKTURA: TcxGridDBColumn
        DataBinding.FieldName = 'FAKTURA'
      end
      object tvPrehledNAZEV: TcxGridDBColumn
        DataBinding.FieldName = 'NAZEV'
      end
      object tvPrehledDATVYSTAVENI: TcxGridDBColumn
        DataBinding.FieldName = 'DATVYSTAVENI'
      end
      object tvPrehledDATSPLATNOST: TcxGridDBColumn
        DataBinding.FieldName = 'DATSPLATNOST'
      end
      object tvPrehledDatUhrazeno: TcxGridDBColumn
        DataBinding.FieldName = 'DatUhrazeno'
      end
      object tvPrehledCELKEM: TcxGridDBColumn
        DataBinding.FieldName = 'CELKEM'
      end
      object tvPrehledCENALIKV: TcxGridDBColumn
        DataBinding.FieldName = 'CENALIKV'
      end
      object tvPrehledCENAUHRAZENO: TcxGridDBColumn
        DataBinding.FieldName = 'CENAUHRAZENO'
      end
      object tvPrehledLIKVOK: TcxGridDBColumn
        DataBinding.FieldName = 'LIKVOK'
      end
    end
    object cxGridKtl1Level1: TcxGridLevel
      GridView = tvPrehled
    end
  end
  object actlFVPrehled: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 30
    object actFVEdit: TAction
      Caption = 'Otev'#345#237't...'
      ImageIndex = 5
      OnExecute = actFVEditExecute
      OnUpdate = actFVEditUpdate
    end
  end
  object dsView: TDataSource
    AutoEdit = False
    DataSet = FVdmd.FVViewZasilka
    Left = 118
    Top = 30
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = EASTEUROPE_CHARSET
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
      Action = actFVEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
end
