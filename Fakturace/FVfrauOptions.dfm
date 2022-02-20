object FVfraOptions: TFVfraOptions
  Left = 0
  Top = 0
  Width = 558
  Height = 492
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  Caption = 'Faktury vydan'#233
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
    Width = 558
    object btnCisRadaSetup: TSpeedButton
      Left = 296
      Top = 24
      Width = 21
      Height = 21
      Flat = True
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
      TabOrder = 0
      Transparent = True
      Width = 121
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 65
    Width = 558
    Height = 392
    Align = alTop
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 392
    ClientRectRight = 558
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Z'#225'kladn'#237
      ImageIndex = 0
      object grbNewRec: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Hodnoty pro nov'#253' z'#225'znam a aktualizaci '
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = True
        Height = 153
        Width = 558
        object cbFVPata: TcxLookupComboBox
          Left = 112
          Top = 96
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 281
        end
        object edMena: TcxLookupComboBox
          Left = 304
          Top = 48
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 4
          Width = 88
        end
        object edFVUhrada: TcxLookupComboBox
          Left = 112
          Top = 48
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 89
        end
        object edFVUcet: TcxLookupComboBox
          Left = 304
          Top = 24
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 5
          Width = 88
        end
        object cbFVTyp: TcxLookupComboBox
          Left = 112
          Top = 24
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 89
        end
        object edFVKonstantni: TcxTextEdit
          Left = 112
          Top = 120
          ParentFont = False
          TabOrder = 6
          Text = 'edFVKonstantni'
          Width = 57
        end
        object Label27: TcxLabel
          Left = 8
          Top = 24
          Caption = 'Typ Faktury:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 8
          Top = 48
          Caption = 'Forma '#250'hrady:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 8
          Top = 96
          Caption = 'Pata faktury:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label30: TcxLabel
          Left = 224
          Top = 24
          Caption = 'Zkratka '#250#269'tu:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label32: TcxLabel
          Left = 224
          Top = 48
          Caption = 'M'#283'na:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label31: TcxLabel
          Left = 8
          Top = 120
          Caption = 'Konstantn'#237' symbol:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lbl2: TcxLabel
          Left = 8
          Top = 72
          Caption = #218'vod faktury:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cbFVHlava: TcxLookupComboBox
          Left = 112
          Top = 72
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 281
        end
      end
      object grbBarvy: TcxGroupBox
        Left = 0
        Top = 153
        Align = alTop
        Caption = ' Barevn'#233' ozna'#269'en'#237' stavu faktury '
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = True
        Height = 129
        Width = 558
        object pnlVolna: TPanel
          Left = 8
          Top = 24
          Width = 99
          Height = 21
          BevelWidth = 0
          Caption = 'Voln'#225
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object pnlDluh: TPanel
          Left = 8
          Top = 48
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
          TabOrder = 1
        end
        object pnlZaplaceno: TPanel
          Left = 8
          Top = 72
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
          TabOrder = 2
        end
        object pnlHromadna: TPanel
          Left = 8
          Top = 96
          Width = 99
          Height = 21
          BevelWidth = 0
          Caption = 'Hromadn'#225
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object cbVolna: TcxColorComboBox
          Left = 112
          Top = 24
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 4
          OnClick = ColorChange
          Width = 65
        end
        object cbVolnaText: TcxColorComboBox
          Left = 184
          Top = 24
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 5
          OnClick = ColorChange
          Width = 65
        end
        object cbDluh: TcxColorComboBox
          Left = 112
          Top = 48
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 6
          OnClick = ColorChange
          Width = 65
        end
        object cbDluhText: TcxColorComboBox
          Left = 184
          Top = 48
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 7
          OnClick = ColorChange
          Width = 65
        end
        object cbZaplaceno: TcxColorComboBox
          Left = 112
          Top = 72
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 8
          OnClick = ColorChange
          Width = 65
        end
        object cbZaplacenoText: TcxColorComboBox
          Left = 184
          Top = 72
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 9
          OnClick = ColorChange
          Width = 65
        end
        object cbHromadna: TcxColorComboBox
          Left = 112
          Top = 96
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 10
          OnClick = ColorChange
          Width = 65
        end
        object cbHromadnaText: TcxColorComboBox
          Left = 184
          Top = 96
          RepositoryItem = dmdGlobal.repColor
          ParentFont = False
          Properties.CustomColors = <>
          TabOrder = 11
          OnClick = ColorChange
          Width = 65
        end
      end
      object grb1: TcxGroupBox
        Left = 0
        Top = 282
        Align = alTop
        Caption = ' Tisk a email '
        ParentFont = False
        TabOrder = 2
        Height = 81
        Width = 558
        object cxLabel1: TcxLabel
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
    object cxTabSheet3: TcxTabSheet
      Caption = 'Ostatn'#237
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grbOstatni: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Ostatn'#237' '
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = True
        Height = 113
        Width = 558
        object chkFVAUCena: TcxCheckBox
          Left = 8
          Top = 24
          Caption = 'Automaticky upravit cenu v z'#225'silce'
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = True
          Width = 227
        end
        object chkRychlaLikvidace: TcxCheckBox
          Left = 8
          Top = 51
          Caption = 'Povolit rychlou likvidaci faktur'
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = True
          Width = 227
        end
      end
      object grpZaokrouhleni: TcxGroupBox
        Left = 0
        Top = 113
        Align = alTop
        Caption = ' Zaokrouhlen'#237' '
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = True
        Height = 129
        Width = 558
        object rbZaokrUp: TcxRadioButton
          Left = 8
          Top = 24
          Width = 117
          Height = 17
          Caption = 'Cel'#225' koruna nahoru'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Transparent = True
        end
        object rbZaokrMat: TcxRadioButton
          Left = 8
          Top = 72
          Width = 113
          Height = 17
          Caption = 'Matematicky'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Transparent = True
        end
        object rbZaokrDown: TcxRadioButton
          Left = 8
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Cel'#225' koruna dol'#367
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Transparent = True
        end
        object rbZaokr50Hal: TcxRadioButton
          Left = 8
          Top = 56
          Width = 113
          Height = 17
          Caption = 'Na 50 hal'#233#345#367
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Transparent = True
        end
        object rbZaokrNone: TcxRadioButton
          Left = 8
          Top = 88
          Width = 113
          Height = 17
          Caption = #381#225'dn'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Transparent = True
        end
      end
    end
    object tbsXMLSkoda: TcxTabSheet
      Caption = 'XML export '
      ImageIndex = 2
      object grpSkodaXML: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Nastaven'#237' XML prom'#283'nn'#253'ch'
        ParentFont = False
        TabOrder = 0
        Height = 153
        Width = 558
        object cxLabel2: TcxLabel
          Left = 8
          Top = 24
          Caption = 'PartTypeCode'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edPartTypeCode: TcxTextEdit
          Left = 128
          Top = 24
          ParentFont = False
          TabOrder = 1
          Text = 'edFVKonstantni'
          Width = 57
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 48
          Caption = 'PartCode'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edPartCode: TcxTextEdit
          Left = 128
          Top = 48
          ParentFont = False
          TabOrder = 3
          Text = 'edFVKonstantni'
          Width = 57
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 72
          Caption = 'PartCodeIssuer'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edPartCodeIssuer: TcxTextEdit
          Left = 128
          Top = 72
          ParentFont = False
          TabOrder = 5
          Text = 'edFVKonstantni'
          Width = 57
        end
        object cxLabel5: TcxLabel
          Left = 232
          Top = 24
          Caption = 'PartTypeCodeSkoda'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 232
          Top = 48
          Caption = 'PartCodeSkoda'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 232
          Top = 72
          Caption = 'PartCodeIssuerSkoda'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edPartCodeIssuerSkoda: TcxTextEdit
          Left = 352
          Top = 72
          ParentFont = False
          TabOrder = 9
          Text = 'edFVKonstantni'
          Width = 57
        end
        object edPartCodeSkoda: TcxTextEdit
          Left = 352
          Top = 48
          ParentFont = False
          TabOrder = 10
          Text = 'edFVKonstantni'
          Width = 57
        end
        object edPartTypeCodeSkoda: TcxTextEdit
          Left = 352
          Top = 24
          ParentFont = False
          TabOrder = 11
          Text = 'edFVKonstantni'
          Width = 57
        end
        object cxLabel8: TcxLabel
          Left = 8
          Top = 120
          Caption = 'PaymentTermsType'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edPaymentTermsType: TcxTextEdit
          Left = 128
          Top = 120
          ParentFont = False
          TabOrder = 13
          Text = 'edFVKonstantni'
          Width = 57
        end
        object cxLabel10: TcxLabel
          Left = 232
          Top = 96
          Caption = 'TRA K'#243'd'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edTRACode: TcxTextEdit
          Left = 352
          Top = 96
          ParentFont = False
          TabOrder = 15
          Text = 'edFVKonstantni'
          Width = 57
        end
        object cxLabel11: TcxLabel
          Left = 8
          Top = 96
          Caption = 'PK Location Skoda'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edPKLocationSkoda: TcxTextEdit
          Left = 128
          Top = 96
          ParentFont = False
          TabOrder = 17
          Text = 'edFVKonstantni'
          Width = 57
        end
      end
      object grpPath: TcxGroupBox
        Left = 0
        Top = 153
        Align = alTop
        Caption = 'Ostatn'#237' nastaven'#237
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 129
        Height = 88
        Width = 558
        object Label9: TcxLabel
          Left = 8
          Top = 24
          Caption = 'Slo'#382'ka pro XML d'#225'vky :'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edExportFolder: TcxButtonEdit
          Left = 176
          Top = 24
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edExportFolderPropertiesButtonClick
          TabOrder = 1
          Text = 'edExportFolder'
          Width = 243
        end
        object cxLabel9: TcxLabel
          Left = 8
          Top = 48
          Caption = 'U'#382'ivatelsk'#253' stav po exportu:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edStatusKod: TcxButtonEdit
          Left = 176
          Top = 48
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edStatusKodPropertiesButtonClick
          TabOrder = 3
          Text = 'edFVKonstantni'
          Width = 89
        end
      end
    end
  end
end
