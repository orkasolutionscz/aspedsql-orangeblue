object frmMainForm: TfrmMainForm
  Left = 401
  Top = 204
  Caption = 'A-SPED 5.0'
  ClientHeight = 638
  ClientWidth = 1099
  Color = clBtnShadow
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 618
    Width = 1099
    Height = 20
    Images = dmdGlobal.imglDefault
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.AutoHint = True
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Color = clBtnFace
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clNavy
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = [fsBold]
        PanelStyle.ParentFont = False
        MinWidth = 100
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 37
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = [fsBold]
        PanelStyle.ParentFont = False
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxnMain: TdxNavBar
    Left = 0
    Top = 24
    Width = 81
    Height = 594
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 1
    LookAndFeelSchemes.Flat = 8
    LookAndFeelSchemes.Standard = 8
    LookAndFeelSchemes.UltraFlat = 9
    LookAndFeelSchemes.Native = 18
    LookAndFeelSchemes.Office11 = 16
    LookAndFeelSchemes.Skin = 14
    View = 4
    OptionsImage.LargeImages = dmdGlobal.imglModul
    OptionsImage.SmallImages = dmdGlobal.imglModul
    object dngMainGroup1: TdxNavBarGroup
      Caption = 'Moduly'
      LinksUseSmallImages = False
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxiPrepravy
        end
        item
          Item = dxiPoptavky
        end
        item
          Item = dxiFVydane
        end
        item
          Item = dxiFDosle
        end
        item
          Item = dxiPrikazy
        end
        item
          Item = dxiStatistika
        end
        item
          Item = dxiDopisy
        end
        item
          Item = dxiAOP
        end
        item
          Item = dxiExit
        end>
    end
    object dxiAOP: TdxNavBarItem
      Action = AOPfrmModule.actBGBrowse
    end
    object dxiPrepravy: TdxNavBarItem
      Action = ZSfrmModule.actBGBrowse
    end
    object dxiPoptavky: TdxNavBarItem
      Action = POPfrmModule.actBGBrowse
    end
    object dxiFVydane: TdxNavBarItem
      Action = FVfrmModule.actBGBrowse
    end
    object dxiFDosle: TdxNavBarItem
      Action = FDfrmModule.actBGBrowse
    end
    object dxiStatistika: TdxNavBarItem
      Action = STfrmModule.actBGStatistika
    end
    object dxiPrikazy: TdxNavBarItem
      Action = FPUfrmModule.actBGBrowse
    end
    object dxiDopisy: TdxNavBarItem
      Action = DOCfrmModule.actBGBrowse
    end
    object dxiExit: TdxNavBarItem
      Caption = 'Konec'
      Hint = 'Ukon'#269'it aplikaci'
      LargeImageIndex = 7
      SmallImageIndex = 7
      OnClick = actExitExecute
    end
  end
  object ActionList1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 148
    Top = 60
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'Zav'#345#237't modul'
      HelpContext = 1440
      Hint = 'Uzav'#345#237't aktivn'#237' okno'
      ImageIndex = 28
      ShortCut = 119
    end
    object actExit: TAction
      Category = 'Formular'
      Caption = 'Konec'
      HelpContext = 1450
      Hint = 'Ukon'#269'it aplikaci'
      ImageIndex = 43
      OnExecute = actExitExecute
    end
    object actWindowCloseAll: TAction
      Category = 'Window'
      Caption = 'Zav'#345#237't v'#353'echna okna'
      Hint = 'Uzav'#345#237't v'#353'echna okna'
      OnExecute = actWindowCloseAllExecute
    end
    object actZobrazTLPAplikace: TAction
      Category = 'Nastroje'
      Caption = 'Panel Moduly'
      Checked = True
      Hint = 'Zobrazit panel Moduly'
      OnExecute = actZobrazTLPAplikaceExecute
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Uspo'#345#225'dat'
      ImageIndex = 30
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Dla'#382'dice &vodorovn'#283
      ImageIndex = 31
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Dla'#382'dice svisle'
      ImageIndex = 32
    end
    object actAppRegistrace: TAction
      Category = 'Help'
      Caption = 'Registrace....'
      Hint = 'Aktivov'#225'n'#237' aplikace po zakoupen'#237' licence'
      ImageIndex = 34
      OnExecute = actAppRegistraceExecute
    end
    object actWebUpdate: TAction
      Category = 'Help'
      Caption = 'Aktualizace z internetu'
      OnExecute = actWebUpdateExecute
    end
    object actTeamServis: TAction
      Category = 'Help'
      Caption = 'Vzd'#225'len'#225' podpora'
      ImageIndex = 36
      OnExecute = actTeamServisExecute
    end
    object actAbout: TAction
      Category = 'Help'
      Caption = '&Info o programu...'
      OnExecute = actAboutExecute
    end
    object actZobrazDefault: TAction
      Category = 'Nastroje'
      Caption = 'V'#253'choz'#237' nastaven'#237' panel'#367
      OnExecute = actZobrazDefaultExecute
    end
    object actUpdateKTL: TAction
      Category = 'Nastroje'
      Caption = 'Aktualizovat '#269#237'seln'#237'ky'
      OnExecute = actUpdateKTLExecute
    end
  end
  object psMainForm: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    Options = [poStoreFormPlacement]
    RootSection = 'MainOkno'
    Properties.Strings = (
      'actZobrazTLPAplikace.Checked'
      'actZobrazTLBStandard.Checked'
      'actZobrazTLBFiltry.Checked')
    WhenLoad = wlOnShow
    WhenSave = wsManual
    OnAfterLoad = psMainFormAfterLoad
    Left = 148
    Top = 118
  end
  object wuWebUpdata: TWebUpdate
    Agent = 'TWebUpdate'
    DateFormat = 'dd/mm/yyyy'
    DateSeparator = '/'
    ExtractCAB = True
    FTPPassive = True
    Logging = True
    LogFileName = 'WUPDATE.LOG'
    PostUpdateInfo.Enabled = False
    ShowDownloadProgress = True
    Signature = 'WebUpdate'
    TempDirectory = '.'
    TimeFormat = 'hh:nn'
    TimeSeparator = ':'
    UpdateUpdate = wuuSilent
    URL = 'http://www.aspedwin.cz/wu/asped-orange/asped-orange-update.INF'
    OnAppRestart = wuWebUpdataAppRestart
    Version = '2.2.0.3'
    Left = 236
    Top = 118
  end
  object wuUpdateWizard1: TWebUpdateWizard
    Caption = 'Aktualizace aplikace A-SPED SQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Language = WebUpdateWizardCzech1
    WebUpdate = wuWebUpdata
    Left = 324
    Top = 118
  end
  object WebUpdateWizardCzech1: TWebUpdateWizardCzech
    Welcome = 'Stiskn'#283'te spustit pro ov'#283#345'en'#237' existence nov'#233' verze aplikace ...'
    StartButton = 'Spustit'
    NextButton = 'Dal'#353#237
    ExitButton = 'Ukon'#269'it'
    RestartButton = 'Obnovit'
    CancelButton = 'Zru'#353'it'
    FailedDownload = 'Nepoda'#345'ilo se z'#237'skat novou verzi'
    GetUpdateButton = 'Z'#237'skat novou verzi'
    NewVersionFound = 'Nalezena nov'#225' verze'
    NewVersion = 'Nov'#225' verze'
    NoNewVersionAvail = 'Nov'#225' verze nen'#237' k dispozici.'
    NewVersionAvail = 'Nov'#225' verze je k dispozici.'
    CurrentVersion = 'Sou'#269'asn'#225' verze'
    NoFilesFound = 'Nenalezeny soubory nov'#233' verze'
    NoUpdateOnServer = #382#225'dn'#225' nov'#225' verze nenalezena ...'
    CannotConnect = 'Nebylo mo'#382'no se p'#345'ipojit nebo'
    WhatsNew = 'Co je nov'#233'ho'
    License = 'Licen'#269'n'#237' smlouva'
    AcceptLicense = 'Souhlas'#237'm'
    NotAcceptLicense = 'Nesouhlas'#237'm'
    ComponentsAvail = 'Dostupn'#233' sou'#269#225'sti aplikace'
    DownloadingFiles = 'Stahov'#225'n'#237' soubor'#367
    CurrentProgress = 'Stav aktu'#225'ln'#237'ho souboru'
    TotalProgress = 'Stav v'#353'ech soubor'#367
    UpdateComplete = 'Sta'#382'en'#237' nov'#233' verze ukon'#269'eno...'
    RestartInfo = 'Stiskn'#283'te obnovit pro aplikov'#225'n'#237' zm'#283'n.,'
    WhatsNewPopup = 'Otev'#345#237't v Pozn'#225'mkov'#233'm bloku'
    LicensePopup = 'Otev'#345#237't v Pozn'#225'mkov'#233'm bloku'
    Left = 412
    Top = 118
  end
  object dxbMain: TdxBarManager
    AlwaysMerge = True
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Database')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 236
    Top = 60
    DockControlHeights = (
      0
      0
      24
      0)
    object dxbMainBar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 253
      FloatTop = 178
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxiSoubor'
        end
        item
          Visible = True
          ItemName = 'dxiNastaveni'
        end
        item
          Visible = True
          ItemName = 'dxiAdresar'
        end
        item
          Visible = True
          ItemName = 'dxiSpedice'
        end
        item
          Visible = True
          ItemName = 'dxiFakturace'
        end
        item
          Visible = True
          ItemName = 'dxiZaznam'
        end
        item
          Visible = True
          ItemName = 'dxiVybery'
        end
        item
          Visible = True
          ItemName = 'dxiOkno'
        end
        item
          Visible = True
          ItemName = 'dxiHelp'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxiSoubor: TdxBarSubItem
      Caption = 'Soubor'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbLogin'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxiNastaveni: TdxBarSubItem
      Caption = 'Nastaven'#237
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxi1'
        end>
    end
    object dxiAdresar: TdxBarSubItem
      Caption = 'Adres'#225#345
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton32'
        end>
    end
    object dxiSpedice: TdxBarSubItem
      Caption = 'Spedice'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxb1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          Visible = True
          ItemName = 'dxBarButton39'
        end>
    end
    object dxiFakturace: TdxBarSubItem
      Caption = 'Fakturace'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton41'
        end>
    end
    object dxiZaznam: TdxBarSubItem
      Caption = 'Z'#225'znam'
      Category = 0
      MergeKind = mkMergeByCaption
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxiVybery: TdxBarSubItem
      Caption = 'V'#253'b'#283'ry'
      Category = 0
      MergeKind = mkMergeByCaption
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxiOkno: TdxBarSubItem
      Caption = 'Okno'
      Category = 0
      MergeOrder = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end
        item
          Visible = True
          ItemName = 'dxBarButton46'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          Visible = True
          ItemName = 'dxb2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton47'
        end
        item
          Visible = True
          ItemName = 'dxBarButton44'
        end
        item
          Visible = True
          ItemName = 'dxBarListWindows'
        end>
    end
    object dxiHelp: TdxBarSubItem
      Caption = 'N'#225'pov'#283'da'
      Category = 0
      MergeOrder = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton52'
        end
        item
          Visible = True
          ItemName = 'dxBarButton51'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton53'
        end>
    end
    object dxbLogin: TdxBarButton
      Action = dmdSystem.actLoginUser
      Category = 0
    end
    object dxbPrintMng: TdxBarButton
      Caption = 'Tiskov'#253' mana'#382'er...'
      Category = 0
      HelpContext = 1430
      Hint = 
        'Tiskov'#253' mana'#382'er obsahuje dostupn'#233' tiskov'#233#13#10'formul'#225#345'e a sestavy p' +
        'ro tento modul.'
      Visible = ivAlways
      ImageIndex = 12
      ShortCut = 16464
    end
    object dxBarButton1: TdxBarButton
      Caption = 'N'#225'hled'
      Category = 0
      HelpContext = 1360
      Hint = 'Z'#225'kladn'#237' sestava modulu'
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxiDBTools: TdxBarSubItem
      Caption = #218'dr'#382'ba datab'#225'ze'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxiExpImp: TdxBarSubItem
      Caption = 'Datov'#225' komunikace'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxiBackup: TdxBarSubItem
      Caption = 'Z'#225'lohov'#225'n'#237
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Export tabulky...'
      Category = 0
      Hint = 'Export tabulky'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Import tabulky...'
      Category = 0
      Hint = 'Import tabulky'
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Z'#225'lohovat datab'#225'zi...'
      Category = 0
      Visible = ivNever
    end
    object dxBarButton8: TdxBarButton
      Action = actExit
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = dmdSystem.actDBOpen
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = dmdSystem.actAppSetup
      Category = 0
    end
    object dxi1: TdxBarSubItem
      Caption = 'Seznamy'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton29'
        end>
    end
    object dxBarButton12: TdxBarButton
      Action = dmdSystem.actSetupUsers
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = dmdGlobal.actKTLDPH
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = dmdGlobal.actKTLJednotky
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = dmdGlobal.actKTLMeny
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = FVfrmModule.actKTLTexty
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = FVfrmModule.actKTLTypy
      Category = 0
    end
    object dxBarButton19: TdxBarButton
      Action = FVfrmModule.actKTLUhrady
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = FVfrmModule.actKTLUcty
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = ZSfrmModule.actKTLTypyPreprav
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = ZSfrmModule.actKTLSablony
      Category = 0
    end
    object dxBarButton23: TdxBarButton
      Action = ZSfrmModule.actKTLAuta
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = ZSfrmModule.actKTLCoPlati
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = ZSfrmModule.actKTLPohyby
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = ZSfrmModule.actKTLUdalosti
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = ZSfrmModule.actKTLPodminky
      Category = 0
    end
    object dxBarButton28: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Action = POPfrmModule.actKTLTyp
      Category = 0
    end
    object dxBarButton30: TdxBarButton
      Action = AOPfrmModule.actBrowse
      Category = 0
    end
    object dxBarButton31: TdxBarButton
      Action = AOPfrmModule.actKTLPSC
      Category = 0
    end
    object dxBarButton32: TdxBarButton
      Action = DOCfrmModule.actBrowse
      Category = 0
    end
    object dxBarButton33: TdxBarButton
      Action = ZSfrmModule.actBrowse
      Category = 0
    end
    object dxBarButton36: TdxBarButton
      Action = POPfrmModule.actBrowse
      Category = 0
    end
    object dxBarButton38: TdxBarButton
      Action = ZSfrmModule.actZSPobExport
      Category = 0
    end
    object dxBarButton39: TdxBarButton
      Action = ZSfrmModule.actZSPobImport
      Category = 0
    end
    object dxBarButton40: TdxBarButton
      Action = FVfrmModule.actFVBrowse
      Category = 0
    end
    object dxBarButton41: TdxBarButton
      Action = FPUfrmModule.actFPUBrowse
      Category = 0
    end
    object dxBarButton42: TdxBarButton
      Action = FDfrmModule.actFDBrowse
      Category = 0
    end
    object dxBarButton43: TdxBarButton
      Action = WindowCascade1
      Category = 0
    end
    object dxBarButton44: TdxBarButton
      Action = actWindowCloseAll
      Category = 0
    end
    object dxBarButton45: TdxBarButton
      Action = WindowTileHorizontal1
      Category = 0
    end
    object dxBarButton46: TdxBarButton
      Action = WindowTileVertical1
      Category = 0
    end
    object dxBarButton47: TdxBarButton
      Action = WindowClose1
      Category = 0
    end
    object dxBarButton48: TdxBarButton
      Caption = '&P'#345'ehled'
      Category = 0
      Visible = ivAlways
      ShortCut = 112
    end
    object dxBarButton49: TdxBarButton
      Caption = '&Jak pou'#382#237'vat n'#225'pov'#283'du'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton50: TdxBarButton
      Caption = '&Hled'#225'n'#237' v rejst'#345#237'ku'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton51: TdxBarButton
      Action = actAbout
      Category = 0
    end
    object dxBarButton52: TdxBarButton
      Action = actWebUpdate
      Category = 0
    end
    object dxBarButton53: TdxBarButton
      Action = actAppRegistrace
      Category = 0
    end
    object dxBarListWindows: TdxBarListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      OnClick = dxBarListWindowsClick
      OnGetData = dxBarListWindowsGetData
    end
    object dxBarButton3: TdxBarButton
      Action = STfrmModule.actDetailCeny
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = AOPfrmModule.actKTLPSC
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = AOPfrmModule.actKTLSkupiny
      Category = 0
    end
    object dxBarButton34: TdxBarButton
      Action = AOPfrmModule.actKTLZeme
      Category = 0
    end
    object dxBarButton35: TdxBarButton
      Action = actZobrazTLPAplikace
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxb1: TdxBarButton
      Action = STfrmModule.actStatistika
      Category = 0
    end
    object dxb2: TdxBarButton
      Action = actZobrazDefault
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actTeamServis
      Category = 0
    end
    object dxbBackup: TdxBarButton
      Action = dmdSystem.actDBBAckup
      Category = 1
    end
  end
  object AboutBox1: TjfsAboutBox
    AppName = 'A-SPED Win SQL X1'
    Copyright = 'Copyright '#169' 1996-2013 FAIT Software. All rights reserved.'
    Url = 'http://www.aspedwin.cz'
    Left = 328
    Top = 56
  end
  object dxtbMain: TdxTabbedMDIManager
    Active = True
    LookAndFeel.Kind = lfUltraFlat
    TabProperties.CloseButtonMode = cbmActiveTab
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
    Left = 408
    Top = 56
  end
  object cxLocalizer1: TcxLocalizer
    StorageType = lstResource
    Left = 480
    Top = 56
  end
end
