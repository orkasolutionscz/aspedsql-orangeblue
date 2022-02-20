object FDfraOptions: TFDfraOptions
  Left = 0
  Top = 0
  Width = 478
  Height = 302
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Faktury p'#345'ijat'#233
  Section = opgModuly
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  DesignSize = (
    478
    302)
  object grbCisRada: TcxGroupBox
    Left = 8
    Top = 8
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#268#237'seln'#225' '#345'ada'
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    TabOrder = 0
    Transparent = True
    Height = 65
    Width = 457
    object btnCisRadaSetup: TSpeedButton
      Left = 296
      Top = 24
      Width = 21
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
    object pnlNewNumInfo: TPanel
      Left = 80
      Top = 24
      Width = 215
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 0
      Color = clWindow
      TabOrder = 0
      object lbRada: TcxLabel
        Left = 44
        Top = 0
        Align = alLeft
        Caption = 'Rada'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbSep: TcxLabel
        Left = 79
        Top = 0
        Align = alLeft
        Caption = '  hodnota : '
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbNewNumValue: TcxLabel
        Left = 137
        Top = 0
        Align = alLeft
        Caption = 'Hodnota'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'N'#225'zev : '
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
    end
    object chkConfirmNewNum: TcxCheckBox
      Left = 320
      Top = 24
      Caption = 'Nab'#237'dnout v'#253'b'#283'r?'
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Transparent = True
      Width = 117
    end
    object Label3: TcxLabel
      Left = 8
      Top = 24
      Caption = 'Informace :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object grbBarvy: TcxGroupBox
    Left = 8
    Top = 81
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Barevn'#233' ozna'#269'en'#237' stavu faktury '
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    TabOrder = 1
    Transparent = True
    Height = 73
    Width = 457
    object pnlDluh: TPanel
      Left = 16
      Top = 16
      Width = 99
      Height = 21
      BevelWidth = 0
      Caption = 'Po splatnosti'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pnlZaplaceno: TPanel
      Left = 16
      Top = 40
      Width = 99
      Height = 21
      BevelWidth = 0
      Caption = 'Zaplacen'#225
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbDluh: TcxColorComboBox
      Left = 128
      Top = 18
      ParentFont = False
      Properties.CustomColors = <>
      Properties.OnChange = colorChange
      TabOrder = 2
      Width = 65
    end
    object cbDluhText: TcxColorComboBox
      Left = 202
      Top = 18
      ParentFont = False
      Properties.CustomColors = <>
      Properties.OnChange = colorChange
      TabOrder = 3
      Width = 65
    end
    object cbZaplaceno: TcxColorComboBox
      Left = 128
      Top = 40
      ParentFont = False
      Properties.CustomColors = <>
      Properties.OnChange = colorChange
      TabOrder = 4
      Width = 65
    end
    object cbZaplacenoText: TcxColorComboBox
      Left = 202
      Top = 40
      ParentFont = False
      Properties.CustomColors = <>
      Properties.OnChange = colorChange
      TabOrder = 5
      Width = 65
    end
  end
  object GroupBox1: TcxGroupBox
    Left = 8
    Top = 162
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Ostatn'#237' '
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    TabOrder = 2
    Transparent = True
    Height = 113
    Width = 457
    object edEnableLikvidace: TcxCheckBox
      Left = 16
      Top = 24
      Caption = 'Povolit ru'#269'n'#237' likvidaci faktur:'
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Transparent = True
      Width = 185
    end
    object chkRychlaLikvidace: TcxCheckBox
      Left = 16
      Top = 48
      Caption = 'Povolit rychlou likvidaci faktur'
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Transparent = True
      Width = 227
    end
  end
end
