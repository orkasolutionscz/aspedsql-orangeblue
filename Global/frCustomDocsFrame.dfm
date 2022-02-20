object fraCustomDocs: TfraCustomDocs
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  Color = 15451300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object RowsGrid: TcxGrid
    Left = 0
    Top = 26
    Width = 451
    Height = 278
    Align = alClient
    TabOrder = 0
    object tvDokumenty: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = RowsSource
      DataController.KeyFieldNames = 'SID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvDokumentySID: TcxGridDBColumn
        DataBinding.FieldName = 'SID'
        Visible = False
        Options.Editing = False
      end
      object tvDokumentyREF_OWNER: TcxGridDBColumn
        DataBinding.FieldName = 'REF_OWNER'
        Visible = False
        Options.Editing = False
      end
      object tvDokumentyDATUM: TcxGridDBColumn
        DataBinding.FieldName = 'DATUM'
        Options.Editing = False
        Width = 87
      end
      object tvDokumentyINT_OBJECT_FILENAME: TcxGridDBColumn
        DataBinding.FieldName = 'INT_OBJECT_FILENAME'
        Visible = False
        Options.Editing = False
      end
      object tvDokumentyPOPIS: TcxGridDBColumn
        DataBinding.FieldName = 'POPIS'
        Width = 280
      end
      object tvDokumentyCREAID: TcxGridDBColumn
        DataBinding.FieldName = 'CREAID'
        Options.Editing = False
      end
    end
    object Lev1RG: TcxGridLevel
      GridView = tvDokumenty
    end
  end
  object actlForm: TActionList
    Images = dmdGlobal.imglDefault
    Left = 100
    Top = 100
    object actPridat: TAction
      Caption = 'P'#345'idat'
      ImageIndex = 46
      OnExecute = actPridatExecute
    end
    object actZapsat: TAction
      Caption = 'Zapsat'
      ImageIndex = 9
      Visible = False
      OnExecute = actZapsatExecute
    end
    object actOtevrit: TAction
      Caption = 'Otev'#345#237't'
      ImageIndex = 5
      OnExecute = actOtevritExecute
    end
    object actOdebrat: TAction
      Caption = 'Smazat vybran'#233
      ImageIndex = 11
      OnExecute = actOdebratExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'JPEG Image soubor (*.jpg)|*.jpg|JPEG Image soubor (*.jpeg)|*.jpe' +
      'g|Acrobat Reader soubor (*.pdf]|*.pdf|Outlook zpr'#225'va (*.msg)|*.m' +
      'sg|ThunderBird zpr'#225'va (*.msg)|*.eml|Microsoft Word (*.doc)|*.doc' +
      '|V'#353'echny dokumenty |*.*'
    FilterIndex = 3
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 372
    Top = 100
  end
  object dtsDokumenty: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ID'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'ID=REQUIRED'
      'REF_PRIJEM=REQUIRED'
      'REF_KARTA=REQUIRED'
      'REF_SKLADY=REQUIRED'
      'REF_CISRADY=REQUIRED'
      'REF_OBDOBI=REQUIRED'
      'SYSDOC.SID=REQUIRED')
    DatabaseName = 'fbAspedSql'
    DeleteSQL.Strings = (
      'DELETE FROM SYSDOC SYSDOC'
      'WHERE'
      '   SID = :OLD_SID')
    EditSQL.Strings = (
      'UPDATE SYSDOC SYSDOC SET'
      '   SYSDOC.POPIS = :POPIS'
      'WHERE'
      '   SID = :OLD_SID')
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    InsertSQL.Strings = (
      'INSERT INTO SYSDOC('
      '   SID, /*PK*/'
      '   REF_OWNER,'
      '   INT_OBJECT_FILENAME,'
      '   POPIS,'
      '   DATUM,'
      '   CREAID)'
      'VALUES ('
      '   :SID,'
      '   :REF_OWNER,'
      '   :INT_OBJECT_FILENAME,'
      '   :POPIS,'
      '   :DATUM,'
      '   :CREAID)')
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    BeforeDelete = dtsDokumentyBeforeDelete
    OnNewRecord = dtsDokumentyNewRecord
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      'FROM SYSDOC'
      'WHERE (REF_OWNER = :SID)')
    FieldOptions = []
    Left = 304
    Top = 100
    object dtsDokumentySID: TStringField
      DisplayLabel = 'Index'
      FieldName = 'SID'
      Origin = 'SYSDOC.SID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      FixedChar = True
      Size = 22
    end
    object dtsDokumentyREF_OWNER: TStringField
      DisplayLabel = 'Vlastn'#237'k'
      FieldName = 'REF_OWNER'
      Origin = 'DOC.REF_OWNER'
      Visible = False
      Size = 22
    end
    object dtsDokumentyDATUM: TDateField
      DisplayLabel = 'Datum'
      FieldName = 'DATUM'
      Origin = 'DOC.DATUM'
    end
    object dtsDokumentyINT_OBJECT_FILENAME: TStringField
      DisplayLabel = 'Soubor'
      DisplayWidth = 15
      FieldName = 'INT_OBJECT_FILENAME'
      Origin = 'DOC.INT_OBJECT_FILENAME'
      Size = 255
    end
    object dtsDokumentyPOPIS: TStringField
      DisplayLabel = 'Popis'
      DisplayWidth = 25
      FieldName = 'POPIS'
      Origin = 'SYSDOC.POPIS'
      Size = 255
    end
    object dtsDokumentyCREAID: TStringField
      DisplayLabel = 'Vytvo'#345'il'
      FieldName = 'CREAID'
      Origin = 'SYSDOC.CREAID'
      Size = 10
    end
  end
  object RowsSource: TDataSource
    DataSet = dtsDokumenty
    OnDataChange = RowsSourceDataChange
    Left = 228
    Top = 100
  end
  object RowGridPopup: TcxGridPopupMenu
    Grid = RowsGrid
    PopupMenus = <>
    Left = 168
    Top = 100
  end
  object dxmDocs: TdxBarManager
    AutoHideEmptyBars = True
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 100
    Top = 160
    DockControlHeights = (
      0
      0
      26
      0)
    object dxbManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 505
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbOpen'
        end
        item
          Visible = True
          ItemName = 'dxbAdd'
        end
        item
          Visible = True
          ItemName = 'dxbPost'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbDelete'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxbOpen: TdxBarButton
      Action = actOtevrit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbAdd: TdxBarButton
      Action = actPridat
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbDelete: TdxBarButton
      Action = actOdebrat
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbPost: TdxBarButton
      Action = actZapsat
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
end
