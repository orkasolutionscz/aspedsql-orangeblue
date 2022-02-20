object fraGridOptions: TfraGridOptions
  Left = 0
  Top = 0
  Width = 629
  Height = 478
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  Caption = 'Styl seznamu'
  Section = opgSystem
  OnReadSetting = jfsCustomSettingFrameReadSetting
  OnWriteSetting = jfsCustomSettingFrameWriteSetting
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 177
    Height = 478
    Align = alLeft
    Anchors = [akLeft]
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 15451300
    TabOrder = 0
    ExplicitHeight = 451
    object gbUserDefined: TcxGroupBox
      Left = 1
      Top = 321
      TabStop = True
      Align = alBottom
      Caption = 'U'#382'ivatelsk'#233' '#353'ablony styl'#367
      Enabled = False
      ParentFont = False
      TabOrder = 3
      ExplicitTop = 294
      DesignSize = (
        175
        156)
      Height = 156
      Width = 175
      object cbUserStyleSheets: TComboBox
        Left = 10
        Top = 31
        Width = 154
        Height = 19
        Style = csOwnerDrawFixed
        Anchors = [akLeft, akTop, akRight]
        Color = 16247513
        Enabled = False
        ItemHeight = 13
        TabOrder = 0
        OnClick = cbUserStyleSheetsClick
      end
      object btnLoad: TcxButton
        Left = 11
        Top = 89
        Width = 153
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = '&Na'#269#237'st ze souboru'
        Enabled = False
        TabOrder = 2
        OnClick = btnLoadClick
      end
      object btnSave: TcxButton
        Left = 11
        Top = 116
        Width = 153
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = '&Ulo'#382'it do souboru'
        Enabled = False
        TabOrder = 3
        OnClick = btnSaveClick
      end
      object btnEdit: TcxButton
        Left = 11
        Top = 62
        Width = 153
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = '&Upravit '#353'ablonu'
        Enabled = False
        TabOrder = 1
        OnClick = btnEditClick
      end
    end
    object RadioGroup: TcxRadioGroup
      Left = 1
      Top = 36
      Align = alTop
      Caption = 'Pou'#382#237't styl'
      ParentFont = False
      Properties.Items = <
        item
          Caption = #381#225'dn'#253
        end
        item
          Caption = 'Intern'#237' '#353'ablony'
        end
        item
          Caption = 'U'#382'ivatelsk'#233' '#353'ablony'
        end>
      ItemIndex = 1
      TabOrder = 1
      OnClick = RadioGroupClick
      Height = 88
      Width = 175
    end
    object gbPredefined: TcxGroupBox
      Left = 1
      Top = 124
      TabStop = True
      Align = alClient
      Caption = 'Intern'#237' '#353'ablony styl'#367
      ParentFont = False
      TabOrder = 2
      Height = 197
      Width = 175
      object lbPredefinedStyleSheets: TcxListBox
        Left = 2
        Top = 18
        Width = 171
        Height = 177
        Align = alClient
        ItemHeight = 13
        ParentFont = False
        Style.Color = 16247513
        TabOrder = 0
        OnClick = lbPredefinedStyleSheetsClick
      end
    end
    object pnlCurrentStyleSheet: TPanel
      Left = 1
      Top = 1
      Width = 175
      Height = 35
      Align = alTop
      BevelOuter = bvLowered
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object cxGrid: TcxGrid
    Left = 177
    Top = 0
    Width = 452
    Height = 478
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 429
    ExplicitHeight = 451
    object tvProjects: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.KeyFieldNames = 'KOD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.Indicator = True
      object tvProjectsKOD: TcxGridDBColumn
        DataBinding.FieldName = 'KOD'
        Width = 66
      end
      object tvProjectsPOPIS: TcxGridDBColumn
        DataBinding.FieldName = 'POPIS'
        Width = 131
      end
      object tvProjectsKURS: TcxGridDBColumn
        DataBinding.FieldName = 'KURS'
        Width = 218
      end
    end
    object lvProjects: TcxGridLevel
      GridView = tvProjects
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.ini'
    Filter = '*.ini|*.ini'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 536
    Top = 8
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.ini'
    Filter = '*.ini|*.ini'
    Left = 568
    Top = 8
  end
end
