inherited FPULookFakturuFrm: TFPULookFakturuFrm
  Left = 961
  Top = 180
  Caption = 'V'#253'b'#283'r faktury'
  ClientHeight = 401
  ClientWidth = 639
  OldCreateOrder = True
  OnClose = jfsCustomEvidFormClose
  OnCreate = jfsCustomEvidFormCreate
  ExplicitWidth = 647
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 639
    ExplicitWidth = 639
    inherited lbCaption: TcxLabel
      Caption = 'Vyberte fakturu pro za'#345'azen'#237' na p'#345#237'kaz k '#250'hrad'#283
      Style.IsFontAssigned = True
      ExplicitWidth = 329
    end
  end
  inherited Panel2: TPanel
    Left = 545
    Height = 366
    ExplicitLeft = 545
    ExplicitHeight = 366
  end
  inherited cxGrid1: TcxGrid
    Width = 545
    Height = 366
    ExplicitWidth = 545
    ExplicitHeight = 366
    inherited tvLook: TcxGridDBTableView
      DataController.KeyFieldNames = 'SID'
      FilterRow.Visible = True
      object tvLookFakturaDO: TcxGridDBColumn
        DataBinding.FieldName = 'FakturaDO'
        Options.Editing = False
      end
      object tvLookDATSPLATNOST: TcxGridDBColumn
        DataBinding.FieldName = 'DATSPLATNOST'
        Options.Editing = False
      end
      object tvLookVariabilni: TcxGridDBColumn
        DataBinding.FieldName = 'Variabilni'
        Options.Editing = False
      end
      object tvLookNAZEV: TcxGridDBColumn
        DataBinding.FieldName = 'NAZEV'
        Options.Editing = False
      end
      object tvLookCENALIKV: TcxGridDBColumn
        DataBinding.FieldName = 'CENALIKV'
        Options.Editing = False
      end
      object tvLookUCET_CISLO: TcxGridDBColumn
        DataBinding.FieldName = 'UCET_CISLO'
        Options.Editing = False
      end
      object tvLookUCET_BANKA: TcxGridDBColumn
        DataBinding.FieldName = 'UCET_BANKA'
        Options.Editing = False
      end
      object tvLookUCET_SPECIF: TcxGridDBColumn
        DataBinding.FieldName = 'UCET_SPECIF'
        Options.Editing = False
      end
    end
  end
  inherited dsLook: TDataSource
    DataSet = FPUdmd.qrVyberDoklady
  end
  object rsPropSaver1: TrsPropSaver [5]
    Storage = dmdSystem.rstrgForms
    RootSection = 'FPULookFakturuFrm.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 264
    Top = 60
  end
end
