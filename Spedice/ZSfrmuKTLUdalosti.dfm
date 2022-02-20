inherited ZSfrmKTLUdalosti: TZSfrmKTLUdalosti
  Left = 120
  Caption = 'Z'#225'silky - typy ud'#225'lost'#237
  ClientWidth = 590
  Constraints.MaxWidth = 598
  Constraints.MinHeight = 400
  Constraints.MinWidth = 598
  OnCreate = jfsCustomEvidFormCreate
  ExplicitWidth = 598
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Width = 590
    ExplicitWidth = 590
    inherited dxlHlavni: TdxLayoutControl
      Width = 588
      AutoSize = True
      ExplicitWidth = 588
      object edZkratka: TcxDBTextEdit [0]
        Left = 55
        Top = 26
        DataBinding.DataField = 'TYP'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 141
      end
      object edDefaultText: TcxDBTextEdit [1]
        Left = 55
        Top = 53
        DataBinding.DataField = 'DEFAULTTEXT'
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
        Parent = dxlgHlavniGroup2
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Ud'#225'lost:'
        Parent = dxlgHlavniGroup1
        Control = edZkratka
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Text:'
        Parent = dxlgHlavniGroup1
        Control = edDefaultText
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
        object tvKatalogDEFAULTTEXT: TcxGridDBColumn
          DataBinding.FieldName = 'DEFAULTTEXT'
          Width = 138
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
  inherited ActionList1: TActionList
    inherited actOk: TAction
      Caption = 'Vybrat'
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = ZSdmd.KTLHistorie
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
    RootSection = 'ZSfrmKTLUdalosti.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
