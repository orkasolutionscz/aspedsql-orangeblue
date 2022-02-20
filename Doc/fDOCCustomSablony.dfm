inherited frmDOCCustomSablony: TfrmDOCCustomSablony
  Left = 429
  Top = 222
  Caption = #352'ablony'
  ClientHeight = 657
  ClientWidth = 592
  Constraints.MaxWidth = 0
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  ExplicitWidth = 600
  ExplicitHeight = 684
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Width = 592
    ExplicitWidth = 592
    inherited dxlHlavni: TdxLayoutControl
      Width = 590
      ExplicitWidth = 590
      object cxDBTextEdit2: TcxDBTextEdit [0]
        Left = 22
        Top = 46
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 530
      end
      object cxDBTextEdit3: TcxDBTextEdit [1]
        Left = 22
        Top = 91
        DataBinding.DataField = 'VEC'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 530
      end
      object meTextCs: TcxDBMemo [2]
        Left = 22
        Top = 136
        DataBinding.DataField = 'SABLONA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Courier New'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 235
        Width = 530
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        Index = -1
      end
      object dliHlavniItem3: TdxLayoutItem
        CaptionOptions.Text = #352'ablona'
        CaptionOptions.Layout = clTop
        Parent = dxlgHlavniGroup4
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem4: TdxLayoutItem
        CaptionOptions.Text = #352'ablona - V'#283'c'
        CaptionOptions.Layout = clTop
        Parent = dxlgHlavniGroup4
        Control = cxDBTextEdit3
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dliHlavniItem5: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = #352'ablona - Obsah'
        CaptionOptions.Layout = clTop
        Parent = dxlgHlavniGroup4
        Control = meTextCs
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxlgHlavniGroup4: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Obsah '#353'ablony'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Index = 0
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 592
    ExplicitWidth = 592
  end
  inherited pnlSeznam: TPanel
    Width = 592
    Height = 275
    ExplicitLeft = -1
    ExplicitTop = 286
    ExplicitWidth = 592
    ExplicitHeight = 275
    DesignSize = (
      592
      275)
    inherited cxGridKtl1: TcxGrid
      Left = 23
      Width = 592
      Height = 275
      ExplicitLeft = 23
      ExplicitWidth = 592
      ExplicitHeight = 275
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'ID'
        object tvKatalogID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvKatalogEvidence: TcxGridDBColumn
          DataBinding.FieldName = 'Evidence'
          Visible = False
        end
        object tvKatalogPopis: TcxGridDBColumn
          DataBinding.FieldName = 'Popis'
          Width = 302
        end
        object tvKatalogSablona: TcxGridDBColumn
          DataBinding.FieldName = 'Sablona'
          Visible = False
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Top = 611
    Width = 592
    ExplicitTop = 611
    ExplicitWidth = 592
    inherited pnlButtons: TPanel
      Left = 424
      ExplicitLeft = 424
    end
  end
  inherited ActionList1: TActionList
    Left = 188
  end
  inherited dsZaznam: TDataSource
    DataSet = ZSdmd.KTLZSSablony
    Left = 364
  end
  inherited dxBarManager1: TdxBarManager
    Left = 188
    Top = 188
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
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
          Visible = True
          ItemName = 'dxBarButton8'
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
    object dxb1: TdxBarButton [9]
      Action = actExecuteMerger
      Category = 0
    end
    object dxb2: TdxBarButton [10]
      Action = actVytvorAvizo
      Category = 0
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 100
    Top = 188
  end
  object actlst1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 100
    Top = 100
    object actExecuteMerger: TAction
      Caption = 'N'#225'hled'
    end
    object actVytvorAvizo: TAction
      Caption = 'Vytvo'#345'it av'#237'zo'
      ImageIndex = 59
      Visible = False
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGridKtl1
    PopupMenus = <>
    Left = 276
    Top = 100
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmDocSablony.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 276
    Top = 188
  end
end
