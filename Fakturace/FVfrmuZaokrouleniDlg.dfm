object FVfrmZaokrouleniDlg: TFVfrmZaokrouleniDlg
  Left = 427
  Top = 279
  BorderStyle = bsDialog
  ClientHeight = 215
  ClientWidth = 338
  Color = 15788249
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 66
    Width = 77
    Height = 13
    Caption = 'Jak zaokrouhlit?'
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object lbTitle: TLabel
      Left = 12
      Top = 12
      Width = 206
      Height = 13
      Caption = 'Ru'#269'n'#237' p'#345'epo'#269'et zaokrouhlen'#237' faktury'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bvlTitle: TBevel
      Left = 0
      Top = 32
      Width = 338
      Height = 7
      Align = alBottom
      Shape = bsBottomLine
    end
  end
  object rbZaokrUp: TRadioButton
    Left = 162
    Top = 64
    Width = 117
    Height = 17
    Caption = 'Cel'#225' koruna nahoru'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = rbZaokrUpClick
  end
  object rbZaokrDown: TRadioButton
    Left = 162
    Top = 82
    Width = 113
    Height = 17
    Caption = 'Cel'#225' koruna dol'#367
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = rbZaokrUpClick
  end
  object rbZaokr50Hal: TRadioButton
    Left = 162
    Top = 100
    Width = 113
    Height = 17
    Caption = 'Na 50 hal'#233#345#367
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = rbZaokrUpClick
  end
  object rbZaokrNone: TRadioButton
    Left = 162
    Top = 136
    Width = 113
    Height = 17
    Caption = #381#225'dn'#233
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = rbZaokrUpClick
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 174
    Width = 338
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 5
    DesignSize = (
      338
      41)
    object bvlButton: TBevel
      Left = 0
      Top = 0
      Width = 338
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object btnStorno: TButton
      Left = 258
      Top = 9
      Width = 75
      Height = 23
      Action = actStorno
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
    end
    object btnOk: TButton
      Left = 177
      Top = 9
      Width = 75
      Height = 23
      Action = actVybrat
      Anchors = [akTop, akRight, akBottom]
      Default = True
      TabOrder = 0
    end
  end
  object rbMatematicky: TRadioButton
    Left = 162
    Top = 118
    Width = 113
    Height = 17
    Caption = 'Matematicky'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = rbZaokrUpClick
  end
  object ActionList1: TActionList
    Left = 46
    Top = 102
    object actVybrat: TAction
      Caption = 'OK'
      ShortCut = 27
      OnExecute = actVybratExecute
    end
    object actStorno: TAction
      Caption = 'Storno'
      OnExecute = actStornoExecute
    end
  end
end
