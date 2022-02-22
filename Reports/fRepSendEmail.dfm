object frmRepSendEmail: TfrmRepSendEmail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Odesl'#225'n'#237' emailem'
  ClientHeight = 244
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 471
    Height = 244
    Align = alClient
    TabOrder = 0
    AutoSize = True
    object edSubject: TcxTextEdit
      Left = 55
      Top = 37
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 441
    end
    object btnSend: TcxButton
      Left = 309
      Top = 201
      Width = 73
      Height = 33
      Caption = 'Odeslat'
      Default = True
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSendClick
    end
    object btnStorno: TcxButton
      Left = 388
      Top = 201
      Width = 73
      Height = 33
      Caption = 'Storno'
      TabOrder = 4
      OnClick = btnStornoClick
    end
    object cxmBody: TcxMemo
      Left = 55
      Top = 76
      Lines.Strings = (
        '')
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 442
    end
    object edSendTo: TcxButtonEdit
      Left = 55
      Top = 10
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edSendToPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 441
    end
    object dxgLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'P'#345'edm'#283't'
      Parent = dxgLayoutControl1Group_Root
      Control = edSubject
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxgdxl1Group1: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxgLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxgdxl1Group21: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxgdxl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxgdxl1Group31: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxgdxl1Group21
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'btnSend'
      CaptionOptions.Visible = False
      Parent = dxgdxl1Group31
      Control = btnSend
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'btnStorno'
      CaptionOptions.Visible = False
      Parent = dxgdxl1Group31
      Control = btnStorno
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxl1SeparatorItem1: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = dxgLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object dxl1Item5: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Text'
      Parent = dxgLayoutControl1Group_Root
      Control = cxmBody
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxcdxl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Komu'
      Parent = dxgLayoutControl1Group_Root
      Control = edSendTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
