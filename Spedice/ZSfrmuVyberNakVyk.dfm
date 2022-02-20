inherited ZSfrmVyberNakVyk: TZSfrmVyberNakVyk
  Caption = 'Vyberte z existuj'#237'c'#237'ch m'#237'st'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrids: TPanel
    Top = 26
    Height = 395
    ExplicitTop = 26
    ExplicitHeight = 395
    object Splitter1: TSplitter [0]
      Left = 0
      Top = 284
      Width = 546
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 277
    end
    inherited cxGrid1: TcxGrid
      Height = 284
      ExplicitHeight = 284
      inherited tvView: TcxGridDBTableView
        object tvViewTyp: TcxGridDBColumn
          DataBinding.FieldName = 'Typ'
          Width = 97
        end
        object tvViewZEMEKOD: TcxGridDBColumn
          DataBinding.FieldName = 'ZEMEKOD'
        end
        object tvViewPSC: TcxGridDBColumn
          DataBinding.FieldName = 'PSC'
        end
        object tvViewADRESA3: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA3'
        end
      end
    end
    object pnlDetaily: TPanel
      Left = 0
      Top = 287
      Width = 546
      Height = 108
      Align = alBottom
      Constraints.MinHeight = 70
      ParentColor = True
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 254
        Top = 1
        Height = 106
      end
      object pnlAdresaPopis: TPanel
        Left = 1
        Top = 1
        Width = 253
        Height = 106
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 2
        ParentColor = True
        TabOrder = 0
        object Label1: TLabel
          Left = 2
          Top = 2
          Width = 249
          Height = 13
          Align = alTop
          Caption = ' Adresa '
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 46
        end
        object meAdresaPopis: TcxDBMemo
          Left = 2
          Top = 15
          Align = alBottom
          DataBinding.DataField = 'AdresaPopis'
          DataBinding.DataSource = MasterDs
          ParentFont = False
          TabOrder = 0
          Height = 89
          Width = 249
        end
      end
      object pnlSpojeni: TPanel
        Left = 257
        Top = 1
        Width = 288
        Height = 106
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 2
        ParentColor = True
        TabOrder = 1
        object Label2: TLabel
          Left = 2
          Top = 2
          Width = 284
          Height = 13
          Align = alTop
          Caption = ' Spojen'#237' '
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 48
        end
        object DBMemo1: TcxDBMemo
          Left = 2
          Top = 15
          Align = alClient
          DataBinding.DataField = 'SPOJENI'
          DataBinding.DataSource = MasterDs
          ParentFont = False
          TabOrder = 0
          Height = 89
          Width = 284
        end
      end
    end
  end
  inherited pnlFormButton: TPanel
    Top = 26
    Height = 395
    ExplicitTop = 26
    ExplicitHeight = 395
  end
  inherited ActionList1: TActionList
    inherited actRecDetail: TAction
      Enabled = False
      Visible = False
    end
    inherited actRecNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actRecKopie: TAction
      Visible = False
    end
  end
  inherited SQLControler: TjfsSQLContr
    DataSet = ZSdmd.sqPohyby
    TableName = 'ZSNakVyk'
    UpdateTableName = 'ZSNakVyk'
    KeyField = 'ID'
    Left = 332
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar [0]
      Caption = 'Hlavn'#237
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 508
      FloatTop = 254
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
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
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
  end
  inherited cxsModul: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popGrid: TdxBarPopupMenu
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
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxbGridStyle'
      end
      item
        Visible = True
        ItemName = 'dxbGridReset'
      end>
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'Prepravy.VyberMistaPohybu1'
    Properties.Strings = (
      'pnlDetaily.Height'
      'pnlAdresaPopis.Width'
      'tvView.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 60
    Top = 128
  end
end
