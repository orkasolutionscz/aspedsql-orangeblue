object fraGlobalOptions: TfraGlobalOptions
  Left = 0
  Top = 0
  Width = 476
  Height = 337
  TabOrder = 0
  Caption = 'Obecn'#233' nastaven'#237
  Section = opgSystem
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 476
    Height = 337
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitWidth = 519
    ExplicitHeight = 383
    object edDPHSazba: TcxImageComboBox
      Left = 126
      Top = 112
      ParentFont = False
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 97
    end
    object edDesMista: TcxSpinEdit
      Left = 344
      Top = 112
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Value = 1
      Width = 57
    end
    object chkEnableDelete: TcxCheckBox
      Tag = 99
      Left = 22
      Top = 169
      Caption = 'Zobrazit tla'#269#237'tko pro odstran'#283'n'#237' z'#225'znamu'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 225
    end
    object chkUserUsePrivateColor: TcxCheckBox
      Tag = 99
      Left = 22
      Top = 196
      Caption = 'Pou'#382#237'vat vlastn'#237' barvy pro u'#382'ivatele'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 225
    end
    object edFontName: TcxFontNameComboBox
      Left = 126
      Top = 28
      ParentFont = False
      Properties.OnChange = edFontNamePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 163
    end
    object edFontSize1: TcxSpinEdit
      Left = 336
      Top = 28
      ParentFont = False
      Properties.OnChange = edFontSize1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 65
    end
    object edStylEdit: TcxComboBox
      Left = 126
      Top = 55
      ParentFont = False
      Properties.Items.Strings = (
        'Standardn'#237
        'Ploch'#253
        'Extra ploch'#253
        'Office'
        'Nativn'#237)
      Properties.OnChange = edStylEditPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 275
    end
    object chkUseCustomLayout: TcxCheckBox
      Left = 22
      Top = 223
      Caption = 'Pou'#382#237'vat u'#382'ivatelsky upraviteln'#233' formul'#225#345'e'
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 257
    end
    object dxlLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = ' Dan'#283' '
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'V'#253'choz'#237' DPH'
      Parent = dxLayoutControl1Group3
      Control = edDPHSazba
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Po'#269'et desetinn'#253'ch m'#237'st'
      Parent = dxLayoutControl1Group3
      Control = edDesMista
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = ' Ostatn'#237' '
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkEnableDelete'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group1
      Control = chkEnableDelete
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkUserUsePrivateColor'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group1
      Control = chkUserUsePrivateColor
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = ' Vzhled aplikace '
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Font aplikace'
      Parent = dxlLayoutControl1Group2
      Control = edFontName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Velikost'
      Parent = dxlLayoutControl1Group2
      Control = edFontSize1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Styl edita'#269'n'#237'ch prvk'#367
      Parent = dxLayoutControl1Group7
      Control = edStylEdit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkUseCustomLayout'
      CaptionOptions.Visible = False
      Parent = dxlLayoutControl1Group1
      Control = chkUseCustomLayout
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlLayoutControl1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxlLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
end
