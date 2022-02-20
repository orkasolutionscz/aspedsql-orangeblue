object FVfrmModule: TFVfrmModule
  OldCreateOrder = False
  OnCreate = Sho
  OnInitModule = gbEvidenceModuleInitModule
  OnFinalModule = jfsEvidenceModuleFinalModule
  ModuleCaption = 'Faktury vydan'#233
  ModuleName = 'FVydan'#233
  NewNumRadaJmeno = 'Rada1'
  NewNumRadaVybrat = False
  Height = 479
  Width = 741
  object actModule: TActionList
    Images = dmdGlobal.imglDefault
    Left = 62
    Top = 38
    object actKTLTypy: TAction
      Caption = 'Typy faktur...'
      ImageIndex = 26
      OnExecute = fvKTLExecute
    end
    object actKTLUcty: TAction
      Caption = 'Seznam '#250#269't'#367'...'
      ImageIndex = 26
      OnExecute = fvKTLExecute
    end
    object actKTLUhrady: TAction
      Caption = 'Forma '#250'hrady'
      ImageIndex = 26
      OnExecute = fvKTLExecute
    end
    object actKTLTexty: TAction
      Caption = 'Texty...'
      ImageIndex = 26
      OnExecute = fvKTLExecute
    end
    object actFVBrowse: TAction
      Caption = 'Faktury vydan'#233
      OnExecute = actFVBrowseExecute
    end
  end
  object rsPropModule: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Modul.Faktury.Vydane'
    Properties.Strings = (
      'NewNumRadaJmeno'
      'NewNumRadaVybrat'
      'DefaultReport,"","DefaultReport",')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = Load
    OnAfterSave = Save
    Left = 160
    Top = 38
  end
  object actlBGModule: TActionList
    Images = dmdGlobal.imglModul
    Left = 62
    Top = 148
    object actBGBrowse: TAction
      Caption = 'F.vydan'#233
      ImageIndex = 3
      OnExecute = actFVBrowseExecute
    end
  end
  object frrFV: TfrxReport
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
    OnGetValue = frrFVGetValue
    OnStartReport = 'Start tisku'
    Left = 268
    Top = 36
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
  object frxFVSeznam: TfrxDBDataset
    UserName = 'fdsFVSeznam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SID=SID'
      'TYP=TYP'
      'VYBER=VYBER'
      'FAKTURA=FAKTURA'
      'SYMBVARIA=SYMBVARIA'
      'ZASILKA=ZASILKA'
      'REF_ZASILKA=REF_ZASILKA'
      'NAZEV=NAZEV'
      'ADRESA3=ADRESA3'
      'ZEME=ZEME'
      'ICO=ICO'
      'DIC=DIC'
      'DATVYSTAVENI=DATVYSTAVENI'
      'DATDANPOV=DATDANPOV'
      'DATSPLATNOST=DATSPLATNOST'
      'SUMAZAKLAD=SUMAZAKLAD'
      'SUMADPH=SUMADPH'
      'CELKEM=CELKEM'
      'CENASUMAKC=CENASUMAKC'
      'CENAKURS=CENAKURS'
      'CENALIKV=CENALIKV'
      'CENAMENA=CENAMENA'
      'CENAZALOHY=CENAZALOHY'
      'DATUHRAZENO=DATUHRAZENO'
      'STAV=STAV'
      'UPDID=UPDID'
      'UPDDATE=UPDDATE'
      'CREAID=CREAID'
      'CREADATE=CREADATE'
      'LIKVOK=LIKVOK'
      'STATEUSER=STATEUSER'
      'STATEUSERCOLOR=STATEUSERCOLOR'
      'UCTODATUM=UCTODATUM'
      'DOKLAD=DOKLAD')
    DataSet = FVdmd.FakturySeznam
    BCDToCurrency = False
    Left = 272
    Top = 152
  end
end
