object FDfrmModule: TFDfrmModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnInitModule = gbEvidenceModuleInitModule
  OnFinalModule = jfsEvidenceModuleFinalModule
  ModuleCaption = 'Faktury do'#353'l'#233
  ModuleName = 'FDo'#353'l'#233
  NewNumRadaJmeno = 'Rada1'
  NewNumRadaVybrat = False
  Height = 479
  Width = 741
  object rsPropModule: TrsPropSaver
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Modul.Faktury.Prijate'
    Properties.Strings = (
      'NewNumRadaJmeno'
      'NewNumRadaVybrat'
      'DefaultReport')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = rsPropModuleAfterLoad
    OnAfterSave = rsPropModuleAfterSave
    Left = 60
    Top = 128
  end
  object ActionList1: TActionList
    Left = 148
    Top = 60
    object actFDBrowse: TAction
      Caption = 'Faktury do'#353'l'#233
      OnExecute = actFDBrowseExecute
    end
  end
  object actlBGModule: TActionList
    Left = 60
    Top = 60
    object actBGBrowse: TAction
      Caption = 'F.do'#353'l'#233
      ImageIndex = 5
      OnExecute = actFDBrowseExecute
    end
  end
  object frrFD: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41453.026566145800000000
    ReportOptions.LastChange = 41453.026566145800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frrFDGetValue
    OnStartReport = 'Start tisku'
    Left = 260
    Top = 68
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxFDSeznam: TfrxDBDataset
    UserName = 'fdsFDSeznam'
    CloseDataSource = False
    DataSet = FDdmd.FDSeznam
    BCDToCurrency = False
    Left = 264
    Top = 120
  end
  object frxFD: TfrxDBDataset
    UserName = 'fdsFD'
    CloseDataSource = False
    DataSet = FDdmd.FakturyDO
    BCDToCurrency = False
    Left = 344
    Top = 120
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fdsFDPol'
    CloseDataSource = False
    DataSet = FDdmd.dtsFDPol
    BCDToCurrency = False
    Left = 424
    Top = 120
  end
end
