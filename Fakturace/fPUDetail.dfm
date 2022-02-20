inherited frmPUDetail: TfrmPUDetail
  Left = 543
  Top = 268
  Caption = 'Detail p'#345#237'kazu k '#250'hrad'#283
  ClientHeight = 558
  ClientWidth = 655
  OldCreateOrder = True
  OnCreate = jfsCustomEvidFormCreate
  ExplicitWidth = 663
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Left = 0
    Top = 26
    Width = 655
    Height = 532
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 26
    ExplicitWidth = 739
    ExplicitHeight = 534
    object cxGroupBox1: TcxGroupBox
      Left = 9
      Top = 9
      Caption = ' P'#345#237'kaz k '#250'hrad'#283' '
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Transparent = True
      Height = 145
      Width = 632
      object lbl1: TcxLabel
        Left = 184
        Top = 16
        Caption = 'Datum'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbl2: TcxLabel
        Left = 184
        Top = 40
        Caption = 'Splatnost'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbl3: TcxLabel
        Left = 8
        Top = 16
        Caption = #218#269'et'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbl4: TcxLabel
        Left = 8
        Top = 40
        Caption = 'Celkem'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbl5: TcxLabel
        Left = 336
        Top = 16
        Caption = 'Text'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbl6: TcxLabel
        Left = 336
        Top = 40
        Caption = #218'daj'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbl7: TcxLabel
        Left = 8
        Top = 64
        Caption = 'Pozn'#225'mka'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object edTextPrikazu: TcxDBTextEdit
        Left = 376
        Top = 16
        DataBinding.DataField = 'PRIK_TEXT'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 3
        Width = 249
      end
      object edUdaj: TcxDBTextEdit
        Left = 376
        Top = 40
        DataBinding.DataField = 'PRIKAZ_UDAJ'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 11
        Width = 249
      end
      object edDatZalozeni: TcxDBDateEdit
        Left = 240
        Top = 16
        RepositoryItem = dmdGlobal.repDatum
        DataBinding.DataField = 'DAT_ZAPISU'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 2
        Width = 91
      end
      object edDatPlatby: TcxDBDateEdit
        Left = 240
        Top = 40
        RepositoryItem = dmdGlobal.repDatum
        DataBinding.DataField = 'DAT_PLATBY'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 8
        Width = 91
      end
      object edCelkem: TcxDBCurrencyEdit
        Left = 64
        Top = 40
        RepositoryItem = dmdGlobal.repCena
        DataBinding.DataField = 'CELKEM'
        DataBinding.DataSource = dsZaznam
        Enabled = False
        ParentFont = False
        TabOrder = 4
        Width = 113
      end
      object mePoznamka: TcxDBMemo
        Left = 64
        Top = 64
        DataBinding.DataField = 'POZNAMKA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 13
        Height = 73
        Width = 561
      end
      object edUcet: TcxDBLookupComboBox
        Left = 64
        Top = 16
        DataBinding.DataField = 'REF_UCET'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 113
      end
    end
    object btnPolAdd: TcxButton
      Left = 16
      Top = 168
      Width = 105
      Height = 25
      Action = actPolNew
      Colors.Normal = 4707838
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF00FF00FF00AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400FF00FF00FF00FF00FF00
        FF003184FF003184FF003184FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700F7F7F700F7F7F700B5848400FF00FF00FF00FF00FF00
        FF003184FF0042B5F7003184FF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
        EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00B5848400FF00FF003184FF003184
        FF003184FF0042B5F7003184FF003184FF003184FF00E7E7E700E7E7E700E7E7
        E700E7E7E700B5847300B5948C00B58C8400B5848400FF00FF003184FF008CD6
        F700B5DEF700B5DEF700B5DEF7008CD6F7003184FF00DEDEDE00DEDEDE00DEDE
        DE00C6C6C600B5847300FFFFFF00FFFFFF00B5848400FF00FF003184FF003184
        FF003184FF00B5DEF7003184FF003184FF003184FF00D6D6D600D6D6D600D6D6
        D600C6C6C600B5847300FFFFFF00B5848400FF00FF00FF00FF00FF00FF00FF00
        FF003184FF00B5DEF7003184FF00CECECE00CECECE00CECECE00CECECE00CECE
        CE00C6C6C600B5847300B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003184FF003184FF003184FF00EFD6C600EFD6C600EFD6C600EFD6C600EFD6
        C600D6BDB500B5847300FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
    end
    object btnPolDel: TcxButton
      Left = 128
      Top = 168
      Width = 113
      Height = 25
      Action = actPolDelete
      Colors.Normal = 4707838
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008C8C8C00949494007373730073737300636363005A5A
        5A0052525200525252005A5A5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0094949400848484009C9C9C0052525200525252006B6B6B003939
        390052525200424242003131310039393900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009C9C9C00848484009C9C9C004A4A4A004A4A4A006B6B6B002929
        290052525200424242002121210029292900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009C9C9C0084848400A5A5A50042424200424242006B6B6B001818
        180052525200424242001010100029292900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A5A5A50084848400A5A5A5004A4A4A004A4A4A006B6B6B001818
        180052525200424242001010100029292900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A5A5A50084848400ADADAD004A4A4A004A4A4A006B6B6B001818
        180052525200424242001010100029292900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A5A5A50084848400ADADAD004A4A4A004A4A4A006B6B6B001818
        180052525200424242001010100029292900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009C9C9C0084848400A5A5A50042424200424242006B6B6B001818
        180052525200424242001010100029292900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009C9C9C0084848400A5A5A50042424200424242006B6B6B001818
        180052525200424242001010100029292900FF00FF00FF00FF00FF00FF00FF00
        FF0094949400A5A5A500737373009C9C9C0039393900393939006B6B6B001818
        1800525252004A4A4A0010101000313131007B7B7B00FF00FF00FF00FF00FF00
        FF008C8C8C009C9C9C009C9C9C00949494007B7B7B007B7B7B00636363005A5A
        5A00525252004A4A4A00424242003131310021212100FF00FF00FF00FF00FF00
        FF007373730063636300636363006B6B6B006363630063636300525252005252
        52004A4A4A004A4A4A00313131003131310073737300FF00FF00FF00FF00FF00
        FF00FF00FF009C9C9C00949494009494940084848400848484007B7B7B007373
        73006B6B6B006B6B6B00636363005A5A5A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A5A5A5007B7B7B00FF00FF00FF00FF007373
        73007B7B7B0042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00A5A5A5007B7B7B007B7B7B007B7B
        7B0042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 2
    end
    object cxGrid1: TcxGrid
      Left = 7
      Top = 200
      Width = 634
      Height = 313
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 3
      ExplicitHeight = 315
      object tvPolozky: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataSource = dsPolozky
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object tvPolozkyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvPolozkyCISLO_DOKL: TcxGridDBColumn
          DataBinding.FieldName = 'CISLO_DOKL'
        end
        object tvPolozkyREF_FUHR: TcxGridDBColumn
          DataBinding.FieldName = 'REF_FUHR'
          Visible = False
        end
        object tvPolozkyPRIJEMCE: TcxGridDBColumn
          DataBinding.FieldName = 'PRIJEMCE'
          Width = 146
        end
        object tvPolozkyREF_DOKLAD: TcxGridDBColumn
          DataBinding.FieldName = 'REF_DOKLAD'
          Visible = False
        end
        object tvPolozkyUCET_CISLO: TcxGridDBColumn
          DataBinding.FieldName = 'UCET_CISLO'
        end
        object tvPolozkyUCET_BANKA: TcxGridDBColumn
          DataBinding.FieldName = 'UCET_BANKA'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d+'
          Width = 39
        end
        object tvPolozkyVARIABILNI: TcxGridDBColumn
          DataBinding.FieldName = 'VARIABILNI'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d+'
        end
        object tvPolozkyUCET_KONST: TcxGridDBColumn
          DataBinding.FieldName = 'UCET_KONST'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d+'
        end
        object tvPolozkyUCET_SPECIF: TcxGridDBColumn
          DataBinding.FieldName = 'UCET_SPECIF'
        end
        object tvPolozkyCASTKA: TcxGridDBColumn
          DataBinding.FieldName = 'CASTKA'
          RepositoryItem = dmdGlobal.repCena
        end
        object tvPolozkyVRACENO: TcxGridDBColumn
          DataBinding.FieldName = 'VRACENO'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvPolozky
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 655
    ExplicitWidth = 739
  end
  inherited ActionList1: TActionList
    Left = 100
    Top = 100
    object actPolNew: TAction
      Caption = 'P'#345'idat polo'#382'ku'
      ImageIndex = 6
      OnExecute = actPolNewExecute
    end
    object actPolDelete: TAction
      Caption = 'Odebrat polo'#382'ku'
      ImageIndex = 11
      OnExecute = actPolDeleteExecute
    end
    object actExport: TAction
      Caption = 'Exportovat'
      ImageIndex = 37
      OnExecute = actExportExecute
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = FPUdmd.FPURecord
    Left = 276
    Top = 100
  end
  inherited dxBarManager1: TdxBarManager
    Left = 364
    Top = 100
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxb2'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxbOk'
        end>
    end
    object dxb1: TdxBarLargeButton
      Action = actExport
      Category = 0
    end
    object dxb2: TdxBarButton
      Action = actExport
      Category = 0
    end
  end
  object dsPolozky: TDataSource
    DataSet = FPUdmd.FPUPolozky
    Left = 188
    Top = 100
  end
end
