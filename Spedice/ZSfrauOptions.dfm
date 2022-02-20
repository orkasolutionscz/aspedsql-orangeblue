object ZSfraOptions: TZSfraOptions
  Left = 0
  Top = 0
  Width = 701
  Height = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  Caption = 'P'#345'epravy'
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
    Width = 701
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
      OnClick = btnCisRadaSetupClick2
    end
    object pnlNewNumInfo: TPanel
      Left = 80
      Top = 24
      Width = 215
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 0
      Color = clWindow
      TabOrder = 1
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
        Left = 77
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
      object Label9: TcxLabel
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
      TabOrder = 0
      Transparent = True
      Width = 129
    end
    object Label6: TcxLabel
      Left = 8
      Top = 24
      Caption = 'Informace :'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 65
    Width = 701
    Height = 403
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsZakladni
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 403
    ClientRectRight = 701
    ClientRectTop = 24
    object tbsZakladni: TcxTabSheet
      Caption = 'Z'#225'kladn'#237
      ImageIndex = 0
      object grbNewRec: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Hodnoty pro nov'#253' z'#225'znam '
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = True
        Height = 105
        Width = 701
        object cbPodminky: TcxLookupComboBox
          Left = 96
          Top = 48
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 273
        end
        object cbPotvrzeni: TcxLookupComboBox
          Left = 96
          Top = 72
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 3
          Visible = False
          Width = 273
        end
        object edZSCoPlati: TcxLookupComboBox
          Left = 96
          Top = 24
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 87
        end
        object edZSJednotka: TcxLookupComboBox
          Left = 288
          Top = 24
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 81
        end
        object Label24: TcxLabel
          Left = 8
          Top = 24
          Caption = 'Rozsah platby:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label25: TcxLabel
          Left = 192
          Top = 24
          Caption = 'Jednotka ceny:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 8
          Top = 48
          Caption = 'Podm'#237'nky'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 8
          Top = 72
          Caption = 'Potvrzen'#237
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
      end
      object grbDispecer: TcxGroupBox
        Left = 0
        Top = 105
        Align = alTop
        Caption = ' Pole dispe'#269'er '
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = True
        Height = 57
        Width = 701
        object chkDispecerLogged: TcxCheckBox
          Tag = 99
          Left = 8
          Top = 24
          Caption = 'P'#345'ihl'#225#353'en'#253' u'#382'ivatel'
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = True
          OnClick = chkDispecerLoggedClick
          Width = 121
        end
        object Label4: TcxLabel
          Left = 136
          Top = 24
          Caption = 'Jin'#225' hodnota :'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 264
          Top = 24
          Caption = 'St'#345'edisko :'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edDispecerValue: TcxTextEdit
          Left = 208
          Top = 24
          ParentFont = False
          TabOrder = 1
          Text = 'edDispecerValue'
          Width = 49
        end
        object edStredisko: TcxTextEdit
          Left = 328
          Top = 24
          ParentFont = False
          TabOrder = 2
          Text = 'edDispecerValue'
          Width = 49
        end
      end
      object grbOstatni: TcxGroupBox
        Left = 0
        Top = 162
        Align = alTop
        Caption = ' Dal'#353#237' nastaven'#237' '
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = True
        Height = 135
        Width = 701
        object chkRemoveVazba: TcxCheckBox
          Left = 13
          Top = 21
          Caption = 'Povolit zru'#353'en'#237' vazby na Fakturu'
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = True
          Width = 189
        end
        object chkAdrAsLine: TcxCheckBox
          Left = 208
          Top = 24
          Caption = 'Adresa v trase jako '#345#225'dek'
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Transparent = True
          Width = 189
        end
        object chkMinusProvize: TcxCheckBox
          Left = 208
          Top = 78
          Hint = 'Povolen'#237' p'#345'epo'#269'tu provize i kdy'#382' nen'#237' zadan'#225' jedna cena'
          Caption = 'Povolit m'#237'nusov'#233' provize'
          Enabled = False
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Transparent = True
          Width = 189
        end
        object chkEditIfFv: TcxCheckBox
          Left = 13
          Top = 48
          Caption = 'Editovat po fakturaci'
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = True
          Width = 189
        end
        object chkAutoFillDop: TcxCheckBox
          Left = 13
          Top = 72
          Hint = 
            'Pokud je volba nastavena, bude v sestav'#225'ch napln'#283'no pole Adres'#225't' +
            ' emailem Dopravce'
          Caption = 'Automaticky pou'#382#237't email Dopravce'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Transparent = True
          Width = 193
        end
        object chkPlatceInfoDetailMode: TcxCheckBox
          Left = 208
          Top = 51
          Hint = 'Povolen'#237' p'#345'epo'#269'tu provize i kdy'#382' nen'#237' zadan'#225' jedna cena'
          Caption = 'Zobrazit polo'#382'ky v n'#225'hledu Pl'#225'tce'
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Transparent = True
          Width = 189
        end
        object chkZsCreateFVEnable: TcxCheckBox
          Left = 13
          Top = 99
          Caption = 'Povolit vystaven'#237' Faktury'
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = True
          Width = 189
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Evidence ud'#225'lost'#237' a stavy'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grbUdalosti: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Evidence ud'#225'lost'#237' a zm'#283'n '
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = True
        Height = 81
        Width = 701
        object chkZmenaSPZ: TcxCheckBox
          Left = 8
          Top = 24
          Caption = 'Zm'#283'na SPZ'
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = True
          Width = 189
        end
        object chkZmenaDopravce: TcxCheckBox
          Left = 8
          Top = 48
          Caption = 'Zm'#283'na dopravce'
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = True
          Width = 189
        end
      end
      object grbBarvy: TcxGroupBox
        Left = 0
        Top = 81
        Align = alTop
        Caption = ' Barevn'#233' ozna'#269'en'#237' stavu p'#345'epravy '
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = True
        Height = 185
        Width = 701
        object pnlZSNoDop: TPanel
          Left = 8
          Top = 24
          Width = 99
          Height = 22
          BevelWidth = 0
          Caption = 'Bez dopravce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object pnlZSDoFa: TPanel
          Left = 8
          Top = 48
          Width = 99
          Height = 22
          BevelWidth = 0
          Caption = 'Do'#353'l'#225' faktura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object pnlZSVyFa: TPanel
          Left = 8
          Top = 72
          Width = 99
          Height = 22
          BevelWidth = 0
          Caption = 'Vydan'#225' faktura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object pnlZSVynoFDFa: TPanel
          Left = 8
          Top = 96
          Width = 99
          Height = 22
          BevelWidth = 0
          Caption = 'Vyd. bez do'#353'l'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object cbNoDopravce: TcxColorComboBox
          Left = 120
          Top = 24
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 4
          OnClick = ColorChange
          Width = 65
        end
        object cbNoDopravceText: TcxColorComboBox
          Left = 192
          Top = 24
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 5
          OnClick = ColorChange
          Width = 65
        end
        object cbFD: TcxColorComboBox
          Left = 120
          Top = 48
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 6
          OnClick = ColorChange
          Width = 65
        end
        object cbFDText: TcxColorComboBox
          Left = 192
          Top = 48
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 7
          OnClick = ColorChange
          Width = 65
        end
        object cbFV: TcxColorComboBox
          Left = 120
          Top = 72
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 8
          OnClick = ColorChange
          Width = 65
        end
        object cbFVText: TcxColorComboBox
          Left = 192
          Top = 72
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 9
          OnClick = ColorChange
          Width = 65
        end
        object cbFVnoFD: TcxColorComboBox
          Left = 120
          Top = 96
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 10
          OnClick = ColorChange
          Width = 65
        end
        object cbFVnoFDText: TcxColorComboBox
          Left = 192
          Top = 96
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 11
          OnClick = ColorChange
          Width = 65
        end
        object pnlVyrizeno: TPanel
          Left = 8
          Top = 120
          Width = 99
          Height = 22
          BevelWidth = 0
          Caption = 'Vy'#345#237'zeno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object cbVyrizeno: TcxColorComboBox
          Left = 120
          Top = 120
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 13
          OnClick = ColorChange
          Width = 65
        end
        object cbVyrizenoText: TcxColorComboBox
          Left = 192
          Top = 120
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          Properties.OnChange = ColorChange
          TabOrder = 14
          OnClick = ColorChange
          Width = 65
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Export do FV'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TcxGroupBox
        Left = 8
        Top = 8
        Caption = ' Vyberte pole pro export '
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = True
        Height = 169
        Width = 209
        object chklExportFV: TcxCheckListBox
          Left = 8
          Top = 24
          Width = 175
          Height = 129
          Items = <
            item
              Text = 'SPZ'
            end
            item
              Text = 'Nakl'#225'dka'
            end
            item
              Text = 'Nakl'#225'dka datum'
            end
            item
              Text = 'Vykl'#225'dka'
            end
            item
              Text = 'Na'#353'e pozice (Z'#225'silka)'
            end
            item
              Text = 'Substr'#225't popis'
            end
            item
              Text = 'Substr'#225't hmotnost'
            end
            item
              Text = 'CODE Pl'#225'tce'
            end
            item
              Text = 'Pozn'#225'mka k FV'
            end>
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TcxGroupBox
        Left = 224
        Top = 8
        Caption = ' Datum pro zdaniteln'#233' pln'#283'n'#237' '
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = True
        Height = 169
        Width = 241
        object rbDatVy: TcxRadioButton
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Datum vykl'#225'dky'
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = True
        end
        object rbDatNa: TcxRadioButton
          Left = 16
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Datum nakl'#225'dky'
          TabOrder = 1
          Transparent = True
        end
        object rbDatAd: TcxRadioButton
          Left = 16
          Top = 72
          Width = 113
          Height = 17
          Caption = 'Aktu'#225'ln'#237' datum'
          TabOrder = 2
          Transparent = True
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 184
        Caption = ' Ostatn'#237' '
        ParentFont = False
        TabOrder = 2
        Height = 105
        Width = 457
        object chkgbZSGenFvGetAktualKurz: TcxCheckBox
          Left = 8
          Top = 24
          Caption = 'Na'#269#237'tat aktu'#225'ln'#237' kurz'
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = True
          Width = 189
        end
      end
    end
    object tbsAdmin: TcxTabSheet
      Caption = 'Kop'#237'rov'#225'n'#237' z'#225'znamu'
      ImageIndex = 3
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Seznam pol'#237' pro kop'#237'rov'#225'n'#237' '
        ParentFont = False
        TabOrder = 0
        Height = 145
        Width = 701
        object btnGetCPre: TcxButton
          Left = 16
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Tabulka P'#345'epravy'
          TabOrder = 0
          OnClick = btnGetCPreClick
        end
        object chkCopyPrirazky: TcxCheckBox
          Left = 295
          Top = 24
          Caption = 'Kop'#237'rovat p'#345'ir'#225#382'ky a sr'#225#382'ky'
          ParentFont = False
          TabOrder = 1
          Width = 161
        end
        object btnGetCTra: TcxButton
          Left = 16
          Top = 56
          Width = 129
          Height = 25
          Caption = 'Tabulka Trasy'
          TabOrder = 2
          OnClick = btnGetCTraClick
        end
        object btnGetCPla: TcxButton
          Left = 160
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Tabulka Pl'#225'tci'
          TabOrder = 3
          OnClick = btnGetCPlaClick
        end
        object btnGetCPlaPol: TcxButton
          Left = 160
          Top = 56
          Width = 129
          Height = 25
          Caption = 'Tabulka Pl'#225'tci polo'#382'ky'
          TabOrder = 4
          OnClick = btnGetCPlaPolClick
        end
        object cxButton1: TcxButton
          Left = 16
          Top = 87
          Width = 129
          Height = 25
          Caption = 'Tabulka Ostatn'#237' n'#225'klady'
          TabOrder = 5
          OnClick = cxButton1Click
        end
        object chkCopyOstNakl: TcxCheckBox
          Left = 295
          Top = 55
          Caption = 'Kop'#237'rovat ostatn'#237' n'#225'klady'
          ParentFont = False
          TabOrder = 6
          Width = 161
        end
      end
    end
    object tbs1: TcxTabSheet
      Caption = 'Sestavy'
      ImageIndex = 4
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 701
        Height = 379
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dmdGlobal.dxlsFlat
        object edTemplObjSubjekt: TcxTextEdit
          Left = 125
          Top = 28
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 0
          Text = 'edTemplObjSubjekt'
          Width = 121
        end
        object edTemplPotvrSubjekt: TcxTextEdit
          Left = 125
          Top = 55
          ParentFont = False
          Style.HotTrack = False
          TabOrder = 1
          Text = 'edTemplPotvrSubjekt'
          Width = 121
        end
        object edObjDefault: TcxButtonEdit
          Left = 125
          Top = 112
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edObjDefaultPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object edPotDefault: TcxButtonEdit
          Left = 125
          Top = 139
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edPotDefaultPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object dxlgLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxlgdxl1Group1: TdxLayoutGroup
          CaptionOptions.Text = #352'ablony text'#367
          Parent = dxlgLayoutControl1Group_Root
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxlgdxl1Group2: TdxLayoutGroup
          CaptionOptions.Text = 'V'#253'choz'#237' sestavy'
          Parent = dxlgLayoutControl1Group_Root
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dlidxl1Item2: TdxLayoutItem
          CaptionOptions.Text = 'Objedn'#225'vka subjekt'
          Parent = dxlgdxl1Group1
          Control = edTemplObjSubjekt
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dlidxl1Item3: TdxLayoutItem
          CaptionOptions.Text = 'Potvrzen'#237' subjekt'
          Parent = dxlgdxl1Group1
          Control = edTemplPotvrSubjekt
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dlidxl1Item1: TdxLayoutItem
          CaptionOptions.Text = 'Sestava objedn'#225'vky'
          Parent = dxlgdxl1Group2
          Control = edObjDefault
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dlidxl1Item4: TdxLayoutItem
          CaptionOptions.Text = 'Sestava potvrzen'#237
          Parent = dxlgdxl1Group2
          Control = edPotDefault
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
end
