inherited FVfrmKTLUhrady: TFVfrmKTLUhrady
  Left = 364
  Top = 257
  Caption = 'Faktury - forma '#250'hrady'
  Constraints.MinHeight = 0
  OnCreate = jfsCustomEvidFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSeznam: TPanel [0]
    Top = 249
    Height = 296
    ExplicitTop = 249
    ExplicitHeight = 296
    inherited cxGridKtl1: TcxGrid
      Top = 16
      Width = 416
      Height = 296
      ExplicitTop = 16
      ExplicitWidth = 416
      ExplicitHeight = 296
      inherited tvKatalog: TcxGridDBTableView
        object tvKatalogUHRADA: TcxGridDBColumn
          DataBinding.FieldName = 'UHRADA'
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
      end
    end
  end
  inherited pnlGlobalData: TPanel [2]
    Height = 223
    ExplicitHeight = 223
    inherited dxlHlavni: TdxLayoutControl
      Height = 221
      AutoSize = True
      ExplicitHeight = 221
      object edUhrada: TcxDBTextEdit [0]
        Left = 55
        Top = 26
        DataBinding.DataField = 'UHRADA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 93
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 55
        Top = 53
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 299
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Hidden Group'
        CaptionOptions.Visible = False
        Parent = dxlgHlavniGroup2
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Zkratka:'
        Parent = dxlgHlavniGroup1
        Control = edUhrada
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Popis:'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxlgHlavniGroup2: TdxLayoutGroup
        AlignHorz = ahClient
        CaptionOptions.Text = 'New Group'
        Parent = dxlgHlavniGroup3
        ButtonOptions.Buttons = <>
        Hidden = True
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
      object dxlgHlavniGroup3: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLFVUhrada
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
    RootSection = 'Katalogy.FVKTLUhrady\Seznam'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
