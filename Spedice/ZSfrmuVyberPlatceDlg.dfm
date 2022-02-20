inherited ZSfrmVyberPlatceDlg: TZSfrmVyberPlatceDlg
  Left = 500
  Top = 137
  Caption = 'Vyber p'#345'epravu '
  ClientHeight = 473
  ClientWidth = 663
  ExplicitWidth = 671
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGrids: TPanel
    Width = 565
    Height = 447
    ExplicitWidth = 565
    ExplicitHeight = 473
    inherited cxGrid1: TcxGrid
      Width = 565
      Height = 447
      ExplicitWidth = 565
      ExplicitHeight = 473
      inherited tvView: TcxGridDBTableView
        DataController.DataModeController.GridMode = False
        DataController.KeyFieldNames = 'ID'
        DataController.OnSortingChanged = nil
        object tvViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvViewAOPKOD: TcxGridDBColumn
          DataBinding.FieldName = 'AOPKOD'
          Visible = False
        end
        object tvViewZASILKA: TcxGridDBColumn
          DataBinding.FieldName = 'ZASILKA'
        end
        object tvViewCO: TcxGridDBColumn
          DataBinding.FieldName = 'CO'
        end
        object tvViewPOZICE: TcxGridDBColumn
          DataBinding.FieldName = 'POZICE'
        end
        object tvViewCENASUMA: TcxGridDBColumn
          DataBinding.FieldName = 'CENASUMA'
        end
        object tvViewCENAMENA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENA'
        end
        object tvViewNAZEV: TcxGridDBColumn
          DataBinding.FieldName = 'NAZEV'
          Visible = False
        end
        object tvViewADRESA3: TcxGridDBColumn
          DataBinding.FieldName = 'ADRESA3'
          Visible = False
        end
        object tvViewDATUM: TcxGridDBColumn
          DataBinding.FieldName = 'DATUM'
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
        object tvViewSTATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
        end
        object tvViewCENASMLUVNI: TcxGridDBColumn
          DataBinding.FieldName = 'CENASMLUVNI'
          Visible = False
        end
        object tvViewCENAJEDNOTKY: TcxGridDBColumn
          DataBinding.FieldName = 'CENAJEDNOTKY'
          Visible = False
        end
        object tvViewCENADPHPROC: TcxGridDBColumn
          DataBinding.FieldName = 'CENADPHPROC'
        end
        object tvViewCENAJEDNOTKA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAJEDNOTKA'
          Visible = False
        end
        object tvViewSUBSTRATINFO: TcxGridDBColumn
          DataBinding.FieldName = 'SUBSTRATINFO'
        end
        object tvViewSUBSTRAT: TcxGridDBColumn
          DataBinding.FieldName = 'SUBSTRAT'
        end
        object tvViewHMBRUTTO: TcxGridDBColumn
          DataBinding.FieldName = 'HMBRUTTO'
        end
        object tvViewHMTEXT: TcxGridDBColumn
          DataBinding.FieldName = 'HMTEXT'
        end
        object tvViewPRIKAZ: TcxGridDBColumn
          DataBinding.FieldName = 'PRIKAZ'
        end
        object tvViewNSTAT: TcxGridDBColumn
          DataBinding.FieldName = 'NSTAT'
        end
        object tvViewNPSC: TcxGridDBColumn
          DataBinding.FieldName = 'NPSC'
        end
        object tvViewNMISTO: TcxGridDBColumn
          DataBinding.FieldName = 'NMISTO'
        end
        object tvViewVSTAT: TcxGridDBColumn
          DataBinding.FieldName = 'VSTAT'
        end
        object tvViewVPSC: TcxGridDBColumn
          DataBinding.FieldName = 'VPSC'
        end
        object tvViewVMISTO: TcxGridDBColumn
          DataBinding.FieldName = 'VMISTO'
        end
      end
    end
  end
  inherited pnlFormButton: TPanel
    Left = 565
    Height = 447
    ExplicitLeft = 565
    ExplicitHeight = 473
  end
  inherited MasterDs: TDataSource
    DataSet = ZSdmd.ZSPLAVyber
  end
  inherited ActionList1: TActionList
    inherited actRecNew: TAction
      Visible = False
    end
    inherited actRecKopie: TAction
      Visible = False
    end
  end
  inherited SQLControler: TjfsSQLContr
    DataSet = ZSdmd.ZSPLAVyber
    TableName = 'ZSPlatci'
    UpdateTableName = 'ZSPlatci'
    KeyField = 'ID'
    Left = 333
    Top = 127
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      26)
    object dxBarManager1Bar1: TdxBar [0]
      Caption = 'SQL Filter'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 689
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
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
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
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
        ItemName = 'dxbGridReset'
      end
      item
        Visible = True
        ItemName = 'dxbGridStyle'
      end>
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement, pfpSize]
    Storage = dmdSystem.rstrgForms
    RootSection = 'ZSfrmVyberPlatceDlg.rsPropSaver1'
    Properties.Strings = (
      'WindowState'
      'Position')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 60
    Top = 128
  end
end
