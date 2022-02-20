inherited frmKTLJednotky: TfrmKTLJednotky
  Left = 369
  Top = 245
  Caption = 'Seznam jednotek'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    inherited dxlHlavni: TdxLayoutControl
      AutoSize = True
      object edZkratka: TcxDBTextEdit [0]
        Left = 55
        Top = 10
        DataBinding.DataField = 'JEDNOTKA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 79
      end
      object edPopis: TcxDBTextEdit [1]
        Left = 55
        Top = 37
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 247
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        LayoutDirection = ldHorizontal
        Index = -1
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
    end
  end
  inherited pnlSeznam: TPanel
    inherited cxGridKtl1: TcxGrid
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'JEDNOTKA'
        object tvKatalogJEDNOTKA: TcxGridDBColumn
          DataBinding.FieldName = 'JEDNOTKA'
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
      end
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLJednotky
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
    RootSection = 'Katalogy.KTLJednotky\Seznam'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 92
    Top = 168
  end
end
