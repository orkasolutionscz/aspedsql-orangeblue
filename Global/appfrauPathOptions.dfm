object appfraPathOptions: TappfraPathOptions
  Left = 0
  Top = 0
  Width = 535
  Height = 407
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Cesty k dat'#367'm'
  Section = opgSystem
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object dxl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 535
    Height = 407
    Align = alClient
    TabOrder = 0
    AutoSize = True
    DesignSize = (
      535
      407)
    object edPracDB: TcxButtonEdit
      Left = 133
      Top = 55
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Text = 'edPracDB'
      Width = 344
    end
    object edBackuFolder: TcxButtonEdit
      Left = 133
      Top = 109
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = GetPathDialog
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Text = 'dxButtonEdit1'
      Width = 344
    end
    object edReportFolder: TcxButtonEdit
      Left = 133
      Top = 82
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = GetPathDialog
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Text = 'dxButtonEdit1'
      Width = 344
    end
    object edDocsFolder: TcxButtonEdit
      Left = 133
      Top = 28
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = GetPathDialog
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Text = 'edDocsFolder'
      Width = 344
    end
    object edFirebirdDateFormat: TcxTextEdit
      Left = 133
      Top = 166
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Text = 'edFirebirdDateFormat'
      Width = 121
    end
    object dxl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxl1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = ' Datab'#225'ze '
      Parent = dxl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Pracovn'#237' datab'#225'zi :'
      Parent = dxl1Group1
      Control = edPracDB
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Ukl'#225'd'#225'n'#237' z'#225'loh :'
      Parent = dxl1Group1
      Control = edBackuFolder
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Cesta k sestav'#225'm :'
      Parent = dxl1Group1
      Control = edReportFolder
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Cesta k dokument'#367'm:'
      Parent = dxl1Group1
      Control = edDocsFolder
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Group2: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Dal'#353#237' nastaven'#237
      Parent = dxl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'SQL form'#225't pro datum'
      Parent = dxl1Group2
      Control = edFirebirdDateFormat
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
