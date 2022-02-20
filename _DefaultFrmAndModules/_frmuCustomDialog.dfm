object frmCustomDialog: TfrmCustomDialog
  Left = 199
  Top = 103
  BorderStyle = bsDialog
  ClientHeight = 343
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object lbTitle: TLabel
      Left = 12
      Top = 12
      Width = 37
      Height = 13
      Caption = 'Dialog'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDialogHint: TLabel
      Left = 26
      Top = 32
      Width = 62
      Height = 13
      Caption = 'Popis dialogu'
    end
    object Shape1: TShape
      Left = 0
      Top = 57
      Width = 480
      Height = 4
      Align = alBottom
      Brush.Color = clBackground
      Pen.Color = clBackground
    end
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 302
    Width = 480
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
    DesignSize = (
      480
      41)
    object bvlButton: TBevel
      Left = 0
      Top = 0
      Width = 480
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object btnOk: TcxButton
      Left = 398
      Top = 8
      Width = 75
      Height = 25
      Action = actVybrat
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 30
    Top = 30
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
