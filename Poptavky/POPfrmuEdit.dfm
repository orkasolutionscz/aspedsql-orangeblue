inherited POPfrmEdit: TPOPfrmEdit
  Left = 595
  Top = 188
  Caption = 'Popt'#225'vka detail'
  ClientHeight = 591
  ClientWidth = 583
  OldCreateOrder = True
  ExplicitWidth = 591
  ExplicitHeight = 618
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Left = 8
    Top = 514
    Width = 97
    Height = 95
    Visible = False
    ExplicitLeft = 8
    ExplicitTop = 514
    ExplicitWidth = 97
    ExplicitHeight = 95
    object grpVykladka: TGroupBox
      Left = 288
      Top = 120
      Width = 223
      Height = 105
      Caption = ' Kam '
      TabOrder = 0
      object lbl11: TLabel
        Left = 14
        Top = 20
        Width = 19
        Height = 13
        Caption = 'St'#225't'
      end
      object lbl12: TLabel
        Left = 78
        Top = 20
        Width = 18
        Height = 13
        Caption = 'Ps'#269
      end
      object lbl13: TLabel
        Left = 14
        Top = 58
        Width = 29
        Height = 13
        Caption = 'M'#283'sto'
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 583
    ExplicitWidth = 583
  end
  object dxl1: TdxLayoutControl [2]
    Left = 0
    Top = 26
    Width = 583
    Height = 565
    Align = alClient
    TabOrder = 6
    AutoSize = True
    LayoutLookAndFeel = dmdGlobal.dxlsFlat
    object edZnacka: TcxDBButtonEdit
      Left = 22
      Top = 46
      Hint = 'Eviden'#269'n'#237' '#269#237'slo faktury.'
      DataBinding.DataField = 'ZNACKA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
        end
        item
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edZnackaPropertiesButtonClick
      ShowHint = False
      Style.HotTrack = False
      TabOrder = 0
      Width = 97
    end
    object edDatum: TcxDBDateEdit
      Left = 125
      Top = 46
      DataBinding.DataField = 'DATUM'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 1
      Width = 81
    end
    object edZNRamcovka: TcxDBTextEdit
      Left = 212
      Top = 46
      DataBinding.DataField = 'ZNRAMCOVKA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 2
      Width = 97
    end
    object cbTyp: TcxDBLookupComboBox
      Left = 315
      Top = 46
      DataBinding.DataField = 'TYP'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 3
      Width = 89
    end
    object edDatumDo: TcxDBDateEdit
      Left = 410
      Top = 46
      DataBinding.DataField = 'DAT_PLATNOST'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 4
      Width = 81
    end
    object edZadavatel: TcxDBLookupComboBox
      Left = 22
      Top = 91
      DataBinding.DataField = 'REF_AOPKOD'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 5
      Width = 289
    end
    object edKontakt: TcxDBTextEdit
      Left = 317
      Top = 91
      DataBinding.DataField = 'KONTAKT'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 6
      Width = 177
    end
    object cbNZeme: TcxDBLookupComboBox
      Left = 22
      Top = 166
      DataBinding.DataField = 'NSTAT'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 7
      Width = 63
    end
    object edNPSC: TcxDBTextEdit
      Left = 91
      Top = 166
      DataBinding.DataField = 'NPSC'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 8
      Width = 59
    end
    object edNMisto: TcxDBButtonEdit
      Left = 22
      Top = 211
      DataBinding.DataField = 'NMISTO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edNMistoButtonClick
      Style.HotTrack = False
      TabOrder = 9
      Width = 187
    end
    object cbVZeme: TcxDBLookupComboBox
      Left = 239
      Top = 166
      DataBinding.DataField = 'VSTAT'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 10
      Width = 63
    end
    object edVPsc: TcxDBTextEdit
      Left = 308
      Top = 166
      DataBinding.DataField = 'VPSC'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 11
      Width = 55
    end
    object edVMisto: TcxDBButtonEdit
      Left = 239
      Top = 211
      DataBinding.DataField = 'VMISTO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edVMistoButtonClick
      Style.HotTrack = False
      TabOrder = 12
      Width = 187
    end
    object cbVozidlo: TcxDBLookupComboBox
      Left = 22
      Top = 268
      Hint = 'Po'#382'adovan'#253' dopravn'#237' prost'#345'edek'
      DataBinding.DataField = 'VOZIDLO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 13
      Width = 473
    end
    object edCenaSmluvni: TcxDBCurrencyEdit
      Left = 22
      Top = 343
      RepositoryItem = dmdGlobal.repCena
      AutoSize = False
      DataBinding.DataField = 'CENASMLUVNI'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 69
    end
    object cbCenaMena: TcxDBLookupComboBox
      Left = 97
      Top = 343
      DataBinding.DataField = 'CENAMENA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 15
      Width = 49
    end
    object cbCenaJednotka: TcxDBLookupComboBox
      Left = 152
      Top = 343
      DataBinding.DataField = 'CENAJEDNOTKA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 16
      Width = 69
    end
    object edCenaPodminky: TcxDBTextEdit
      Left = 227
      Top = 343
      DataBinding.DataField = 'CENAPOPIS'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 17
      Width = 281
    end
    object mePoznamka: TcxDBMemo
      Left = 22
      Top = 400
      DataBinding.DataField = 'POZNAMKA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 18
      Height = 71
      Width = 475
    end
    object dxlgLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dmdGlobal.dxlsFlat
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxlgdxl1Group1: TdxLayoutGroup
      AlignVert = avTop
      Parent = dxlgLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlgdxl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgdxl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dlidxl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Zna'#269'ka'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group2
      Control = edZnacka
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dlidxl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Datum'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group2
      Control = edDatum
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dlidxl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'R'#225'mcov'#225' smlouva'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group2
      Control = edZNRamcovka
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dlidxl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Typ:'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group2
      Control = cbTyp
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dlidxl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Platnost do'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group2
      Control = edDatumDo
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlgdxl1Group3: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgdxl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dlidxl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Firma'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group3
      Control = edZadavatel
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dlidxl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Kontakt'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group3
      Control = edKontakt
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgdxl1Group4: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxlgdxl1Group5: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = ' Odkud '
      Parent = dxlgdxl1Group4
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlgdxl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgdxl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dlidxl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'St'#225't'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group6
      Control = cbNZeme
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dlidxl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Ps'#269
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group6
      Control = edNPSC
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dlidxl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'M'#283'sto'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group5
      Control = edNMisto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgdxl1Group7: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = ' Kam '
      Parent = dxlgdxl1Group4
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlgdxl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgdxl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dlidxl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'St'#225't'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group8
      Control = cbVZeme
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dlidxl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Ps'#269
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group8
      Control = edVPsc
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dlidxl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'M'#283'sto'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group7
      Control = edVMisto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgdxl1Group9: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = ' Vozidlo '
      Parent = dxlgLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dlidxl1Item14: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cbVozidlo'
      CaptionOptions.Visible = False
      Parent = dxlgdxl1Group9
      Control = cbVozidlo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlgdxl1Group10: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = ' Cena '
      Parent = dxlgLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dlidxl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Z'#225'klad'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group10
      Control = edCenaSmluvni
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dlidxl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'M'#283'na'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group10
      Control = cbCenaMena
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dlidxl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Jednotky'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group10
      Control = cbCenaJednotka
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dlidxl1Item18: TdxLayoutItem
      CaptionOptions.Text = 'Materi'#225'l'
      CaptionOptions.Layout = clTop
      Parent = dxlgdxl1Group10
      Control = edCenaPodminky
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlgdxl1Group12: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = ' Pozn'#225'mka '
      Parent = dxlgLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object dlidxl1Item19: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'mePoznamka'
      CaptionOptions.Visible = False
      Parent = dxlgdxl1Group12
      Control = mePoznamka
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = POPdmd.POPRecord
    OnStateChange = dsZaznamStateChange
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
