object DOCfrmModule: TDOCfrmModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnInitModule = gbEvidenceModuleInitModule
  OnFinalModule = jfsEvidenceModuleFinalModule
  ModuleCaption = 'Dopisy'
  ModuleName = 'Dopisy'
  NewNumRadaJmeno = 'Rada1'
  NewNumRadaVybrat = False
  Height = 479
  Width = 741
  object rsPropUser: TrsPropSaver
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Modul.Korespondence'
    Properties.Strings = (
      'NewNumRadaJmeno'
      'NewNumRadaVybrat'
      'DefaultReport')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = rsPropUserAfterLoad
    OnAfterSave = rsPropUserAfterSave
    Left = 68
    Top = 28
  end
  object ActionList1: TActionList
    Left = 164
    Top = 28
    object actBrowse: TAction
      Caption = 'Korespondece'
      OnExecute = actBrowseExecute
    end
  end
  object actlBGModule: TActionList
    Left = 160
    Top = 96
    object actBGBrowse: TAction
      Caption = 'Dopisy'
      ImageIndex = 4
      OnExecute = actBrowseExecute
    end
  end
  object frxDOC: TfrxDBDataset
    UserName = 'fdsDoc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SID=SID'
      'ZNACKA=ZNACKA'
      'VYBER=VYBER'
      'TYP=TYP'
      'AOPKOD=AOPKOD'
      'NAZEV=NAZEV'
      'ADRESA1=ADRESA1'
      'ADRESA2=ADRESA2'
      'ADRESA3=ADRESA3'
      'PSC=PSC'
      'ZEME=ZEME'
      'ICO=ICO'
      'DIC=DIC'
      'DATUM=DATUM'
      'URCENO=URCENO'
      'VASDOPIS=VASDOPIS'
      'VEC=VEC'
      'VYRIZUJE=VYRIZUJE'
      'DTEXT=DTEXT'
      'CREAID=CREAID'
      'CREADATE=CREADATE'
      'UPDID=UPDID'
      'UPDDATE=UPDDATE'
      'STAV=STAV'
      'OWNER=OWNER'
      'EX_FILENAME=EX_FILENAME'
      'EX_DOPIS=EX_DOPIS'
      'DOCEMAILY=DOCEMAILY')
    DataSet = DOCdmd.DOC
    BCDToCurrency = False
    Left = 344
    Top = 96
  end
  object frxDocSeznam: TfrxDBDataset
    UserName = 'fdsDocSeznam'
    CloseDataSource = False
    DataSet = DOCdmd.DOCSeznam
    BCDToCurrency = False
    Left = 264
    Top = 96
  end
  object frrDoc: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41512.797851794000000000
    ReportOptions.LastChange = 41512.797851794000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frrDocGetValue
    Left = 264
    Top = 32
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
