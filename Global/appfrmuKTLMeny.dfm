inherited frmKTLMeny: TfrmKTLMeny
  Left = 398
  Top = 231
  Caption = 'Seznam m'#283'n a kurz'#367
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    inherited dxlHlavni: TdxLayoutControl
      AutoSize = True
      object edZkratka: TcxDBTextEdit [0]
        Left = 55
        Top = 26
        DataBinding.DataField = 'KOD'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 79
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 55
        Top = 53
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 261
      end
      object edKurs: TcxDBCurrencyEdit [2]
        Left = 55
        Top = 80
        RepositoryItem = dmdGlobal.repCNKurz
        AutoSize = False
        DataBinding.DataField = 'KURS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Height = 21
        Width = 99
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgHlavniGroup2
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Zkratka:'
        Parent = dxlgHlavniGroup1
        Control = edZkratka
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
      object dliHlavniItem3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Kurs:'
        Parent = dxlgHlavniGroup1
        Control = edKurs
        ControlOptions.ShowBorder = False
        Index = 2
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
        object tvKatalogKURS: TcxGridDBColumn
          DataBinding.FieldName = 'KURS'
        end
      end
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLMeny
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
    RootSection = 'Katalogy.KTLMeny\Seznam'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
