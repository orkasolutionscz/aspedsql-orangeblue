inherited ZSfrmKTLTypy: TZSfrmKTLTypy
  Left = 194
  Top = 210
  Caption = 'Z'#225'silky -typy p'#345'eprav'
  ClientWidth = 590
  Constraints.MaxWidth = 598
  Constraints.MinHeight = 400
  Constraints.MinWidth = 598
  OnCreate = jfsCustomEvidFormCreate
  ExplicitWidth = 598
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Width = 590
    ExplicitWidth = 590
    inherited dxlHlavni: TdxLayoutControl
      Width = 588
      AutoSize = True
      ExplicitWidth = 588
      object edTyp: TcxDBTextEdit [0]
        Left = 84
        Top = 26
        DataBinding.DataField = 'TYP'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 73
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 84
        Top = 53
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 269
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgHlavniGroup2
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Typ p'#345'epravy :'
        Parent = dxlgHlavniGroup1
        Control = edTyp
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Popis :'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem
        CaptionOptions.Text = 'Empty Space Item'
        Parent = dxlgLayoutControl1Group_Root
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        Index = 0
      end
      object dxlgHlavniGroup2: TdxLayoutGroup
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
  inherited dxbcTop: TdxBarDockControl
    Width = 590
    ExplicitWidth = 590
  end
  inherited pnlSeznam: TPanel
    Width = 590
    ExplicitWidth = 590
    inherited cxGridKtl1: TcxGrid
      Width = 590
      ExplicitWidth = 590
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'TYP'
        object tvKatalogTYP: TcxGridDBColumn
          DataBinding.FieldName = 'TYP'
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Width = 590
    ExplicitWidth = 590
    inherited pnlButtons: TPanel
      Left = 422
      ExplicitLeft = 422
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLTypy
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
    RootSection = 'ZSfrmKTLTypy.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
