object frmCustomLookup: TfrmCustomLookup
  Left = 506
  Top = 195
  BorderStyle = bsSizeToolWin
  Caption = 'frmCustomLookup'
  ClientHeight = 389
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  IsDataChanged = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 486
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clBackground
    TabOrder = 0
    object lbCaption: TcxLabel
      Left = 8
      Top = 6
      Caption = 'lbCaption'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 7124735
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 392
    Top = 35
    Width = 94
    Height = 354
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 398
    ExplicitTop = 41
    object btnCancel: TcxButton
      Left = 8
      Top = 40
      Width = 75
      Height = 25
      Action = actStorno
      ModalResult = 2
      TabOrder = 0
    end
    object btnOk: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = actOk
      ModalResult = 1
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 35
    Width = 392
    Height = 354
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    object tvLook: TcxGridDBTableView
      OnDblClick = actOkExecute
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dsLook
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.Indicator = True
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvLook
    end
  end
  object dsLook: TDataSource
    AutoEdit = False
    Left = 196
    Top = 60
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 128
    Top = 60
  end
  object aclLook: TActionList
    Images = dmdGlobal.imglDefault
    Left = 60
    Top = 60
    object actOk: TAction
      Caption = 'Vybrat'
      OnExecute = actOkExecute
    end
    object actStorno: TAction
      Caption = 'Storno'
      OnExecute = actStornoExecute
    end
  end
end
