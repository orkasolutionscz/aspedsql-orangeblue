object frmSplash: TfrmSplash
  Left = 239
  Top = 155
  BorderIcons = []
  ClientHeight = 250
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 360
    Height = 250
    Align = alClient
    Pen.Color = clBackground
    Pen.Width = 4
    ExplicitHeight = 243
  end
  object lbCopyright: TLabel
    Left = 154
    Top = 222
    Width = 191
    Height = 16
    Caption = 'Copyright '#169' 1996-2003 LMSS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbAppName: TLabel
    Left = 6
    Top = 90
    Width = 342
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = 'Aplikace Jmeno'
    Color = clWhite
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object msgLabel: TLabel
    Left = 104
    Top = 202
    Width = 46
    Height = 13
    Caption = '*********'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Shape2: TShape
    Left = 6
    Top = 216
    Width = 349
    Height = 4
    Pen.Color = clBackground
    Pen.Width = 2
  end
  object Label1: TLabel
    Left = 8
    Top = 202
    Width = 93
    Height = 13
    Caption = 'Pr'#367'b'#283'h inicializace :'
    Transparent = True
  end
  object lbAppName2: TLabel
    Left = 4
    Top = 124
    Width = 351
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'dopln'#283'k'
    Color = clWhite
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = 8404992
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbVesion: TStaticText
    Left = 168
    Top = 12
    Width = 185
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'lbVesion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
end
