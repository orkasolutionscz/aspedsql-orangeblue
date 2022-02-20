object POPfraOptions: TPOPfraOptions
  Left = 0
  Top = 0
  Width = 543
  Height = 426
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Popt'#225'vky'
  Section = opgModuly
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object grbCisRada: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = ' '#268#237'seln'#225' '#345'ada'
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Transparent = True
    Height = 65
    Width = 543
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
        ExplicitLeft = 121
      end
      object lbSep: TcxLabel
        Left = 79
        Top = 0
        Align = alLeft
        Caption = '  hodnota : '
        ParentColor = False
        ParentFont = False
        Transparent = True
        ExplicitLeft = 156
      end
      object lbNewNumValue: TcxLabel
        Left = 139
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
        ExplicitLeft = 216
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
  object GroupBox1: TcxGroupBox
    Left = 0
    Top = 65
    Align = alTop
    Caption = ' Nastaven'#237' pro v'#253'b'#283'r podobn'#253'ch p'#345'eprav '
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Transparent = True
    Height = 65
    Width = 543
    object chkUseMesto: TcxCheckBox
      Left = 8
      Top = 24
      Caption = 'Pou'#382#237't M'#283'sto'
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Transparent = True
      Width = 109
    end
    object spnPocetZnaku: TcxSpinEdit
      Left = 276
      Top = 24
      ParentFont = False
      TabOrder = 1
      Width = 45
    end
    object Label1: TcxLabel
      Left = 128
      Top = 24
      Caption = 'Po'#269'et pou'#382'it'#253'ch znak'#367' z Ps'#269' :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object GroupBox2: TcxGroupBox
    Left = 0
    Top = 130
    Align = alTop
    Caption = ' Nastaven'#237' pro generov'#225'n'#237' dokument'#367' '
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Transparent = True
    Height = 81
    Width = 543
    object chkPOPPreCena: TcxCheckBox
      Left = 8
      Top = 24
      Caption = 'P'#345'en'#225#353'et platnost ceny'
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Transparent = True
      Width = 149
    end
    object chkPOPPreVozidlo: TcxCheckBox
      Left = 8
      Top = 48
      Caption = 'P'#345'en'#225#353'et druh vozidla'
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Transparent = True
      Width = 149
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 211
    Align = alTop
    Caption = ' Seznam pol'#237' pro kop'#237'rov'#225'n'#237' '
    ParentFont = False
    TabOrder = 3
    Height = 64
    Width = 543
    object btn1: TcxButton
      Left = 8
      Top = 24
      Width = 113
      Height = 25
      Caption = 'Tabulka Popt'#225'vky'
      TabOrder = 0
      OnClick = btn1Click
    end
  end
end
