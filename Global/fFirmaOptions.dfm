object fraFirmaOptions: TfraFirmaOptions
  Tag = 1
  Left = 0
  Top = 0
  Width = 501
  Height = 451
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Firma'
  Section = opgSystem
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object dxl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 501
    Height = 451
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitTop = -3
    ExplicitWidth = 534
    ExplicitHeight = 441
    object edNazev: TcxTextEdit
      Left = 61
      Top = 28
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'edNazev'
      Width = 196
    end
    object edTelefon: TcxDBTextEdit
      Left = 332
      Top = 28
      DataBinding.DataField = 'UTELEFON'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 147
    end
    object edAdresa1: TcxTextEdit
      Left = 61
      Top = 55
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = 'edAdresa1'
      Width = 196
    end
    object edFax: TcxDBTextEdit
      Left = 332
      Top = 55
      DataBinding.DataField = 'UFAX'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 141
    end
    object edAdresa2: TcxDBTextEdit
      Left = 61
      Top = 82
      DataBinding.DataField = 'UADDRES'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 196
    end
    object edMobil: TcxDBTextEdit
      Left = 332
      Top = 82
      DataBinding.DataField = 'UGSM'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 125
    end
    object edPSC: TcxDBTextEdit
      Left = 61
      Top = 109
      DataBinding.DataField = 'UZIP'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 57
    end
    object edAdresa3: TcxDBTextEdit
      Left = 158
      Top = 109
      DataBinding.DataField = 'UCITY'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 99
    end
    object edEmail: TcxDBTextEdit
      Left = 332
      Top = 109
      DataBinding.DataField = 'UEMAIL'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 117
    end
    object edIco: TcxTextEdit
      Left = 61
      Top = 163
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Text = 'edIco'
      Width = 73
    end
    object edDic: TcxDBTextEdit
      Left = 159
      Top = 163
      DataBinding.DataField = 'UDIC'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 98
    end
    object edWWW: TcxDBTextEdit
      Left = 332
      Top = 136
      DataBinding.DataField = 'UWWW'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 117
    end
    object edBankaName: TcxDBTextEdit
      Left = 291
      Top = 220
      DataBinding.DataField = 'UBANKNAME'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 158
    end
    object edBankaKod: TcxDBTextEdit
      Left = 61
      Top = 220
      DataBinding.DataField = 'UBANKCODE'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 57
    end
    object edBankaUcet: TcxDBTextEdit
      Left = 158
      Top = 220
      DataBinding.DataField = 'UBANKKONTO'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 59
    end
    object edZeme: TcxDBTextEdit
      Left = 61
      Top = 136
      DataBinding.DataField = 'USTATE'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 196
    end
    object edFirmaRegistr: TcxDBTextEdit
      Left = 61
      Top = 277
      DataBinding.DataField = 'UREGISTRUDAJE'
      DataBinding.DataSource = dmdSystem.dsFirma
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 406
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
      CaptionOptions.Text = 'Firma'
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxl1Group3: TdxLayoutGroup
      CaptionOptions.Text = ' Inici'#225'ly firmy '
      Parent = dxl1Group12
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlytmdxl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Firma:'
      Parent = dxl1Group3
      Control = edNazev
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxlytmdxl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Telefon:'
      Parent = dxl1Group7
      Control = edTelefon
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmdxl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Adresa'
      Parent = dxl1Group3
      Control = edAdresa1
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxlytmdxl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'FAX:'
      Parent = dxl1Group7
      Control = edFax
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytmdxl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Ulice:'
      Parent = dxl1Group3
      Control = edAdresa2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlytmdxl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Mobil:'
      Parent = dxl1Group7
      Control = edMobil
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlytmdxl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Ps'#269
      Parent = dxl1Group9
      Control = edPSC
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmdxl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'M'#283'sto'
      Parent = dxl1Group9
      Control = edAdresa3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytmdxl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Email:'
      Parent = dxl1Group7
      Control = edEmail
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlytmdxl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'I'#269
      Parent = dxl1Group11
      Control = edIco
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxlytmdxl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Di'#269
      Parent = dxl1Group6
      Control = edDic
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytmdxl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Http:\'
      Parent = dxl1Group7
      Control = edWWW
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlytmdxl1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Jm'#233'no banky'
      Parent = dxl1Group10
      Control = edBankaName
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlytmdxl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'K'#243'd'
      Parent = dxl1Group10
      Control = edBankaKod
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmdxl1Item15: TdxLayoutItem
      CaptionOptions.Text = #218#269'et'
      Parent = dxl1Group10
      Control = edBankaUcet
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxl1LabeledItem1: TdxLayoutLabeledItem
      AlignVert = avBottom
      CaptionOptions.Text = 'Nep'#345#237'stupn'#225' pole lze m'#283'nit pouze v pr'#367'b'#283'hu registrace aplikace.'
      Parent = dxlLayoutControl1Group_Root
      Index = 3
    end
    object dxlytmdxl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Zem'#283':'
      Parent = dxl1Group3
      Control = edZeme
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlytmdxl1Item17: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Registr'
      Parent = dxl1Group2
      Control = edFirmaRegistr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxl1Group5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxl1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxl1Group8
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Banka'
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
end
