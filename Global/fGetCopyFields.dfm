object frmGetFields: TfrmGetFields
  Left = 740
  Top = 252
  BorderStyle = bsDialog
  Caption = 'Vyberte pole pro kop'#237'rov'#225'n'#237
  ClientHeight = 388
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 347
    Width = 266
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOk: TcxButton
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Storno'
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object lstFields: TcxCheckListBox
    Left = 0
    Top = 0
    Width = 266
    Height = 347
    Align = alClient
    Items = <>
    ParentFont = False
    TabOrder = 1
  end
end
