object ZSfrmModule: TZSfrmModule
  OldCreateOrder = False
  OnCreate = jfsEvidenceModuleCreate
  OnDestroy = gbEvidenceModuleDestroy
  OnInitModule = gbEvidenceModuleInitModule
  OnFinalModule = jfsEvidenceModuleFinalModule
  ModuleCaption = 'P'#345'epravy'
  ModuleName = 'P'#345'epravy'
  NewNumRadaJmeno = 'Rada1'
  NewNumRadaVybrat = False
  Height = 479
  Width = 741
  object rsModule: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = []
    RootSection = 'Modul.Prepravy'
    Properties.Strings = (
      'NewNumRadaJmeno'
      'NewNumRadaVybrat'
      'cxsVyrizeno.Color'
      'cxsVyrizeno.TextColor'
      'cxsVyrizeno.Font.Color'
      'DefaultReport')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = rsModuleAfterLoad
    OnAfterSave = rsModuleAfterSave
    Left = 276
    Top = 188
  end
  object actlZasilky: TActionList
    Images = dmdGlobal.imglDefault
    Left = 188
    Top = 100
    object actKTLAuta: TAction
      Caption = 'Typy vozidel...'
      ImageIndex = 26
      OnExecute = actKTLAutaExecute
    end
    object actKTLCoPlati: TAction
      Caption = 'Rozsah platby ...'
      ImageIndex = 26
      OnExecute = actKTLCoPlatiExecute
    end
    object actKTLUdalosti: TAction
      Caption = 'Ud'#225'losti ...'
      ImageIndex = 26
      OnExecute = KTLExecute
    end
    object actKTLTypyPreprav: TAction
      Caption = 'Druhy p'#345'eprav ...'
      ImageIndex = 26
      OnExecute = actKTLTypyPrepravExecute
    end
    object actKTLSablony: TAction
      Caption = #352'ablony...'
      ImageIndex = 26
      OnExecute = actKTLSablonyExecute
    end
    object actKTLPohyby: TAction
      Caption = 'Druhy pohyb'#367'...'
      ImageIndex = 26
      OnExecute = actKTLPohybyExecute
    end
    object actKTLPodminky: TAction
      Caption = 'Texty podm'#237'nek'
      ImageIndex = 26
      OnExecute = actKTLPodminkyExecute
    end
    object actBrowse: TAction
      Caption = 'P'#345'epravy'
      OnExecute = actBrowseExecute
    end
    object actZSPobExport: TAction
      Caption = 'Pobo'#269'ka - odesl'#225'n'#237' p'#345'eprav'
      ImageIndex = 42
      OnExecute = actZSPobExportExecute
    end
    object actZSPobImport: TAction
      Caption = 'Centr'#225'la - na'#269'ten'#237' p'#345'eprav'
      ImageIndex = 41
      OnExecute = actZSPobImportExecute
    end
  end
  object actlBGModule: TActionList
    Images = dmdGlobal.imglModul
    Left = 100
    Top = 100
    object actBGBrowse: TAction
      Caption = 'P'#345'epravy'
      Hint = 'Modul P'#345'epravy'
      ImageIndex = 2
      OnExecute = actBrowseExecute
    end
  end
  object frrZS: TfrxReport
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
    OnGetValue = frrZSGetValue
    OnStartReport = 'Start tisku'
    Left = 188
    Top = 188
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
  object frxZSSeznam: TfrxDBDataset
    UserName = 'fdsZSSeznam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SID=SID'
      'ZASILKA=ZASILKA'
      'TYP=TYP'
      'DATUM=DATUM'
      'INTOBJ=INTOBJ'
      'DISPECER=DISPECER'
      'INTSTREDISKO=INTSTREDISKO'
      'TYDEN=TYDEN'
      'DATPORIZENI=DATPORIZENI'
      'MESIC=MESIC'
      'PRIKAZCE=PRIKAZCE'
      'SUBSTRATINFO=SUBSTRATINFO'
      'DOPRAVCE=DOPRAVCE'
      'VOZIDLO=VOZIDLO'
      'AUTOSPZ=AUTOSPZ'
      'NSTAT=NSTAT'
      'NPSC=NPSC'
      'NMISTO=NMISTO'
      'VDATUM=VDATUM'
      'VSTAT=VSTAT'
      'VPSC=VPSC'
      'VMISTO=VMISTO'
      'HMBRUTTO=HMBRUTTO'
      'HMTEXT=HMTEXT'
      'PRIKAZ=PRIKAZ'
      'CENASMLUVNI=CENASMLUVNI'
      'CENAJEDNOTKA=CENAJEDNOTKA'
      'CENAJEDNOTKY=CENAJEDNOTKY'
      'CENAMENA=CENAMENA'
      'CENADOPRAVCE=CENADOPRAVCE'
      'CENAPLATCI=CENAPLATCI'
      'CENAPROVIZE=CENAPROVIZE'
      'CREADATE=CREADATE'
      'CREAID=CREAID'
      'UPDDATE=UPDDATE'
      'UPDID=UPDID'
      'INTPOZNAMKA=INTPOZNAMKA'
      'AOPKOD_OBJ=AOPKOD_OBJ'
      'AOPKOD_DOP=AOPKOD_DOP'
      'FDCELKEM=FDCELKEM'
      'FVCELKEM=FVCELKEM'
      'FVDPROVIZE=FVDPROVIZE'
      'STATEUSER=STATEUSER'
      'VYBER=VYBER'
      'JEFAKTURA=JEFAKTURA'
      'STAV=STAV'
      'STATEUSERCOLOR=STATEUSERCOLOR'
      'NAKLADKA=NAKLADKA'
      'VYKLADKA=VYKLADKA'
      'VYRIZENO=VYRIZENO'
      'ONCELKEM=ONCELKEM'
      'OVCELKEM=OVCELKEM'
      'KRATKEINFO=KRATKEINFO')
    DataSet = ZSdmd.ZasilkySeznam
    BCDToCurrency = False
    DataSetOptions = []
    Left = 364
    Top = 100
  end
  object frxZS: TfrxDBDataset
    UserName = 'fdsZS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SID=SID'
      'VYBER=VYBER'
      'ZASILKA=ZASILKA'
      'REF_ZSPODMINKY=REF_ZSPODMINKY'
      'REF_POTVRZENI=REF_POTVRZENI'
      'DATUM=DATUM'
      'INTOBJ=INTOBJ'
      'VOZIDLO=VOZIDLO'
      'AUTOSPZ=AUTOSPZ'
      'NSTAT=NSTAT'
      'NPSC=NPSC'
      'NMISTO=NMISTO'
      'VSTAT=VSTAT'
      'VPSC=VPSC'
      'VMISTO=VMISTO'
      'VDATUM=VDATUM'
      'HMBRUTTO=HMBRUTTO'
      'HMTEXT=HMTEXT'
      'PRIKAZ=PRIKAZ'
      'CENADOPRAVCE=CENADOPRAVCE'
      'CENAPLATCI=CENAPLATCI'
      'CENAPROVIZE=CENAPROVIZE'
      'AOPKOD_DOP=AOPKOD_DOP'
      'AOPKOD_OBJ=AOPKOD_OBJ'
      'SUBSTRATINFO=SUBSTRATINFO'
      'SUBSTRAT=SUBSTRAT'
      'CLO=CLO'
      'CENASMLUVNI=CENASMLUVNI'
      'CENAJEDNOTKY=CENAJEDNOTKY'
      'CENAJEDNOTKA=CENAJEDNOTKA'
      'CENASRAZKY=CENASRAZKY'
      'CENADPHPROC=CENADPHPROC'
      'CENADPH=CENADPH'
      'CENASUMA=CENASUMA'
      'CENASUMASDPH=CENASUMASDPH'
      'CENAMENA=CENAMENA'
      'CENAKURS=CENAKURS'
      'PODMINKY=PODMINKY'
      'POZNAMKA=POZNAMKA'
      'CREADATE=CREADATE'
      'CREAID=CREAID'
      'UPDDATE=UPDDATE'
      'UPDID=UPDID'
      'STAV=STAV'
      'DISPECER=DISPECER'
      'INTSTREDISKO=INTSTREDISKO'
      'TYP=TYP'
      'INTTYPZAZNAMU=INTTYPZAZNAMU'
      'MESIC=MESIC'
      'INTPOZNAMKA=INTPOZNAMKA'
      'D_NAZEV=D_NAZEV'
      'D_ADRESA=D_ADRESA'
      'D_MESTO=D_MESTO'
      'D_PSC=D_PSC'
      'D_KODZEME=D_KODZEME'
      'D_ICO=D_ICO'
      'D_DIC=D_DIC'
      'D_TELEFON=D_TELEFON'
      'D_FAX=D_FAX'
      'D_GSM=D_GSM'
      'D_EMAIL=D_EMAIL'
      'D_KODSTBS=D_KODSTBS'
      'D_SPLATNOST=D_SPLATNOST'
      'P_NAZEV=P_NAZEV'
      'P_ADRESA=P_ADRESA'
      'P_MESTO=P_MESTO'
      'P_PSC=P_PSC'
      'P_KODZEME=P_KODZEME'
      'P_ICO=P_ICO'
      'P_DIC=P_DIC'
      'P_TELEFON=P_TELEFON'
      'P_FAX=P_FAX'
      'P_GSM=P_GSM'
      'P_EMAIL=P_EMAIL'
      'P_KODSTBS=P_KODSTBS'
      'P_SPLATNOST=P_SPLATNOST'
      'D_POBOCKA=D_POBOCKA'
      'P_POBOCKA=P_POBOCKA'
      'PODMINKY_DOPRAVCE=PODMINKY_DOPRAVCE'
      'JEFAKTURA=JEFAKTURA'
      'P_POPIS=P_POPIS'
      'D_POPIS=D_POPIS'
      'KRATKEINFO=KRATKEINFO'
      'DATPORIZENI=DATPORIZENI'
      'OBJ_EMAILS=OBJ_EMAILS'
      'DOP_EMAILS=DOP_EMAILS'
      'CENASAZBADPH=CENASAZBADPH'
      'VYRIZENO=VYRIZENO')
    DataSet = ZSdmd.Zasilky
    BCDToCurrency = False
    DataSetOptions = []
    Left = 100
    Top = 188
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 276
    Top = 100
    PixelsPerInch = 96
    object cxsVyrizeno: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
  end
end
