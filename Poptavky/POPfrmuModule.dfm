object POPfrmModule: TPOPfrmModule
  OldCreateOrder = False
  OnInitModule = gbEvidenceModuleInitModule
  OnFinalModule = jfsEvidenceModuleFinalModule
  ModuleCaption = 'Popt'#225'vky a nab'#237'dky'
  ModuleName = 'POP'
  NewNumRadaJmeno = 'Rada1'
  NewNumRadaVybrat = False
  Height = 480
  Width = 696
  object rsModule: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Modul.Poptavky'
    Properties.Strings = (
      'NewNumRadaJmeno'
      'NewNumRadaVybrat'
      'DefaultReport')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = rsModuleAfterLoad
    OnAfterSave = rsModuleAfterSave
    Left = 112
    Top = 38
  end
  object actlBGModule: TActionList
    Images = dmdGlobal.imglModul
    OnChange = ModulBrowse
    Left = 114
    Top = 106
    object actBGBrowse: TAction
      Caption = 'Popt'#225'vky'
      Hint = 'Modul Popt'#225'vek a nab'#237'dek'
      ImageIndex = 9
      OnExecute = ModulBrowse
    end
  end
  object actlPoptavky: TActionList
    Images = dmdGlobal.imglDefault
    Left = 200
    Top = 106
    object actKTLTyp: TAction
      Caption = 'Popt'#225'vky - Typ'
      ImageIndex = 26
      OnExecute = actKTLTypExecute
    end
    object actBrowse: TAction
      Caption = 'Popt'#225'vky'
      OnExecute = ModulBrowse
    end
  end
  object frrModule: TfrxReport
    Version = '2022.1.3'
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
    OnGetValue = frrModuleGetValue
    OnStartReport = 'Start tisku'
    Left = 200
    Top = 40
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
      Frame.Typ = []
      MirrorMode = []
    end
  end
end
