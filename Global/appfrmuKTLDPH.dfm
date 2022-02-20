inherited frmKTLDPH: TfrmKTLDPH
  Left = 395
  Top = 225
  Caption = 'Sazby DPH'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Height = 87
    ExplicitHeight = 87
    inherited dxlHlavni: TdxLayoutControl
      Height = 85
      AutoSize = True
      ExplicitHeight = 85
      object edPopis: TcxDBTextEdit [0]
        Left = 84
        Top = 37
        DataBinding.DataField = 'DPH_ID'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 93
      end
      object edDPHProc: TcxDBCurrencyEdit [1]
        Left = 84
        Top = 10
        AutoSize = False
        DataBinding.DataField = 'PROCDPH'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Height = 21
        Width = 93
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dliHlavniItem3: TdxLayoutItem
        CaptionOptions.Text = 'Popis'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem1: TdxLayoutItem
        CaptionOptions.Text = 'Procento DPH'
        Parent = dxlgHlavniGroup1
        Control = edDPHProc
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
    end
  end
  inherited pnlSeznam: TPanel
    Top = 113
    Height = 432
    ExplicitTop = 113
    ExplicitHeight = 432
    inherited cxGridKtl1: TcxGrid
      Height = 432
      ExplicitHeight = 432
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'DPH_ID'
        object tvKatalogDPH_ID: TcxGridDBColumn
          DataBinding.FieldName = 'DPH_ID'
          Width = 42
        end
        object tvKatalogPROCDPH: TcxGridDBColumn
          DataBinding.FieldName = 'PROCDPH'
        end
      end
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLDPH
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
    RootSection = 'KTL.KTLDph'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
