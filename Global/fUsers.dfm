inherited frmUsers: TfrmUsers
  Left = 187
  Top = 86
  Caption = 'Nastaven'#237' opr'#225'vn'#283'n'#237' u'#382'ivatel'#367
  ClientHeight = 569
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Top = 28
    Height = 277
    TabOrder = 2
    ExplicitTop = 28
    ExplicitHeight = 277
    inherited dxlHlavni: TdxLayoutControl
      Height = 275
      AutoSize = True
      ExplicitHeight = 275
      object edJmeno: TcxDBTextEdit [0]
        Left = 111
        Top = 109
        DataBinding.DataField = 'JMENO'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 4
        Width = 257
      end
      object edTelefon1: TcxDBTextEdit [1]
        Left = 111
        Top = 136
        DataBinding.DataField = 'TELEFON1'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 5
        Width = 151
      end
      object edTelefon2: TcxDBTextEdit [2]
        Left = 111
        Top = 217
        DataBinding.DataField = 'TELEFON2'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 8
        Width = 151
      end
      object edMobil: TcxDBTextEdit [3]
        Left = 111
        Top = 163
        DataBinding.DataField = 'MOBIL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 6
        Width = 151
      end
      object edEmail: TcxDBTextEdit [4]
        Left = 111
        Top = 190
        DataBinding.DataField = 'EMAIL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 7
        Width = 257
      end
      object chkAdministrator: TcxDBCheckBox [5]
        Left = 22
        Top = 367
        RepositoryItem = dmdGlobal.repBoolChar
        Caption = 'Administr'#225'tor'
        DataBinding.DataField = 'ADMINISTRATOR'
        DataBinding.DataSource = dsZaznam
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 14
        Transparent = True
        Width = 251
      end
      object chkShowFV: TcxDBCheckBox [6]
        Left = 22
        Top = 274
        RepositoryItem = dmdGlobal.repBoolChar
        Caption = 'Faktury vydan'#233
        DataBinding.DataField = 'SHOWFV'
        DataBinding.DataSource = dsZaznam
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 9
        Transparent = True
        Width = 101
      end
      object chkShowFD: TcxDBCheckBox [7]
        Left = 22
        Top = 301
        RepositoryItem = dmdGlobal.repBoolChar
        Caption = 'Faktury do'#353'l'#233
        DataBinding.DataField = 'SHOWFD'
        DataBinding.DataSource = dsZaznam
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 11
        Transparent = True
        Width = 101
      end
      object chkShowStatistiky: TcxDBCheckBox [8]
        Left = 22
        Top = 328
        RepositoryItem = dmdGlobal.repBoolChar
        Caption = 'Statistiky'
        DataBinding.DataField = 'SHOWSTAT'
        DataBinding.DataSource = dsZaznam
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 13
        Transparent = True
        Width = 101
      end
      object chkShowPoptavky: TcxDBCheckBox [9]
        Left = 129
        Top = 274
        RepositoryItem = dmdGlobal.repBoolChar
        Caption = 'Popt'#225'vky'
        DataBinding.DataField = 'SHOWPOPT'
        DataBinding.DataSource = dsZaznam
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 10
        Transparent = True
        Width = 101
      end
      object chkShowPU: TcxDBCheckBox [10]
        Left = 129
        Top = 301
        RepositoryItem = dmdGlobal.repBoolChar
        Caption = 'P'#345'. k '#250'hrad'#283
        DataBinding.DataField = 'SHOWPU'
        DataBinding.DataSource = dsZaznam
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 12
        Transparent = True
        Width = 101
      end
      object edUserId: TcxDBTextEdit [11]
        Left = 111
        Top = 28
        DataBinding.DataField = 'USERID'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 81
      end
      object edHeslo: TcxDBButtonEdit [12]
        Left = 111
        Top = 55
        DataBinding.DataField = 'HESLO'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.EchoMode = eemPassword
        Properties.OnButtonClick = edHesloButtonClick
        Style.HotTrack = False
        TabOrder = 1
        Width = 93
      end
      object edZnacka: TcxDBTextEdit [13]
        Left = 111
        Top = 82
        DataBinding.DataField = 'ZNACKA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 81
      end
      object cxDBColorComboBox1: TcxDBColorComboBox [14]
        Left = 234
        Top = 82
        DataBinding.DataField = 'BARVA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.ColorComboStyle = cxccsComboList
        Properties.CustomColors = <>
        Properties.DefaultDescription = 'Barva nen'#237' vybr'#225'na'
        Properties.ShowDescriptions = False
        Style.HotTrack = False
        TabOrder = 3
        Width = 121
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        AlignVert = avTop
        Index = -1
      end
      object dliHlavniItem3: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'Jm'#233'no a p'#345#237'jmen'#237' '
        Parent = dxlgHlavniGroup5
        Control = edJmeno
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem4: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'Telefon 1'
        Parent = dxlgHlavniGroup5
        Control = edTelefon1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dliHlavniItem5: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'Telefon 2'
        Parent = dxlgHlavniGroup5
        Control = edTelefon2
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dliHlavniItem6: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'Mobil'
        Parent = dxlgHlavniGroup5
        Control = edMobil
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dliHlavniItem7: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'Email'
        Parent = dxlgHlavniGroup5
        Control = edEmail
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dliHlavniItem8: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'chkAdministrator'
        CaptionOptions.Visible = False
        Parent = dxlgHlavniGroup9
        Control = chkAdministrator
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem9: TdxLayoutItem
        CaptionOptions.Text = 'Zobrazen'#233' moduly'
        CaptionOptions.Visible = False
        Parent = dxlgHlavniGroup4
        Control = chkShowFV
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem10: TdxLayoutItem
        CaptionOptions.Text = 'chkShowFD'
        CaptionOptions.Visible = False
        Parent = dxlgHlavniGroup7
        Control = chkShowFD
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem11: TdxLayoutItem
        CaptionOptions.Text = 'chkShowStatistiky'
        CaptionOptions.Visible = False
        Parent = dxlgHlavniGroup1
        Control = chkShowStatistiky
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dliHlavniItem12: TdxLayoutItem
        CaptionOptions.Text = 'chkShowPoptavky'
        CaptionOptions.Visible = False
        Parent = dxlgHlavniGroup4
        Control = chkShowPoptavky
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem13: TdxLayoutItem
        AlignVert = avBottom
        CaptionOptions.Text = 'chkShowPU'
        CaptionOptions.Visible = False
        Parent = dxlgHlavniGroup7
        Control = chkShowPU
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem14: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'U'#382'ivatel ID'
        Parent = dxlgHlavniGroup6
        Control = edUserId
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem15: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Heslo'
        Parent = dxlgHlavniGroup6
        Control = edHeslo
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem16: TdxLayoutItem
        CaptionOptions.Text = 'Zna'#269'ka'
        Parent = dxlgHlavniGroup2
        Control = edZnacka
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem17: TdxLayoutItem
        AlignVert = avClient
        CaptionOptions.Text = 'Barva:'
        Parent = dxlgHlavniGroup2
        Control = cxDBColorComboBox1
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        CaptionOptions.Text = ' Povolen'#233' moduly '
        Parent = dxlgHlavniGroup3
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 0
      end
      object dxlgHlavniGroup4: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgHlavniGroup1
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxlgHlavniGroup7: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgHlavniGroup1
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxlgHlavniGroup6: TdxLayoutGroup
        CaptionOptions.Text = ' Info '
        Parent = dxlgHlavniGroup8
        ButtonOptions.Buttons = <>
        Index = 0
      end
      object dxlgHlavniGroup5: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgHlavniGroup6
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 2
      end
      object dxlgHlavniGroup2: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgHlavniGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxlgHlavniGroup3: TdxLayoutGroup
        CaptionOptions.Text = ' P'#345#237'stupov'#225' pr'#225'va '
        Parent = dxlgHlavniGroup8
        ButtonOptions.Buttons = <>
        Index = 1
      end
      object dxlgHlavniGroup9: TdxLayoutGroup
        CaptionOptions.Text = 'New Group'
        Parent = dxlgHlavniGroup3
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 1
      end
      object dxlgHlavniGroup8: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dxlytsprtrtmHlavniSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        Parent = dxlgHlavniGroup9
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        Index = 0
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Height = 28
    ExplicitHeight = 28
  end
  inherited pnlSeznam: TPanel
    Top = 305
    TabOrder = 0
    ExplicitTop = 305
    inherited cxGridKtl1: TcxGrid
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'USERID'
        object tvKatalogUSERID: TcxGridDBColumn
          DataBinding.FieldName = 'USERID'
        end
        object tvKatalogJMENO: TcxGridDBColumn
          DataBinding.FieldName = 'JMENO'
        end
        object tvKatalogADMINISTRATOR: TcxGridDBColumn
          DataBinding.FieldName = 'ADMINISTRATOR'
        end
        object tvKatalogBARVA: TcxGridDBColumn
          DataBinding.FieldName = 'BARVA'
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Properties.ShowDescriptions = False
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Top = 523
    ExplicitTop = 523
  end
  inherited ActionList1: TActionList
    object actZmenaHesla: TAction
      Category = 'Formular'
      Caption = 'Zm'#283'nit heslo'
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = dmdSystem.dtsUsers
  end
  inherited dxBarManager1: TdxBarManager
    Scaled = False
    ShowFullMenusAfterDelay = False
    SunkenBorder = True
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmUsers.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
