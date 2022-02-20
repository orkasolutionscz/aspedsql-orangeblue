inherited ZSfrmKTLTypPlatby: TZSfrmKTLTypPlatby
  Left = 245
  Top = 248
  Caption = 'Z'#225'silky - typy plateb'
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
    Height = 135
    ExplicitWidth = 590
    ExplicitHeight = 135
    inherited dxlHlavni: TdxLayoutControl
      Width = 588
      Height = 133
      AutoSize = True
      ExplicitWidth = 588
      ExplicitHeight = 133
      object edZkratka: TcxDBTextEdit [0]
        Left = 151
        Top = 28
        DataBinding.DataField = 'KOD'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 39
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 151
        Top = 55
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 185
      end
      object edTextFV: TcxDBTextEdit [2]
        Left = 151
        Top = 82
        DataBinding.DataField = 'TEXTFAKTURA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 259
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        LayoutDirection = ldHorizontal
        Index = -1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Hidden Group'
        CaptionOptions.Visible = False
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Zkratka'
        Parent = dxlgHlavniGroup1
        Control = edZkratka
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Popis'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Text p'#345'enesen'#253' do faktury'
        Parent = dxlgHlavniGroup1
        Control = edTextFV
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 590
    ExplicitWidth = 590
  end
  inherited pnlSeznam: TPanel
    Top = 161
    Width = 590
    Height = 384
    ExplicitTop = 161
    ExplicitWidth = 590
    ExplicitHeight = 384
    inherited cxGridKtl1: TcxGrid
      Width = 590
      Height = 384
      ExplicitWidth = 590
      ExplicitHeight = 384
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'KOD'
        object tvKatalogKOD: TcxGridDBColumn
          DataBinding.FieldName = 'KOD'
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
        object tvKatalogTEXTFAKTURA: TcxGridDBColumn
          DataBinding.FieldName = 'TEXTFAKTURA'
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
    DataSet = AppCompsDM.KTLDruhPlatby
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
    RootSection = 'Katalogy.ZSKTLPlatby'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
