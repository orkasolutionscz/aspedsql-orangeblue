inherited ZSfrmVyberDlg: TZSfrmVyberDlg
  Left = 600
  Top = 269
  Caption = 'V'#253'b'#283'r p'#345'epravy'
  ClientHeight = 414
  ClientWidth = 632
  ExplicitWidth = 648
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrids: TPanel
    Width = 534
    Height = 388
    ExplicitWidth = 534
    ExplicitHeight = 388
    inherited cxGrid1: TcxGrid
      Width = 534
      Height = 388
      ExplicitWidth = 534
      ExplicitHeight = 388
      inherited tvView: TcxGridDBTableView
        DataController.DataModeController.SmartRefresh = True
        object tvViewZASILKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZASILKA'
        end
        object tvViewDISPECER: TcxGridDBColumn
          DataBinding.FieldName = 'DISPECER'
        end
        object tvViewAOPKOD_DOP: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD_DOP'
        end
        object tvViewDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
        end
        object tvViewDOPRAVCE: TcxGridDBColumn
          DataBinding.FieldName = 'DOPRAVCE'
        end
        object tvViewPRIKAZCE: TcxGridDBColumn
          DataBinding.FieldName = 'PRIKAZCE'
        end
        object tvViewAUTOSPZ: TcxGridDBColumn
          DataBinding.FieldName = 'AUTOSPZ'
        end
        object tvViewNAKLADKA: TcxGridDBColumn
          DataBinding.FieldName = 'NAKLADKA'
        end
        object tvViewVYKLADKA: TcxGridDBColumn
          DataBinding.FieldName = 'VYKLADKA'
        end
        object tvViewCENASUMA: TcxGridDBColumn
          DataBinding.FieldName = 'CENASUMA'
        end
        object tvViewCENAMENA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENA'
        end
        object tvViewCENADOPRAVCE: TcxGridDBColumn
          DataBinding.FieldName = 'CENADOPRAVCE'
        end
      end
    end
  end
  inherited pnlFormButton: TPanel
    Left = 534
    Height = 388
    ExplicitLeft = 534
    ExplicitHeight = 388
  end
  inherited MasterDs: TDataSource
    DataSet = ZSdmd.ZSVyber
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
    DataSet = ZSdmd.ZSVyber
    TableName = 'ZS'
    UpdateTableName = 'ZS'
    KeyField = 'SID'
    ZnackaFindPole = 'ZASILKA'
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      26)
    object dxBarManager1Bar1: TdxBar [0]
      Caption = 'Z'#225'kladn'#237
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 550
      FloatTop = 269
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbSubSeznymy'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    inherited dxbSubSeznymy: TdxBarSubItem
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
          ItemName = 'dxbGridStyle'
        end
        item
          Visible = True
          ItemName = 'dxbGridReset'
        end>
    end
  end
  inherited cxsModul: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popGrid: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbGridStyle'
      end
      item
        Visible = True
        ItemName = 'dxbGridReset'
      end
      item
        BeginGroup = True
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
      end>
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'Prepravy.VyberPrepravy'
    Properties.Strings = (
      'tvView.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 388
    Top = 60
  end
  object dtsSelDopr: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
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
      #9'ZSSEZNAM.DISPECER,'
      '        ZSSEZNAM.AOPKOD_DOP,'
      '        ZSSEZNAM.DOPRAVCE,'
      '        ZSSEZNAM.PRIKAZCE,'
      '        ZSSEZNAM.DATUM,'
      '        ZSSEZNAM.AUTOSPZ,'
      '        ZSSEZNAM.NAKLADKA,'
      '        ZSSEZNAM.VYKLADKA,'
      '        ZSSEZNAM.CENASUMA,'
      '        ZSSEZNAM.CENAMENA,'
      '        ZSSEZNAM.CENADOPRAVCE'
      'FROM'
      '        ZSSEZNAM'
      'WHERE AOPKOD_DOP= :AOPKOD_DOP')
    FieldOptions = []
    Left = 60
    Top = 200
    object dtsSelDoprSID: TStringField
      DisplayLabel = 'ID P'#345'epravy'
      FieldName = 'SID'
      Origin = 'ZSSEZNAM.SID'
      Visible = False
      Size = 22
    end
    object dtsSelDoprZASILKA: TStringField
      DisplayLabel = 'Pozice'
      FieldName = 'ZASILKA'
      Origin = 'ZSSEZNAM.ZASILKA'
      Required = True
      Size = 10
    end
    object dtsSelDoprDISPECER: TStringField
      DisplayLabel = 'Dispe'#269'er'
      DisplayWidth = 5
      FieldName = 'DISPECER'
      Size = 10
    end
    object dtsSelDoprAOPKOD_DOP: TStringField
      DisplayLabel = 'K'#243'd dopravce'
      FieldName = 'AOPKOD_DOP'
      Origin = 'ZSSEZNAM.AOPKOD_DOP'
      Size = 10
    end
    object dtsSelDoprDATUM: TDateTimeField
      DisplayLabel = 'Datum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      Origin = 'ZSSEZNAM.DATUM'
      DisplayFormat = 'dd.mm.yyy'
    end
    object dtsSelDoprDopravce: TStringField
      DisplayLabel = 'Dopravce'
      DisplayWidth = 20
      FieldName = 'DOPRAVCE'
      Origin = 'ZSSEZNAM.DOPRAVCE'
      Size = 40
    end
    object dtsSelDoprPrikazce: TStringField
      DisplayLabel = 'P'#345#237'kazce'
      DisplayWidth = 20
      FieldName = 'PRIKAZCE'
      Origin = 'ZSSEZNAM.PRIKAZCE'
      Size = 40
    end
    object dtsSelDoprNAKLADKA: TStringField
      DisplayLabel = 'Nakl'#225'dka'
      DisplayWidth = 20
      FieldName = 'NAKLADKA'
      Origin = 'ZSSEZNAM.NAKLADKA'
      Size = 48
    end
    object dtsSelDoprAUTOSPZ: TStringField
      DisplayLabel = 'RZ'
      DisplayWidth = 15
      FieldName = 'AUTOSPZ'
      Origin = 'ZSSEZNAM.AUTOSPZ'
      Size = 32
    end
    object dtsSelDoprCENASUMA: TFloatField
      DisplayLabel = 'Celkem'
      FieldName = 'CENASUMA'
      Origin = 'ZSSEZNAM.CENASUMA'
    end
    object dtsSelDoprCENAMENA: TStringField
      DisplayLabel = 'M'#283'na'
      FieldName = 'CENAMENA'
      Origin = 'ZSSEZNAM.CENAMENA'
      Size = 3
    end
    object dtsSelDoprCENADOPRAVCE: TFloatField
      DisplayLabel = 'Cena celkem (K'#269')'
      FieldName = 'CENADOPRAVCE'
      Origin = 'ZSSEZNAM.CENADOPRAVCE'
    end
    object dtsSelDoprVYKLADKA: TStringField
      DisplayLabel = 'Vykl'#225'dka'
      DisplayWidth = 20
      FieldName = 'VYKLADKA'
      Origin = 'ZSSEZNAM.VYKLADKA'
      Size = 48
    end
  end
end
