object frmGetConnection: TfrmGetConnection
  Left = 933
  Top = 345
  Width = 550
  Height = 278
  Caption = 'Vyberte databázi'
  Color = 15451300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 11
    Width = 46
    Height = 13
    Caption = 'Database'
  end
  object Label3: TLabel
    Left = 8
    Top = 35
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label4: TLabel
    Left = 219
    Top = 35
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object SpeedButton1: TSpeedButton
    Left = 472
    Top = 8
    Width = 22
    Height = 21
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object lbCharSet: TLabel
    Left = 220
    Top = 59
    Width = 38
    Height = 13
    Caption = 'CharSet'
  end
  object lbSQLRole: TLabel
    Left = 9
    Top = 59
    Width = 46
    Height = 13
    Caption = 'SQL Role'
  end
  object lbSQLDialect: TLabel
    Left = 415
    Top = 59
    Width = 57
    Height = 13
    Caption = 'SQL Dialect'
  end
  object edUsername: TEdit
    Left = 68
    Top = 32
    Width = 130
    Height = 21
    HelpContext = 110
    TabOrder = 0
    Text = 'SYSDBA'
  end
  object edPassword: TEdit
    Left = 275
    Top = 32
    Width = 130
    Height = 21
    HelpContext = 115
    PasswordChar = '*'
    TabOrder = 1
  end
  object cbDatabase: TComboBox
    Left = 68
    Top = 8
    Width = 405
    Height = 21
    HelpContext = 105
    ItemHeight = 13
    TabOrder = 2
    OnChange = cbDatabaseChange
  end
  object cbCharSet: TComboBox
    Left = 275
    Top = 56
    Width = 130
    Height = 21
    HelpContext = 125
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      ''
      'NONE'
      'OCTETS'
      'ASCII'
      'UNICODE_FSS'
      'SJIS_0208'
      'EUCJ_0208'
      'DOS437'
      'DOS850'
      'DOS865'
      'ISO8859_1'
      'DOS852'
      'DOS857'
      'DOS860'
      'DOS861'
      'DOS863'
      'CYRL'
      'WIN1250'
      'WIN1251'
      'WIN1252'
      'WIN1253'
      'WIN1254'
      'NEXT'
      'KSC_5601'
      'BIG_5'
      'GB_2312')
  end
  object edSQLRole: TEdit
    Left = 68
    Top = 56
    Width = 130
    Height = 21
    HelpContext = 120
    TabOrder = 4
  end
  object cbRemember: TCheckBox
    Left = 424
    Top = 34
    Width = 81
    Height = 17
    Caption = 'Remember?'
    TabOrder = 5
  end
  object seSQLDialect: TXSpinEdit
    Left = 478
    Top = 55
    Width = 40
    Height = 22
    MaxValue = 3
    MinValue = 1
    TabOrder = 6
    Value = 3
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 203
    Width = 542
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 7
    object bvlButton: TBevel
      Left = 0
      Top = 0
      Width = 542
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object btnOk: TcxButton
      Left = 460
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Ok'
      TabOrder = 0
    end
  end
end
