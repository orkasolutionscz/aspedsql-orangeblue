inherited ZSfrmKTLAuta: TZSfrmKTLAuta
  Left = 350
  Top = 225
  Caption = 'Dopravn'#237' prost'#345'edky'
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
    Height = 111
    TabOrder = 2
    ExplicitWidth = 590
    ExplicitHeight = 111
    inherited dxlHlavni: TdxLayoutControl
      Width = 588
      Height = 109
      AutoSize = True
      ExplicitWidth = 588
      ExplicitHeight = 109
      object edZkratka: TcxDBTextEdit [0]
        Left = 72
        Top = 44
        DataBinding.DataField = 'TYP'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 345
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'Typ auta:'
        Parent = dxlgHlavniGroup1
        Control = edZkratka
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
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
    Top = 137
    Width = 590
    Height = 408
    TabOrder = 0
    ExplicitTop = 137
    ExplicitWidth = 590
    ExplicitHeight = 408
    inherited cxGridKtl1: TcxGrid
      Width = 590
      Height = 408
      ExplicitHeight = 408
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'TYP'
        object tvKatalogTYP: TcxGridDBColumn
          DataBinding.FieldName = 'TYP'
        end
      end
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLAuta
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
