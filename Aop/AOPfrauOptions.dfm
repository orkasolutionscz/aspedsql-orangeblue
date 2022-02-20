object AOPfraOptions: TAOPfraOptions
  Left = 0
  Top = 0
  Width = 842
  Height = 602
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Adres'#225#345
  Section = opgModuly
  OnReadSetting = jfsOptionsFrameLoadValues
  OnWriteSetting = jfsOptionsFrameSaveValues
  object dxl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 842
    Height = 602
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitLeft = 112
    ExplicitTop = 152
    ExplicitWidth = 569
    ExplicitHeight = 377
    object btnCisRadaSetup: TSpeedButton
      Left = 204
      Top = 28
      Width = 24
      Height = 21
      Caption = '...'
      Flat = True
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      Transparent = False
      OnClick = btnCisRadaSetupClick
    end
    object chkConfirmNewNum: TcxCheckBox
      Left = 234
      Top = 28
      Caption = 'Nab'#237'dnout v'#253'b'#283'r?'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 120
    end
    object chkZSAdresa3Upper: TcxCheckBox
      Left = 22
      Top = 166
      Hint = 'Povolen'#237' p'#345'epo'#269'tu provize i kdy'#382' nen'#237' zadan'#225' jedna cena'
      Caption = 'Pou'#382#237'vat Velk'#225' p'#237'smena v poli M'#283'sto (M'#237'sto)'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
      Width = 249
    end
    object edAOPSplatnost: TcxSpinEdit
      Left = 155
      Top = 85
      AutoSize = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Height = 21
      Width = 56
    end
    object chkAOPUseIcoAsID: TcxCheckBox
      Left = 22
      Top = 139
      Caption = 'Pou'#382#237'vat I'#268'O jako k'#243'd firmy'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 232
    end
    object chkAopShowUsSta: TcxCheckBox
      Left = 22
      Top = 112
      Caption = 'Zobrazovat u'#382'ivatelsk'#253' stav evidenc'#237'ch'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 232
    end
    object btn1: TcxButton
      Left = 22
      Top = 223
      Width = 113
      Height = 25
      Caption = 'Tabulka Adres'#225#345
      TabOrder = 7
      OnClick = btn1Click
    end
    object lbRada: TcxLabel
      Left = 59
      Top = 28
      Align = alLeft
      Caption = 'Rada'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbNewNumValue: TcxLabel
      Left = 146
      Top = 28
      Align = alLeft
      Caption = 'Hodnota'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dxlLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxl1Group2: TdxLayoutGroup
      CaptionOptions.Text = ' '#268#237'seln'#225' '#345'ada'
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxl1LabeledItem1: TdxLayoutLabeledItem
      AlignVert = avClient
      CaptionOptions.Text = 'N'#225'zev'
      Parent = dxl1Group4
      Index = 0
    end
    object dxl1LabeledItem2: TdxLayoutLabeledItem
      AlignVert = avClient
      CaptionOptions.Text = 'Hodnota'
      Parent = dxl1Group4
      Index = 2
    end
    object dxlytmdxl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'btnCisRadaSetup'
      CaptionOptions.Visible = False
      Parent = dxl1Group4
      Control = btnCisRadaSetup
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlytmdxl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'chkConfirmNewNum'
      CaptionOptions.Visible = False
      Parent = dxl1Group4
      Control = chkConfirmNewNum
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxl1Group6: TdxLayoutGroup
      CaptionOptions.Text = ' Hodnoty pro nov'#253' z'#225'znam '
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlytmdxl1Item3: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'chkZSAdresa3Upper'
      CaptionOptions.Visible = False
      Parent = dxl1Group6
      Control = chkZSAdresa3Upper
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmdxl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Z'#225'kladn'#237' splatnost faktury:'
      Parent = dxl1Group6
      Control = edAOPSplatnost
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytmdxl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkAOPUseIcoAsID'
      CaptionOptions.Visible = False
      Parent = dxl1Group6
      Control = chkAOPUseIcoAsID
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlytmdxl1Item6: TdxLayoutItem
      AlignVert = avTop
      CaptionOptions.Text = 'chkAopShowUsSta'
      CaptionOptions.Visible = False
      Parent = dxl1Group6
      Control = chkAopShowUsSta
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxl1Group9: TdxLayoutGroup
      CaptionOptions.Text = ' Seznam pol'#237' pro kop'#237'rov'#225'n'#237' '
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxlytmdxl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'btn1'
      CaptionOptions.Visible = False
      Parent = dxl1Group1
      Control = btn1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmdxl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = dxl1Group4
      Control = lbRada
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytmdxl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = dxl1Group4
      Control = lbNewNumValue
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxl1Group4: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxl1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = dxl1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
end
