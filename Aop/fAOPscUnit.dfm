inherited frmAopPsc: TfrmAopPsc
  Left = 463
  Top = 249
  Caption = 'Seznam sm'#283'rovac'#237'ch '#269#237'sel'
  ClientHeight = 570
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Height = 119
    ExplicitHeight = 119
    inherited dxlHlavni: TdxLayoutControl
      Height = 117
      ExplicitHeight = 117
      object edKodStatu: TcxDBTextEdit [0]
        Left = 60
        Top = 26
        DataBinding.DataField = 'KODZEME'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 61
      end
      object edPsc: TcxDBTextEdit [1]
        Left = 60
        Top = 53
        DataBinding.DataField = 'PSC'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 69
      end
      object edMesto: TcxDBTextEdit [2]
        Left = 60
        Top = 80
        DataBinding.DataField = 'MESTO'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 189
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dliKodStatu: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'K'#243'd st'#225'tu'
        Parent = dxlgHlavniGroup1
        Control = edKodStatu
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Ps'#269
        Parent = dxlgHlavniGroup1
        Control = edPsc
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'M'#283'sto'
        Parent = dxlgHlavniGroup1
        Control = edMesto
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 1
      end
      object dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem
        CaptionOptions.Text = 'Empty Space Item'
        Parent = dxlgLayoutControl1Group_Root
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        Index = 0
      end
    end
  end
  inherited pnlSeznam: TPanel
    Top = 145
    Height = 296
    ExplicitTop = 145
    ExplicitHeight = 296
    DesignSize = (
      472
      296)
    inherited cxGridKtl1: TcxGrid
      Left = 14
      Top = 16
      Width = 457
      Height = 273
      ExplicitLeft = 14
      ExplicitTop = 16
      ExplicitWidth = 457
      ExplicitHeight = 273
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'KODZEME;PSC'
        object tvKatalogKODZEME: TcxGridDBColumn
          DataBinding.FieldName = 'KODZEME'
          Width = 58
        end
        object tvKatalogPSC: TcxGridDBColumn
          DataBinding.FieldName = 'PSC'
          Width = 106
        end
        object tvKatalogMESTO: TcxGridDBColumn
          DataBinding.FieldName = 'MESTO'
          Width = 138
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Top = 524
    ExplicitTop = 524
  end
  inherited ActionList1: TActionList
    Left = 188
  end
  inherited dsZaznam: TDataSource
    DataSet = AOPdmd.KTLPsc
    Left = 276
  end
  inherited dxBarManager1: TdxBarManager
    Left = 100
    Top = 188
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      FloatClientWidth = 69
      FloatClientHeight = 159
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 364
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'AOP.KTLPsc'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 188
    Top = 188
  end
end
