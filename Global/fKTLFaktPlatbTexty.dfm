object frmKTLPlatbyTypy: TfrmKTLPlatbyTypy
  Left = 698
  Top = 274
  BorderIcons = [biSystemMenu]
  Caption = 'Vyberte text'
  ClientHeight = 423
  ClientWidth = 277
  Color = clBtnFace
  Constraints.MaxWidth = 285
  Constraints.MinHeight = 320
  Constraints.MinWidth = 285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  DesignSize = (
    277
    423)
  PixelsPerInch = 96
  TextHeight = 13
  object GridCities: TcxGrid
    Left = 0
    Top = 25
    Width = 277
    Height = 355
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitHeight = 344
    object tvTexty: TcxGridDBTableView
      OnDblClick = tvTextyDblClick
      OnKeyDown = tvTextyKeyDown
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmdGlobal.dsKTLFaktPol
      DataController.KeyFieldNames = 'PLATBA_TEXT'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.InfoText = 'Klikn'#283'te zde pro vytvo'#345'en'#237' nov'#233'ho textu'
      NewItemRow.Visible = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHorzSizing = False
      OptionsCustomize.ColumnMoving = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvTextyPLATBA_TEXT: TcxGridDBColumn
        DataBinding.FieldName = 'PLATBA_TEXT'
        Options.Filtering = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Sorting = False
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object lvTexty: TcxGridLevel
      GridView = tvTexty
    end
  end
  object btnCancel: TcxButton
    Left = 192
    Top = 389
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Storno'
    ModalResult = 2
    TabOrder = 2
    ExplicitTop = 378
  end
  object btnOK: TcxButton
    Left = 112
    Top = 389
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    ExplicitTop = 378
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    AutoSize = False
    Caption = 'Pro nov'#253' z'#225'znam stiskn'#283'te kl'#225'vesu INSERT'
    ParentColor = False
    ParentFont = False
    Style.Color = clWindow
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Height = 25
    Width = 277
    AnchorX = 139
    AnchorY = 13
  end
  object rsp1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement, pfpSize]
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmKTLPlatbyTypy.Nastaveni'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 60
    Top = 164
  end
end
