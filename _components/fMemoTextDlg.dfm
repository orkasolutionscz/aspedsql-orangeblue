object frmMemoTextDlg: TfrmMemoTextDlg
  Left = 557
  Top = 260
  ActiveControl = edMemo
  BorderStyle = bsDialog
  Caption = 'Editace pozn'#225'mky'
  ClientHeight = 348
  ClientWidth = 537
  Color = 15451300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    537
    348)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 307
    Width = 537
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clInfoBk
    TabOrder = 1
    DesignSize = (
      537
      41)
    object bvlButton: TBevel
      Left = 0
      Top = 0
      Width = 537
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object btnOk: TcxButton
      Left = 450
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 368
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Storno'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object edMemo: TcxMemo
    Left = 8
    Top = 8
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'edMemo')
    ParentFont = False
    TabOrder = 0
    Height = 289
    Width = 521
  end
  object rspOkno: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmMemoTextDlg.rspOkno'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 104
    Top = 72
  end
end
