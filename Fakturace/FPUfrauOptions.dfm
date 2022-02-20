object FPUfraOptions: TFPUfraOptions
  Left = 0
  Top = 0
  Width = 494
  Height = 442
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  Caption = 'P'#345#237'kazy k '#250'hrad'#283
  Section = opgModuly
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object grbCisRada: TcxGroupBox
    Left = 8
    Top = 8
    Caption = ' '#268#237'seln'#225' '#345'ada'
    ParentColor = False
    ParentFont = False
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
  object gbABO: TcxGroupBox
    Left = 8
    Top = 152
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Transparent = True
    Height = 129
    Width = 457
    object chkABO: TCheckBox
      Left = 12
      Top = -1
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chkMTCClick
    end
    object edFileName: TcxTextEdit
      Left = 152
      Top = 48
      ParentFont = False
      TabOrder = 2
      Text = 'edFileName'
      Width = 121
    end
    object edDoplVariab: TcxCheckBox
      Left = 152
      Top = 72
      Caption = 'Doplnit "0" specifick'#253' a variabiln'#237' symbol'
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Transparent = True
      Width = 233
    end
    object edDokldSpeci: TcxCheckBox
      Left = 152
      Top = 96
      Caption = #268#237'slo dokladu do specifick'#233'ho symbolu'
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Transparent = True
      Width = 233
    end
    object edFolder: TcxButtonEdit
      Left = 152
      Top = 24
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edFolderButtonClick
      TabOrder = 0
      Text = 'dxButtonEdit1'
      Width = 267
    end
    object Label4: TcxLabel
      Left = 8
      Top = 24
      Caption = 'Slo'#382'ka pro p'#345#237'kazy :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 24
      Top = 0
      Caption = ' Export do ABO '
      ParentColor = False
      ParentFont = False
    end
    object Label5: TcxLabel
      Left = 8
      Top = 48
      Caption = 'N'#225'zev souboru :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object gbOstatni: TcxGroupBox
    Left = 8
    Top = 80
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Transparent = True
    Height = 65
    Width = 457
    object edKonstatni: TcxTextEdit
      Left = 152
      Top = 24
      ParentFont = False
      TabOrder = 0
      Text = 'edFileName'
      Width = 53
    end
    object Label6: TcxLabel
      Left = 8
      Top = 0
      Caption = ' Ostatn'#237' '
      ParentColor = False
      ParentFont = False
    end
    object Label7: TcxLabel
      Left = 8
      Top = 24
      Caption = 'V'#253'choz'#237' konstantn'#237' symbol :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object gbMTC: TcxGroupBox
    Left = 8
    Top = 288
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Transparent = True
    Height = 81
    Width = 457
    object chkMTC: TCheckBox
      Left = 12
      Top = -1
      Width = 17
      Height = 17
      TabOrder = 2
      OnClick = chkMTCClick
    end
    object edMTCFileName: TcxTextEdit
      Left = 152
      Top = 48
      ParentFont = False
      TabOrder = 0
      Text = 'edFileName'
      Width = 121
    end
    object edMTCPath: TcxButtonEdit
      Left = 152
      Top = 24
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edFolderButtonClick
      TabOrder = 1
      Text = 'edMTCPath'
      Width = 267
    end
    object Label8: TcxLabel
      Left = 24
      Top = 0
      Caption = ' Export do MultiCash '
      ParentColor = False
      ParentFont = False
    end
    object Label9: TcxLabel
      Left = 8
      Top = 24
      Caption = 'Slo'#382'ka pro p'#345#237'kazy :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 8
      Top = 48
      Caption = 'N'#225'zev souboru :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 360
    Top = 104
  end
end
