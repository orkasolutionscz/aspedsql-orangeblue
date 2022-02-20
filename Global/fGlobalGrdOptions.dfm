object fraGlobalGrdOptions: TfraGlobalGrdOptions
  Left = 0
  Top = 0
  Width = 519
  Height = 383
  TabOrder = 0
  Caption = 'Vlatnosti seznam'#367
  Section = opgSystem
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 519
    Height = 383
    Align = alClient
    TabOrder = 0
    AutoSize = True
    object cbArchiv: TcxColorComboBox
      Left = 104
      Top = 46
      ParentFont = False
      Properties.CustomColors = <>
      Properties.ShowDescriptions = False
      Properties.OnChange = DcColorChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 65
    end
    object cbArchivText: TcxColorComboBox
      Left = 175
      Top = 46
      ParentFont = False
      Properties.CustomColors = <>
      Properties.ShowDescriptions = False
      Properties.OnChange = DcColorChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 65
    end
    object cbStorno: TcxColorComboBox
      Left = 100
      Top = 103
      ParentFont = False
      Properties.CustomColors = <>
      Properties.ShowDescriptions = False
      Properties.OnChange = DcColorChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 65
    end
    object cbStornoText: TcxColorComboBox
      Left = 171
      Top = 103
      ParentFont = False
      Properties.CustomColors = <>
      Properties.ShowDescriptions = False
      Properties.OnChange = DcColorChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 65
    end
    object edAutoRefreshInterval: TcxSpinEdit
      Left = 329
      Top = 172
      ParentFont = False
      Properties.Increment = 10.000000000000000000
      Properties.LargeIncrement = 100.000000000000000000
      Properties.MaxValue = 30000.000000000000000000
      Properties.MinValue = 1000.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Value = 10000
      Width = 77
    end
    object chkGridFiltSearchDialog: TcxCheckBox
      Left = 22
      Top = 199
      Caption = 'Pou'#382#237'vat dialog pro vyhled'#225'v'#225'n'#237' a filtrov'#225'n'#237
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Width = 234
    end
    object chkFullRefresh: TcxCheckBox
      Left = 22
      Top = 226
      Caption = 'Pou'#382#237'vat pln'#233' ob'#269'erstven'#237' seznamu po editaci'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
      Width = 263
    end
    object chkAutoRefresh: TcxCheckBox
      Left = 22
      Top = 172
      Caption = 'Automatick'#233' ob'#269'erstven'#237' seznamu'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 234
    end
    object lblArchiv: TcxLabel
      Left = 34
      Top = 46
      Caption = 'Archivovan'#253
      ParentFont = False
      Style.HotTrack = False
    end
    object lblStorno: TcxLabel
      Left = 34
      Top = 103
      AutoSize = False
      Caption = 'Stornovan'#253
      Enabled = False
      ParentFont = False
      Style.HotTrack = False
      Height = 17
      Width = 60
    end
    object dxlLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Seznamy'
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = ' Glob'#225'ln'#237' barevn'#233' hodnoty '
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Archivovan'#253
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group13
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'cbArchiv'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group19
      Control = cbArchiv
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'cbArchivText'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group19
      Control = cbArchivText
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Stornovan'#253
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group13
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cbStorno'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group20
      Control = cbStorno
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cbStornoText'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group20
      Control = cbStornoText
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Interval (ms)'
      Parent = dxlLayoutControl1Group1
      Control = edAutoRefreshInterval
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkGridFiltSearchDialog'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group11
      Control = chkGridFiltSearchDialog
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkFullRefresh'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group11
      Control = chkFullRefresh
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Zapnuto'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group1
      Control = chkAutoRefresh
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group18: TdxLayoutGroup
      CaptionOptions.Text = 'Automatick'#233' ob'#269'erstven'#237' seznamu'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group18
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxlLayoutControl1Group19: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group15
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxlLayoutControl1Group20: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group17
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group19
      Control = lblArchiv
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group20
      Control = lblStorno
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxlLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group11
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
end
