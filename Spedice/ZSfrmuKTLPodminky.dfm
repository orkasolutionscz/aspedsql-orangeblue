inherited ZSfrmKTLPodminky: TZSfrmKTLPodminky
  Left = 315
  Top = 268
  Caption = 'Texty podm'#237'nek pro objedn'#225'vku'
  ClientWidth = 590
  Constraints.MaxWidth = 598
  Constraints.MinHeight = 400
  Constraints.MinWidth = 598
  OnCreate = jfsCustomEvidFormCreate
  ExplicitWidth = 598
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Width = 590
    Height = 191
    BorderWidth = 4
    ExplicitWidth = 590
    ExplicitHeight = 191
    inherited dxlHlavni: TdxLayoutControl
      Left = 5
      Top = 5
      Width = 580
      Height = 181
      AutoSize = True
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 580
      ExplicitHeight = 181
      object edPopis: TcxDBTextEdit [0]
        Left = 73
        Top = 10
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Width = 213
      end
      object meObsah: TcxDBMemo [1]
        Left = 73
        Top = 37
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataBinding.DataField = 'OBSAH'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Height = 147
        Width = 387
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        LayoutDirection = ldHorizontal
        Index = -1
      end
      object dxlgHlavniGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxlgLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'N'#225'zev :'
        Parent = dxlgHlavniGroup1
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dliHlavniItem2: TdxLayoutItem
        AlignVert = avClient
        CaptionOptions.Text = 'Vlastn'#237' text :'
        Parent = dxlgHlavniGroup1
        Control = meObsah
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 590
    ExplicitWidth = 590
  end
  inherited pnlSeznam: TPanel
    Top = 217
    Width = 590
    Height = 328
    ExplicitTop = 217
    ExplicitWidth = 590
    ExplicitHeight = 328
    inherited cxGridKtl1: TcxGrid
      Width = 590
      Height = 328
      ExplicitWidth = 590
      ExplicitHeight = 328
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'ID'
        object tvKatalogID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
        end
        object tvKatalogOBSAH: TcxGridDBColumn
          DataBinding.FieldName = 'OBSAH'
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Width = 590
    ExplicitWidth = 590
    inherited pnlButtons: TPanel
      Left = 422
      ExplicitLeft = 422
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLPodminky
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'Katalogy.ZSKTLPodmiky\Seznam'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
end
