object DOCfraOptions: TDOCfraOptions
  Left = 0
  Top = 0
  Width = 550
  Height = 304
  Align = alClient
  TabOrder = 0
  Caption = 'Korespondence'
  Section = opgModuly
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  ExplicitWidth = 451
  object grbCisRada: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = ' '#268#237'seln'#225' '#345'ada'
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Transparent = True
    ExplicitLeft = 14
    ExplicitTop = 8
    ExplicitWidth = 480
    Height = 64
    Width = 550
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 64
    Align = alTop
    Caption = ' Seznam pol'#237' pro kop'#237'rov'#225'n'#237' '
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 14
    ExplicitTop = 78
    ExplicitWidth = 482
    Height = 64
    Width = 550
    object btn1: TcxButton
      Left = 8
      Top = 24
      Width = 113
      Height = 25
      Caption = 'Tabulka Dopisy'
      TabOrder = 0
      OnClick = btn1Click
    end
  end
  object grb1: TcxGroupBox
    Left = 0
    Top = 128
    Align = alTop
    Caption = ' Tisk a email '
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 14
    ExplicitTop = 158
    ExplicitWidth = 482
    Height = 81
    Width = 550
    object lbl1: TcxLabel
      Left = 16
      Top = 24
      Caption = 'V'#253'choz'#237' sestava'
      ParentFont = False
    end
    object edDefReport: TcxButtonEdit
      Left = 112
      Top = 24
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edDefReportPropertiesButtonClick
      TabOrder = 1
      Width = 305
    end
  end
end
