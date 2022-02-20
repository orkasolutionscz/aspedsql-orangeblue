inherited frmUcty: TfrmUcty
  Left = 451
  Top = 298
  Caption = #268#237'seln'#237'k bankovn'#237'ch '#250#269't'#367
  ClientHeight = 592
  OnCreate = jfsCustomEvidFormCreate
  ExplicitHeight = 619
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Height = 351
    ExplicitHeight = 351
    inherited dxlHlavni: TdxLayoutControl
      Height = 349
      ExplicitHeight = 349
      object edZkratka: TcxDBTextEdit [0]
        Left = 99
        Top = 10
        DataBinding.DataField = 'ZKRATKA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 48
      end
      object edMena: TcxDBLookupComboBox [1]
        Left = 99
        Top = 37
        DataBinding.DataField = 'MENA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.ListColumns = <>
        Style.HotTrack = False
        TabOrder = 1
        Width = 49
      end
      object edCislo: TcxDBTextEdit [2]
        Left = 99
        Top = 64
        DataBinding.DataField = 'UCET'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 151
      end
      object edKodBanky: TcxDBTextEdit [3]
        Left = 99
        Top = 91
        DataBinding.DataField = 'KODBANKY'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 3
        Width = 54
      end
      object edMezbankSpojeni: TcxDBTextEdit [4]
        Left = 99
        Top = 145
        DataBinding.DataField = 'BANKAWORLD'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 5
        Width = 185
      end
      object edSpcSymbol: TcxDBTextEdit [5]
        Left = 99
        Top = 172
        DataBinding.DataField = 'SPECSYMBOL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 6
        Width = 188
      end
      object edIBAN: TcxDBTextEdit [6]
        Left = 99
        Top = 199
        DataBinding.DataField = 'IBAN'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 7
        Width = 188
      end
      object edNazevBanky: TcxDBTextEdit [7]
        Left = 99
        Top = 226
        DataBinding.DataField = 'BANKA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 8
        Width = 188
      end
      object cbTypUctu: TcxDBComboBox [8]
        Left = 99
        Top = 118
        DataBinding.DataField = 'TYP'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.Items.Strings = (
          'Pokladna'
          #218#269'et')
        Style.HotTrack = False
        TabOrder = 4
        Width = 112
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        LayoutDirection = ldHorizontal
        Index = -1
      end
      object Main1Item6: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Zkratka'
        Parent = dxlgHlavniGroup1
        Control = edZkratka
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object Main1Item9: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'M'#283'na '#250#269'tu'
        Parent = dxlgHlavniGroup1
        Control = edMena
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object Main1Item5: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #268#237'slo '#250#269'tu'
        Parent = dxlgHlavniGroup1
        Control = edCislo
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object Main1Item1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'K'#243'd banky'
        Parent = dxlgHlavniGroup1
        Control = edKodBanky
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object Main1Item3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'SWIFT'
        Parent = dxlgHlavniGroup1
        Control = edMezbankSpojeni
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object Main1Item4: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Specifick'#253' symbol'
        Parent = dxlgHlavniGroup1
        Control = edSpcSymbol
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object Main1Item7: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'IBAN'
        Parent = dxlgHlavniGroup1
        Control = edIBAN
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object Main1Item2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Jm'#233'no banky'
        Parent = dxlgHlavniGroup1
        Control = edNazevBanky
        ControlOptions.ShowBorder = False
        Index = 8
      end
      object Main1Item8: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Typ '#250#269'tu'
        Parent = dxlgHlavniGroup1
        Control = cbTypUctu
        ControlOptions.ShowBorder = False
        Index = 4
      end
    end
  end
  inherited pnlSeznam: TPanel
    Top = 377
    Height = 295
    ExplicitTop = 377
    ExplicitHeight = 295
    inherited cxGridKtl1: TcxGrid
      Height = 295
      ExplicitHeight = 295
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'ZKRATKA'
        object tvKatalogZKRATKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZKRATKA'
        end
        object tvKatalogUCET: TcxGridDBColumn
          DataBinding.FieldName = 'UCET'
        end
        object tvKatalogTYP: TcxGridDBColumn
          DataBinding.FieldName = 'TYP'
        end
        object tvKatalogKODBANKY: TcxGridDBColumn
          DataBinding.FieldName = 'KODBANKY'
        end
        object tvKatalogBANKA: TcxGridDBColumn
          DataBinding.FieldName = 'BANKA'
        end
        object tvKatalogBANKAWORLD: TcxGridDBColumn
          DataBinding.FieldName = 'BANKAWORLD'
        end
        object tvKatalogSPECSYMBOL: TcxGridDBColumn
          DataBinding.FieldName = 'SPECSYMBOL'
        end
        object tvKatalogIBAN: TcxGridDBColumn
          DataBinding.FieldName = 'IBAN'
        end
        object tvKatalogMENA: TcxGridDBColumn
          DataBinding.FieldName = 'MENA'
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Top = 546
    ExplicitTop = 546
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLFVUcty
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
    RootSection = 'frmUcty.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 368
    Top = 168
  end
end
