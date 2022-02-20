inherited POPfrmKTLTypy: TPOPfrmKTLTypy
  Left = 380
  Top = 164
  Caption = 'Popt'#225'vky typy'
  OnCreate = jfsCustomEvidFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    inherited dxlHlavni: TdxLayoutControl
      AutoSize = True
      object edPopis: TcxDBTextEdit [0]
        Left = 53
        Top = 71
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 269
      end
      object edKodI: TcxDBCurrencyEdit [1]
        Left = 53
        Top = 44
        DataBinding.DataField = 'KOD'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.AssignedValues.DisplayFormat = True
        Properties.DecimalPlaces = 0
        Style.HotTrack = False
        TabOrder = 0
        Width = 65
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem
        CaptionOptions.Text = 'Empty Space Item'
        Parent = dxlgLayoutControl1Group_Root
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        Index = 0
      end
      object dliHlavniItem3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'K'#243'd'
        Parent = dxlgHlavniGroup1
        Control = edKodI
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Popis'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Index = 1
      end
    end
  end
  inherited pnlSeznam: TPanel
    inherited cxGridKtl1: TcxGrid
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'KOD'
        object tvKatalogKOD: TcxGridDBColumn
          DataBinding.FieldName = 'KOD'
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
      end
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.POPKTLTypy
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
    RootSection = 'POPfrmKTLTypy.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
