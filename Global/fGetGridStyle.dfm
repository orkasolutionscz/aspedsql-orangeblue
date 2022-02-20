object frmGetGridStyle: TfrmGetGridStyle
  Left = 440
  Top = 150
  Caption = 'Vyberte si styl seznamu'
  ClientHeight = 513
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTlacitka: TPanel
    Left = 0
    Top = 472
    Width = 567
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btn1: TcxButton
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Vybrat'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btn2: TcxButton
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Storno'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
