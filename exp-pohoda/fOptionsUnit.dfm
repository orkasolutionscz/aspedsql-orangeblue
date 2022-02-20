object frmOptions: TfrmOptions
  Left = 891
  Top = 463
  BorderStyle = bsDialog
  Caption = 'Nastaven'#237' aplikace'
  ClientHeight = 540
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxlMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 491
    Height = 499
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object edFVDefPodminka: TcxTextEdit
      Left = 126
      Top = 62
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 0
      Width = 333
    end
    object edDavkaFolder: TcxButtonEdit
      Left = 126
      Top = 116
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 2
      Text = 'edDavkaFolder'
      Width = 333
    end
    object edIc: TcxTextEdit
      Left = 126
      Top = 143
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 3
      Width = 129
    end
    object edFVPrekontace: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 129
    end
    object edFVDPHPredkontace: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 129
    end
    object edFVNahrText: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 271
    end
    object edFVZaokrDoklad: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 129
    end
    object edFVZaokrDPH: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 129
    end
    object edFDDefWhere: TcxTextEdit
      Left = 126
      Top = 89
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 1
      Text = 'edFDDefWhere'
      Width = 333
    end
    object edFDDPHPredkontace: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 17
      Text = 'ed1'
      Visible = False
      Width = 134
    end
    object edFDPredkontace: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 16
      Text = 'edFDPredkontace'
      Visible = False
      Width = 127
    end
    object edFVEUPredkontace: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 129
    end
    object edFVDPHEUPredkontace: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 129
    end
    object edDBName: TcxTextEdit
      Left = 126
      Top = 227
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 5
      Text = 'ed1'
      Width = 333
    end
    object edDBServer: TcxTextEdit
      Left = 126
      Top = 200
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 4
      Text = 'ed1'
      Width = 333
    end
    object edDBUser: TcxTextEdit
      Left = 126
      Top = 254
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 6
      Text = 'ed1'
      Width = 121
    end
    object edDBPassword: TcxTextEdit
      Left = 284
      Top = 254
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 7
      Text = 'edDBPassword'
      Width = 121
    end
    object chkXmlFullAdress: TcxCheckBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 121
    end
    object chkShowNonExist: TcxCheckBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 121
    end
    object chkFiltrovatVS: TcxCheckBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 121
    end
    object chkFDNacitatKurs: TcxCheckBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 247
    end
    object edCoDoObjednavky: TcxComboBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Properties.Items.Strings = (
        'Objedn'#225'vka'
        #268#237'slo p'#345'epravy')
      Style.HotTrack = False
      TabOrder = 15
      Text = 'edCoDoObjednavky'
      Visible = False
      Width = 121
    end
    object dxlMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object dxlMainGroup4: TdxLayoutGroup
      CaptionOptions.Text = ' Nastaven'#237' '
      Parent = dxlgMainGroup11
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlMainItem3: TdxLayoutItem
      CaptionOptions.Text = 'FV V'#253'choz'#237' filtr'
      Parent = dxlMainGroup4
      Control = edFVDefPodminka
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlMainItem4: TdxLayoutItem
      CaptionOptions.Text = 'Slo'#382'ka pro export'
      Parent = dxlMainGroup4
      Control = edDavkaFolder
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlMainGroup8: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'FV p'#345'edvolby'
      Parent = dxlgMainGroup8
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlMainItem6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'I'#269' firmy'
      Parent = dxlMainGroup4
      Control = edIc
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlMainItem7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tuzemsko'
      Parent = dxlgMainGroup2
      Control = edFVPrekontace
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlMainItem8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tuzemsko'
      Parent = dxlgMainGroup3
      Control = edFVDPHPredkontace
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlMainItem9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'N'#225'hradn'#237' text '
      Parent = dxlgMainGroup7
      Control = edFVNahrText
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlMainItem10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Doklad'
      Parent = dxlgMainGroup6
      Control = edFVZaokrDoklad
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlMainItem11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'DPH'
      Parent = dxlgMainGroup6
      Control = edFVZaokrDPH
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dliMainItem1: TdxLayoutItem
      CaptionOptions.Text = 'FD V'#253'choz'#237' filtr'
      Parent = dxlMainGroup4
      Control = edFDDefWhere
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dliMainItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tuzemsko'
      Parent = dxlgMainGroup10
      Control = edFDDPHPredkontace
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dliMainItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tuzemsko'
      Parent = dxlgMainGroup9
      Control = edFDPredkontace
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlgMainGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'FD p'#345'edvolby'
      Parent = dxlgMainGroup8
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlgMainGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Nastaven'#237' exportu'
      Parent = dxlMainGroup_Root
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxlgMainGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'P'#345'edkontace'
      Parent = dxlgMainGroup5
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dliMainItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'EU'
      Parent = dxlgMainGroup2
      Control = edFVEUPredkontace
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgMainGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'DPH P'#345'edkontace'
      Parent = dxlgMainGroup5
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlgMainGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlMainGroup8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dliMainItem6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'EU'
      Parent = dxlgMainGroup3
      Control = edFVDPHEUPredkontace
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgMainGroup6: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Zaokrouhlen'#237
      Parent = dxlgMainGroup15
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlgMainGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Ostatn'#237
      Parent = dxlgMainGroup8
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxlgMainGroup8: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgMainGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxlgMainGroup9: TdxLayoutGroup
      CaptionOptions.Text = 'P'#345'edkontace'
      Parent = dxlgMainGroup18
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlgMainGroup10: TdxLayoutGroup
      CaptionOptions.Text = 'DPH P'#345'edkontace'
      Parent = dxlgMainGroup18
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlgMainGroup11: TdxLayoutGroup
      CaptionOptions.Text = 'Z'#225'kladn'#237' nastaven'#237
      Parent = dxlMainGroup_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlgMainGroup12: TdxLayoutGroup
      CaptionOptions.Text = 'P'#345'ipojen'#237' k Pohoda SQL'
      Parent = dxlgMainGroup11
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dliMainItem4: TdxLayoutItem
      CaptionOptions.Text = 'N'#225'zev datab'#225'ze'
      Parent = dxlgMainGroup12
      Control = edDBName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dliMainItem7: TdxLayoutItem
      CaptionOptions.Text = 'P'#345'ipojen'#237' k serveru'
      Parent = dxlgMainGroup12
      Control = edDBServer
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dliMainItem8: TdxLayoutItem
      CaptionOptions.Text = 'U'#382'ivatel'
      Parent = dxlgMainGroup14
      Control = edDBUser
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dliMainItem9: TdxLayoutItem
      CaptionOptions.Text = 'Heslo'
      Parent = dxlgMainGroup14
      Control = edDBPassword
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgMainGroup14: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgMainGroup12
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dliMainItem10: TdxLayoutItem
      CaptionOptions.Text = 'Na'#269#237'tat celou adresu'
      Parent = dxlgMainGroup7
      Control = chkXmlFullAdress
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgMainGroup13: TdxLayoutGroup
      CaptionOptions.Text = 'Ostatn'#237
      Parent = dxlgMainGroup15
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlgMainGroup15: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlMainGroup8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dliMainItem11: TdxLayoutItem
      CaptionOptions.Text = 'Zobrazit n'#225'zev p'#345'i ne'#250'sp'#283'chu'
      Parent = dxlgMainGroup7
      Control = chkShowNonExist
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dliMainItem12: TdxLayoutItem
      CaptionOptions.Text = 'Filtrovat VS'
      Parent = dxlgMainGroup13
      Control = chkFiltrovatVS
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dliMainItem13: TdxLayoutItem
      CaptionOptions.Text = 'Na'#269#237'tat kurs z POHODA'
      Parent = dxlgMainGroup1
      Control = chkFDNacitatKurs
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgMainGroup16: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgMainGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxlytsprtrtmMainSeparatorItem1: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = dxlgMainGroup16
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxlgMainGroup18: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgMainGroup16
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxlMainItem1: TdxLayoutItem
      CaptionOptions.Text = 'Objedn'#225'vka'
      Parent = dxlgMainGroup13
      Control = edCoDoObjednavky
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 499
    Width = 491
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      491
      41)
    object btnOk: TcxButton
      Left = 327
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TcxButton
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Storno'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 340
    Top = 53
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
    end
  end
end
