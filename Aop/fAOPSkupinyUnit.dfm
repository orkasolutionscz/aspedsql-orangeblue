inherited AOPfrmKTLSkupiny: TAOPfrmKTLSkupiny
  Left = 406
  Top = 239
  Caption = 'Skupiny pro za'#345'azen'#237' kontaktu'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    inherited dxlHlavni: TdxLayoutControl
      object edSkupina: TcxDBTextEdit [0]
        Left = 85
        Top = 26
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 276
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'N'#225'zev skupiny'
        Parent = dxlgLayoutControl1Group_Root
        Control = edSkupina
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem2: TdxLayoutItem
        CaptionOptions.Text = 'New Item'
        Index = -1
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
  inherited pnlSeznam: TPanel
    inherited cxGridKtl1: TcxGrid
      inherited tvKatalog: TcxGridDBTableView
        Navigator.Buttons.Insert.Visible = True
        DataController.KeyFieldNames = 'POPIS'
        OptionsCustomize.ColumnFiltering = False
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
          Width = 301
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 30
    Top = 30
  end
  inherited dsZaznam: TDataSource
    DataSet = AOPdmd.KTLSkupiny
    Left = 118
    Top = 30
  end
  inherited dxBarManager1: TdxBarManager
    Left = 206
    Top = 30
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 294
    Top = 30
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'AOP.KTLSkupiny'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 382
    Top = 30
  end
end
