inherited FVfrmKTLTypy: TFVfrmKTLTypy
  Left = 376
  Top = 243
  Caption = 'Faktury - typy faktur'
  ClientHeight = 517
  ClientWidth = 590
  Constraints.MaxWidth = 598
  Constraints.MinHeight = 400
  Constraints.MinWidth = 598
  ExplicitWidth = 598
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Width = 590
    Height = 191
    ExplicitWidth = 590
    ExplicitHeight = 191
    inherited dxlHlavni: TdxLayoutControl
      Width = 588
      Height = 189
      ExplicitWidth = 588
      ExplicitHeight = 189
      object edTyp: TcxDBTextEdit [0]
        Left = 52
        Top = 26
        DataBinding.DataField = 'TYPFV'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 52
        Top = 53
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 173
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Zkratka'
        Parent = dxlgHlavniGroup1
        Control = edTyp
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Popis'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
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
  inherited dxbcTop: TdxBarDockControl
    Width = 590
    ExplicitWidth = 590
  end
  inherited pnlSeznam: TPanel
    Top = 217
    Width = 590
    Height = 300
    ExplicitTop = 217
    ExplicitWidth = 590
    ExplicitHeight = 300
    inherited cxGridKtl1: TcxGrid
      Width = 590
      Height = 300
      ExplicitWidth = 590
      ExplicitHeight = 300
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'TYPFV'
        object tvKatalogTYPFV: TcxGridDBColumn
          DataBinding.FieldName = 'TYPFV'
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Top = 471
    Width = 590
    ExplicitTop = 471
    ExplicitWidth = 590
    inherited pnlButtons: TPanel
      Left = 422
      ExplicitLeft = 422
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLFVTyp
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
    RootSection = 'Katalogy.FVKTLTypy\Seznam'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
