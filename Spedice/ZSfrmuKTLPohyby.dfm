inherited ZSfrmKTLPohyby: TZSfrmKTLPohyby
  Left = 194
  Top = 210
  Caption = 'Typy tras'
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
      object edKod: TcxDBTextEdit [0]
        Left = 70
        Top = 10
        DataBinding.DataField = 'KOD'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 73
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 70
        Top = 37
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 269
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        LayoutDirection = ldHorizontal
        Index = -1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Zkratka'
        Parent = dxlgHlavniGroup1
        Control = edKod
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Text popisu'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
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
        DataController.KeyFieldNames = 'KOD'
        object tvKatalogKOD: TcxGridDBColumn
          DataBinding.FieldName = 'KOD'
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
        object tvKatalogNOMODIFY: TcxGridDBColumn
          DataBinding.FieldName = 'NOMODIFY'
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
    DataSet = AppCompsDM.ZSKTLNakVyk
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
    RootSection = 'ZSfrmKTLPohyby.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
