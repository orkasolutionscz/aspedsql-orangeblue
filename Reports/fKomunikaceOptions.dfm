object appfraKomunikaceOptions: TappfraKomunikaceOptions
  Left = 0
  Top = 0
  Width = 613
  Height = 491
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Komunikace'
  Section = opgExporty
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object dxl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 613
    Height = 491
    Align = alClient
    TabOrder = 0
    AutoSize = True
    DesignSize = (
      613
      491)
    object AutomaticRadioBtn: TcxRadioButton
      Left = 22
      Top = 28
      Width = 70
      Height = 17
      Caption = '&Automaticky'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = SetSendType
      Transparent = True
    end
    object MapiRadioBtn: TcxRadioButton
      Left = 22
      Top = 51
      Width = 70
      Height = 17
      Caption = '&MAPI'
      TabOrder = 1
      OnClick = SetSendType
      Transparent = True
    end
    object DirectRadioBtn: TcxRadioButton
      Left = 22
      Top = 74
      Width = 70
      Height = 17
      Caption = '&Manu'#225'ln'#283
      TabOrder = 2
      OnClick = SetSendType
      Transparent = True
    end
    object ClientsListView: TcxListView
      Left = 98
      Top = 28
      Width = 327
      Height = 94
      Anchors = [akLeft, akTop, akRight, akBottom]
      ColumnClick = False
      Columns = <
        item
          Caption = 'ID'
          Width = 80
        end
        item
          Caption = 'Klient'
          Width = 80
        end
        item
          Caption = 'Cesta'
          Width = 240
        end>
      HideSelection = False
      ParentFont = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 3
      ViewStyle = vsReport
      OnSelectItem = ClientsListViewSelectItem
    end
    object chkEmailShowDlg: TcxCheckBox
      Left = 22
      Top = 158
      Caption = 'Zobrazit E-Mail klienta p'#345'i odes'#237'l'#225'n'#237
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      OnClick = chkAddToAddresClick
      Width = 223
    end
    object edMailCC: TcxTextEdit
      Left = 86
      Top = 185
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Text = 'edMailCC'
      Width = 329
    end
    object edTypPrilohy: TcxImageComboBox
      Left = 86
      Top = 212
      ParentFont = False
      Properties.Items = <
        item
          Description = 'PDF soubor'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'JPG soubor'
          Value = 1
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object chkEmFon: TcxCheckBox
      Left = 223
      Top = 239
      Caption = 'P'#345'id'#225'vat fonty do PDF souboru'
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
      Width = 202
    end
    object chkAddToAddres: TcxCheckBox
      Left = 251
      Top = 158
      Caption = 'P'#345'idat email adresu do zpr'#225'vy'
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      OnClick = chkAddToAddresClick
      Width = 166
    end
    object edClosePreview: TcxCheckBox
      Left = 22
      Top = 239
      Caption = 'Zav'#345#237't n'#225'hled po odesl'#225'n'#237' emailu'
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Width = 195
    end
    object dxl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxl1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Typ po'#353'tovn'#237'ho klienta '
      Parent = dxl1Group8
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'AutomaticRadioBtn'
      CaptionOptions.Visible = False
      Parent = dxl1Group5
      Control = AutomaticRadioBtn
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'MapiRadioBtn'
      CaptionOptions.Visible = False
      Parent = dxl1Group5
      Control = MapiRadioBtn
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'DirectRadioBtn'
      CaptionOptions.Visible = False
      Parent = dxl1Group10
      Control = DirectRadioBtn
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'ClientsListView'
      CaptionOptions.Visible = False
      Parent = dxl1Group9
      Control = ClientsListView
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Group6: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = ' Dal'#353#237' nastaven'#237' '
      Parent = dxl1Group2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxl1Group7: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkEmailShowDlg'
      CaptionOptions.Visible = False
      Parent = dxlgdxl1Group11
      Control = chkEmailShowDlg
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Kopie zpr'#225'v '
      Parent = dxl1Group7
      Control = edMailCC
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Typ p'#345#237'lohy'
      Parent = dxl1Group7
      Control = edTypPrilohy
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = dxl1Group4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxl1Item12: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxl1Group11
      Control = chkEmFon
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dlidxl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = dxlgdxl1Group11
      Control = chkAddToAddres
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgdxl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxl1Item11: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxl1Group11
      Control = edClosePreview
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
end
