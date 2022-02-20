object dmReport: TdmReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnInitModule = jfsEvidenceModuleInitModule
  NewNumRadaVybrat = False
  Height = 482
  Width = 735
  object frOLEObject1: TfrxOLEObject
    Left = 364
    Top = 276
  end
  object frDialogControls1: TfrxDialogControls
    Left = 100
    Top = 188
  end
  object frxJPEGExport: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 628
    Top = 188
  end
  object frxTIFFExport: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 364
    Top = 364
  end
  object frRichObject1: TfrxRichObject
    Left = 100
    Top = 364
  end
  object frCrossObject1: TfrxCrossObject
    Left = 452
    Top = 100
  end
  object frxRTFExport: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 188
    Top = 364
  end
  object frxPDFMail: TfrxPDFExport
    FileName = 'pokus25.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OnBeginExport = frxPDFMailBeginExport
    Compressed = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'BadTotem Software'
    Subject = 'BadTotem'#174' PDF export'
    Creator = 'BadTotem'#174' (http://www.aspedwin.cz)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 452
    Top = 276
  end
  object frBarCodeObject1: TfrxBarCodeObject
    Left = 100
    Top = 100
  end
  object frCheckBoxObject1: TfrxCheckBoxObject
    Left = 364
    Top = 100
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 276
    Top = 188
  end
  object frxHTMLExport: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = True
    FixedWidth = True
    PicsInSameFolder = True
    Background = True
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 452
    Top = 188
  end
  object frxBMPExport: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 188
    Top = 100
  end
  object frxXLSExport: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 452
    Top = 364
  end
  object frxDesigner: TfrxDesigner
    CloseQuery = False
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    OpenDir = 'sestavy'
    SaveDir = 'sestavy'
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 628
    Top = 100
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'#174
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 540
    Top = 364
  end
  object frxMailExport: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OnBeginExport = frxMailExportBeginExport
    ShowExportDialog = True
    FromMail = 'orka@lmss.cz'
    FromName = 'Jiri Fait'
    FromCompany = 'LM STEEL'
    SmtpHost = 'mail.lmss.cz'
    SmtpPort = 25
    Login = 'orka@lmss.cz'
    Password = 'orka'
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    OnSendMail = frxMailExportSendMail
    UseMAPI = True
    Left = 100
    Top = 276
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 364
    Top = 188
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 188
    Top = 188
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 276
    Top = 364
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 540
    Top = 100
  end
  object frrXXX: TfrxReport
    Version = '4.15'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\LMSS\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38232.802354409700000000
    ReportOptions.LastChange = 38232.802354409700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 628
    Top = 276
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
    end
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 188
    Top = 276
  end
  object frxODTExport1: TfrxODTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 276
    Top = 276
  end
  object fri1: TfrxIBZComponents
    DefaultDatabase = dmdSystem.IBOMainDB
    Left = 540
    Top = 188
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Compressed = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'BadTotem'#174' PDF export'
    Creator = 'BadTotem'#174' (http://www.aspedwin.cz)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 540
    Top = 276
  end
end
