object frmZmenaHeslaDlg: TfrmZmenaHeslaDlg
  Left = 524
  Top = 277
  BorderStyle = bsDialog
  Caption = 'Zm'#283'na hesla'
  ClientHeight = 156
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 119
    Width = 308
    Height = 37
    Align = alBottom
    Shape = bsTopLine
  end
  object lblOld: TLabel
    Left = 18
    Top = 24
    Width = 74
    Height = 13
    Caption = 'P'#367'vodn'#237' heslo :'
  end
  object lblNh: TLabel
    Left = 18
    Top = 52
    Width = 60
    Height = 13
    Caption = 'Nov'#233' heslo :'
    Enabled = False
  end
  object lblNHP: TLabel
    Left = 18
    Top = 80
    Width = 97
    Height = 13
    Caption = 'Potvrdit nov'#233' heslo :'
    Enabled = False
  end
  object edOldHeslo: TcxTextEdit
    Left = 128
    Top = 20
    ParentFont = False
    TabOrder = 0
    Width = 165
  end
  object edNoveHeslo: TcxTextEdit
    Left = 128
    Top = 48
    Enabled = False
    ParentFont = False
    TabOrder = 1
    Width = 165
  end
  object edNoveHesloPotvrd: TcxTextEdit
    Left = 128
    Top = 76
    Enabled = False
    ParentFont = False
    TabOrder = 2
    Width = 165
  end
  object btnOK: TcxButton
    Left = 218
    Top = 126
    Width = 75
    Height = 25
    Action = actOK
    TabOrder = 3
  end
  object btnStorno: TcxButton
    Left = 140
    Top = 126
    Width = 75
    Height = 25
    Action = actStorno
    TabOrder = 4
  end
  object ActionList1: TActionList
    Left = 46
    Top = 110
    object actOK: TAction
      Caption = 'OK'
      Enabled = False
      OnExecute = actOKExecute
    end
    object actStorno: TAction
      Caption = 'Zp'#283't'
      OnExecute = actStornoExecute
    end
  end
end
