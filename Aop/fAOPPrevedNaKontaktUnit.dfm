object frmAopPrevodNaKontakt: TfrmAopPrevodNaKontakt
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'P'#345'evod kontaktu'
  ClientHeight = 396
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TcxLabel
    Left = 8
    Top = 95
    Caption = 'Nov'#225' adresa : '
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 355
    Width = 538
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      538
      41)
    object btnOk: TcxButton
      Left = 362
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Propojit'
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TcxButton
      Left = 442
      Top = 6
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Storno'
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 538
    Height = 355
    Align = alClient
    TabOrder = 2
    AutoSize = True
    object edNovyKod: TcxLookupComboBox
      Left = 98
      Top = 193
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'AOPKOD'
      Properties.ListColumns = <
        item
          Fixed = True
          SortOrder = soAscending
          FieldName = 'NAZEV'
        end
        item
          Fixed = True
          SortOrder = soAscending
          FieldName = 'ADRESA3'
        end
        item
          FieldName = 'AOPKOD'
        end>
      Properties.ListSource = dsAopList
      Properties.OnEditValueChanged = edNovyKodPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 417
    end
    object chkDeleteOld: TcxCheckBox
      Left = 22
      Top = 304
      Caption = 'Po '#250'sp'#283#353'n'#233'm p'#345'evodu odstranit p'#367'vodn'#237' adresu'
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Transparent = True
      Width = 305
    end
    object edOldAOP: TcxDBTextEdit
      Left = 98
      Top = 28
      DataBinding.DataField = 'AOPKOD'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 83
    end
    object ed1: TcxDBTextEdit
      Left = 98
      Top = 55
      DataBinding.DataField = 'NAZEV'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 185
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 98
      Top = 82
      DataBinding.DataField = 'ADRESA1'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 185
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 98
      Top = 109
      DataBinding.DataField = 'ADRESA2'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 185
    end
    object edAopVazby: TcxLookupComboBox
      Left = 98
      Top = 250
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'AOPKOD'
      Properties.ListColumns = <
        item
          Fixed = True
          SortOrder = soAscending
          FieldName = 'NAZEV'
        end
        item
          Fixed = True
          SortOrder = soAscending
          FieldName = 'ADRESA1'
        end
        item
          FieldName = 'AOPKOD'
        end>
      Properties.ListSource = dsAopList
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 417
    end
    object chkPrevodVazeb: TcxCheckBox
      Left = 22
      Top = 277
      Caption = 'P'#345'ev'#233'st p'#367'vodn'#237' vazby na tento kontakt'
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Transparent = True
      Width = 305
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 98
      Top = 136
      DataBinding.DataField = 'ADRESA3'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 185
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 330
      Top = 28
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 185
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 330
      Top = 55
      DataBinding.DataField = 'FAX'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 185
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 330
      Top = 82
      DataBinding.DataField = 'GSM'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 185
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 330
      Top = 109
      DataBinding.DataField = 'TELEFON'
      DataBinding.DataSource = dsOldAOP
      Enabled = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 185
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lcMainGroup1: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Nov'#253' nad'#345#237'zen'#253' kontakt'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lcMainItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Nov'#225' adresa : '
      Parent = lcMainGroup3
      Control = edNovyKod
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'chkDeleteOld'
      CaptionOptions.Visible = False
      Parent = lcMainGroup4
      Control = chkDeleteOld
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainGroup5: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = ' P'#367'vodn'#237' kontakt '
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lcMainGroup7: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainItem7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'K'#243'd'
      Parent = lcMainGroup7
      Control = edOldAOP
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object lcMainItem8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'N'#225'zev'
      Parent = lcMainGroup7
      Control = ed1
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object lcMainItem9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Adresa 1'
      Parent = lcMainGroup7
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object lcMainItem10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Adresa'
      Parent = lcMainGroup7
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object lcMainGroup2: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'P'#345'evod p'#367'vodn'#283' pou'#382'it'#253'ch vazeb'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lcMainItem1: TdxLayoutItem
      CaptionOptions.Text = 'Firma'
      Parent = lcMainGroup4
      Control = edAopVazby
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainItem2: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lcMainGroup4
      Control = chkPrevodVazeb
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem5: TdxLayoutItem
      CaptionOptions.Text = 'M'#283'sto'
      Parent = lcMainGroup7
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object lcMainGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lcMainGroup5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcMainItem6: TdxLayoutItem
      CaptionOptions.Text = 'Email'
      Parent = lcMainGroup6
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object lcMainItem11: TdxLayoutItem
      CaptionOptions.Text = 'Fax'
      Parent = lcMainGroup6
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object lcMainItem12: TdxLayoutItem
      CaptionOptions.Text = 'Gsm'
      Parent = lcMainGroup6
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object lcMainItem13: TdxLayoutItem
      CaptionOptions.Text = 'Telefon'
      Parent = lcMainGroup6
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
  end
  object dtsAopSource: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    KeyLinks.Strings = (
      'AOP.AOPKOD')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AOPKOD'
      '     , NAZEV'
      '     , ADRESA1'
      '     , ADRESA2'
      '     , ADRESA3'
      '     , KODZEME'
      '     , TELEFON'
      '     , FAX'
      '     , GSM'
      '     , EMAIL'
      'FROM AOP'
      'where AOPKOD = :AOPKOD')
    FieldOptions = []
    Left = 261
    Top = 66
    object dtsAopSourceAOPKOD: TStringField
      DisplayLabel = 'Kod'
      FieldName = 'AOPKOD'
      Required = True
      Size = 10
    end
    object dtsAopSourceNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 25
      FieldName = 'NAZEV'
      Size = 100
    end
    object dtsAopSourceADRESA1: TStringField
      DisplayLabel = #218'tvar'
      DisplayWidth = 10
      FieldName = 'ADRESA1'
      Size = 32
    end
    object dtsAopSourceADRESA2: TStringField
      DisplayLabel = 'Adresa'
      DisplayWidth = 10
      FieldName = 'ADRESA2'
      Size = 32
    end
    object dtsAopSourceADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Size = 40
    end
    object dtsAopSourceKODZEME: TStringField
      FieldName = 'KODZEME'
      Size = 4
    end
    object dtsAopSourceTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 50
    end
    object dtsAopSourceFAX: TStringField
      FieldName = 'FAX'
      Size = 50
    end
    object dtsAopSourceGSM: TStringField
      FieldName = 'GSM'
      Size = 50
    end
    object dtsAopSourceEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object dsOldAOP: TDataSource
    AutoEdit = False
    DataSet = dtsAopSource
    Left = 263
    Top = 7
  end
  object dtsAopList: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD'
        ParamType = ptInput
      end>
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT AOPKOD'
      '     , NAZEV'
      '     , ADRESA1'
      '     , ADRESA2'
      '     , ADRESA3'
      '     , ICO'
      '     , DIC'
      '     , TELEFON'
      '     , FAX'
      '     , GSM'
      '     , EMAIL'
      'FROM AOP'
      'WHERE AOP.AOPKOD <> :AOPKOD')
    FieldOptions = []
    Left = 324
    Top = 64
    object dtsAopListAOPKOD: TStringField
      FieldName = 'AOPKOD'
      Required = True
      Size = 10
    end
    object dtsAopListNAZEV: TStringField
      DisplayLabel = 'Firma'
      DisplayWidth = 20
      FieldName = 'NAZEV'
      Size = 100
    end
    object dtsAopListADRESA1: TStringField
      DisplayLabel = #218'tvar'
      DisplayWidth = 15
      FieldName = 'ADRESA1'
      Size = 32
    end
    object dtsAopListADRESA2: TStringField
      DisplayLabel = 'Adresa'
      DisplayWidth = 10
      FieldName = 'ADRESA2'
      Size = 32
    end
    object dtsAopListADRESA3: TStringField
      DisplayLabel = 'M'#283'sto'
      DisplayWidth = 15
      FieldName = 'ADRESA3'
      Size = 40
    end
    object dtsAopListICO: TStringField
      DisplayLabel = 'I'#269
      FieldName = 'ICO'
      Size = 10
    end
    object dtsAopListDIC: TStringField
      DisplayLabel = 'Di'#269
      FieldName = 'DIC'
      Size = 14
    end
  end
  object dsAopList: TDataSource
    DataSet = dtsAopList
    Left = 328
    Top = 7
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmAopPrevodAdresy.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 491
    Top = 20
  end
end
