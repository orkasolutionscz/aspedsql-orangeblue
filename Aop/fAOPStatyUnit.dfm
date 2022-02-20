inherited AOPfrmKTLZeme: TAOPfrmKTLZeme
  Left = 524
  Caption = 'Seznam zem'#237
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    inherited dxlHlavni: TdxLayoutControl
      object edKod: TcxDBTextEdit [0]
        Left = 72
        Top = 26
        DataBinding.DataField = 'KOD'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 72
        Top = 53
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 264
      end
      object edTelPred: TcxDBTextEdit [2]
        Left = 270
        Top = 26
        DataBinding.DataField = 'KODTEL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 121
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dliHlavniItem1: TdxLayoutItem
        CaptionOptions.Text = 'K'#243'd st'#225'tu'
        Parent = dxlgHlavniGroup2
        Control = edKod
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        CaptionOptions.Text = 'N'#225'zev st'#225'tu'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem3: TdxLayoutItem
        CaptionOptions.Text = 'Tel p'#345'edvolba'
        Parent = dxlgHlavniGroup2
        Control = edTelPred
        ControlOptions.ShowBorder = False
        Index = 1
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
      object dxlgHlavniGroup2: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgHlavniGroup1
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem
        CaptionOptions.Text = 'Empty Space Item'
        Parent = dxlgLayoutControl1Group_Root
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        Index = 0
      end
      object dxlytspltrtmHlavniSplitterItem1: TdxLayoutSplitterItem
        CaptionOptions.Text = 'Splitter'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = -1
      end
    end
  end
  inherited pnlSeznam: TPanel
    inherited cxGridKtl1: TcxGrid
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'KOD'
        object tvKatalogKOD: TcxGridDBColumn
          DataBinding.FieldName = 'KOD'
          Width = 112
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
          Width = 116
        end
        object tvKatalogKODTEL: TcxGridDBColumn
          DataBinding.FieldName = 'KODTEL'
          Width = 185
        end
      end
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AOPdmd.KTLZeme
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'AOP.KTLZeme'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
