object frmFDSelectZasilka: TfrmFDSelectZasilka
  Left = 0
  Top = 0
  Caption = 'Vyberte z'#225'silku'
  ClientHeight = 427
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrids: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 382
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 709
      Height = 382
      Align = alClient
      TabOrder = 0
      object tvView: TcxGridDBTableView
        OnKeyPress = tvViewKeyPress
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        OnCellDblClick = tvViewCellDblClick
        DataController.DataSource = dsMasterDs
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.TranslateLike = True
        DataController.KeyFieldNames = 'SID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skCount
            Column = tvViewZASILKA
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        object tvViewSID: TcxGridDBColumn
          DataBinding.FieldName = 'SID'
          Visible = False
          VisibleForCustomization = False
        end
        object tvViewZASILKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZASILKA'
        end
        object tvViewDISPECER: TcxGridDBColumn
          DataBinding.FieldName = 'DISPECER'
          Options.Editing = False
        end
        object tvViewDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
        end
        object tvViewAOPKOD_DOP: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD_DOP'
          Visible = False
          VisibleForCustomization = False
        end
        object tvViewDOPRAVCE: TcxGridDBColumn
          DataBinding.FieldName = 'DOPRAVCE'
          Visible = False
        end
        object tvViewPRIKAZCE: TcxGridDBColumn
          DataBinding.FieldName = 'PRIKAZCE'
        end
        object tvViewNAKLADKA: TcxGridDBColumn
          DataBinding.FieldName = 'NAKLADKA'
        end
        object tvViewVYKLADKA: TcxGridDBColumn
          DataBinding.FieldName = 'VYKLADKA'
        end
        object tvViewAUTOSPZ: TcxGridDBColumn
          DataBinding.FieldName = 'AUTOSPZ'
        end
        object tvViewCENASUMA: TcxGridDBColumn
          DataBinding.FieldName = 'CENASUMA'
        end
        object tvViewCENAMENA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENA'
        end
        object tvViewFDCELKEM: TcxGridDBColumn
          DataBinding.FieldName = 'FDCELKEM'
        end
        object tvViewCENADOPRAVCE: TcxGridDBColumn
          DataBinding.FieldName = 'CENADOPRAVCE'
        end
      end
      object glGrid1Level1: TcxGridLevel
        GridView = tvView
      end
    end
  end
  object pnlFormButton: TPanel
    Left = 0
    Top = 382
    Width = 709
    Height = 45
    Align = alBottom
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      709
      45)
    object btnOk: TcxButton
      Left = 617
      Top = 8
      Width = 81
      Height = 25
      Action = actVybrat
      Anchors = [akTop, akRight]
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 529
      Top = 8
      Width = 81
      Height = 25
      Action = actClose
      Anchors = [akTop, akRight]
      Cancel = True
      ModalResult = 2
      TabOrder = 1
    end
    object chkSaveFilter: TcxCheckBox
      Left = 4
      Top = 8
      Caption = 'Pamatovat filtr'
      ParentFont = False
      TabOrder = 2
      Width = 105
    end
    object chkNoVyrizene: TcxCheckBox
      Left = 424
      Top = 8
      Anchors = [akTop, akRight]
      Caption = 'Bez vy'#345#237'zen'#253'ch'
      ParentFont = False
      TabOrder = 3
      OnClick = chkNoVyrizeneClick
      Width = 97
    end
    object chkFakturovano: TcxCheckBox
      Left = 328
      Top = 8
      Action = actShowFakturovane
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 4
      Width = 97
    end
  end
  object dsMasterDs: TDataSource
    AutoEdit = False
    DataSet = dtsZSVyber
    Left = 55
    Top = 127
  end
  object acl1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 59
    Top = 61
    object actClose: TAction
      Category = 'Formular'
      Caption = 'Storno'
      Hint = 'Konec pr'#225'ce s modulem'
      ImageIndex = 28
      ShortCut = 119
      OnExecute = actCloseExecute
    end
    object actVybrat: TAction
      Category = 'Formular'
      Caption = 'Vybrat'
      Hint = 'V'#253'b'#283'r z'#225'znamu'
      ImageIndex = 33
      OnExecute = actVybratExecute
    end
    object actShowFakturovane: TAction
      Category = 'Formular'
      Caption = 'Fakturov'#225'no'
      ImageIndex = 53
      OnExecute = actShowFakturovaneExecute
    end
  end
  object cxsModul: TcxStyleRepository
    Left = 120
    Top = 60
    PixelsPerInch = 96
    object csRowStyle: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = tvView
        HitTypes = [gvhtCell]
        Index = 0
      end>
    Left = 199
    Top = 63
  end
  object dtsZSVyber: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'AOPKOD_DOP'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'ZSSEZNAM.ZASILKA=REQUIRED')
    DatabaseName = 'fbAspedSql'
    IB_Connection = dmdSystem.IBOMainDB
    IB_Transaction = dmdSystem.IBTMainTrans
    PreparedEdits = True
    PreparedInserts = False
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '        ZSSEZNAM.SID,'
      #9'ZSSEZNAM.ZASILKA,'
      '        ZSSEZNAM.AOPKOD_DOP,'
      '        ZSSEZNAM.DOPRAVCE,'
      '        ZSSEZNAM.PRIKAZCE,'
      '        ZSSEZNAM.DATUM,'
      '        ZSSEZNAM.AUTOSPZ,'
      '        ZSSEZNAM.NAKLADKA,'
      '        ZSSEZNAM.VYKLADKA,'
      '        ZSSEZNAM.CENASUMA,'
      '        ZSSEZNAM.CENAMENA,'
      '        ZSSEZNAM.CENADOPRAVCE,'
      '        ZSSEZNAM.FDCELKEM,'
      '        ZSSEZNAM.DISPECER'
      ''
      'FROM    ZSSEZNAM'
      
        'WHERE   ZSSEZNAM.AOPKOD_DOP=:AOPKOD_DOP AND ZSSEZNAM.FDCELKEM = ' +
        '0')
    FieldOptions = []
    Left = 126
    Top = 132
    object dtsZSVyberSID: TStringField
      DisplayLabel = 'ID P'#345'epravy'
      FieldName = 'SID'
      Origin = 'ZSSEZNAM.SID'
      Visible = False
      Size = 22
    end
    object dtsZSVyberZASILKA: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'ZSSEZNAM.ZASILKA'
      Required = True
      Size = 10
    end
    object dtsZSVyberAOPKOD_DOP: TStringField
      DisplayLabel = 'K'#243'd dopravce'
      FieldName = 'AOPKOD_DOP'
      Origin = 'ZSSEZNAM.AOPKOD_DOP'
      Size = 10
    end
    object dtsZSVyberDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'ZSSEZNAM.DATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object dtsZSVyberDopravce: TStringField
      DisplayLabel = 'Dopravce'
      DisplayWidth = 20
      FieldName = 'DOPRAVCE'
      Origin = 'ZSSEZNAM.DOPRAVCE'
      Size = 40
    end
    object dtsZSVyberPrikazce: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 20
      FieldName = 'PRIKAZCE'
      Origin = 'ZSSEZNAM.PRIKAZCE'
      Size = 40
    end
    object dtsZSVyberNAKLADKA: TStringField
      DisplayLabel = 'Nakl'#225'dka'
      DisplayWidth = 20
      FieldName = 'NAKLADKA'
      Origin = 'ZSSEZNAM.NAKLADKA'
      Size = 48
    end
    object dtsZSVyberAUTOSPZ: TStringField
      DisplayLabel = 'RZ'
      DisplayWidth = 15
      FieldName = 'AUTOSPZ'
      Origin = 'ZSSEZNAM.AUTOSPZ'
      Size = 32
    end
    object dtsZSVyberCENASUMA: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CENASUMA'
      Origin = 'ZSSEZNAM.CENASUMA'
    end
    object dtsZSVyberCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'ZSSEZNAM.CENAMENA'
      Size = 3
    end
    object dtsZSVyberCENADOPRAVCE: TFloatField
      DisplayLabel = 'Cena celkem (K'#269')'
      FieldName = 'CENADOPRAVCE'
      Origin = 'ZSSEZNAM.CENADOPRAVCE'
    end
    object dtsZSVyberFDCELKEM: TBCDField
      DisplayLabel = 'Fakturov'#225'no'
      DisplayWidth = 10
      FieldName = 'FDCELKEM'
      Precision = 18
      Size = 1
    end
    object dtsZSVyberVYKLADKA: TStringField
      DisplayLabel = 'Vykl'#225'dka'
      DisplayWidth = 20
      FieldName = 'VYKLADKA'
      Origin = 'ZSSEZNAM.VYKLADKA'
      Size = 48
    end
    object dtsZSVyberDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      FieldName = 'DISPECER'
      Size = 10
    end
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement, pfpSize]
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmFDSelectZasilka.rsPropSaver1'
    Properties.Strings = (
      'chkSaveFilter.Checked'
      'chkNoVyrizene.Checked')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 196
    Top = 133
  end
end
