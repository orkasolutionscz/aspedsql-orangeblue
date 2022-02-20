object frmFindOrWhere: TfrmFindOrWhere
  Left = 609
  Top = 366
  BorderStyle = bsDialog
  ClientHeight = 186
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 312
    Top = 8
    Width = 201
    Height = 81
    Caption = ' Nastaven'#237
    TabOrder = 3
    object rbFindOpt: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Pouze hledat'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbFindOptClick
    end
    object rbFiltrOpt: TRadioButton
      Left = 16
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Filtrovat'
      TabOrder = 1
      OnClick = rbFindOptClick
    end
  end
  object grpFiltrOpt: TGroupBox
    Left = 312
    Top = 96
    Width = 201
    Height = 81
    Caption = ' Nastaven'#237' filtrov'#225'n'#237
    TabOrder = 4
    object chkFullText: TcxCheckBox
      Left = 16
      Top = 24
      Hint = 'Hodnota bude filtrov'#225'na v cel'#233'm textu'
      Caption = 'V'#253'skyt v libovoln'#233' '#269#225'sti textu'
      ParentFont = False
      TabOrder = 0
      Width = 169
    end
    object chkAddToWhere: TcxCheckBox
      Left = 16
      Top = 48
      Hint = 'Hodnota bude filtrov'#225'na v cel'#233'm textu'
      Caption = 'P'#345'idat k existuj'#237'c'#237' podm'#237'nce'
      ParentFont = False
      TabOrder = 1
      Width = 161
    end
  end
  object btnStrono: TcxButton
    Left = 224
    Top = 152
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Strono'
    ModalResult = 2
    TabOrder = 2
  end
  object btnFiltr: TcxButton
    Left = 136
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Filtrovat'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object lblPole: TcxLabel
    Left = 16
    Top = 16
    Caption = 'Hled'#225'me'
    ParentFont = False
  end
  object edHodnota: TcxTextEdit
    Left = 16
    Top = 32
    ParentFont = False
    Properties.AutoSelect = False
    Properties.ClearKey = 16472
    Properties.IncrementalSearch = False
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 0
    Text = 'edHodnota'
    Width = 281
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmFindOrWhere.rsPropSaver1'
    Properties.Strings = (
      'rbFiltrOpt.Checked'
      'rbFindOpt.Checked'
      'chkFullText.Checked'
      'chkAddToWhere.Checked')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    OnAfterLoad = rsPropSaver1AfterLoad
    Left = 248
    Top = 56
  end
end
