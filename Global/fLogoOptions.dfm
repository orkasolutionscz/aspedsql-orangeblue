object fraLogoOptions: TfraLogoOptions
  Tag = 1
  Left = 0
  Top = 0
  Width = 521
  Height = 396
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Loga a texty'
  Section = opgSystem
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object dxl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 521
    Height = 396
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitLeft = 48
    ExplicitTop = 184
    ExplicitWidth = 601
    ExplicitHeight = 415
    object edLogo1: TcxDBImage
      Left = 22
      Top = 164
      DataBinding.DataField = 'ULOGO1'
      DataBinding.DataSource = dmdSystem.dsFirma
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 100
      Width = 329
    end
    object edLogo2: TcxDBImage
      Left = 22
      Top = 28
      DataBinding.DataField = 'ULOGO2'
      DataBinding.DataSource = dmdSystem.dsFirma
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Height = 100
      Width = 329
    end
    object dxlLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxlytmdxl1Item18: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'edLogo1'
      CaptionOptions.Visible = False
      Parent = dxl1Group3
      Control = edLogo1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmdxl1Item19: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'edLogo2'
      CaptionOptions.Visible = False
      Parent = dxl1Group1
      Control = edLogo2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Logo 1'
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Logo 2'
      Parent = dxlLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
  end
end
