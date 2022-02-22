object dmdGlobal: TdmdGlobal
  OldCreateOrder = False
  OnInitModule = gbDefaultModuleInitModule
  OnFinalModule = jfsDefaultModuleFinalModule
  Height = 527
  Width = 783
  object ActionList1: TActionList
    Images = imglDefault
    Left = 60
    Top = 60
    object actKTLMeny: TAction
      Caption = 'M'#283'ny a kurzy...'
      ImageIndex = 26
      OnExecute = KTLExecute
    end
    object actKTLDPH: TAction
      Caption = 'Sazby DPH...'
      ImageIndex = 26
      OnExecute = KTLExecute
    end
    object actKTLJednotky: TAction
      Caption = 'Jednotky ceny...'
      ImageIndex = 26
      OnExecute = KTLExecute
    end
    object actAopPsc: TAction
      Caption = 'actAopPsc'
    end
    object actUpdateKtl: TAction
      Caption = 'Aktualizovat '#269#237'seln'#237'ky'
      ImageIndex = 63
    end
  end
  object rsPropUser: TrsPropSaver
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Aplikace.Globalni'
    Properties.Strings = (
      'cxsRecArchive.Color'
      'cxsRecArchive.TextColor'
      'cxsRecStorno.Color'
      'cxsRecStorno.TextColor'
      'cxsFVDluh.Color'
      'cxsFVDluh.TextColor'
      'cxsFVHromadna.Color'
      'cxsFVHromadna.TextColor'
      'cxsFVUhrazeno.Color'
      'cxsFVUhrazeno.TextColor'
      'cxsFVVolna.Color'
      'cxsFVVolna.TextColor'
      'cxsFDDluh.TextColor'
      'cxsFDDluh.Color'
      'cxsFDUhrazeno.TextColor'
      'cxsFDUhrazeno.Color'
      'StyleDefaultController.Style.LookAndFeel.Kind'
      'StyleDefaultController.Style.LookAndFeel.NativeStyle'
      'UseCustomLayout,"","UseCustomLayout",'
      'StyleDefaultController.Style.Font.Name'
      'StyleDefaultController.Style.Font.Size')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = rsPropUserAfterLoad
    OnAfterSave = rsPropUserAfterSave
    Left = 606
    Top = 64
  end
  object dsFVDUS: TDataSource
    AutoEdit = False
    DataSet = AppCompsDM.dtsFVDUs
    Left = 228
    Top = 308
  end
  object dsZSUS: TDataSource
    Left = 316
    Top = 308
  end
  object dsMeny: TDataSource
    DataSet = AppCompsDM.KTLMeny
    Left = 52
    Top = 308
  end
  object dsDphProc: TDataSource
    DataSet = AppCompsDM.KTLDPH
    Left = 140
    Top = 308
  end
  object dsJednotky: TDataSource
    DataSet = AppCompsDM.KTLJednotky
    Left = 404
    Top = 308
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    NativeStyle = False
    Left = 357
    Top = 60
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 148
    Top = 128
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxsRecStorno: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsStrikeOut]
      TextColor = clWindowText
    end
    object cxsRecArchive: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGray
      TextColor = clWindowText
    end
    object cxStyle452: TcxStyle
    end
    object cxStyle453: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle454: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle455: TcxStyle
    end
    object cxStyle456: TcxStyle
    end
    object cxStyle457: TcxStyle
    end
    object cxStyle458: TcxStyle
    end
    object cxStyle459: TcxStyle
    end
    object cxStyle460: TcxStyle
    end
    object cxStyle461: TcxStyle
    end
    object cxStyle462: TcxStyle
    end
    object grdstyZakladni: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
    object grdstyBand: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle31
      Styles.Content = cxStyle34
      Styles.ContentEven = cxStyle35
      Styles.ContentOdd = cxStyle36
      Styles.FilterBox = cxStyle37
      Styles.Inactive = cxStyle42
      Styles.IncSearch = cxStyle43
      Styles.Selection = cxStyle46
      Styles.Footer = cxStyle38
      Styles.Group = cxStyle39
      Styles.GroupByBox = cxStyle40
      Styles.Header = cxStyle41
      Styles.Indicator = cxStyle44
      Styles.Preview = cxStyle45
      Styles.BandBackground = cxStyle32
      Styles.BandHeader = cxStyle33
      BuiltIn = True
    end
    object grdstyAspedOld: TcxGridTableViewStyleSheet
      Caption = 'Windows Standard'
      Styles.Content = cxStyle452
      Styles.ContentEven = cxStyle453
      Styles.ContentOdd = cxStyle454
      Styles.Inactive = cxStyle459
      Styles.Selection = cxStyle462
      Styles.Footer = cxStyle455
      Styles.Group = cxStyle456
      Styles.GroupByBox = cxStyle457
      Styles.Header = cxStyle458
      Styles.Indicator = cxStyle460
      Styles.Preview = cxStyle461
      BuiltIn = True
    end
  end
  object dsUcty: TDataSource
    DataSet = AppCompsDM.KTLFVUcty
    Left = 228
    Top = 366
  end
  object dsFVTexty: TDataSource
    DataSet = AppCompsDM.KTLFVTexty
    Left = 316
    Top = 366
  end
  object dsFVTyp: TDataSource
    DataSet = AppCompsDM.KTLFVTyp
    Left = 52
    Top = 366
  end
  object dsFVUhrada: TDataSource
    DataSet = AppCompsDM.KTLFVUhrada
    Left = 140
    Top = 366
  end
  object dsCoPlati: TDataSource
    DataSet = AppCompsDM.KTLDruhPlatby
    Left = 404
    Top = 250
  end
  object dsZSPodminky: TDataSource
    AutoEdit = False
    DataSet = AppCompsDM.KTLPodminky
    Left = 228
    Top = 192
  end
  object dsZSAuta: TDataSource
    AutoEdit = False
    DataSet = AppCompsDM.KTLAuta
    Left = 316
    Top = 192
  end
  object dsZSTypy: TDataSource
    DataSet = AppCompsDM.KTLTypy
    Left = 52
    Top = 192
  end
  object dsZSPohybyTypy: TDataSource
    DataSet = AppCompsDM.ZSKTLNakVyk
    Left = 140
    Top = 192
  end
  object dsPOPTypy: TDataSource
    DataSet = AppCompsDM.POPKTLTypy
    Left = 404
    Top = 192
  end
  object cxRebGlobal: TcxEditRepository
    Left = 524
    Top = 60
    object repFVDStatus: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KOD'
        end>
      Properties.ListSource = dsFVDUS
    end
    object repZSStatus: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KOD'
        end>
      Properties.ListSource = dsZSUS
    end
    object repMena: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'KOD'
      Properties.ListColumns = <
        item
          FieldName = 'KOD'
        end>
      Properties.ListSource = dsMeny
    end
    object repCena: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = ',0.####;-,0.####'
    end
    object repDphSazba: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'PROCDPH'
      Properties.ListColumns = <
        item
          FieldName = 'DPH_ID'
        end>
      Properties.ListSource = dsDphProc
    end
    object repJednotky: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'JEDNOTKA'
      Properties.ListColumns = <
        item
          FieldName = 'JEDNOTKA'
        end>
      Properties.ListSource = dsJednotky
    end
    object repUcet: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ZKRATKA'
      Properties.ListColumns = <
        item
          FieldName = 'ZKRATKA'
        end
        item
          FieldName = 'UCET'
        end>
      Properties.ListSource = dsUcty
    end
    object repFVTexty: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'POPIS'
        end>
      Properties.ListSource = dsFVTexty
    end
    object repFVTyp: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TYPFV'
      Properties.ListColumns = <
        item
          FieldName = 'POPIS'
        end>
      Properties.ListSource = dsFVTyp
    end
    object repFVUhrada: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'UHRADA'
      Properties.ListColumns = <
        item
          FieldName = 'UHRADA'
        end>
      Properties.ListSource = dsFVUhrada
    end
    object repCN1misto: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 1
      Properties.DisplayFormat = ',0.0;-,0.0'
    end
    object repCN2misto: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.00;-,0.00'
    end
    object repCN1mistoHiden: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 1
      Properties.DisplayFormat = ',0.#;-,0.#'
    end
    object repCN2MistoHiden: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.##;-,0.##'
    end
    object repCNKurz: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = ',0.0###;-,0.0###'
    end
    object repBoolChar: TcxEditRepositoryCheckBoxItem
      Properties.DisplayChecked = 'T'
      Properties.DisplayUnchecked = 'F'
      Properties.ValueChecked = 'T'
      Properties.ValueGrayed = ''
      Properties.ValueUnchecked = 'F'
    end
    object repBool: TcxEditRepositoryCheckBoxItem
    end
    object repColor: TcxEditRepositoryColorComboBox
      Properties.ClearKey = 16472
      Properties.ColorComboStyle = cxccsComboList
      Properties.ColorValueFormat = cxcvInteger
      Properties.CustomColors = <>
      Properties.DefaultColorStyle = cxdcClear
      Properties.DefaultDescription = 'Barva nen'#237' vybr'#225'na'
      Properties.DropDownRows = 10
      Properties.DropDownSizeable = True
      Properties.MaxMRUColors = 15
      Properties.NamingConvention = cxncX11
      Properties.PrepareList = cxplX11Ordered
    end
    object repZSPodminky: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Popis'
        end>
      Properties.ListSource = dsZSPodminky
    end
    object repZSCoPlati: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'KOD'
      Properties.ListColumns = <
        item
          FieldName = 'POPIS'
        end>
      Properties.ListSource = dsCoPlati
    end
    object repZSAuta: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.KeyFieldNames = 'TYP'
      Properties.ListColumns = <
        item
          FieldName = 'TYP'
        end>
      Properties.ListSource = dsZSAuta
    end
    object repZSTypy: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Typ'
      Properties.ListColumns = <
        item
          FieldName = 'Popis'
        end>
      Properties.ListSource = dsZSTypy
    end
    object repZSPohyby: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Kod'
      Properties.ListColumns = <
        item
          FieldName = 'Popis'
        end>
      Properties.ListSource = dsZSPohybyTypy
    end
    object repPOPTypy: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'KOD'
      Properties.ListColumns = <
        item
          FieldName = 'POPIS'
        end>
      Properties.ListSource = dsPOPTypy
    end
    object repPrefMail: TcxEditRepositoryComboBoxItem
    end
    object repDOCStatus: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KOD'
        end>
      Properties.ListSource = dsDOCStatus
    end
    object repPOPStatus: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'KOD'
        end>
      Properties.ListSource = dsPOPStatus
    end
    object repCenaRO: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = ',0.####;-,0.####'
      Properties.ReadOnly = True
    end
    object repDatum: TcxEditRepositoryDateItem
      Properties.ClearKey = 16472
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.InputKind = ikMask
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.WeekNumbers = True
    end
    object repDPHTyp: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Bez'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Sn'#237#382'en'#225
          Value = 1
        end
        item
          Description = 'Z'#225'kladn'#237
          Value = 2
        end>
    end
    object repUsers: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ZNACKA'
      Properties.ListColumns = <
        item
          FieldName = 'ZNACKA'
        end
        item
          FieldName = 'JMENO'
        end>
      Properties.ListSource = dsKTLUsers
    end
    object repCena0M: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0'
    end
    object repAdresaButton: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Glyph.Data = {
            D6020000424DD6020000000000003600000028000000100000000E0000000100
            180000000000A002000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFDCB488BE741FDCB488FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC18037BC721ABC721ABC721ABC721BBD721BBB6E15BB
            6C0EBB6D10BC7119BD731CBD721BBD721BBD721ABD721BBC7017BD7119D8B28F
            D7B28FD2A983D0A378CC9C6FCC9A6DD4A777D3A571CA9768CA996BCEA175D0A3
            7AD7AF8AD5AA83BB701ABE751FFDFBF8FFFFFFFEFDFDFDFBFAFAF7F3FCFEFEF9
            E0D4F9F3F2F5EEE7F8EEE6FCF1ECFCEEE7FFF5ECF3E1CDBA701ABE741EFAF4F0
            FDFAFAFCF9F8FEFBFAFFFFFFFDFEFEFCDBC4FDF5F1FDFDFDFDF5F1FCF1EAFBE8
            DEFEEDE0F1DAC4BA701ABE741EF9F3F0FCF9F9FBF8F7FEFAFAFDFBFCFCFEFEFC
            DCC7FCF4EFFBF9F6FBF2EDFCF1EAFAE8DFFEEDE1F0D8C4BA701ABE741EF8F4F1
            FBF9FAFBF8F8FDFBFAFEFDFDFCFEFEFBDCC7FDF5F0FCFAF7FBF3EEFBF0EAFBE9
            E0FEEEE1F0D9C4BA701ABE741EF8F4F1FBFAFAFBF8F7FCFBFAFDFCFCFCFEFEFB
            DBC7FDF5F0FCFAF8FCF4EEFDF2EAFCEAE0FFEDE2F1D9C5BB701ABE741EF9F4F1
            FCF9FAFCF8F8FDFBFAFDFDFCFCFEFEFCDCC7FCF5EFFDF9F7FCF3EDFCF1E9FBE9
            E1FEECE2F2DAC5BB701ABE741EFAF4F0FDF9F9FBF9F8FDFBFAFEFDFCFCFEFEFB
            DBC6FCF4EFFCFAF7FBF2EDFBF0E9FAEADFFFEDE1F2D9C6BB711BBE741EF9F3F0
            FCF9F8FBF7F6FDFAF9FDFCFCFCFEFEFBDCC7FCF5EFFCF9F5FAF2EDFBEFE8FAE9
            DFFEECE0F2DAC7BB711AD5A876FAF6F4FDFCFDFCFAFCFEFDFEFEFFFFFCFEFEF8
            DAC6FCF5F0FEFCFBFCF6F3FDF3EEFCECE3FEEFE5F2DCC9B88B59F1D9C5FADBC6
            FADBC6FADBC6FADBC6FADBC6FCEBDFFFFFFFFCEBDFF9DAC5F9DAC5F9DAC5F9DA
            C5F9DAC5FADAC5EDDDD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Kind = bkGlyph
        end
        item
          Glyph.Data = {
            D6020000424DD6020000000000003600000028000000100000000E0000000100
            180000000000A002000000000000000000000000000000000000FFFFFFEFEFFA
            B0B0E8E4E4E6EFEFEFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FAAEAE
            E4F2F2F4FBFBFBFFFFFFFFFFFF8686DC3636C39F9FDBE5E5E5F4F4F4FDFDFDFF
            FFFFFFFFFFFFFFFFFDFDFDA0A0E17A7AD0F4F4F4FDFDFDFFFFFFFDFDFF4747B7
            4141EC4141B4D1D1DEEBEBEBF9F9F9FFFFFFFFFFFFFEFEFEE9E9F54444B6BDBD
            E5F8F8F8FFFFFFFFFFFFFFFFFF6D6DCE3434D82929C57575C9E3E3E3F2F2F2FC
            FCFCFEFEFEF9F9F96666C85252BDF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFD7D8F7
            3031B32C2DE42E2EAFB9B9D9E8E8E8F6F6F6F9F9F99595DA2424AEBCBCE4F9F9
            F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9CE12627BE2728D25757BFE0E0E0EA
            EAEAA5A5DE2222B56D6DC9F5F5F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF7071CE2829CD2323B89191D2A7A7D72626B23E3EB2E4E4EFFCFCFCFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FC6C6CCA2829CF2727B928
            28B22C2CB2B5B5DFF7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
            FBFBFBF5F5F5C8C9E63A3BB54B4CE72E2EBE8989D0E6E6E6F2F2F2FBFBFBFEFE
            FEFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7E9E9EF9D9ED64648B87173EB4545C23C
            3CBD5656BCD2D2E5E8E8E8F1F1F1F9F9F9FEFEFEFFFFFFFFFFFFF9F9F9C1C3E4
            5658B85C5ECB8284EF4748BDA7A8DDB6B7E73A3AB14242B3C5C5E5E9E9E9EFEF
            EFF7F7F7FCFCFCFEFEFE7576C95254C0868AE9797CE04849B5C1C2E7FAFAFAFE
            FEFEE5E5F96F6FC93A3AB59C9CDBEBEBEDF0F0F0F6F6F6FCFCFC4444B1595CC4
            4D4FBB7779C8E4E5F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFC7C7EF6464C36969
            C6C2C2E9F4F4F6FBFBFBF4F4FDC6C8EDD7D8F2FDFDFDFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4F3B0B0E6EFEFFAFEFEFE}
          Kind = bkGlyph
        end>
      Properties.ReadOnly = True
    end
    object repFaktPolTexty: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = repFaktPolTextyPropertiesButtonClick
    end
    object repFaktPolTextyCombo: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'PLATBA_TEXT'
      Properties.ListColumns = <
        item
          FieldName = 'PLATBA_TEXT'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = dsKTLFaktPol
    end
    object repFVTextyHead: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 16472
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'POPIS'
        end>
      Properties.ListSource = dsFVTextyHead
    end
    object repProcenta: TcxEditRepositoryCurrencyItem
      Properties.DecimalPlaces = 1
      Properties.DisplayFormat = ',0.0 %'
      Properties.EditFormat = ',0.0'
    end
    object repMxPalete: TcxEditRepositoryColorComboBox
      Properties.ColorComboStyle = cxccsComboList
      Properties.ColorValueFormat = cxcvInteger
      Properties.CustomColors = <>
    end
    object repColor16: TcxEditRepositoryColorComboBox
      Properties.ColorValueFormat = cxcvInteger
      Properties.CustomColors = <>
      Properties.DefaultDescription = 'Nen'#237' vybr'#225'na'
    end
  end
  object dsDOCStatus: TDataSource
    DataSet = AppCompsDM.dtsDocSU
    Left = 56
    Top = 432
  end
  object cxModulesStyle: TcxStyleRepository
    Left = 52
    Top = 128
    PixelsPerInch = 96
    object cxsZSBezDopravce: TcxStyle
    end
    object cxsZSVydanaFV: TcxStyle
    end
    object cxsZSVydanaBezDosle: TcxStyle
    end
    object cxsZSFD: TcxStyle
    end
    object cxsFVUhrazeno: TcxStyle
    end
    object cxsFVHromadna: TcxStyle
    end
    object cxsFVVolna: TcxStyle
    end
    object cxsFVDluh: TcxStyle
    end
    object cxsFDDluh: TcxStyle
    end
    object cxsFDUhrazeno: TcxStyle
    end
  end
  object imglDefault: TImageList
    Left = 324
    Top = 128
    Bitmap = {
      494C010143007400780010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001001000001002000000000000010
      0100000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000297BDE00CEE7F70000000000FFFFFF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00E7E7E700E7E7
      E700EFEFEF00F7F7F70000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00000000009CA59C006B73
      6B004A4A4A00293131002121290021212900292929003939390063636B00C6C6
      C60000000000297BDE005AB5EF00297BDE00FFFFFF00EFEFEF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00317B0800317B0800CECE
      CE00D6D6D600E7E7E700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F70000000000424242004A4A
      4A0042424200525252005A5252005A5252004242420021212900181818002121
      21002984DE005AB5E700297BDE00FFFFFF004284E7004284E7004284E7004284
      E7004284E7004284E7004284E7004284E700317B08008CEF8C004AD64200317B
      08003973CE00D6D6D600EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFE7
      EF00D6D6D60042424200424242007B524200AD5A4200AD634A00B58C7B003184
      DE0052B5EF002984DE0000000000FFFFFF004284E70052EFFF0052E7FF0052E7
      FF0052E7FF005AE7FF0052E7FF00317B08008CEF8C00317B08008CEF8C004AD6
      4200317B0800CECECE00E7E7E700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007373730073737300737373007373
      73007373730073737300AD5A4200845A4A00CE9C7B00F7BD9400D6A58C00AD63
      4A0094A5BD00CECED60073737300FFFFFF004284E70094EFFF004AD6FF004AD6
      FF0052DEFF0052DEFF0052D6FF0052CEFF00317B08004AC6FF00317B08008CEF
      8C004AD64200317B0800E7E7E700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700BDA57B00BDA5
      8400BDA57B00B57B5A00BD8C7300FFCEAD00FFDEAD00F7C69C00F7B58400CE8C
      6B00B57B5A009C94840073737300000000004284E70094EFFF004ADEFF005252
      52005252520052525200525252005252520052525200525252004ABDFF00317B
      08008CEF8C00317B0800EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700CEA54A00CEA5
      5200CEA55200AD634200D6AD8400FFE7C600F7D6AD00F7CEA500F7C69C00E7AD
      8400AD634A00AD947B0073737300000000004284E70094EFFF004ADEFF004ADE
      FF0052E7FF0052E7FF0052DEFF0052D6FF0052D6FF0052CEFF004ABDFF0052CE
      FF00317B0800DEDEDE00F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700C69C5200BD9C
      5A00BD9C5200AD634200D6B59400FFF7E700F7DEBD00F7CEA500F7CEA500E7B5
      8C00AD634A00A5947B007373730000000000528CE700B5F7FF005AE7FF005252
      520052525200525252005252520052525200525252005252520042B5FF0052CE
      FF004284E700E7E7E700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700B58C4200B58C
      4A00B58C4A00B5734A00BD8C6300EFDED600FFFFEF00FFEFCE00FFDEBD00CE94
      7300B57B52009C846B0073737300000000006394EF00DEFFFF00B5F7FF009CEF
      FF007BE7FF0063DEFF005AD6FF0052CEFF0052C6FF004ABDFF004AB5FF005ACE
      FF004A8CE700E7E7E700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700B58C4A00AD84
      4200AD844200BD945A00AD634A00BD846300DEBDA500E7C6AD00C6947300AD63
      4A00B5844A00947B630073737300000000006394EF00DEFFFF00D6F7FF00CEF7
      FF00C6EFFF00B5E7F700ADDEF700A5DEEF009CD6F7009CD6F7009CD6FF009CE7
      FF00528CE700E7E7E700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700BD945A00BD9C
      6300BD945A00B58C5200B5844A00AD6B4200AD634200AD634200AD6B4200AD84
      4A00A56B3100947B63007373730000000000639CEF00E7FFFF00E7FFFF00E7FF
      FF00737B8400D6E7EF0010101000CEDEE700525A6300CEE7EF00CEEFF700BDEF
      FF006394EF00EFEFEF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700BD945A00C69C
      6B00CEA57300CEA57B00CEA57300C69C6B00BD9C6300BD945A00BD945A00B584
      5200AD7B42009C846B007373730000000000528CE7006B9CEF006B9CEF006B9C
      EF0052525A00292929000000000029313100081021005A8CDE006394E7006394
      EF004A8CE700FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700BD945A00C69C
      7300CEA57B00CEAD8400D6AD8C00DEB59400DEBD9C00E7BD9C00E7C6A500E7C6
      AD00EFCEAD00B5A594007373730000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADADAD007B7B7B00212121001818180039393900FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700BD945A00CE9C
      7300CEA57300D6AD7B00D6AD8400DEB58C00E7BD9400E7C69C00EFC6A500EFD6
      AD00FFDEBD00B5A594007373730000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300D6DEE700D6DEE700D6DE
      E700D6DEE700D6DEE700D6DEE700D6DEE700D6DEE700D6DEE700D6DEE700D6DE
      E700D6DEE700D6DEE7007373730000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0063636300FFFFFF0063636300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      730073737300737373007373730000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50063636300CECECE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00F7FFF70063A5
      5A00D6E7D600FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C000000000000000000000000000000000000000000B5848400FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500F7CE9C00F7CE9400F7CE
      9C00F7CE9C00F7D69C00B584840000000000000000000000000031ADDE0031AD
      DE0031ADDE0031ADDE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00000000008CBD8C004AA5
      42008CC6840000000000E7F7E700D6EFCE00C6E7BD00D6E7D600F7FFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C00FFDED600FFE7E700636B5A00FFBD
      BD00FFBDBD008C8C8C0000000000000000000000000000000000B5848400FFEF
      DE00F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6A500EFCE9C00EFCE
      9400EFCE9400F7D69C00B584840000000000000000000000000031ADDE00BDF7
      FF0094F7FF0084EFFF004AC6E7004AC6E7004AC6E70031ADDE0031ADDE0021AD
      DE0000000000000000000000000000000000F7FFF700E7EFE7005AA5520039BD
      390052AD4A0094D6940052B5520042A54200429C4200429C42004AA54A0094C6
      9400FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00FFDED600FFE7E700FFCECE00FFCECE00FFCE
      CE00FFBDBD00FFBDBD008C8C8C00000000000000000000000000B5847300FFF7
      E700FFE7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9400F7D69C00B584840000000000BD848400BD8C8C00BD8C8C00BD8C
      8400BD8C8400BD8C8400BD8484009CFFFF0094F7FF008CEFFF007BE7F7004AC6
      E7004AC6E700000000000000000000000000000000006BAD630073C6730063D6
      630042AD3900429C420039BD390039CE390042D6420042DE420039D6390042B5
      420042944200FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00FFE7E700FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFBDBD008C8C8C00000000000000000000000000B5847300FFF7
      EF00FFEFDE00F7E7D600BDBDD600F7DEC600F7DEBD00B5ADC600F7D6AD00F7D6
      A500EFCE9C00F7D69C00B584840000000000C6948C00EFD6BD00F7DEBD00EFCE
      AD00EFCE9C00EFCE9400E7BD94008CF7FF008CF7FF0094F7FF0094F7FF0094F7
      FF006BD6EF0031ADDE000000000000000000C6DEBD0073B56B007BD67B008CDE
      840073D673005ACE5A004ACE4A0042CE420039CE390039CE390042D6420039DE
      39004AB54200A5CEA50000000000FFFFFF000000000000000000000000000000
      000000000000000000008C8C8C00636B5A00FFCECE00FFCECE00424242004242
      420042424200636B5A008C8C8C00000000000000000000000000BD8C8400FFFF
      F700FFEFE700FFEFDE000839FF00ADADDE00ADADD6000839FF00F7D6B500F7D6
      AD00F7D6A500F7D69C00B584840000000000CEA59400F7E7D600FFEFD600F7DE
      BD008CAD6B0073A563004A944200008C1000088C10000073080073DEDE008CF7
      FF0073D6EF0031ADDE0000000000000000004A9442007BDE7B007BEF7B007BDE
      7B0084DE84006BBD63007BCE73005AC65A007BCE73007BD67B006BCE6B0063CE
      5A0063D663005AA55A0000000000FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE6300008C8C8C00FFEFEF00FFCECE00FFCECE0042424200FFCE
      CE00FFCECE00FFBDBD008C8C8C00000000000000000000000000BD8C8400FFFF
      FF00FFF7EF00FFEFE7007B8CEF000839FF000839FF007384E700F7DEBD00F7D6
      B500F7D6AD00F7D6A500B584840000000000D6B59C00F7EFDE00FFEFDE00F7E7
      CE00F7DEBD00F7DEAD00EFC69C008C9C6300189C2100088C1000007308008CF7
      FF0073D6EF0084EFFF0031ADDE000000000073B5730063B55A0063D6630073EF
      73007BEF7B006BCE6B0063AD5A00F7FFF700000000000000000000000000DEEF
      DE00A5D6A5004A9C4200EFF7EF0000000000CE630000FFEFDE00FFEFDE00FFE7
      CE00F7CE9C00F7CE9C008C8C8C00FFEFEF00FFE7E700FFCECE0042424200FFCE
      CE00FFBDBD00FFBDBD008C8C8C00000000000000000000000000CE9C8400FFFF
      FF00FFFFF700FFF7EF00ADB5EF000031FF000031FF00A5ADDE00F7DEC600F7DE
      BD00F7DEB500F7DEAD00B584840000000000E7BDA500FFEFEF00FFF7F700FFEF
      DE00F7E7CE00F7E7BD00BDBD84009CB573002194290018AD29000073080063CE
      BD005AC6CE008CF7FF005AD6EF000000000000000000000000007BB573004A9C
      420052B5520063D65A0063AD5A00CEE7CE000000000042A542005AB55200ADD6
      AD00FFFFFF0000000000DEEFDE0000000000CE630000F7F7F700F7F7F7000000
      8400FFE7CE0000008400000084008C8C8C00FFEFEF00FFDED600636B5A00FFBD
      BD00FFBDBD008C8C8C0000000000000000000000000000000000CE9C8400FFFF
      FF00FFFFFF00FFFFF7000839FF007B8CF7007B8CEF000839FF00F7E7CE00F7DE
      C600F7DEBD00FFDEB500B584840000000000EFCEAD00FFF7EF00FFFFFF00FFF7
      EF00FFEFDE00FFEFD600297B2100188C210039BD5A0039C65A0018A529000884
      100039A57B0094F7FF0094F7FF0031B5DE00000000004A9C4A0000000000F7FF
      F700000000007BBD7B0063AD5A0094C68C00000000005ABD5A0039B5310039B5
      39004A9C420073B56B00C6DEBD00FFFFFF00CE630000F7F7F700F7F7F7000000
      8400FFEFDE0000008400F7CE9C00F7CE9C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C000000000000000000000000000000000000000000DEAD8400FFFF
      FF00FFFFFF00FFFFFF007B94FF00FFF7EF00FFEFE7007B8CEF00FFE7D600F7E7
      CE00F7E7C600F7DEB500B584840000000000F7CEAD00FFF7EF00FFFFFF00FFFF
      FF00FFEFE700DEBDB5009C8C7B00187B180042C66B0052E78400189C2900006B
      000094DEEF00A5EFF700B5F7FF0052C6E70000000000A5CE9C004AB54A006BC6
      6B00BDDEBD000000000000000000000000000000000063C6630039B5390031D6
      290029DE210031CE29004AAD42006B9C6300CE630000F7F7F700000084000000
      8400F7F7F700FFEFDE0000008400FFE7CE00CE63000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEAD8400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFEF
      DE00E7DEC600C6BDAD00B584840000000000EFCEAD00FFF7F700FFFFFF00FFFF
      FF00F7EFF700C68C7B00D6AD9C00CED6B500218C290039BD5A000873080029AD
      D60031ADDE0031ADD60039B5DE0031ADDE00FFFFFF00FFFFFF004A9C4A004AD6
      4A0039C6390031BD31005ACE5A004AC64A0039C6390039C6390039BD390039BD
      310031C6310029D629004AB542009CCE9C00CE630000F7F7F700F7F7F7000000
      8400F7F7F7000000840000008400FFEFDE00CE63000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00F7E7D600BD84
      7B00BD847B00BD847B00B584840000000000E7B59400EFCEB500EFD6C600EFD6
      C600E7C6B500DEB59C00FFFFFF00FFF7EF00A5C69400429C4200A59C840031AD
      DE0031ADDE00000000000000000000000000F7FFF70000000000C6DEC6004A9C
      4A005ADE5A0052DE4A0042D6390039CE390042CE390042CE42004ACE4A004AC6
      4A005ACE5A0063C65A004A9C4A00FFFFFF00CE630000F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFEFDE00CE63000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CECE00BD84
      7B00EFB57300EFA54A00C6846B000000000000000000000000000000000031AD
      DE00F7CEAD00FFFFFF00FFFFFF00FFFFFF00EFDEDE00BD8C8400B58484000000
      000000000000000000000000000000000000000000000000000000000000C6DE
      C6004294420073CE73007BE77B007BE77B007BDE73006BCE6B004A9C420084DE
      84008CDE8C0073B56B00A5CEA500FFFFFF00CE630000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000CE63000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD84
      7B00FFC67300CE94730000000000000000000000000000000000000000000000
      0000EFBDA500FFF7F700FFF7F700FFFFF700E7CED600C68C7300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6E7D6007BBD730052A54A004A9C420052A54A0073BD7300BDDEB5006BB5
      6B007BD67B004A9C4A00FFFFFF00FFFFFF0000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD84
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      0000DEAD8C00E7B59C00E7B59C00E7BD9C00DEB5940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00E7EFE700DEEFDE00DEEFDE00F7F7F7000000000084BD
      7B005AA55A00B5D6AD00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7FFF700FFFFFF0000000000000000000000000000000000F7FFF700BDDE
      BD0063A55A0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEADAD00AD8484007B5A
      52005A423900634A42006B5A5200846B6B009C8C8400B5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEA5A500CE9C9C00D6A5
      9C00CE9C9C00BD8C8C009C736B007B5A5200634A42005A4239006B524A007B6B
      630094847B00AD9C940000000000000000000000000042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEA5A500CE9C9C00DEAD
      9C00FFD6A500EFC69C00EFB59C00D6A59C00CE9C9C00C6949400A5737300845A
      520073524A005A4239006B5A4A0094847B00000000005A5A5A006B6B6B006363
      6300636363006B6B6B006363630052636B006B6B6B006B6B63006B6B63006B6B
      63006B6B63006B6B63005A635A005A5A5A000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CECECE00CECECE00CECE
      CE00CECECE00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEA5A500EFC69C00CE9C
      9C00EFCEAD00FFE7B500FFDEAD00FFD6A500FFD6A500F7C69C00EFB59C00DEAD
      9C00CE9C9C00CE9C9C00A57B73006B5A5200000000006B6B6B00A5A5A5009C9C
      9C0094949400949494009C9C9C0094949400A5A5A5009C9C9C009C9C9C009C9C
      9C009494940094949400A5A5A5006B6B6B0000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF0000000000E7E7E700E7E7E70000000000E7E7E70000000000CECE
      CE00CECECE00CECECE00CECECE00000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD6000000000000000000CEA5A500F7D6AD00EFCE
      AD00CE9C9C00F7E7BD00FFF7C600FFEFBD00FFE7B500FFE7B500FFDEAD00FFD6
      A500F7C69C00CE9C9C00CE9C9C0063524A00000000007B7B7B00C6C6C600ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADA500C6C6C600ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00C6C6C6007B7B7B0000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF00E7E7E70000000000E7E7
      E700CECECE00CECECE00CECECE00000000000000000029ADD6008CF7FF008CF7
      FF008CEFFF0073DEF70073DEF70073DEF70073DEF70073DEF70029ADD60029AD
      D60073DEF70073DEF70029ADD6000000000000000000CEA5A500F7E7BD00FFF7
      C600E7CEB500D6ADA500FFFFD600FFFFD600FFFFCE00FFFFC600FFF7C600FFEF
      BD00D6A59C00DEAD9C00CE9C9C00634A4200000000008C8C8C00DEDEDE007B7B
      7B0084848400848484008484840073847B00CEC6C60084848400848484008484
      84008484840073847B00DEDEDE008C8C8C0000000000E7E7E700FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700E7E7E70000000000CECECE00000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DEF70029ADD600ADFF
      FF0029ADD60073DEF70029ADD6000000000000000000CEA5A500F7E7C600FFFF
      D600FFFFCE00DEB5A500DEBDB500FFFFE700FFFFDE00FFFFDE00FFFFD600D6AD
      A500DEB5A500FFD6A500CE9C9C00634A420000000000A5A5A500F7F7EF00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00E7EFEF00C6CECE00C6CECE00CECE
      CE00C6CECE00C6CECE00F7F7EF00A5A5A50000000000E7E7E700FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E70000000000CECECE00000000000000000029ADD6009CFFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70029ADD600ADFF
      FF00ADFFFF0029ADD60029ADD6000000000000000000CEA5A500F7E7CE00FFFF
      DE00F7E7C600D6ADA500CE9C9C00DEBDBD00F7E7DE00F7EFDE00D6ADA500DEBD
      AD00FFF7C600FFEFBD00CE9C9C00634A420000000000ADADAD00FFFFFF008484
      8400848484007B7B7B00848484008C847B00CEEFCE004AB54A0039B542004AAD
      420042BD420042BD4200FFFFFF00ADADAD0000000000E7E7E700FFFFFF000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000E7E7E70000000000CECECE00000000000000000029ADD6009CFFFF009CFF
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70029ADD60029AD
      D60029ADD60029ADD60029ADD6000000000000000000CEA5A500EFDECE00DEBD
      AD00CE9C9C00DED6D600DEEFF700CEC6C600BDADB500CE9C9C00C6A5A500DEBD
      AD00FFFFCE00FFFFCE00CE9C9C00634A420000000000B5B5B500FFFFFF00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00C6E7BD0000730800088C00000084
      000042942100298C1800FFFFFF00B5B5B50000000000E7E7E700FFFFFF000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000E7E7E700000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70073DE
      F70073DEF70073DEF70029ADD6000000000000000000CEA5A500CE9C9C00BDB5
      BD00FFFFFF00FFFFFF00F7FFFF00EFFFFF00E7FFFF00DEFFFF00DEF7F700CEAD
      AD00DEBDAD00FFFFD600CE9C9C0063524A0000000000BDBDBD00FFFFFF008484
      84007B7B7B00848484007B7B7B0073847B00FFEFD6009C944200CE946300CE9C
      5A00E7A56B00DEB58400F7EFF700BDBDBD0000000000E7E7E700FFFFFF000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000E7E7E700000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEF
      FF0073DEF70073DEF70029ADD6000000000000000000D6B5B5009C8C9C005294
      BD00FFFFFF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00EFFFFF00E7FFFF00D6EF
      F700B59C9C00DEBDB500CE9C9C00735A520000000000BDBDBD00FFFFFF00CECE
      CE00D6D6D600D6D6D600D6D6D600D6D6D600FFEFF700EFCEB500EFCEAD00EFCE
      AD00DEC6AD00F7D6BD00E7EFEF00BDBDBD0000000000E7E7E700FFFFFF000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000E7E7E700000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEF
      FF008CEFFF0073DEF70029ADD600000000000000000000000000BDADB500428C
      B500DEEFF700BDDEE7008CBDD60084B5CE00428CB500398CB500297BA5004273
      9C0073849C00CE9C9C00CE9C9C009C8C840000000000BDBDBD00FFFFFF006B6B
      6B006363630063636300636363006B6B6B00636B63006363630063636B006B63
      5A00636B6B006B6B5A00F7F7EF00CEBDC6000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF0029ADD60000000000000000000000000000000000317B
      A5004A7B9C00529CBD005ABDDE0073C6E7008CCEFF0094CEFF0094CEFF008CC6
      FF00B5A5BD00CE9C9C00BD9C94000000000000000000C6C6C600FFFFFF006363
      6300636363006B6B6B006363630063636B006B5A63006B6B6B0063636300636B
      6B00636363006B6B6300E7EFEF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD600000000000000000000000000000000000000
      0000C6BDB500CE9C9C00A5E7EF0094EFFF0094DEFF0094DEFF009CCEF700BDA5
      B500C6949400C6ADA500000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700F7F7F700FFFFF700FFFFF700F7FF
      F700FFFFFF00FFFFFF00F7F7EF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6BDB500CE9C9C00ADD6DE00A5DEE700ADC6D600CE9C9C00B594
      8C00C6BDB50000000000000000000000000000000000CECECE00C6C6C600CECE
      CE00C6C6C600CECECE00C6C6C600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6BDB500D6ADAD00D6ADAD00D6B5B500C6BDB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084840000848400008484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C7300BD8C7300BD8C
      7300BD8C7300BD8C7300BD8C7300BD8C7300BD8C7300BD8C7300BD8C7300BD8C
      7300BD8C7300BD8C7300BD8C7300B58484000000000000000000848484000084
      840000848400008484008484840000848400C6FFFF0084FFFF0084FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400BD8C7300000000000000000000848400C6FF
      FF0084FFFF0084FFFF0000848400848484000084840000848400008484008484
      84000084840084848400000000000000000000000000BD4A0000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000BD4A000000000000C6A59C00FFEFDE00FFD6B500FFD6
      B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6
      B500FFD6B500FFD6B500B5848400BD8C73000000000000000000848484000084
      8400008484000084840084848400000000000000000000848400C6C6C600C6C6
      C600C6C6C60000848400000000000000000000000000BD4A00008C2900008C29
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      00008C2900008C290000BD4A000000000000C6A59C00FFEFDE00FFD6B5000000
      0000FFEFE70000000000FFEFE70000000000FFEFE70000000000FFEFE7000000
      0000FFEFE700FFD6B500B5848400BD8C73000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000C6C60000C6
      C60000C6C60000848400000000000000000000000000BD4A00008C2900008C29
      00008C2900008C290000FFFFFF008C2900008C2900008C2900008C2900008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C2900008C2900008C2900008C2900008C290000FFFFFF008C2900008C29
      00008C2900008C290000BD4A000000000000C6A59C00FFEFDE00FFD6B500FFD6
      B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6
      B500FFD6B500FFD6B500B5848400BD8C730000000000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A000000848400C6C6C600C6C6
      C600C6C6C60000848400005A0000005A000000000000BD4A00008C2900008C29
      00008C290000FFFFFF00FFFFFF008C2900008C2900008C2900008C2900008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C2900008C2900008C2900008C2900008C290000FFFFFF00FFFFFF008C29
      00008C2900008C290000BD4A000000000000D6B5AD00FFEFDE00FFD6B5000000
      0000FFEFE70000000000FFEFE70000000000FFEFE70000000000FFEFE7000000
      0000FFEFE700FFD6B500B5848400BD8C730000000000005A0000008400000084
      000000C6000000C6000000C6000000C6000000C600000084840000C6C60000C6
      C60000C6C6000084840000840000005A000000000000BD4A00008C2900008C29
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C2900008C290000BD4A000000000000D6B5AD00FFEFDE00FFD6B500FFD6
      B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6
      B500FFD6B500FFD6B500B5848400BD8C730000000000005A00000084000000C6
      000084FF840084FF840084FF8400424242004242420000848400FFFFFF0084FF
      FF0084FFFF000084840000840000005A000000000000BD4A00008C2900008C29
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C2900008C290000BD4A000000000000CEB5AD00FFEFDE00B5848400D6B5
      AD00D6B5AD00D6B5AD00D6B5AD00D6B5AD00D6B5AD00D6B5AD00FFD6B500FFD6
      B500FFD6B500FFD6B500B5848400BD8C730000000000005A000000C60000C6FF
      C600C6FFC60084FF840042424200C6C6C600C6C6C60000848400008484000084
      84000084840084FF840000C60000005A000000000000BD4A00008C2900008C29
      00008C290000FFFFFF00FFFFFF008C2900008C2900008C2900008C2900008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C2900008C2900008C2900008C2900008C290000FFFFFF00FFFFFF008C29
      00008C2900008C290000BD4A000000000000E7C6B500FFEFDE00B5848400FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00D6B5AD00FFD6B500FFD6
      B500FFD6B500FFD6B500B5848400BD8C730000000000005A000000C60000C6FF
      C600C6FFC600C6FFC60042424200C6FFFF00C6C6C600C6C6C6004242420084FF
      840084FF840084FF840000C60000005A000000000000BD4A00008C2900008C29
      00008C2900008C290000FFFFFF008C2900008C2900008C2900008C2900008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C2900008C2900008C2900008C2900008C290000FFFFFF008C2900008C29
      00008C2900008C290000BD4A000000000000E7C6B500FFEFDE00B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400FFD6B500FFD6
      B500FFD6B500FFD6B500B5848400BD8C730000000000005A00000084000000C6
      0000C6FFC600C6FFC600C6FFC60042424200424242004242420084FF840084FF
      840084FF840000C6000000840000005A000000000000BD4A00008C2900008C29
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      0000BD4A0000FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF00BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      00008C2900008C290000BD4A000000000000E7C6B500FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFEFDE00B5848400BD8C730000000000005A0000008400000084
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60084FF840084FF840084FF
      840000C600000084000000840000005A000000000000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A00000000000000000000E7C6B500E7C6B500E7C6
      B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6
      B500E7C6B500E7C6B500E7C6B5000000000000000000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018395200183952001839
      5200183952001839520018395200183952001839520018395200183952001839
      5200183952000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018395200009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE0000639C001839520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018395200009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE0000639C0000639C0018395200000000000000000000000000000000006B6B
      6B009C9C9C00636363006B6B6B0084848400ADADAD00BDBDBD00BDBDBD00A5A5
      A5008C8C8C009494940000000000000000000000000000000000000000008484
      84009C9C9C00737373006363630073737300ADADAD00B5B5B500BDBDBD00A5A5
      A500848484008484840000000000000000000000000000000000000000008484
      84009C9C9C00737373006363630073737300ADADAD00B5B5B500BDBDBD00A5A5
      A5008484840084848400000000000000000018395200009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE0000639C0000639C0000639C00183952000000000000000000000000006363
      6300BDBDBD006B6B6B006B6B6B008C8C8C00ADADAD00C6C6C600D6D6D600BDBD
      BD00A5A5A500ADADAD0000000000000000000000000000000000000000004A4A
      4A00DEDEDE0084848400636363007B7B7B00A5A5A500BDBDBD00D6D6D600C6C6
      C600ADADAD009C9C9C0000000000000000000000000000000000000000004A4A
      4A00DEDEDE0084848400636363007B7B7B00A5A5A500BDBDBD00D6D6D600C6C6
      C600ADADAD009C9C9C00000000000000000018395200009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE0000639C0000639C0000639C00183952000000000000000000000000005A5A
      5A00BDBDBD006B6B6B006B6B6B0084848400ADADAD00C6C6C600D6D6D600BDBD
      BD00A5A5A500ADADAD0000000000000000000000000000000000000000004242
      4200D6D6D600848484006363630073737300A5A5A500B5B5B500D6D6D600C6C6
      C600ADADAD009C9C9C0000000000000000000000000000000000000000004242
      4200D6D6D600848484006363630031313100B5B5B500B5B5B500D6D6D600C6C6
      C600ADADAD009C9C9C00000000000000000018395200009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE0000639C0000639C0000639C00183952000000000000000000000000006363
      6300ADADAD00636363005A5A5A006B6B6B007373730084A594000094000073AD
      84009C9C9C008C8C8C0000000000000000000000000000000000000000004A4A
      4A00DEDEDE0084848400636363007B7B7B00A5A5A500B5B5B500D6D6D600C6C6
      C600A5A5A5009494940000000000000000000000000000000000000000004A4A
      4A00DEDEDE00848484006363630052424A0029637B0052636B00D6D6D600C6C6
      C600A5A5A50094949400000000000000000018395200009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE0000639C0000639C0000639C00183952000000000000000000000000005A5A
      5A00A5A5A500636363006363630084848400ADADAD0000C6000073D67B000094
      00008C8C8C008C8C8C0000000000000000000000000000000000000000004A4A
      4A00A5A5A500737373005A5A5A0073737300A5A5A500B5B5B500BDBDBD00A5A5
      A500848484008484840000000000000000000000000000000000000000004A4A
      4A00A5A5A500737373005A5A5A00737373008CF7FF002973F70008426300A5A5
      A500848484008484840000000000000000001839520031CEFF0031CEFF0031CE
      FF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CE
      FF0000639C0000639C0000639C0018395200000000000000000000000000635A
      5A00C6BDBD006B6B6B006B636B0084848400ADADAD0000C6000073D67B000094
      0000A5A5A500ADADAD0000000000000000000000000000000000000000004242
      4200D6D6D600848484006363630073737300A5A5A500B5B5B500D6D6D600C6C6
      C600ADADAD009C9C9C0000000000000000000000000000000000000000004242
      4200D6D6D600848484006363630073737300BDBDBD0042E7F7002973F7002152
      6B00ADADAD009C9C9C000000000000000000000000001839520000639C000063
      9C0000639C00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE0031CEFF0000639C0000639C00183952000000000000000000000000005A63
      6300BDBDBD006B6B6B0052735200638463007B9C7B0000C6000073D67B000094
      00007B9C7B007B9C840000000000000000000000000000000000000000004242
      4200D6D6D6008C848C0063636B006B84C6000021A5000021A5000021A5000021
      A5000021A5000021A5000021A500000000000000000000000000000000004242
      4200D6D6D6008C848C0063636B007B737300A5A5A500B5B5B50042E7F7002973
      F70021526B009C9C9C0000000000000000000000000000000000183952000063
      9C0000639C00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE00009CCE0031CEFF0000639C0018395200000000000000000000000000635A
      5A00B5B5B50063636B00429C4A00009400000094000000C600004ABD5A000094
      00000094000000940000319C4200000000000000000000000000000000004242
      4200DEDEDE008C848C00636363000021A5000029E7000029E7000029E7000029
      E7000029E7000029E7000029E7000021A5000000000000000000000000004242
      4200DEDEDE008C848C00636363007B7B7B00A5A5A500B5B5B500BDBDBD0042E7
      F7002973F7000842630000000000000000000000000000000000000000001839
      520000639C00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE00009CCE00009CCE0031CEFF0018395200000000000000000000000000635A
      5A00A5A5A500636B63005AAD5A0084CE7B0084CE7B0084CE7B0073D67B0000C6
      000000C6000000C600005AAD5A00000000000000000000000000000000005242
      4A00A5A5A50073737300636363006B84C6000021A5000021A5000021A5000021
      A5000021A5000021A5000021A500000000000000000000000000000000005242
      4A00A5A5A500737373006363630073737300A5A5A500B5B5B500CECECE00B5B5
      B50042A5DE008C847B0031313100000000000000000000000000000000000000
      0000183952000063AD000073C6000073BD000073C6000073BD000073BD000073
      BD000073BD000073BD000063CE0018395200000000000000000000000000635A
      5A00C6BDBD006B6B6B0052735200738C7B008CA58C0000C6000073D67B000094
      0000739473007B9C7B0000000000000000000000000000000000000000005242
      4A00E7DED6008C848C006B63630073737300A5A5A500ADADAD00CECECE00C6C6
      C600A5A5A5009494940000000000000000000000000000000000000000005242
      4A00E7DED6008C848C006B63630073737300A5A5A500ADADAD00CECECE00BDBD
      BD00A5A5A500FFFFFF007363520021214A000000000000000000000000000000
      000000316300004A8C00005A9C0000529C00005A9C0000529C0000529400005A
      9C00005A9C0010529C001839520000000000000000000000000000000000635A
      5A00B5B5AD006B6B6B00636363007B8484009C9C9C0000C6000073D67B000094
      00009C9C9C00A5A5A50000000000000000000000000000000000000000005242
      4A00E7DED6008C848C0063635A006B736B009C9C9C00ADADAD00CECECE00BDBD
      BD00A5A5A5009494940000000000000000000000000000000000000000005242
      4A00E7DED6008C848C0063635A006B736B009C9C9C00ADADAD00CECECE00BDBD
      BD00A5A5A50094949400299CEF002973F7000000000018395200183952001839
      5200183952000031630000316300003163000031630000316300003163000031
      630000639C001839520000000000000000000000000000000000000000005A5A
      5A0094949400636363005A5A5A006B6B6B007373730000C6000073D67B000094
      00008C8C8C008C8C8C0000000000000000000000000000000000000000005242
      4A00A5A5A50073737300635A6B006B736B0094949400ADADAD00CECECE00BDBD
      BD00A5A5A5008C8C8C0000000000000000000000000000000000000000005242
      4A00A5A5A50073737300635A6B006B736B0094949400ADADAD00CECECE00BDBD
      BD00A5A5A5008C8C8C00000000000010E70018395200009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE00183952000000000000000000000000000000000000000000000000004A52
      4A00949494008484840094948C0094949400949494007B9484006B946B006B9C
      7B008C8C8C007B7B7B0000000000000000000000000000000000000000004A52
      4A00ADADB5008C8C8C009CA59400A5A5A500A5A5A500A5A5A500ADADAD00A5A5
      A5008C8C8C007B7B7B0000000000000000000000000000000000000000004A52
      4A00ADADB5008C8C8C009CA59400A5A5A500A5A5A500A5A5A500ADADAD00A5A5
      A5008C8C8C007B7B7B0000000000000000001839520000316300003163000031
      6300003163000031630000316300003163000031630000316300003163000031
      6300000000000000000000000000000000000000000000000000000000000000
      00008C847B007B737B00736B730073737B007373730073737300737373007B7B
      7B00848484000000000000000000000000000000000000000000000000000000
      00008C847B007B737B00736B730073737B007373730073737300737373007B7B
      7B00848484000000000000000000000000000000000000000000000000000000
      00008C847B007B737B00736B730073737B007373730073737300737373007B7B
      7B00848484000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A00000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000004A080010AD310010AD
      290008A5180000A5100010AD2100D6F7DE00E7F7EF004AC65200009C0800009C
      0800009C080000A50800004A0000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B080000420000005200000884210010B5420010AD
      2900089C1800009C0800089C180084D68C00FFFFFF00F7FFF70042BD4A00009C
      0800009C080000A50800007B0800004200000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A5080000940800004200000052000010A5420018B54A0010AD
      310000A51000009C0800009C0800009C080073D67B00FFFFFF00F7FFF70042BD
      4A00009C080000A508000094080000420000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD840000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C60000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A0000006B100021B5520021B55200BDEF
      CE00BDEFC600B5EFC600B5EFC600B5EFC600B5EFC600F7FFF700FFFFFF00EFFF
      EF0052C65A00009C0800009C0800004A00000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B552002184290000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000873100039BD6B0029BD5A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADE7B500009C0800009C0800005200000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C002184290000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000873100052C67B0042C6730052C6
      7B0052CE840052CE840052CE84004AC673007BD69400F7FFF700FFFFFF0094DE
      A50018AD310008A51800009C080000420000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD840000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C60000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C080000420000087310004ABD6B0084DEA50021B5
      520018B54A0021B5520021B5520052C67B00E7F7EF00FFFFFF0084DE9C0010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE9C0010AD310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520021B55200ADE7C60094DEB50018B54A0010AD390010AD
      310010AD2900109C2100006B0800000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C60094DEB5007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000424242004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84009C9C9C00737373006363630073737300ADADAD00B5B5B500BDBDBD00A5A5
      A50084848400848484000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300424242004242
      42008C4A390094521800B55A0000424242008C6363008C6363008C6363008C63
      63008C6363008C63630000000000000000000000000000000000000000004A4A
      4A00BDBDBD0084848400636363007B7B7B00A5A5A500BDBDBD00D6D6D600C6C6
      C600ADADAD009C9C9C000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300B55A0000B55A
      0000AD5A1000B55A0000C65A00004242420008A5180000840000008400000084
      000008A518008C63630000000000000000000000000000000000000000004242
      4200BDBDBD008484840063636300737373000842630008426300D6D6D600C6C6
      C600ADADAD009C9C9C000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300C65A0000C65A
      0000C65A0000C65A0000CE6300004242420031C64A0010AD180010AD180010AD
      1800009C00008C63630000000000000000000000000000000000000000004A4A
      4A00BDBDBD0084848400636363007B7B7B008CF7FF00ADCEE70008426300C6C6
      C600A5A5A500949494000000000000000000000000000000000000000000BD4A
      00008C2900008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300C65A0000CE63
      0000CE630000CE630000CE6300004242420031C64A0021BD310021BD310029C6
      4A0042D66B008C63630000000000000000000000000000000000000000004A4A
      4A00A5A5A500737373005A5A5A0073737300ADCEE7008CF7FF00ADCEE7000842
      630084848400848484000000000000000000000000000000000000000000BD4A
      00008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300CE630000CE6B
      0000CE6B0000CE6B0000D6730000424242000084000021AD310029BD390031C6
      4A0042D66B008C63630000000000000000000000000000000000000000004242
      4200BDBDBD00848484006363630073737300A5A5A500ADCEE7008CF7FF00ADCE
      E700084263009C9C9C000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300CE6B0000CE6B
      0000DE841800FFF7DE00D673000042424200008400000084000000840000009C
      0000009C00008C63630000000000000000000000000000000000000000004242
      4200BDBDBD008C848C0063636B007B737300A5A5A500B5B5B500ADCEE7008CF7
      FF004ABDFF008CF7FF004ABDFF0000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C29
      000084000000000000000000000000000000000000008C636300D6730000D673
      0000DE7B0800D6730000D673000042424200FFE7C600FFE7C600FFE7C600FFE7
      C600FFE7C6008C63630000000000000000000000000000000000000000004242
      4200BDBDBD008C848C00636363007B7B7B00A5A5A500B5B5B500084263008CF7
      FF008CF7FF008CF7FF008CF7FF004ABDFF00000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF008C2900008C29
      000084000000000000000000000000000000000000008C636300D6730000D673
      0000DE7B0000DE7B0000DE7B000042424200FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD6008C63630000000000000000000000000000000000000000005242
      4A00A5A5A500737373006363630073737300A5A5A500B5B5B500CECECE00ADCE
      E7008CF7FF00299CEF008CF7FF008CF7FF00000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C290000FFFFFF00FFFFFF008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300DE7B0000E77B
      0000E77B0000E77B0000EF7B000042424200FFF7D600FFF7DE00FFF7DE00FFF7
      DE00FFF7DE008C63630000000000000000000000000000000000000000005242
      4A00BDBDBD008C848C006B63630073737300A5A5A500ADADAD00CECECE00C6C6
      C600ADCEE7008CF7FF008CF7FF004ABDFF00000000000000000000000000BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      000084000000000000000000000000000000000000000000000000000000BD4A
      00008C2900008C2900008C2900008C2900008C2900008C2900008C2900008C29
      000084000000000000000000000000000000000000008C636300FF840000F784
      0000EF7B0000EF7B0000EF7B000042424200FFF7D600FFF7D600FFF7D600FFF7
      D600FFF7D6008C63630000000000000000000000000000000000000000005242
      4A00BDBDBD008C848C0063635A006B736B009C9C9C00ADADAD00CECECE00BDBD
      BD00A5A5A500ADCEE7004ABDFF0000000000000000000000000000000000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      000084000000000000000000000000000000000000000000000000000000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      000084000000000000000000000000000000000000008C636300FF840000FF84
      0000F7840800F7840000FF84000042424200FFF7D600FFF7D600FFF7D600FFF7
      D600FFF7D6008C63630000000000000000000000000000000000000000005242
      4A00A5A5A50073737300635A6B006B736B0094949400ADADAD00CECECE00BDBD
      BD00A5A5A5008C8C8C000000000000000000000000000000000000000000BD4A
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000000000000000000000000000BD4A
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008400000000000000000000000000000000000000000000008C6363008C63
      6300DE732900E77B1800FF840000424242008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000004A52
      4A00ADADB5008C8C8C009CA59400A5A5A500A5A5A500A5A5A500ADADAD00A5A5
      A5008C8C8C007B7B7B000000000000000000000000000000000000000000BD4A
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000000000000000000000000000BD4A
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      00008C6363008C6363008C636300424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C847B007B737B00736B730073737B007373730073737300737373007B7B
      7B0084848400000000000000000000000000000000000000000000000000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      000084000000000000000000000000000000000000000000000000000000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073849C0000428C000000
      000000000000000000000000000000000000B5735200B5735200C6421800C642
      2100CE4A2900C64A29009C4A29008C5242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84009C9C9C00737373006363630073737300ADADAD00B5B5B500BDBDBD00A5A5
      A500848484008484840000000000000000000000000000000000000000008484
      84009C9C9C00737373006363630073737300ADADAD00B5B5B500BDBDBD00A5A5
      A500848484008484840000000000000000000000000000000000000000000000
      000000000000000000002173AD001873AD0029528400297BB50029A5D600295A
      8C00005294000863A5000000000000000000C6421800C6421800E75A3900F763
      4A00FF6B5A00EF634A00E75A3900EF5A42008C4A290063735A00397339003173
      3100297B290029732900316B31005A735A000000000000000000000000004A4A
      4A00DEDEDE0084848400636363007B7B7B00A5A5A500BDBDBD00D6D6D600C6C6
      C600ADADAD009C9C9C0000000000000000000000000000000000000000004A4A
      4A00DEDEDE0084848400636363007B7B7B00A5A5A500BDBDBD00D6D6D600C6C6
      C600ADADAD009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000004AADDE0042B5E7000863A5002994CE0031ADDE00086B
      AD001094C6001094CE000000000000000000CE4A2100CE4A2100FF735A00FF7B
      6300DE6B4200EFB58400DE7B4A00F7735A00E75A39007B8C390084BD730063AD
      5A0063C6630052C6520031B53100189418000000000000000000000000004242
      4200D6D6D600848484006363630073737300A5A5A500B5B5B500D6D6D600C6C6
      C600ADADAD009C9C9C0000000000000000000000000000000000000000004242
      4200D6D6D600848484006363630073737300A5A5A500B5B5B500D6D6D600C6C6
      C600ADADAD009C9C9C0000000000000000000000000000000000000000000000
      00000000000021529400298CC6004ABDEF0042BDEF0042B5E70031ADDE0029A5
      DE0018A5D6001094C60000428C005263840000000000D6846300FF7B6300FF8C
      6B00DE8C5A00FFD69C00DE8C5A00EF7B5A00E75A39007BA55200C6DEB500D6E7
      C60073D6730063CE630042B54200188C18000000000000000000000000004A4A
      4A00DEDEDE0084848400636363007B7B7B00A5A5A500B5B5B500D6D6D600C6C6
      C600A5A5A500005A000000000000000000000000000000000000000000004A4A
      4A00DEDEDE0084848400636363007B7B7B00A5A5A500B5B5B500D6D6D600C6C6
      C600A5A5A5009494940000000000000000000000000000000000000000000000
      000000000000214A940042ADE70052C6F7004ABDEF0063BDE7004A849C001873
      A5001094CE001094C600006BA500216394000000000000000000A56342008C31
      18002121730021217B00A5524A00C65A310073B55A0084DE8400FFF7E700FFF7
      E7007BAD630063BD6300398C3900000000000000000000000000000000004A4A
      4A00A5A5A500737373005A5A5A0073737300A5A5A500B5B5B500BDBDBD00A5A5
      A500005A000029AD4200005A0000000000000000000000000000000000004A4A
      4A00A5A5A500737373005A5A5A0073737300A5A5A500B5B5B500BDBDBD00005A
      000000730800007B0800005A0000005A00000000000000000000000000000000
      0000000000006BC6E70052C6EF004ABDEF006BC6EF00DEDEDE006B6B6B00295A
      73001094C6000894CE00109CCE0063ADBD000000000000000000181818000808
      080010319400103194001018730063525A004AA54A0063BD630094ADB5004A8C
      B5006394A5003184390000000000000000000000000000000000000000004242
      4200D6D6D600848484006363630073737300A5A5A500B5B5B500D6D6D600005A
      0000189C310042DE730021AD4200005A00000000000000000000000000004242
      4200D6D6D600848484006363630073737300A5A5A500B5B5B500005200000073
      080000840800005A000000000000000000000000000000000000000000000000
      000000000000218C390039A5B5004ABDEF006BC6EF00DEDEDE006B6B6B00316B
      7B0018A5D600189CCE00189CCE0000000000000000001010100008101800184A
      A500185ABD00185ABD001852BD0010318C0000000000000000003194F7003194
      F7003194F7002994EF0000000000000000000000000000000000000000004242
      4200D6D6D6008C848C0063636B007B737300A5A5A500B5B5B500005A0000109C
      210021AD420029C64A0018AD3100109C21000000000000000000000000004242
      4200D6D6D6008C848C0063636B007B737300A5A5A500B5B5B50000840800005A
      0000ADADAD009C9C9C0000000000000000000000000063A55A00088C1000007B
      00003994290039CE520031AD9C0042B5DE0063C6D600D6D6D60063636300426B
      7B0029A5D60029A5D6000000000000000000000000001818180010213100185A
      BD00216BCE00216BCE002163CE00104AAD0000000000529CCE0039A5FF0039A5
      FF00399CFF00399CFF00426B7B00000000000000000000000000000000004242
      4200DEDEDE008C848C00636363007B7B7B00A5A5A500B5B5B500005A0000005A
      0000005A000018AD3100005A0000005A00000000000000000000000000004242
      4200DEDEDE008C848C00636363007B7B7B00A5A5A500B5B5B50000941000005A
      0000ADADAD009C9C9C00000000000000000000000000299C29004ADE6B0021B5
      310018AD290039CE520018A5390018A55A0042B54200C6B59C00525252008C73
      630042A5C600189CCE000000000000000000000000003131310029292900215A
      A5003194F7003194F700298CF700216BCE000000000042A5E7004AB5FF0052B5
      FF004AB5FF004AADFF00298CCE00000000000000000000000000000000005242
      4A00A5A5A500737373006363630073737300A5A5A500B5B5B500CECECE00B5B5
      B500005A000008941800005A0000000000000000000000000000000000005242
      4A00A5A5A500737373006363630073737300005A0000005A000018AD310018AD
      3100005A0000005A0000000000000000000000000000318C18004ADE6B004AE7
      730039D65A0039CE520029C6420021BD310018A51800219418006B8442000000
      00000000000000000000000000000000000000000000313131004A4A4A001829
      4200216BCE00297BE7003194F700216BC600000000004AA5E70052BDFF005ABD
      FF0052BDFF0052B5FF003194DE00000000000000000000000000000000005242
      4A00E7DED6008C848C006B63630073737300A5A5A500ADADAD00CECECE00C6C6
      C600005A000000941000005A0000000000000000000000000000000000005242
      4A00E7DED6008C848C006B63630073737300005A0000109C210021B5420029C6
      4A00189C3100005A0000000000000000000039A5390021B531004AE773004AE7
      730073D6840073B584001894210010A5180010A51800089C0800529429000000
      00000000000000000000000000000000000000000000000000005A5A5A006B6B
      6B00A5A5A50084848400313131004A4A4A0000000000529CC6003994C6004A9C
      CE003194CE00298CCE00106B9C00000000000000000000000000000000005242
      4A00E7DED6008C848C0063635A006B736B009C9C9C00ADADAD00CECECE00005A
      0000009410000073080000000000000000000000000000000000000000005242
      4A00E7DED6008C848C0063635A006B736B009C9C9C00005A000042DE730042DE
      73000052000094949400000000000000000094E7A5006BF7940052EF7B004ADE
      6B00D6D6D600A5A5A500217B29000894080008A5100010A5180073C663000000
      0000000000000000000000000000000000000000000000000000424242007373
      73008C8C8C0084848400393939000000000000000000000000005AA5D6006BB5
      DE00ADD6EF0073B5D6004284A500000000000000000000000000000000005242
      4A00A5A5A50073737300635A6B006B736B0000520000005A0000007B0800007B
      080000630800005A000000000000000000000000000000000000000000005242
      4A00A5A5A50073737300635A6B006B736B0094949400ADADAD00005A0000005A
      0000A5A5A5008C8C8C0000000000000000000000000042D663004ADE6B004ADE
      6B00D6D6D600A5A5A500399C420021BD310018A518004AA52900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CC6DE008CBD
      D60084B5D6008CB5CE0000000000000000000000000000000000000000004A52
      4A00ADADB5008C8C8C009CA59400A5A5A500A5A5A500A5A5A500ADADAD00A5A5
      A5008C8C8C007B7B7B0000000000000000000000000000000000000000004A52
      4A00ADADB5008C8C8C009CA59400A5A5A500A5A5A500A5A5A500ADADAD00A5A5
      A5008C8C8C007B7B7B00000000000000000000000000000000005AE77B004ADE
      6B00CECECE008C8C8C005A944A0052BD4A0063C6630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C847B007B737B00736B730073737B007373730073737300737373007B7B
      7B00848484000000000000000000000000000000000000000000000000000000
      00008C847B007B737B00736B730073737B007373730073737300737373007B7B
      7B008484840000000000000000000000000000000000000000000000000042D6
      6300B5A58C00736B63008CB54A0021B529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001094CE001094CE001094CE001094CE001094CE000000
      00000000000000000000000000000000000000000000000000009C6B63009C6B
      63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B
      63009C6B63009C6B6300A56B6B000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE63000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000084848400000000000000
      0000000000000000000000000000000000000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042ADBD0042ADBD0042CEEF005ADEFF005ADEFF005ADEFF0042CEEF001094
      CE001094CE0000000000000000000000000000000000000000009C736B00FFE7
      C600F7DEB500F7D6AD00F7D69C00F7CE9400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFC684009C6B63000000000000000000CE630000FFE7C600FFDE
      BD00FFDEBD00FFDEB500FFD6AD00FFD6AD00CE630000FFE7C600FFDEBD00FFDE
      BD00FFDEB500FFD6AD00FFD6AD00CE6300008484840000000000000000000000
      00000000000000000000000000000000FF000000840000008400000000000000
      00000000000000000000000000000000000000000000000000000000000042AD
      BD0042CEEF009CE7FF009CE7FF009CE7FF00000000005ADEFF005ADEFF005ADE
      FF0042CEEF001094CE00000000000000000000000000000000009C736B00F7E7
      C600F7DEBD00F7D6AD00EFCEA500EFCE9C00EFC69400EFC68400EFBD7B00EFBD
      7B00EFBD7B00EFBD7B009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFF7E700FFEFD600FFE7C600FFDEB500CE630000FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE6300000000000000000000000000000000
      000000000000000000000000FF000000FF000000840000008400000084000000
      000000000000000000000000000000000000000000000000000042ADBD0042CE
      EF009CE7FF009CE7FF009CE7FF009CE7FF00000000009CE7FF009CE7FF005ADE
      FF005ADEFF0042CEEF001094CE000000000000000000000000009C736B00F7E7
      D600FFEFCE00F7DEBD00FFDEB500F7D6AD00EFCE9C00EFC69400EFC68400EFBD
      7B00EFBD7B00EFBD7B009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFF7E700FFEFD600FFDEB500CE630000FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000000000000000000000000
      00000000000000000000000000000000FF000000840000008400000000000000
      000000000000000000000000000000000000000000000000000042ADBD00ADF7
      FF009CE7FF009CE7FF009CE7FF009CE7FF00000000009CE7FF009CE7FF009CE7
      FF005ADEFF005ADEFF001094CE00000000000000000000000000A5737300FFF7
      DE00948C8C00948C8C00948C8C00948C8C00E7C69C00EFCE9C00EFC69400EFC6
      8400EFBD7B00EFBD7B009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFEFD600CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000840000000000000000000000
      000084848400000000000000000000000000000000000000000042ADBD00ADF7
      FF00ADF7FF009CE7FF009CE7FF000000000000000000000000009CE7FF009CE7
      FF009CE7FF005ADEFF001094CE00000000000000000000000000A57B7300FFFF
      F700313129006B7394001029A50021213900D6B58C00F7D6AD00EFCE9C00EFC6
      9400EFC68400EFBD7B009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE6300008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042ADBD00ADF7
      FF00ADF7FF00ADF7FF009CE7FF008484840000000000848484009CE7FF009CE7
      FF009CE7FF005ADEFF001094CE00000000000000000000000000AD847B00FFFF
      F70031313900637BE7007B94FF0010219C00DEC69C00FFDEB500EFCEA500EFCE
      9C00EFC69400EFC684009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE6300000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000840084008400840000000000000000000000000042ADBD0042CE
      EF00ADF7FF00ADF7FF00ADF7FF00ADF7FF009CE7FF009CE7FF009CE7FF009CE7
      FF009CE7FF0042CEEF001094CE00000000000000000000000000B58C7B00FFFF
      FF0042424200524A4A005A524A00182994006373D600C6B59C00F7D6B500EFCE
      A500EFCE9C00EFC694009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE6300000000000000000000000000008484
      8400848484008484840000000000000000000000000000000000000000000000
      00008400840084008400840084008400840000000000000000000000000042AD
      BD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042AD
      BD0042ADBD0042ADBD0000000000000000000000000000000000BD8C7B00FFFF
      FF00FFFFFF00F7EFE700F7E7D600F7E7D600637BE700425AE700E7CEBD00F7D6
      AD00EFCEA500EFCE9C009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE6300000000000000000000FF000000FF00
      0000FF0000008484840000000000000000000000000000000000000000000000
      0000840084000000000084008400840084000000000000000000000000000000
      000042ADBD009CE7FF001094CE0000000000000000000000000042ADBD009CE7
      FF001094CE000000000000000000000000000000000000000000C6947B00FFFF
      FF00948C8C00948C8C00948C8C00948C8C00EFE7CE00C6BDDE00EFD6C600F7D6
      B500F7D6AD00E7C69C0094736B000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFFF00FFFFFF00CE6300000000000000000000FF000000FF00
      0000FF0000008484840000000000000000000000000000000000000000000000
      0000000000008400840084008400000000000000000000000000000000000000
      000042ADBD009CE7FF001094CE0000000000000000000000000042ADBD009CE7
      FF001094CE000000000000000000000000000000000000000000CE9C8400FFFF
      FF0031312900A5A5A5005263AD0029314200D6CEBD00FFF7DE00FFEFCE00F7E7
      C600DECEAD00B5A58C00846B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE6300000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042ADBD0042CEEF0042CEEF001094CE001094CE001094CE0042CEEF0042CE
      EF001094CE000000000000000000000000000000000000000000CE9C8400FFFF
      FF0042424A007B94FF00426BFF0018297B00E7DEC600FFF7E700E7CEBD00A56B
      6B00A56B6B00A56B6B00A56B6B000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042ADBD0042CEEF009CE7FF009CE7FF009CE7FF0042CEEF001094
      CE00000000000000000000000000000000000000000000000000D6A58400FFFF
      FF0029292900636B84008C8C9C000821A500BDC6F700FFFFF700D6B5AD00A56B
      6B00E79C4A00E78C3100A56B6B00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE63000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000042ADBD0042ADBD0042ADBD0042ADBD001094CE000000
      0000000000000000000000000000000000000000000000000000D6A58400FFFF
      FF00ADB5B50094949400949494008C9CC6004263FF009CB5FF00D6B5BD00A56B
      6B00F7AD5A00A56B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6A58400F7EF
      E700FFFFF700FFFFF700FFFFF700FFF7EF00CECEEF005A73EF00B5A5B500A56B
      6B00A56B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6946B00D69C
      7B00D69C7B00D69C7B00CE947300C68C7300C68C7300C68C7300AD736B00A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000CE630000FFFFFF00FFF7E700FFF7E700FFF7E700FFF7E700FFEFD600FFE7
      C600FFD6AD00FFD6AD00CE6300000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFF7E700FFEFD600FFEFD600FFE7C600FFDEBD00FFDE
      BD00FFDEB500FFD6AD00FFD6AD00CE6300000000000029ADD6009CFFFF006BE7
      FF006BE7FF006BE7FF006BE7FF006BE7FF006BE7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEF
      D600FFE7C600FFD6AD00CE6300000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE6300000000000029ADD6009CFFFF0094F7
      FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7FF006BE7FF005ADEFF005ADE
      FF005ADEFF0029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400000000000000000000000000CE630000CE63
      0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFE7C600CE6300000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7FF006BE7FF005ADE
      FF005ADEFF0029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000CE630000FFFF
      FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE6300000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE6300000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7FF006BE7
      FF005ADEFF0029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000CE630000FFFF
      FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7E700CE6300000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE6300000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7
      FF006BE7FF0029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400848484008484840000000000CE630000CE630000CE630000FFFF
      FF00CE630000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7E700CE6300000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7
      FF006BE7FF0029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00CE630000FFFF
      FF00CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFF7E700FFF7E700FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00CE6300000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF0084EFFF0084EFFF0084EF
      FF006BE7FF0029ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000029ADD6009CFFFF009CFF
      FF0094F7FF0084EFFF0084EFFF0029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000088C10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700CE63000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE630000000000000000000029ADD6009CFF
      FF0084EFFF0084EFFF0029ADD600000000000000000000000000000000000000
      0000000000000000000000000000088C10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE63000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE630000000000000000000052CEEF0029AD
      D60029ADD60029ADD60052CEEF00000000000000000000000000000000000000
      000018AD290000000000088C1000007308008484840000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000088C100018AD2900088C1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700CE6300000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000088C10005AE78C0018AD2900000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000730800007308000073080018AD29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000000730800000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00008484840000000000000000000000000000000000636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00000000000000000000008400000084000000
      0000000000000000000000008400000000000000000000000000000000008484
      8400087B0800848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00848484000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840000000000848484000000000000000000000000008C8C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008C8C8C00000000000000000000000000000084000000
      8400000000000000000000000000000000000000000000000000000000000073
      08005AE78C00007308000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000000000000000FFFF
      FF00C6C6C600C6C6C600C6C6C600848484008484840084848400848484008484
      840084848400000000000000000000000000000000008C8C8C00FFFFFF00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFFFFF008C8C8C00000000000000000000000000000000000000
      84000000840000000000000000000000000000000000000000000073080042D6
      6B0042D66B0031C64A000073080000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00848484000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000084848400848484000000000000000000000000008C8C8C00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFF
      FF00FFB56B00FFFFFF008C8C8C00000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000730800087B0800087B
      080031C64A00087B0800087B080000730800000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840000000000848484000000000000000000000000009C9C9400FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFF
      FF00FFB56B00FFFFFF009C9C9400000000000000000000008400000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      000000730800000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF0084848400000000000000000000000000FFFF
      FF00C6C6C600C6C6C600C6C6C600848484008484840084848400848484008484
      840084848400000000000000000000000000000000009C9C9400FFFFFF00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFFFFF009C9C9400000000000000000000008400000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000000730800000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000084848400848484000000000000000000000000009C9C9400FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFF
      FF00F7A55A00FFFFFF009C9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000730800000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00848484000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      84000000000084848400000000000000000000000000A5A5A500F7F7F700F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFF
      FF00F7A55A00F7F7F700A5A5A500000000000000000084000000840000008400
      0000000000008400000084000000840000000000000000000000000000000000
      000000730800000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000000000000000FFFF
      FF00C6C6C600C6C6C600C6C6C600848484008484840084848400848484008484
      84008484840000000000000000000000000000000000A5A5A500F7F7F700EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100F7F7F700A5A5A500000000000000000084848400840000000000
      0000000000000000000084000000848484000000000000000000000000000000
      0000007308000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00008484840084848400000000000000000000000000ADADAD00EFEFEF00EF9C
      2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFF
      FF00EF9C2100EFEFEF00ADADAD00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      00000073080000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000084848400000000000000000000000000ADADAD00EFEFEF00EF9C
      2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFF
      FF00EF9C2100EFEFEF00ADADAD00000000000000000000000000848484008400
      0000000000008400000084848400000000000000000000000000000000000000
      00000073080000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6
      C60084848400C6C6C600C6C6C60084848400000000000000000000000000FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000000000000000000000000000000000B5B5B500DEDEDE00EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100DEDEDE00B5B5B500000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000073080000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C6008484
      84008484840084848400C6C6C60084848400000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6008484840084848400000000000000000000000000B5B5B500DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00B5B5B500000000000000000000000000000000008484
      8400840000008484840000000000000000000000000000000000000000000000
      00000073080000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000008484
      84008484840000000000000000000000000000000000B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000007308000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737373007B737300847B7B007B7B7B007B737300737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007373
      730084848400ADADAD00ADADAD00A5A5A500A59C9C00A59C9C00A59C9C008484
      8400737373000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF008484840000FFFF008484840000FFFF008484840000FF
      FF008484840000FFFF000000000000000000000000000000000084848400A59C
      9C00CECECE009C9C940094948400949494008C8C94009C947B008C847B00BDA5
      A500A59494007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000FFFF008484840000FFFF008484840000FFFF008484
      840000FFFF008484840000FFFF00000000000000000073737300A59C9C00DED6
      D60094948C00C6C6AD00FFF7CE00CEBDC600ADA5CE00FFFFE700D6D6CE00847B
      6B00BD9C9C00A594940073737300000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000FFFF00000000000000
      000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF000000000000FFFF008484840000FFFF008484840000FF
      FF008484840000FFFF008484840000FFFF0000000000948C94007BAD7B00186B
      2100CED6B500FFF7CE00F7CE9400EFB57300EFAD6300EFBD8400FFF7DE00EFF7
      EF0084736B00C6A5A50084848400000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C6000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000737373007B947B00219C390029BD
      52004A9C4A00F7F7C600FFF7CE00FFEFBD00F7CE9400EFBD7B00F7C68400FFE7
      C600CECEC600947B7300B59C9C008C8484000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C6000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FFFF000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00000000000000000000000000737B6B00107B180029C64A0042DE
      730029BD52006BAD5A00FFFFD600FFFFD600F7F7C600FFE7AD00FFBD7B00F7AD
      6B00FFF7DE008C846B00C69C9C008C8484000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF00000000000000000000000000106B10000894180018B5310029BD
      4A0021AD4200107B18007BB56300ADAD94006B6B63009C9C8400947B6300D694
      5A00CEBDC600847B8C00C69C9C00948484000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000296B2900317B31000894180010A5
      2900428C4200C6DEBD00C6E7A500ADAD940039393900292929006B6B5A00C694
      5A00B5ADC60073738C00C69C9C00948484000000000000000000000000000000
      00000000000084840000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF00000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000948494008CAD8C00087B10000894
      18005A9C5A00FFFFFF00FFFFF700FFFFD600D6D6AD004A4A4200A59C7B00FFCE
      9400FFEFBD00948C7B00C69CA5008C8484000000000000000000000000000000
      00008484000084840000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000000000000000FF000000FF000000000000FFFF0000FFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300ADA5A50018842100008C
      000018842100DEE7DE00FFFFFF00FFFFF700FFFFE700E7E7CE0042423900948C
      7300D6D6B500A58C8400BD9C9C008C8484000000000000000000000000008484
      000084840000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      0000848400000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FFFF000000
      000000000000000000000000000000000000000000008C848C007BA58400007B
      080000840800298C29009CC69C00EFF7EF00F7FFF700FFFFFF00EFEFCE00BDC6
      A5009C948400CEA5A5008C848400000000000000000000000000848400008484
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      000084840000848400000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000737373009C949C0073A5
      7B00107B180000730000006B0000006B080018732100C6DEBD00E7E7D600ADA5
      9400C6A5A5009C8C8C0073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B009C94
      9C00ADBDAD008CAD8C0073946B007B9C6B0094A58400B5B5A500ADA5A500C6AD
      AD009C8C8C007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000007373
      73008C848400ADA5AD00BDB5BD00B5ADB500ADA5AD00ADA5A5009C949C008484
      8400737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073737300737373007B7B7B007B7B7B0073737300737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5636B00A5636B00000000000000
      000000000000000000000000000000000000000000004A637B00BD9494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5636B0084848400A5636B00000000000000
      0000000000000000000000000000000000006B9CC600188CE7004A7BA500C694
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000527B
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5636B00CECED60084848400A5636B00000000000000
      0000000000000000000000000000000000004AB5FF0052B5FF00218CEF004A7B
      A500C69494000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000317B
      EF00527BC600296BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5636B00EFEFEF0084848400A5636B00000000000000
      0000000000000000000000000000000000000000000052B5FF0052B5FF001884
      E7004A7BA500C694940000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000397B
      E700007BFF000073F700527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5636B00EFEFEF0084848400A5636B00000000000000
      000000000000000000000000000000000000000000000000000052B5FF004AB5
      FF00188CE7004A7BA500BD949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009CFF00008CFF00008CFF00527BC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5736B00EFEFEF0084848400A5636B00000000000000
      00000000000000000000000000000000000000000000000000000000000052B5
      FF004AB5FF002184DE005A6B730000000000AD7B7300C6A59C00D6B5A500CEA5
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000B5FF00008CFF000094FF00527BC600527BC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD846B00EFEFEF0084848400A5636B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFFD600FFFFD600FFFF
      D600E7DEBD00CEADA50000000000000000000000000000000000000000000000
      0000000000000000000000B5FF0008C6FF00009CFF00009CFF00527BC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6946B00EFEFEF0084848400A5636B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CEB5B500D6B5A500FFEFC600FFFFD600FFFFD600FFFFD600FFFF
      DE00FFFFEF00F7F7EF00B58C8C00000000000000000000000000000000000000
      000000000000000000000000000000B5FF0008BDFF0000ADFF00009CFF00527B
      C600000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD7B5A00EFEFEF00CECED6008484840042424200A5636B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6948C00F7DEB500F7D6A500FFF7CE00FFFFD600B55A1800FFFF
      EF00FFFFF700FFFFFF00DED6BD00000000000000000000000000000000000000
      0000527BC600527BC600527BC60000C6FF0008FFFF0031F7FF0010BDFF0000AD
      FF00527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD7B5A00EFEFEF00CECED600BDBDBD008C8C8C005A5A5A0042424200A563
      6B00000000000000000000000000000000000000000000000000000000000000
      000000000000DEBDA500FFE7AD00F7CE9400FFF7CE00E7D6C600B55A1800E7D6
      C600E7D6C600FFFFEF00F7EFD600C69C94000000000000000000000000000000
      000029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FFFF004AEFFF0018CE
      FF0000A5FF00527BC6000000000000000000000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000FF0000000000
      000000000000000000000000000000000000000000000000000000000000BD7B
      5A00EFEFEF00EFEFEF00C6C6C600ADADAD008C8C8C00737373005A5A5A004242
      4200A5636B000000000000000000000000000000000000000000000000000000
      000000000000E7C6AD00FFDEAD00EFBD8400B55A1800B55A1800B55A1800B55A
      1800B55A1800FFFFDE00F7F7D600C6AD9C000000000000000000000000000000
      000039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DEFF0000FFFF0000FF
      FF0039EFFF0008C6FF00527BC60000000000000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000BD7B5A00EFEF
      EF00EFEFEF00CECED600BDBDBD009C9C9C008484840084848400737373005A5A
      5A0042424200A5636B0000000000000000000000000000000000000000000000
      000000000000DEBDAD00FFE7B500EFBD8400F7CE9400FFEFC600B55A1800FFEF
      C600FFFFDE00FFFFDE00F7EFD600C6A59C000000000000000000000000000000
      00000000000008C6FF0039E7FF004AEFFF0042F7FF0018FFFF0000FFFF0000FF
      FF0008FFFF0021FFFF00527BC6000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000000000BD7B5A00EFEFEF00EFEF
      EF00CECED600C6C6C600C6C6C600848484008484840084848400848484007373
      73005A5A5A0042424200A5636B00000000000000000000000000000000000000
      000000000000C69C9400FFEFC600FFEFC600F7D6A500F7CE9C00B55A1800FFF7
      CE00FFF7D600FFFFD600E7DEBD00000000000000000000000000000000000000
      000000000000000000000000000031D6FF0008F7FF0000FFFF0000F7FF0000D6
      FF0000B5FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      000000000000000000000000000000000000D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00D6946B000000000000000000000000000000
      00000000000000000000DEC6AD00FFFFFF00FFF7EF00F7CE9400EFBD8400F7CE
      9C00FFE7B500FFF7C600BD9C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031D6FF0000F7FF0000EF
      FF0000ADFF0000A5FF00527BC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6BDBD00F7EFD600FFEFC600FFE7AD00FFE7
      B500F7DEB500CEAD9C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000031D6
      FF0042DEFF0010D6FF005AA5FF00527BC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEAD9400CEAD9C00DEBDA500DEBD
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031D6FF0052A5FF00527BC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00A5A5
      A5000000000000000000000000000000000000000000000000004A526300FFEF
      C600F7D6B500EFD6AD00EFCE9C00EFCE9400EFC68C00EFBD8400EFBD7B00EFBD
      8400EFBD8400EFC68400A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080800737B7B00F7F7F700C6CECE00C6C6C600B5B5B500FFFFFF00C6C6
      C60010100800B5B5BD00000000000000000000000000636B8400186BC600636B
      8400F7DEBD00EFD6AD00EFCEA500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B00F7F7F700D6D6D600D6CECE00C6C6C600FFFFFF00C6C6
      CE0000000000525252000000000000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00EFD6B500EFCEA500EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B00000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000008484840000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000181818003939
      390029292900848C8C00CED6D600949C9C008C8C8C008C848400EFEFEF00C6CE
      CE003129310039393100181021006B6B63000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00EFD6AD00EFCEA500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00C6C6C6000000000084848400C6C6C600C6C6
      C600848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B005A525200847B
      7B00292929006B6B6B00ADADAD00ADB5B500B5B5B500B5B5B500A5A5A5009494
      9C003921310052525A004A525200393939000000000000000000A5736B00FFF7
      EF0031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C600FFFF
      000084848400848484000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000052525200949C9C008494
      94008C9C94008C94940094949400949C9C007B847B0084948C008C949400949C
      9C008C849C006B5A6B0094DE94006B5A6B000000000000000000A5736B00FFFF
      FF00F7EFE700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400EFC68C00A5636B00000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C60084848400C6C6C6000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000052525200BDBDBD00BDB5
      BD00948C8C00847B7B00846B6B00846B6B00845A6B007B636B008C6B6B008C63
      7300A57BA5008C4A5A00C6C6CE00AD9CAD000000000000000000BD846B00FFFF
      FF00FFF7EF00AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00EFCE9400A5636B00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF0000000000C6C6C600FFFF0000C6C6C600C6C6
      C60084848400C6C6C6000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000073737300CED6D6008C7B
      8400BD7B8400AD848400A57B7B00AD7B7B009C7B7B009C7B7B00A57B7B00A584
      7B00B58484008C4A5A00E7D6E700ADADAD000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFDE00F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00EFCEA500F7D6A500A5636B00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00CECECE00947B
      8400844A52005A31310042212100421818003918180042182100422121005231
      3100844A52007B4A5200C6C6CE00ADADAD000000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DEC6C600F7EFE700F7EFDE00FFFFD600DEBDA500AD7B
      7300F7D6AD00EFCEA500A5636B00000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000084848400C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000D6CECE00BDA5
      AD0042182100B5A59C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00421818004A212100CECECE00B5B5B5000000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DEC6C600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADB5B500B5B5
      B50084737300948C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FF
      FF007B636B009C8C8C00ADB5B500000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEE7DE00F7F7F700FFFFFF00CECECE009C9C9C008C8C8C008484
      8400000000000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700D6BDBD00A56B
      5A00E79C5200E78C3100B56B4A00000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000D6CECE00F7FFFF00FFFFFF00A5A5A50094948C00C6C6C600A5A5
      A500000000000000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600F7F7F700F7F7F700ADADAD00DEDEDE00E7E7E700A5A5
      A500000000000000000000000000000000000000000000000000E7AD7B00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00D6BDBD00A56B
      5A00BD846B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00D6D6D600D6D6D600B5B5B500D6D6D600A5A5A5000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A5525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE63000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A00000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      00008C8C8C00949494007373730073737300636363005A5A5A00525252005252
      52005A5A5A0000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600FFE7C600526B7B00D6CEAD00F7D6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE63000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A00000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE0000000000000000000000000000000000000000009494
      9400848484009C9C9C0052525200525252006B6B6B0039393900525252004242
      42003131310039393900000000000000000000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B0000000000ADC6CE00BDC6
      C600BDC6C600BDC6C600FFD6AD00CE63000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE000000000000000000000000000000000000000000000000009C9C
      9C00848484009C9C9C004A4A4A004A4A4A006B6B6B0029292900525252004242
      42002121210029292900000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7E700526B7B000000000000000000FFD6
      AD00F7D6AD00FFD6AD00FFD6AD00CE63000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE00000000000000000000000000000000000000000000000000000000009C9C
      9C0084848400A5A5A50042424200424242006B6B6B0018181800525252004242
      42001010100029292900000000000000000000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B00FFEFDE00DE8C39000000
      0000B5C6C600BDC6C600FFD6AD00CE63000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A50084848400A5A5A5004A4A4A004A4A4A006B6B6B0018181800525252004242
      42001010100029292900000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B9CA500FFEFDE00DE8C39000000
      0000FFD6AD00FFD6AD00FFD6AD00CE63000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A50084848400ADADAD004A4A4A004A4A4A006B6B6B0018181800525252004242
      42001010100029292900000000000000000000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B00FFEFDE00DE8C
      390000000000ADB5BD00FFD6AD00CE63000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD5252000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A50084848400ADADAD004A4A4A004A4A4A006B6B6B0018181800525252004242
      42001010100029292900000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B9CA500FFEFDE00DE8C
      390000000000FFD6AD00FFD6AD00CE63000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C0084848400A5A5A50042424200424242006B6B6B0018181800525252004242
      42001010100029292900000000000000000000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B00FFEF
      DE00DE8C390000000000FFD6AD00CE63000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C0084848400A5A5A50042424200424242006B6B6B0018181800525252004242
      42001010100029292900000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B9CA500FFEF
      DE00DE8C390000101800FFD6AD00CE63000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F70000000000000000000000000000000000000000000000000094949400A5A5
      A500737373009C9C9C0039393900393939006B6B6B0018181800525252004A4A
      4A0010101000313131007B7B7B000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00526B
      7B00000000002163DE0000000000CE63000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F70000000000000000000000000000000000000000008C8C8C009C9C
      9C009C9C9C00949494007B7B7B007B7B7B00636363005A5A5A00525252004A4A
      4A004242420031313100212121000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000A56B
      29002163DE002163DE0039082100CE63000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A00000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F70000000000000000000000000000000000737373006363
      6300636363006B6B6B00636363006363630052525200525252004A4A4A004A4A
      4A00313131003131310073737300000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      000000089C0000089C00E73963000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00949494009494940084848400848484007B7B7B00737373006B6B6B006B6B
      6B00636363005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5007B7B7B000000000000000000737373007B7B7B004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A5007B7B7B007B7B7B007B7B7B00424242000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00000000000000000000000000A5636B00FFEF
      C600C6CE9400D6CE9400EFCE9C00E7CE9400EFC68400EFBD8400EFBD7B00EFBD
      8400EFBD8400EFC68400A5636B00000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7E7CE008C5A5A00000000000000000000000000A5636B00FFEF
      CE009CBD7300299C21006BAD4A0021941000219410005AA53900CEB57300EFBD
      7B00EFBD7B00EFC68400A5636B00000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000000000000000
      000000000000B58C8C00F7EFDE00F7DECE00F7DEC600F7DEC600F7DEC600F7DE
      C600EFDECE00EFDECE008C5A5A00000000000000000000000000A5635A00FFEF
      DE00BDCE9C00108C08000084000000840000008400000084000029941800DEBD
      7B00EFBD7B00EFC68400A5636B00000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C60000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A00000000000000000000000000A5635A00FFF7
      E700BDCE9C00189410000084000018941000ADBD730073AD4A000084000073AD
      4A00EFBD8400EFC68400A5636B00000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD600000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B58484000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7E7CE00EFDECE009C6B6300000000000000000000000000A5736B00FFF7
      EF00BDD6A500088C0800008400000084000084B55A00EFCEA500A5B56B006BAD
      4A00EFC68C00EFC68400A5636B00000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B58484000000000000000000B58C8C00FFF7E700F7EF
      DE00F7EFDE00B58C8C00FFF7EF00F7E7CE00F7DEC600F7DEC600F7DEC600F7DE
      C600F7E7D600EFDECE009C6B6B00000000000000000000000000A5736B00FFFF
      FF00E7E7D600A5CE94009CC6840094BD73009CBD7300EFD6AD00EFCEA5009CC6
      7B00EFC69400EFC68C00A5636B00000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C6000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B58484000000000000000000B58C8C00F7EFDE00F7DE
      CE00F7DEC600B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFE7D600A57B7300000000000000000000000000BD846B00FFFF
      FF00A5DEA500FFEFE700F7EFD6009CC6840094BD730094BD73009CBD7300EFCE
      A500EFCE9C00F7CE9400A5636B00000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C6000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B58484000000000000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFF700FFE7D600FFE7D600F7E7D600F7E7CE00FFE7
      D600FFF7E700EFDEDE00A57B7300000000000000000000000000BD846B00FFFF
      FF0073C67300ADD6A500FFEFE70084C673000084000000840000088C0800EFD6
      AD00EFCEA500F7D6A500A5636B00000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C60000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B58484000000000000000000B58C8C00FFF7EF00F7DE
      C600F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700EFDE
      DE00D6C6C600BDADAD00B5847300000000000000000000000000D6946B00FFFF
      FF0084CE8400008400007BC67300ADD6A5001894180000840000108C0800F7D6
      B500F7D6AD00EFCEA500A5636B00000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A00007308000000000000000000000000003184FF003184
      FF003184FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700B58484000000000000000000B58C8C00FFF7EF00F7E7
      CE00F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700B58C
      8C00B58C8C00B58C8C00B58C8C00000000000000000000000000D6946B00FFFF
      FF00F7F7EF0029A5290000840000008400000084000000840000108C0800FFEF
      CE00DECEB500B5AD9400A5636B00000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C6000000000000000000000000003184FF0042B5
      F7003184FF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00B58484000000000000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B0000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00DEF7DE0063BD6300219C2100219C210073BD6B00299C2100946B
      5200A56B5A00A56B5A00A5636B00000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD29000884100000000000000000003184FF003184FF003184FF0042B5
      F7003184FF003184FF003184FF00E7E7E700E7E7E700E7E7E700E7E7E700B584
      7300B5948C00B58C8400B58484000000000000000000B58C8C00FFFFF700FFE7
      D600FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD8484000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEF7DE00DEF7DE00FFFFF700ADB594008C6B
      5200E79C5200E78C3100B56B4A00000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A518000000000000000000000000003184FF008CD6F700B5DEF700B5DE
      F700B5DEF7008CD6F7003184FF00DEDEDE00DEDEDE00DEDEDE00C6C6C600B584
      7300FFFFFF00FFFFFF00B58484000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700EFDEDE00D6C6C600BDADAD00B58473000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      1800088410000000000000000000000000003184FF003184FF003184FF00B5DE
      F7003184FF003184FF003184FF00D6D6D600D6D6D600D6D6D600C6C6C600B584
      7300FFFFFF00B5848400000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000000000000000000E7AD7B00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00DEC6C600A56B
      5A00BD846B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      08000000000000000000000000000000000000000000000000003184FF00B5DE
      F7003184FF00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600B584
      7300B584840000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003184FF003184
      FF003184FF00EFD6C600EFD6C600EFD6C600EFD6C600EFD6C600D6BDB500B584
      73000000000000000000000000000000000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000426BF7000818BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039AD39001094100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001094100039AD390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000818BD00426BF70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000426BF7000021C6000018C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039AD3900218C180000AD000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000AD0000218C180039AD3900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000018C6000021C600426BF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000426BF7000018BD001029D6000010C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039AD390018841800219C1800009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C0000219C18001884180039AD39000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000010C6001029D6000018BD00426BF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000426BF7000021C6001031D6000018CE001018BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039AD3900088C100008840000088C0000009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C0000088C000008840000088C100039AD
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001018BD000018CE001031D6000021C600426B
      F70000000000000000000000000000000000000000000000000000000000426B
      F7000021C600527BEF000018D6000018D6000010C6000010BD000010B5001021
      BD004A4ABD00424ABD00424ABD006B63C60000000000000000000000000039AD
      3900107B100063AD630021942100008C0000088C080000B5000000B5080018C6
      180042DE420052E752006BDE6B0000AD000000AD00006BDE6B0052E7520042DE
      420018C6180000B5080000B50000088C0800008C00002194210063AD6300107B
      100039AD39000000000000000000000000006B63C600424ABD00424ABD004A4A
      BD001021BD000010B5000010BD000010C6000018D6000018D600527BEF000021
      C600426BF7000000000000000000000000000000000000000000426BF7000021
      C600527BEF001031E7000021CE000018CE000018BD000010C6000010B5000008
      A50000089C000008A5003939B5000008AD00000000000000000039AD3900187B
      180063AD6300218C180000840000008C0800008C000000A5000000B5000000BD
      000008C6000018D6180063E76300009C0800009C080063E7630018D6180008C6
      000000BD000000B5000000A50000008C0000008C080000840000218C180063AD
      6300187B180039AD390000000000000000000008AD003939B5000008A5000008
      9C000008A5000010B5000010C6000018BD000018CE000021CE001031E700527B
      EF000021C600426BF700000000000000000000000000426BF7000021C600527B
      EF000021E7000029DE000021D6000018CE000018C6000010C6000008B5000010
      AD000000A5000008A50000009C000008AD000000000039AD3900187B180063AD
      6300187B2100007B000000840000008C0800009C000000AD000000B5000000BD
      000000C6000000CE000063E76300109408001094080063E7630000CE000000C6
      000000BD000000B5000000AD0000009C0000008C080000840000007B0000187B
      210063AD6300187B180039AD3900000000000008AD0000009C000008A5000000
      A5000010AD000008B5000010C6000018C6000018CE000021D6000029DE000021
      E700527BEF000021C600426BF70000000000426BF7000021C6005273FF00214A
      EF000029EF000021DE000021D6000018CE000018C6000010BD000010B5000008
      AD0008089C000800A5003939B5000008AD0039AD3900187B210063AD6300298C
      3100007B00000084000000840000008C08000094000000AD000000B5000000BD
      000008C6000000CE000063E76B0000A5000000A5000063E76B0000CE000008C6
      000000BD000000B5000000AD000000940000008C08000084000000840000007B
      0000298C310063AD6300187B210039AD39000008AD003939B5000800A5000808
      9C000008AD000010B5000010BD000018C6000018CE000021D6000021DE000029
      EF00214AEF005273FF000021C600426BF700426BF7000021C600527BEF001042
      E7000021E7000821E7000021CE000018CE000018C6000010BD000008B5000008
      AD000008A5000000A50000009C000008AD0039AD39001873290063AD6300398C
      310000730000007B000000840000008C08000094080000AD000000B5000000BD
      000008C6000000CE00006BE76B00089C0000089C00006BE76B0000CE000008C6
      000000BD000000B5000000AD000000940800008C080000840000007B00000073
      0000398C310063AD63001873290039AD39000008AD0000009C000000A5000008
      A5000008AD000008B5000010BD000018C6000018CE000021CE000821E7000021
      E7001042E700527BEF000021C600426BF70000000000426BF7000021C600426B
      F7000821E7000021D6000021D6000018CE000018C6000010BD000010B5000008
      AD000008A5000808A50000009C000008AD000000000039AD3900187B210063AD
      630029841800087B080000840000009400000094000000A5000000B5000000BD
      000008C6000000CE000063E76300009C0000009C000063E7630000CE000008C6
      000000BD000000B5000000A50000009400000094000000840000087B08002984
      180063AD6300187B210039AD3900000000000008AD0000009C000808A5000008
      A5000008AD000010B5000010BD000018C6000018CE000021D6000021D6000821
      E700426BF7000021C600426BF700000000000000000000000000426BF7000021
      C600527BEF001031D6000021D6000018CE000018C6000010BD000008AD000010
      AD000808A5000800A5003939B5000008AD00000000000000000039AD3900107B
      180063AD6300108C180000840000008C00000894000000AD080000B5000000BD
      000008C6000018D618006BEF630000940800009408006BEF630018D6180008C6
      000000BD000000B5000000AD080008940000008C000000840000108C180063AD
      6300107B180039AD390000000000000000000008AD003939B5000800A5000808
      A5000010AD000008AD000010BD000018C6000018CE000021D6001031D600527B
      EF000021C600426BF7000000000000000000000000000000000000000000426B
      F7000018BD00527BEF000021D6000021CE000018C6000010BD000810BD001021
      BD00424ABD00424ABD00424ABD00736BBD0000000000000000000000000039AD
      3900107B100063AD630018942100009400000094000000AD000000B5080018C6
      180042DE42005AE75A007BDE7B0000AD000000AD00007BDE7B005AE75A0042DE
      420018C6180000B5080000AD000000940000009400001894210063AD6300107B
      100039AD3900000000000000000000000000736BBD00424ABD00424ABD00424A
      BD001021BD000810BD000010BD000018C6000021CE000021D600527BEF000018
      BD00426BF7000000000000000000000000000000000000000000000000000000
      0000426BF7000021C6000829D6000818D6000818BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039AD3900088C100008840000008C0000009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C0000008C000008840000088C100039AD
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000818BD000818D6000829D6000021C600426B
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000426BF7000018BD000021CE000021C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039AD3900188C1800189418001094080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001094080018941800188C180039AD39000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000021C6000021CE000018BD00426BF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000426BF7000021C6000021C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039AD390018941800009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C00001894180039AD3900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000021C6000021C600426BF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000426BF7000810BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039AD39002194210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002194210039AD390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000810BD00426BF70000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100100000100010000000000800800000000000000000000
      000000000000000000000000FFFFFF00F8F48002FFFF000040080000FFFF0000
      40000001FFFF0000E0020000FFFF000000000000FBFF000000010001F1FF0000
      00010000E0FF000000010000C47F000000010000CE3F000000010000FF1F0000
      00010000FF8F000000010002FFC7000000010020FFE7000000010000FFFF0000
      00010000FFFF000000010000FFFF0000FFFFC001FFFF83EFFF07C001C3FF441F
      FE03C001C00F0007FC01C00100078003FC01C00100030002FC01C00100030002
      0001C001000100E10001C0010001C0850003C0010000A8800007C00100008780
      007FC00100000000007FC00100074000007FC001E01FE000007FC003F03FF000
      80FFC007F07FF821FFFFC00FFFFFF3C5FFFFFFFF803FFFFFFFFFFFFF80038000
      FFFFFFFF80008000C003FFFF8000800080018001800080008001800180008000
      8001800180008000800180018000800080018001800080008001800180008000
      800180018000800080018001C0008000C0038001E0018000FFFF8001F0038000
      FFFFFFFFF8078000FFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFF
      8000C00FFFFFFFFF0000C003800000010000C183800000010000FF8380000001
      0000800080000001000080008000000100008000800000010000800080000001
      00008000800000010000800080000001000080008000000180018000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8007FFFFFFFFFFFF0003FFFFFFFFFFFF
      0001E003E003E0030000E003E003E0030000E003E003E0030000E003E003E003
      0000E003E003E0030000E003E003E0038000E003E001E003C000E001E000E003
      E000E001E001E001F000E003E003E000F001E003E003E0008003E003E003E002
      0007E003E003E003000FF007F007F007F81FF81FFFFFFFFFE007E007FC3FFFFF
      C003C003FC3FFFFF80018001FC3FFFFF80018001FC3FFFFF00000000FC3FFFFF
      0000000080018001000000008001800100000000800180010000000080018001
      00000000FC3FFFFF80018001FC3FFFFF80018001FC3FFFFFC003C003FC3FFFFF
      E007E007FC3FFFFFF81FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007E007F0FF
      E003E007E0078003E003E007E0078003E003E007E0078003E003E007E0078003
      E003E007E0078003E003E007E0078003E001E007E0078003E000E007E0078003
      E000E007E0078003E000E007E0078003E001E007E0078003E003E007E007C003
      E003E007E007F0FFF007E007E007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
      00FFE003E003FC030000E003E003FC030000E003E003F8008000E003E003F800
      C001E001E000F800C003E000E003F80180C3E000E00380038081E000E0038003
      8081E001E003801F8081E001E003001FC081E003E003001FC1C1E003E003803F
      FFC3E003E003C07FFFFFF007F007E0FFFFFFFFFFFC1FC0018080837FF007C001
      80003E3FE003C00180007C1FC001C00180007E3FC001C00180007F67C001C001
      80003FF7C001C00180009FF9C001C0018000E3F0E003C0018000C3F4F1C7C001
      8000C3F9F1C7C0018000C7FFF007C0018000FDFDF80FC001C081FE79FC1FC003
      FFFFFF83FFFFC007FFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFFFFFFF71F0018000
      8003FF36F00180008003F516F00180008003DF31C00180008003FF76C0018000
      8003BFF6C00180008003FFD1000180008003DFFF000180008003FFBF00038000
      800277FF00078000C1FE77BF00078000C1F407FF000F8000FFF1AFD7001FC001
      FFF18FE7001FFFFFFFF0DFC7803FFFFFFFFFC000FFFFFFFF81F7C000E0078001
      9DE3C000C0038001CFE3C000C0038001E7C1C000C0038001F380C000C0038001
      B9F7C000C003800181F7C000C0038001FFF7C000C003800188F7C000C0038001
      9CF70000C0038001C1F70000C0038001C9F70000C0038001E3F70000C0038001
      E3F70000E0078001F7F70000FFFFFFFFFEFFF801FFFFF81FFE7EF801F003E007
      FC3CF801E001C003FC39F801E0008001FC11B001E0008001FC03C00160000000
      FC07C00180030000FC07800180030000F803800300070000F0010007103F0000
      E004800F187F0000C003801F001F80018001C01F001F80018001C01F803FC003
      FFFFB06F803FE007FFFFFDFF60DFF81FFF3F9FFFFFFFFFE4FE3F0FFFEFFFFFDC
      FC3F07FFE3FFE7DFFC3F83FFE1FFE7DEFC3FC1FFF0FFFFDEFC3FE10FF83FEFDF
      FC3FF003FC1FE7BEFC3FF801FE0FF37EF81FF801F003F9BFF00FF800F00399DE
      E007F800F00199DEC003F800F801C3DF8001F801FE03FFDC0000FC01FF81FFE4
      FFFFFE03FFE0FFFFFFFFFF0FFFF8FFFFFFFFC001FFFFFFFFFC0FC001800083E0
      F0038001800083E0F003C001800083E0C000C001800180808000C00180018000
      8000C001800181008000C001800181008000C0018001C0018000C0018003E083
      C000C0018003E083C001C0018003F1C7F80FC0018003F1C7F80FC0038003F1C7
      F80FC0078003FFFFF81FC00FFFFFFFFFFFFFC001FFFCFFFF800080009FF9F007
      800080008FF3E0038000800087E7E00380008000C3CFE00380008000F11FE003
      80008000F83FE00380008000FC7FE00380008000F83FE00380008000F19FE003
      80008000E3CFC00180008000C7E7C001800080008FFBC001C00180001FFFE003
      FFFF80003FFFF98FFFFFC001FFFFFC1FC001FFFFFFFFF801C0018FFFE001F801
      C001807FE001F801C001800FE001F801C0018007E0018001C0018007E0018001
      C0018003E0018001C0018003E0018001C0018001E0018001C0018001C0018001
      C0018001C0018003C001800300018007C00180070001801FC003C3C70003801F
      C007FE0FC007803FC00FFFFFC00F807FFE7FFE7FFE7FFE7FFC7FFC7FFE3FFE3F
      F87FF87FFE1FFE1FF07FF07FFE0FFE0FE000E00000070007C000C00000030003
      8000800000010001000000000000000000000000000000008000800000010001
      C000C00000030003E000E00000070007F07FF07FFE0FFE0FF87FF87FFE1FFE1F
      FC7FFC7FFE3FFE3FFE7FFE7FFE7FFE7F00000000000000000000000000000000
      000000000000}
  end
  object imglModul: TImageList
    Height = 24
    Width = 24
    Left = 236
    Top = 128
    Bitmap = {
      494C01010A007400780018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000949C9C00949C9C006363630063636300636363006363
      63006363630063636300949C9C00949C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400085A940008426300084263000842630000314A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000949C9C00424242005A4A39008C6B4A00AD7B5200CE945A00D6945A00D694
      5A00CE944A00B5844A009473520063523900393131008C848C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400085A9400084263000842630000314A0084848400000000004ABD
      FF00D6FFFF00BDFFFF008CF7FF008CF7FF00299CEF00107BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007363
      5A0063523100A57B5200CE845A00D68C5200DE945200CE944A00CE8C4A00D694
      4A00D68C4A00D68C5200CE8C5200CE945200C68C5A00845A3900524252000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004ABDFF00D6FFFF00BDFFFF008CF7FF00299CEF00107BCE00000000008484
      84004ABDFF004ABDFF004ABDFF004ABDFF004ABDFF0084848400084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073636300946B
      5200C6845200CE8C5200CE844A00D68C4A00CE8C4A00C6844A00CE8C5200C684
      5200CE8C5200CE844A00D68C4A00C6845200CE845200A57B4A005A4A84005252
      7300000000000000000000000000000000000000000000000000000000000000
      0000848484004ABDFF004ABDFF004ABDFF004ABDFF0084848400000000000000
      0000000000000000000084A5FF0094E7FF00BDFFFF007BCEDE004AA5C6002984
      BD005A5ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000949C9C008C635200BD84
      5200CE845200C6844A00C6844A00C6844A00CE844200CE8C4A00CE844200C684
      4A00BD844A00CE8C4A00CE844200C68C4200C68C4200A57B4A005A4ABD00524A
      CE00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C94FF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6004A5ADE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500AD7B4A00C684
      4A00C6844200C67B4200DE946300F7BD8C00EFCEA500F7EFBD00FFEFBD00FFEF
      BD00F7EFBD00FFEFB500F7C69C00DEA56B00CE844A00AD734200634A9C006B52
      D600424242000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000085A94000842630008426300084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094948C00BD844200CE7B
      3900CE945A00F7DEA500EFE7AD00EFEFB500F7EFBD00FFE7B500FFEFB500F7EF
      AD00FFEFB500F7E7AD00FFE7C600EFEFB500FFE7B500BD9C7300524A94006B39
      EF00525252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CEF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6003963CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C949400B5734200E7C6
      8400FFE7B500F7E7AD00F7E7AD00FFDEAD00FFE7B500EFE7AD00EFE7AD00FFE7
      AD00FFE7B500FFE7AD00FFE7AD00F7E7B500BDAD940084848C00948CD6006B52
      D600525252000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000073B5D60094DEEF00BDFFFF006BBDD600429CC6002184
      C6001873AD00007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400E7AD7B00F7DE
      A500F7D6A500F7DEA500F7DEAD00F7DEA500F7DEAD00F7DEAD00FFDEAD00FFDE
      AD00F7DEAD00EFDEAD00A59C8400948C9C00ADA5DE00BDA5F700B5A5FF008C7B
      E7005A5A5A000000000000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC6005AA5CE000842630008426300084263000031
      4A00009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00EFC69C00FFDE
      AD00FFDEA500FFDEA500F7DE9C00F7DE9C00F7DEA500F7DEA500F7DEAD00EFCE
      A500A5A58C008C84AD00AD94E700AD94EF00AD9CF700A59CEF00B59CFF00AD94
      F700636363000000000000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC6006363
      630063636300636363007BBDD60073C6DE00BDFFFF006BC6D60042A5C6002184
      C60010849C000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A59CA5008CAD940094A5
      94008CA59C008CA59C008CA59C0094A59C0094A59C008CA59C00949CA500847B
      8400A58CE700948CEF009C8CF700AD94E700A58CEF00948CEF009C94DE00A58C
      EF00636363000000000000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FF
      FF00C6C6C600C6FFFF008CCEEF009CE7FF00BDFFFF007BE7FF0052C6F70039A5
      E70021949C000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5BD007BD6C60084FF
      FF007BF7FF007BFFFF007BFFFF0084FFFF007BFFFF007BFFFF0084F7FF006BC6
      CE008C73C6009C84E7009C84E7008C7BE700947BE7009C84F7009484EF009484
      DE00636363000000000000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C6004ABDFF004ABDFF004ABDFF004ABDFF004ABD
      FF00C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000949C9C006394940073EF
      FF0073F7FF0073EFFF007BEFFF007BF7FF0073EFFF006BEFFF007BF7FF0073EF
      FF007BC6C6007B73BD00946BE7009473F7008C73E7008C73E7009473E7007B6B
      9C00A5A5A5000000000000000000000000000000000000000000007B00000094
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6FF
      FF00C6C6C600C6C6C600C6FFFF00C6FFFF0063636300C6FFC600C6FFC600C6FF
      C600C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000948C9400739C
      AD0084EFFF007BEFFF0073E7FF0073E7FF007BEFFF0073E7FF0073EFFF006BEF
      FF006BE7FF0073BDC6006B6BB5008C63D6008C63E7008C63D6007B6B94007B7B
      7B00000000000000000000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC60063636300C6C6
      C600C6C6C600C6C6C600C6C6C60063636300C6FFC600C6FFC600C6FFC600C6FF
      C600A5FFA50000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      94006B8CA50073C6DE006BE7FF0063E7FF006BE7FF006BE7FF006BE7FF0073E7
      FF006BE7FF0073E7FF0073BDCE00736BB500845ABD007B6B94008C948C000000
      0000000000000000000000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC6006363
      6300636363006363630063636300C6FFC600C6FFC600C6FFC600C6FFC600A5FF
      A50000C600000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000949C9C00848C94006B8C940073ADC6006BC6DE0063CEEF0063DEFF005ADE
      FF0063CEEF006BC6DE007BB5C6006B848C007B848400949C9C00000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C6
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000949C9C00B5B5BD00A5A5A5009494940084848400847B
      7B008C8C9C00949CA500B5B5BD00949C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C600000094
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5948C00B5735A00A5735A009C7B6B00A594
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131005263
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD948400AD4A00009C3900009C3100009C3100008C31
      00007B3108007B422900735242008C7B7300B5948C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B5A4A003929
      180029637B0052636B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60000000000000000000000000000000000000000000000
      000000000000B5948C00AD4A0000D66B00009C390000AD633900E7CEC600CE9C
      8400BD7B5200A54A18009C3100008C3100007B3108007B422900735242009C94
      8C00000000000000000000000000000000000000000000000000000000006B84
      630052734200319C3100319C3100319C3100319C3100319C3100D6D6D6008CB5
      C6008CF7FF002973F70021526B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD60029ADD60073DEF70073DEF70073DE
      F70073DEF70029ADD60000000000000000000000000000000000000000000000
      0000B5948C00B5520800DE730000D6730000A5420800BD735200EFDECE00E7D6
      C600E7CEBD00DEC6B500DEB5A500C68C7300B56B4A00A54A18009C3100007339
      2100B5948C00000000000000000000000000000000000000000073AD73001084
      100042CE420021A5210031A5310039AD390039AD390039AD3900107B10006BC6
      FF008CF7FF002973F7002973F70008426300736B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF0029ADD60073DEF70073DE
      F70073DEF70029ADD6000000000000000000000000000000000000000000B594
      8C00B55A0800E77B0000DE7B0000D6730000A5420800BD7B5A00EFDED600EFD6
      CE00E7CEC600E7C6BD00DEC6B500DEBDA500D6B59C00D6AD9400CE9C8400B584
      6B00BD7352000000000000000000000000000000000000000000298C290042CE
      420031AD310042BD42004ABD4A0052C65200B5E7A500399C39008CBD7B00399C
      390010A5D60042E7F7002973F7002973F70021526B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF0029ADD60073DE
      F70073DEF70029ADD6000000000000000000000000000000000000000000BD5A
      1000E7840000E7840000DE7B0000DE730000A5420800BD7B6300EFE7DE00EFDE
      D600E7D6C600E7CEBD00DEB5A500D6B59C00D6AD9C00D6AD9C00D6A58C00CE9C
      8400BD73520000000000000000000000000000000000000000003994390029AD
      290039B539004ABD4A005AC65A009CDE8C0052B5520073B56B00D6E7BD004AA5
      4200B5E7A50010A5D60042E7F7002973F7002973F70018425A00000000000000
      00000000000000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000029ADD6008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F70073DEF70073DEF70073DEF70029ADD600ADFFFF00ADFFFF008CF7FF0029AD
      D60073DEF70029ADD6000000000000000000000000000000000000000000CE63
      0000EF840000E7840000E77B0000DE7B0000A5420800BD846300EFE7DE00EFDE
      D600EFD6CE00CE9C8C00D6A58C00D6AD9400CE9C8400CE9C8400D6AD9400D6A5
      8C00BD73520000000000000000000000000000000000000000008CBD8C00299C
      29004ABD4A005AC65A006BCE6B00B5E7A50063A56300F7FFEF00F7FFEF0084BD
      7B00B5E7A50063CE630010A5D60042E7F7002973F7002973F70021526B000000
      00000000000000000000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70073DEF70073DEF70029ADD6008CF7FF008CF7FF008CF7FF008CF7
      FF0029ADD60029ADD6000000000000000000000000000000000000000000CE6B
      0000EF8C0000EF840000E7840000E77B0000A5420800C68C6B00F7EFE700EFE7
      DE00E7D6D600297BAD002973AD0021639C006384A500C68C7300D6AD9C00D6A5
      9400BD735200000000000000000000000000000000000000000000000000398C
      31004ABD4A0063CE6300B5E7A50052A54A00D6E7CE00FFFFFF00FFFFFF0084B5
      84009CDE8C0073CE73005AC65A0010A5D60042E7F7002973F7002973F7000842
      63000000000000000000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00313131007B5A4A00B5B5
      B5008CEFFF0073DEF70073DEF70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD6000000000000000000000000000000000000000000CE6B
      0000F78C0000EF8C0000E7840000E78400009C3900008C5A4200F7EFEF00F7E7
      E700EFDED600EFD6CE00E7CEC600D6C6BD00849CB500C6ADA500D6B59C00D6AD
      9400BD7352000000000000000000000000000000000000000000000000000000
      0000398C310052B552004A9C42009CB58C00BDC6C600BDC6C600E7DECE0094B5
      7B007BCE7B007BD67B0052B552004284390010A5D60042E7F7002973F7003139
      BD003131310000000000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF007B5A4A00392918002963
      7B0052636B0073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD6000000000000000000000000000000000000000000CE6B
      0000F7940000EF8C0000EF840000E7840000943100005A392900F7F7EF00F7EF
      E700EFE7DE00EFDED600EFD6CE00E7CEC600DEC6B500DEBDAD00DEB5A500D6AD
      9C00BD7352000000000000000000000000000000000000000000000000000000
      0000000000004A8C420018734A003984AD00217BBD00217BBD00428CAD004284
      630063BD6300399C3900528C4A00000000000000000010A5D60042A5DE008C84
      7B0084847B0031313100000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF00D6D6D6008CB5C6008CF7
      FF002973F70021526B0073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F70073DEF70029ADD6000000000000000000000000000000000000000000D66B
      0000F7940000F78C0000EF8C0000EF840000943100006B423100F7EFEF00F7EF
      EF00F7E7E700EFDEDE00EFDECE00E7D6C600E7CEBD00DEC6B500DEBDAD00DEB5
      A500BD7352000000000000000000000000000000000000000000000000000000
      0000000000005A849C00187BC600218CE700298CE700298CE700218CE700107B
      B500296B52000000000000000000000000000000000000000000846B5A00FFFF
      FF00F7EFE7007363520021214A000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7FF0010A5D6008CF7
      FF002973F7002973F700084263008CEFFF008CEFFF0073DEF70073DEF70073DE
      F70073DEF70029ADD6000000000000000000000000000000000000000000D673
      0800FF940000F7940000F78C0000EF8C0000BD6B3900F7CEAD00E7BD9400D6A5
      7B00E7B58C00E7BD9400EFC6A500E7BDA500DEBDAD00DEC6B500DEBDAD00DEB5
      A500BD7352000000000000000000000000000000000000000000000000000000
      000000000000217BBD002994EF002994F7003194FF003194FF00319CF7002994
      EF00216B9C000000000000000000000000000000000000000000000000009C94
      8C00E7CEB50029637B002973F7003139BD0000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C00847B7B00847B7B00847B7B0010A5
      D60042E7F7002973F7002973F70021526B00847B7B00847B7B00847B7B00847B
      7B0073DEF70029ADD6000000000000000000000000000000000000000000D673
      0800FF9C0800FF940000F7940000F7A53100FFEFE700FFF7EF00F7DEC600F7DE
      C600F7D6B500EFC6A500F7CEA500C6845A00522108006331100063392900A56B
      5200B5948C000000000000000000000000000000000000000000000000000000
      0000297BAD002994EF00399CFF00399CFF00399CFF00399CFF00399CFF00399C
      FF00298CE700106B9C0000000000000000000000000000000000000000000000
      00004A6B9C00299CEF002973F7003139BD0000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7FF008CF7
      FF0010A5D60042E7F7002973F7002973F70018425A008CEFFF008CEFFF0073DE
      F70073DEF70029ADD6000000000000000000000000000000000000000000D673
      1000FF9C1000FF9C0000FF940000F7A53100FFEFE700FFFFFF00FFEFE700F7D6
      BD00F7D6BD00F7D6BD00D6A59400C6846B00C6947B00C68C6300BD6B3900844A
      2900000000000000000000000000000000000000000000000000000000000000
      00002184C600399CFF0042A5FF0042A5FF0042A5FF0042A5FF0042A5FF0042A5
      FF00399CF700315A6B0000000000000000000000000000000000000000000000
      0000000000000010E7000010E7000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF0010A5D60042E7F7002973F7002973F70021526B008CEFFF008CEF
      FF0073DEF70029ADD6000000000000000000000000000000000000000000D67B
      1800FFA51800FF9C0800FF940000F7940000D68C4200F7EFE700FFF7EF00EFD6
      C600F7D6C600D6AD9C00CE9C8400D6AD9400D6AD9400D6A58C00C68C6300844A
      2900000000000000000000000000000000000000000000000000000000006384
      9C00399CF70042A5FF004AADFF004AADFF006BBDFF006BBDFF004AADFF004AAD
      FF0042A5F700316B840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000029ADD6009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF008CF7
      FF008CF7FF008CF7FF0010A5D60042E7F7002973F7002973F700084263008CEF
      FF008CEFFF0029ADD6000000000000000000000000000000000000000000D67B
      2100FFA52900FFA51800FF9C0800FF940000D6843900EFD6C600E7C6A500E7A5
      5A00D6A58C00D6A59400D6AD9C00D6B59C00D6AD9C00D6A59400CE946B008C52
      2900000000000000000000000000000000000000000000000000000000006BA5
      C60042A5F7004AADFF004AB5FF006BBDFF0052B5FF006BBDFF0052B5FF006BBD
      FF004AADFF003973940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60010A5D60042E7F7002973F7003139BD003131
      310029ADD60029ADD6000000000000000000000000000000000000000000D67B
      2100FFAD3100FFA52100FF9C1000FF9C0000DE8C3900F7E7E700EFDED600D6C6
      BD0084949C007B8494009C949400BD948400D6AD9C00D6AD9C00CE946B008C52
      2900000000000000000000000000000000000000000000000000000000005294
      BD0042A5EF0052B5FF006BC6FF006BC6FF006BC6FF0052B5F7004AB5EF0052B5
      F70052B5F70039738C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010A5D60042A5DE008C847B008484
      7B0031313100000000000000000000000000000000000000000000000000D684
      2900FFB53900FFAD2900FFA51800FF9C0800E7943900F7EFE700EFE7DE00D6CE
      CE0084ADCE007B9CB5007394AD00638CAD00DEB5A500D6AD9C00D69C73009452
      29000000000000000000000000000000000000000000000000000000000063A5
      C600217BB500298CCE003194DE003194DE002184C600298CC600318CC6002984
      C6002994CE00106B9C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000846B5A00FFFFFF00F7EF
      E7007363520021214A000000000000000000000000000000000000000000D684
      3100FFB54200FFAD3100FFA52900FFA51800EF9C3900F7EFEF00F7E7E700EFE7
      DE00EFDECE00E7D6C600E7CEBD00DEC6B500DEBDAD00DEB5A500DEA573009452
      2900000000000000000000000000000000000000000000000000000000006384
      9C002173A500428CC6004A94C6006BADD6007BBDEF0063ADF7004A9CE700398C
      CE00216BA5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C948C00E7CE
      B50029637B002973F7003139BD0000000000000000000000000000000000D684
      3900FFBD5200FFB54200FFAD3100FFA52100F7A54200F7F7EF00F7EFE700EFE7
      DE00EFDED600EFD6CE00E7CEC600E7C6BD00DEC6B500DEB5A500DEAD7B009C5A
      2900000000000000000000000000000000000000000000000000000000000000
      00002173A500318CC6006BADD6008CBDE7008CBDE70073BDE7005AADDE003994
      C600106B9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A6B
      9C00299CEF002973F7003139BD0000000000000000000000000000000000D684
      4200FFBD5A00FFBD4A00FFB53900FFAD3100FFA52900FFCE8C00FFCE8C00F7CE
      A500EFCEA500EFCEA500E7CEBD00E7C6AD00E7C6B500DEBDAD00DEAD7B00A563
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000428CB5004294C6006BADD6009CCEE7008CBDE7004294BD00106B
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000010E7000010E7000000000000000000000000000000000000000000D68C
      4200FFCE7B00FFD69C00F7D6A500EFDECE00EFDED600EFD6CE00E7CEC600E7C6
      AD00E7BDA500DEB59C00DEAD7B00DE9C6B00D6844200CE731800D66B1800BD84
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BA5BD004A94B500529CBD004A8CAD0063849C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6A5
      8C00CE9C8400CE9C8400CE9C8400CE9C8400C6948400C68C7300C68C7300C68C
      7300C6947B00C68C7300C68C7300C69C8C00B5948C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00393939008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B737B00426384004A84B500295A7B00424A
      4A00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000219CCE00219CCE00219CCE00219CCE00219CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B737B0042638C005A94C6006394CE00528CBD00316B9400295A
      7B00424A4A008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000219CCE007BD6EF005AD6EF0042C6E70039B5DE0039B5
      DE0029A5D6001094CE00088CC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000006B73
      7B00426B8C005A94C6006394CE006B9CD6006394CE00528CBD00316B9400316B
      9400295A7B00424A4A0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001094CE008CD6EF00ADFFFF007BFFFF0084F7FF0073EF
      F7006BE7F7005AD6EF0042C6E70031B5DE0021A5D6001094CE00189CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737373002121210052525200525252007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE6300000000000000000000000000006B7384004A6B8C005A8C
      C6006394CE00639CD6006B9CCE005A94C600639CD600528CBD00316B9400316B
      9400316B9400295A7B00424A4A00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000088CC60052B5DE00A5FFFF007BFFFF007BF7FF007BF7
      FF0084F7FF0084F7FF007BF7FF007BEFFF006BE7F7005AD6F70052CEEF0039B5
      E7001094CE000000000000000000000000000000000000000000000000000000
      000029292900181818005A4A4A00D6ADAD008442420018181800292929001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000294A63006394CE006394
      CE005A8CC600528CBD00316B9400528CB5006B9CD600528CBD00316B9400316B
      9400316B9400316B9400295A7B00394A4A008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE0042B5DE0094E7F7008CFFFF0073EFFF007BF7
      FF0073EFFF0073EFFF0073EFFF007BEFFF007BEFFF007BEFFF007BEFFF0052BD
      E70029ADDE000000000000000000000000000000000000000000000000006363
      630063525200BD949400FFCECE00FFCECE00A552520039212100522121002108
      08004A6384005A636B00424242004A4A4A004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000294A63006394CE002152
      8400316B9400316B940008396B00396BA5006394CE00528CBD00427BA5006B9C
      CE00316B9400316B9400316B9400295A7B00394A4A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021A5D60042BDE7007BD6EF0094F7FF0073F7FF007BF7
      FF0073EFFF0073EFFF0073EFFF0073EFFF0073EFFF0073E7FF0073E7FF0052BD
      E7004AC6EF00189CCE00000000000000000000000000000000007B7B7B00D6A5
      A500FFCECE00E7B5B500AD8C8C006B636300B563630052212100392121003910
      10007BADDE003163940008101800525252004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000294A63006394CE001042
      7300104A7300215A8C004A84B500639CD6007BADE70084BDEF0094ADC6007384
      94005A94BD00316B9400316B9400316B9400295A7B00394A4A00848484000000
      00000000000000000000000000000000000000000000219CCE00219CCE00219C
      CE00219CCE00219CCE0021A5D60063E7F70042BDE70094EFF7007BF7FF0073F7
      FF0073EFFF0073EFFF0073EFFF0073EFFF0073EFFF0073E7FF0073E7FF0052BD
      E70063DEFF0031B5DE000000000000000000000000000000000073737300D6A5
      A500947B7B004A4242005A5A5A0031313100BD8C8C004A181800181818001810
      10007BADDE004A7BAD0000183900292929002929290042424A00000000006363
      63005A5A5A000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000294A63006394CE002152
      84004A84B500639CD6007BADE7008CBDEF009CB5D600B5B5BD00CECECE00847B
      8400A5B5C6004A84AD00316B9400316B9400316B9400295A7B00394A4A008484
      84000000000000000000000000000000000000000000219CCE007BD6EF005AD6
      EF0042C6E70039B5DE0029A5D60073E7F70042BDE70094DEEF0094FFFF0073F7
      FF0073F7FF0073EFFF0073EFFF0073EFFF0073EFFF0073E7FF0073E7FF0052BD
      E7006BE7FF0052CEEF000000000000000000000000000000000073737300BD94
      94004A42420039393900313131007B6B6B00D6ADAD0073292900291818001810
      10007BADDE004A84B500215A8C000018390008315A00295A8C00081829004242
      42005A5A5A007373730000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000294A63006394CE00639C
      D6007BADE7008CBDEF009CB5D600B5B5BD00CEC6CE00D6CED600D6D6D600948C
      9400B5B5B500949CAD00528CB500316B9400316B9400316B9400295A7B00394A
      4A0084848400000000000000000000000000000000001094CE006BD6EF004ACE
      EF004ACEEF005AD6EF0021A5D60084EFFF005ADEF70052B5DE0094DEEF0094E7
      F70094E7F70094EFF7008CF7FF0073EFFF006BEFFF006BE7FF0073E7FF0052BD
      E7006BE7FF0073E7F700189CCE00000000000000000000000000000000006B5A
      5A008C6B6B00736B6B00D6BDBD00E7C6C600D6A5A500BD8484008C4242002908
      0800396BC60010299C0029528C00295A8C003163940031639C00103963002121
      2100636363001018180000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000031526B007BADE7008CBD
      EF009CBDD600B5BDC600CECECE00DEDEDE00DED6DE00DED6DE00DED6DE009494
      9400BDB5BD00ADADAD007B8C94005A8CBD00316B9400316B9400316B9400295A
      7B00394A4A007B847B00000000000000000000000000088CC60052BDDE005ADE
      F7005ADEF70063E7F70029A5D6007BEFFF0084FFFF0042BDE70042BDE70042BD
      E70042BDE70042BDE7008CD6EF009CF7FF007BF7FF006BEFFF006BEFFF0052BD
      E7005ADEF70084FFFF0039BDE700000000000000000000000000000000005A52
      5200FFEFEF00E7C6C600D6A5A500CE9C9C00CE9C9C007B6B6B00393139000018
      3900005AD6000039D60000189C0010298400214A8C0031639C00215284000818
      2900181818001039630042424A00000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000042637B004A7BB500949C
      A500E7DEE700E7E7E700E7E7E700E7DEE700EFEFEF00DED6DE00ADA5AD00B5AD
      B500BDBDBD00B5ADB5008C848C00ADBDC6004A84AD00316B9400316B9400316B
      9400295A7B00424A4A00000000000000000000000000189CCE0042B5DE0073EF
      F7006BEFFF0073EFF70029A5D6007BEFFF007BFFFF0084FFFF007BF7FF0073F7
      FF006BEFFF0052D6EF0042BDE70042BDE70094E7F70094EFF7008CF7FF0073E7
      F7007BE7FF009CFFFF0073E7F700189CCE000000000000000000000000006363
      630073636300A57B7B00B5BDBD007B42420021293100083163000852AD003184
      F70094C6FF00427BB50008396300002984000021940010298400214A8C002152
      8400104273003163940042424A00000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000094949C00396394009494
      9C00F7FFF700EFEFEF00E7EFEF00CEDED600ADADAD008C8C8C00BDB5BD00DED6
      DE00B5ADB500BDB5BD0094949400C6BDC6008494A500528CB500316B9400316B
      9400316B94002142520000000000000000000000000021A5D60042BDE7007BE7
      F7007BF7FF007BF7FF0029A5D6007BEFFF007BFFFF007BF7FF007BF7FF007BF7
      FF007BF7FF0084F7FF006BEFFF0042BDE70042BDE7007BCEE70084D6EF0084D6
      EF0084D6EF0094DEEF0094DEEF0029A5D6000000000000000000000000000000
      000000000000181818004231310000214A000852AD003984EF0073B5FF009CCE
      FF00A5D6FF005A8CB500184A7300002918000031630000298C000021A5001021
      7B0029528C003163940042424A00000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000A5ADB5009C9C
      9C00F7FFF700BDEFD60073CE9C0039845200A59CA500DED6DE00C6BDC6009C9C
      9C00B5B5B500DED6DE0094949400C6C6C600A59CA500848C9C005A8CBD00316B
      9400316B94002142520000000000000000000000000021A5D60063E7F70042BD
      E7007BF7FF007BF7FF0029A5D60084F7FF007BFFFF007BF7FF007BF7FF007BF7
      FF007BF7FF007BF7FF007BF7FF007BF7FF0063E7F70042BDE70042BDE70042BD
      E7001894CE001894CE00219CCE001894CE000000000000000000000000000000
      0000000000004A4A4A004A4A52004294FF0084BDFF009CCEFF009CCEFF00BDE7
      FF00B5D6EF0084BDE7005A94C600396B9C0031639C001039420008398C000031
      B50000189C001029840042424A00000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE6300000000000000000000000000000000000000000000527B
      52006BC6940039A55A00297331005A6B5A00CE8CCE0094849400ADA5AD00D6CE
      D600D6CED600BDB5BD00B5ADB500C6C6C600ADA5AD0084848400B5BDCE004A84
      AD00316B94002142520000000000000000000000000029A5D60073E7F70042BD
      E7008CE7F70084FFFF0029A5D60094EFF70084FFFF007BF7FF007BF7FF0073F7
      FF007BEFFF0073E7F70073E7F7007BE7F70084EFFF007BEFFF0084EFFF004AC6
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A00525252009CCEFF00A5D6FF00ADDEFF00B5D6EF0084AD
      D6005284BD006394C60073A5D6007BADDE005A8CBD00396B9C00295A8C001042
      5A000842BD000031BD0039424A00000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE6300000000000000000000000000000000000000000000396B
      3900216B2900525A5200AD6BAD00C66BC6009C319C00947B8C00DECECE00BDB5
      BD009C949C00BDB5BD00DED6DE00BDBDBD00B5ADB50094949400CECECE00314A
      6B004A84AD002142520000000000000000000000000021A5D60084EFFF005ADE
      F70052B5DE0094DEEF0094E7F7001894CE009CFFFF0084FFFF008CFFFF0084FF
      FF0042BDE700219CCE0029A5D60029A5D60029A5D60031ADDE0039B5DE0029A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000007373730052525200BDE7FF00A5CEEF0084ADD6005A94C6004A7B
      AD005284B500396B9C004A7BAD00639CCE0073A5D60073ADDE00639CCE003163
      9C0031639C00215AA50042424A00000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      000094949400942994009C319C007B427300AD947B00EFBD7300D6945200A59C
      A500DED6DE00CEC6CE00A5A5A500ADA5AD00DED6DE0094949400D6CED6001839
      5200215A8C0042637B0000000000000000000000000029A5D6007BEFFF0084FF
      FF0042BDE70042BDE70042BDE7001894CE001894CE001894CE001894CE001894
      CE001894CE006BEFFF0052BDE7005ADEF70084FFFF0039BDE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300527394006394C600639CCE005284BD0073A5
      D6009CCEFF007BADDE004273AD005A8CBD006394C600639CCE006B9CD60084B5
      E7005A8CBD004273A50042424A00000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      000000000000734A73007B394200EFAD6B00F7944200D64A31009463630073E7
      E70084A5A500A59CA500CEC6CE00DED6DE00C6BDC600A5A5A500D6CED6004A63
      7B004A6B8C00848C940000000000000000000000000029A5D6007BEFFF007BFF
      FF0084FFFF007BF7FF0073F7FF006BEFFF0052D6EF0042BDE70042BDE70094E7
      F70094EFF7008CF7FF0073E7F7007BE7FF009CFFFF0073E7F700189CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000073737300394A5A00426B8C006394C6005284
      BD00396B9C004A7BAD004273A5004A7BAD005A8CC6005284B5006394CE00639C
      CE0073A5D60073A5D6004A4A5200000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      000000000000000000009C4A4A00CE392900945A63005AC6CE0042F7FF005ADE
      F7007B949C00D6D6D600C6BDC60094949400ADADAD00DED6DE00CEC6CE008484
      8400000000000000000000000000000000000000000029A5D6007BEFFF007BFF
      FF007BF7FF007BF7FF007BF7FF007BF7FF0084F7FF006BEFFF0042BDE70042BD
      E7007BCEE70084D6EF0084D6EF0084D6EF0094DEEF0094DEEF0029A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300525A6300395A
      7B00639CCE005284B5004A7BB5005284B5004A7BAD005284B5004A7BB500639C
      CE00426B8C004A5A6B0073737300000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000949494006BC6E7005ADEF7006B9CB5007B9C
      940073BD940052AD7B00948C9400DED6DE00D6CED600ADADAD00ADADAD000000
      0000000000000000000000000000000000000000000029A5D60084F7FF007BFF
      FF007BF7FF007BF7FF007BF7FF007BF7FF007BF7FF007BF7FF007BF7FF0063E7
      F70042BDE70042BDE70042BDE7001894CE001894CE00219CCE001894CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007373
      730039424A00527394005A8CB500528CBD00427BAD005284B500527BA5003942
      4A00737373000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000738494004A6352006BB584004ABD
      7300299439004A734A00C694C600A58CA500ADA5AD0000000000000000000000
      0000000000000000000000000000000000000000000029A5D60094EFF70084FF
      FF007BF7FF007BF7FF0073F7FF007BEFFF0073E7F70073E7F7007BE7F70084EF
      FF007BEFFF0084EFFF004AC6E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073737300525A6B00395A7B00426B8C004A5A6B00737373000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A7B5A00218429004A6B
      4A00A57BA500CE73CE00AD42AD008C638C000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001894CE009CFF
      FF0084FFFF008CFFFF0084FFFF0042BDE700219CCE0029A5D60029A5D60029A5
      D60031ADDE0039B5DE0029A5D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737373007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949494008429
      8400AD42AD007B297B0094849400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001894CE001894
      CE001894CE001894CE001894CE001894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFFFFFF
      FFFF000000000000FFFFFFFFFFFF000000000000FC00FFFFE03F000000000000
      F0003FF0203F000000000000E0001FF0200F000000000000C0000FF03C070000
      00000000800007FFFC07000000000000800007FFFE0F000000000000800007FF
      FC07000000000000800007C00000000000000000800007C00000000000000000
      800007C00000000000000000800007C00000000000000000800007C000000000
      00000000800007C00000000000000000C0000FC00000000000000000E0001FC0
      0000000000000000F0003FC00000000000000000FC00FFC00000000000000000
      FFFFFFC00000000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF000000000000FFFFFFFE0FFFFFCFFFFFFFFFFFFFFFFC
      007FFFC3FFFFFFFF800003F8000FE001FFFF1FFF800003F00007C0007FF8000F
      800003E00007C0007FE0000F800003E00007C0003FC0000F800003E00007C000
      1FC0000F800003E00007E0000FC0000F800003E00007F00007C0000F800003E0
      0007F80183C0000F800003E00007F807C1C0000F800003E00007F807E0C0000F
      800003E00007F003F0C0000F800003E0000FF003F9C0000F800003E0000FE003
      FFC0000F800003E0000FE003FFC0000F800003E0000FE003FFC0000FFFFF07E0
      000FE003FFC0000FFFFF83E0000FE007FFE0000FFFFFC1E0000FF007FFF8000F
      FFFFE1E0000FF80FFFFE1FFFFFFFF3E0000FFC1FFFFFFFFFFFFFFFE0007FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFE07FFFC
      1FFFFFFFFFFFFFFFF803FFFC01FFFF9FFFC00003E001FFFC001FFE0FFFC00003
      8000FFFC0007F00FFFC0000380007FFC0007E0007FC0000380003FFC0003C000
      7FC0000380001F800003C00027C0000380000F800003C00003C0000380000780
      0001E00003C00003800003800001E00001C00003800003800000E00001C00003
      800003800000F80001C00003C00003800000F80001C00003E0000380000FF800
      01C00003E0000380000FF80001C00003F0000380003FFC0001C00003F8000380
      001FFE0001C00003FC000F80001FFF8001C00003FE001F80001FFFE007C00003
      FF007F8001FFFFF81FE00007FF80FFC001FFFFFE7FFFFFFFFFC1FFC0FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsPOPStatus: TDataSource
    DataSet = AppCompsDM.dtsPOPUS
    Left = 144
    Top = 432
  end
  object StyleDefaultController: TcxDefaultEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.Color = clYellow
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    OnStyleChanged = StyleDefaultControllerStyleChanged
    Left = 148
    Top = 60
    PixelsPerInch = 96
  end
  object dsKTLUsers: TDataSource
    AutoEdit = False
    DataSet = AppCompsDM.dtsKTLUsers
    Left = 224
    Top = 440
  end
  object dsKTLFaktPol: TDataSource
    DataSet = AppCompsDM.dtsKTLFaktPol
    Left = 312
    Top = 440
  end
  object strepPredefined: TcxStyleRepository
    Left = 608
    Top = 192
    PixelsPerInch = 96
    object cxStyle47: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle51: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle55: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle56: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle57: TcxStyle
      AssignedValues = [svColor]
      Color = 8453888
    end
    object cxStyle58: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15136253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 7346457
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16436871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8036607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12180223
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle66: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 1262987
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle69: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle73: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9234160
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11788021
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle82: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16775416
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16443110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle86: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14599344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8519755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14481663
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle95: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11119017
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8036607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle100: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle102: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle103: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle104: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle105: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle106: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle107: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13820129
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle108: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle109: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13820129
    end
    object cxStyle110: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 66
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 13820129
    end
    object cxStyle111: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle112: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle113: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle114: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle115: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle116: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle117: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle118: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14542570
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle119: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle120: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle121: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle122: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle123: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle124: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle125: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clTeal
    end
    object cxStyle126: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle127: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle128: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11055248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle129: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14211272
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle130: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11055248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle131: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7897176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = 524288
    end
    object cxStyle132: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4194368
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle133: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11055248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle134: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7897176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle135: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11055248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle136: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = 7897176
    end
    object cxStyle137: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7897176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle138: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle139: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle140: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15521240
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle141: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle142: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle143: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle144: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle145: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle146: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle147: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 11619930
    end
    object cxStyle148: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle149: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle150: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle151: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14150898
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle152: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle153: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14150898
    end
    object cxStyle154: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle155: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle156: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle157: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle158: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle159: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle160: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle161: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle162: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle163: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle164: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8949832
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle165: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4673068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle166: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle167: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle168: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle169: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle170: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle171: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160664
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle172: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9476264
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle173: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160664
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle174: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9476264
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle175: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5791864
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 9476264
    end
    object cxStyle176: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4204608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle177: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9476264
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle178: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13160664
    end
    object cxStyle179: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9476264
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle180: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160664
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6307912
    end
    object cxStyle181: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13160664
    end
    object cxStyle182: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle183: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle184: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13626101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle185: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle186: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle187: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle188: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle189: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle190: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle191: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle192: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle193: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle194: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle195: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14273729
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle196: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle197: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14273729
    end
    object cxStyle198: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle199: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle200: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle201: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle202: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 8217935
    end
    object cxStyle203: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle204: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle205: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle206: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle207: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle208: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle209: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle210: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle211: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle212: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle213: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle214: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle215: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle216: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12038095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle217: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14473447
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle218: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12038095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle219: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7364767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14540253
    end
    object cxStyle220: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle221: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12038095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle222: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7364767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle223: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12038095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle224: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 7364767
    end
    object cxStyle225: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7364767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle226: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle227: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle228: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14735592
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle229: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle230: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7364768
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14540253
    end
    object cxStyle231: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle232: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle233: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7364768
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle234: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle235: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 7364768
    end
    object cxStyle236: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7364768
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle237: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle238: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle239: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14933198
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle240: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle241: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle242: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4276545
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle243: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle244: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle245: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle246: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 9928789
    end
    object cxStyle247: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle248: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle249: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle250: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13886416
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle251: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle252: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13886416
    end
    object cxStyle253: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2178849
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle254: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle255: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle256: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle257: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6592345
    end
    object cxStyle258: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle259: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle260: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle261: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle262: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle263: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle264: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle265: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle266: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle267: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle268: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clPurple
    end
    object cxStyle269: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle270: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle271: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle272: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle273: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle274: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clDefault
    end
    object cxStyle275: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4210688
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle276: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle277: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle278: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle279: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clTeal
    end
    object cxStyle280: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle281: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle282: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10542814
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle283: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13692654
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle284: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10542814
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle285: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4308156
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle286: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 1916928
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle287: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10542814
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle288: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle289: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10542814
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle290: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clOlive
    end
    object cxStyle291: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle292: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle293: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle294: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle295: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle296: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle297: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle298: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle299: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle300: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle301: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle302: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle303: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle304: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14671839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle305: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle306: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle307: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle308: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle309: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle310: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle311: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle312: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle313: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle314: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle315: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle316: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle317: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle318: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle319: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle320: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle321: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle322: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle323: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle324: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle325: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle326: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle327: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle328: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle329: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle330: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle331: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle332: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle333: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle334: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle335: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle336: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle337: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle338: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle339: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle340: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle341: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle342: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle343: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle344: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle345: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle346: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle347: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle348: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle349: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle350: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle351: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle352: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle353: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle354: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle355: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle356: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle357: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle358: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle359: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle360: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle361: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle362: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle363: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle364: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clLime
    end
    object cxStyle365: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle366: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clLime
    end
    object cxStyle367: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clAqua
    end
    object cxStyle368: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle369: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle370: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle371: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle372: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clLime
    end
    object cxStyle373: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle374: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle375: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clLime
    end
    object cxStyle376: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle377: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clLime
    end
    object cxStyle378: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clAqua
    end
    object cxStyle379: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle380: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle381: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle382: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle383: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle384: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle385: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle386: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle387: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle388: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle389: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clPurple
    end
    object cxStyle390: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle391: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle392: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle393: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle394: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle395: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle396: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle397: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle398: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle399: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle400: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clPurple
    end
    object cxStyle401: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle402: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle403: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle404: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle405: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle406: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle407: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle408: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle409: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle410: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle411: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle412: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle413: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle414: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle415: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle416: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle417: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle418: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle419: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle420: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle421: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle422: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle423: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle47
      Styles.Content = cxStyle48
      Styles.ContentEven = cxStyle49
      Styles.ContentOdd = cxStyle50
      Styles.FilterBox = cxStyle51
      Styles.Inactive = cxStyle56
      Styles.IncSearch = cxStyle57
      Styles.Selection = cxStyle60
      Styles.Footer = cxStyle52
      Styles.Group = cxStyle53
      Styles.GroupByBox = cxStyle54
      Styles.Header = cxStyle55
      Styles.Indicator = cxStyle58
      Styles.Preview = cxStyle59
      BuiltIn = True
    end
    object GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet
      Caption = 'UserFormat1'
      Styles.Content = cxStyle61
      Styles.ContentEven = cxStyle62
      Styles.ContentOdd = cxStyle63
      Styles.Inactive = cxStyle68
      Styles.Selection = cxStyle71
      Styles.Footer = cxStyle64
      Styles.Group = cxStyle65
      Styles.GroupByBox = cxStyle66
      Styles.Header = cxStyle67
      Styles.Indicator = cxStyle69
      Styles.Preview = cxStyle70
      BuiltIn = True
    end
    object GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
      Styles.Content = cxStyle72
      Styles.ContentEven = cxStyle73
      Styles.ContentOdd = cxStyle74
      Styles.Inactive = cxStyle79
      Styles.Selection = cxStyle82
      Styles.Footer = cxStyle75
      Styles.Group = cxStyle76
      Styles.GroupByBox = cxStyle77
      Styles.Header = cxStyle78
      Styles.Indicator = cxStyle80
      Styles.Preview = cxStyle81
      BuiltIn = True
    end
    object GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet
      Caption = 'UserFormat3'
      Styles.Content = cxStyle83
      Styles.ContentEven = cxStyle84
      Styles.ContentOdd = cxStyle85
      Styles.Inactive = cxStyle90
      Styles.Selection = cxStyle93
      Styles.Footer = cxStyle86
      Styles.Group = cxStyle87
      Styles.GroupByBox = cxStyle88
      Styles.Header = cxStyle89
      Styles.Indicator = cxStyle91
      Styles.Preview = cxStyle92
      BuiltIn = True
    end
    object GridTableViewStyleSheetUserFormat4: TcxGridTableViewStyleSheet
      Caption = 'UserFormat4'
      Styles.Content = cxStyle94
      Styles.ContentEven = cxStyle95
      Styles.ContentOdd = cxStyle96
      Styles.Inactive = cxStyle101
      Styles.Selection = cxStyle104
      Styles.Footer = cxStyle97
      Styles.Group = cxStyle98
      Styles.GroupByBox = cxStyle99
      Styles.Header = cxStyle100
      Styles.Indicator = cxStyle102
      Styles.Preview = cxStyle103
      BuiltIn = True
    end
    object GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet
      Caption = 'Brick'
      Styles.Content = cxStyle105
      Styles.ContentEven = cxStyle106
      Styles.ContentOdd = cxStyle107
      Styles.Inactive = cxStyle112
      Styles.Selection = cxStyle115
      Styles.Footer = cxStyle108
      Styles.Group = cxStyle109
      Styles.GroupByBox = cxStyle110
      Styles.Header = cxStyle111
      Styles.Indicator = cxStyle113
      Styles.Preview = cxStyle114
      BuiltIn = True
    end
    object GridTableViewStyleSheetDesert: TcxGridTableViewStyleSheet
      Caption = 'Desert'
      Styles.Content = cxStyle116
      Styles.ContentEven = cxStyle117
      Styles.ContentOdd = cxStyle118
      Styles.Inactive = cxStyle123
      Styles.Selection = cxStyle126
      Styles.Footer = cxStyle119
      Styles.Group = cxStyle120
      Styles.GroupByBox = cxStyle121
      Styles.Header = cxStyle122
      Styles.Indicator = cxStyle124
      Styles.Preview = cxStyle125
      BuiltIn = True
    end
    object GridTableViewStyleSheetEggplant: TcxGridTableViewStyleSheet
      Caption = 'Eggplant'
      Styles.Content = cxStyle127
      Styles.ContentEven = cxStyle128
      Styles.ContentOdd = cxStyle129
      Styles.Inactive = cxStyle134
      Styles.Selection = cxStyle137
      Styles.Footer = cxStyle130
      Styles.Group = cxStyle131
      Styles.GroupByBox = cxStyle132
      Styles.Header = cxStyle133
      Styles.Indicator = cxStyle135
      Styles.Preview = cxStyle136
      BuiltIn = True
    end
    object GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet
      Caption = 'Lilac'
      Styles.Content = cxStyle138
      Styles.ContentEven = cxStyle139
      Styles.ContentOdd = cxStyle140
      Styles.Inactive = cxStyle145
      Styles.Selection = cxStyle148
      Styles.Footer = cxStyle141
      Styles.Group = cxStyle142
      Styles.GroupByBox = cxStyle143
      Styles.Header = cxStyle144
      Styles.Indicator = cxStyle146
      Styles.Preview = cxStyle147
      BuiltIn = True
    end
    object GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet
      Caption = 'Maple'
      Styles.Content = cxStyle149
      Styles.ContentEven = cxStyle150
      Styles.ContentOdd = cxStyle151
      Styles.Inactive = cxStyle156
      Styles.Selection = cxStyle159
      Styles.Footer = cxStyle152
      Styles.Group = cxStyle153
      Styles.GroupByBox = cxStyle154
      Styles.Header = cxStyle155
      Styles.Indicator = cxStyle157
      Styles.Preview = cxStyle158
      BuiltIn = True
    end
    object GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet
      Caption = 'Marine (high color)'
      Styles.Content = cxStyle160
      Styles.ContentEven = cxStyle161
      Styles.ContentOdd = cxStyle162
      Styles.Inactive = cxStyle167
      Styles.Selection = cxStyle170
      Styles.Footer = cxStyle163
      Styles.Group = cxStyle164
      Styles.GroupByBox = cxStyle165
      Styles.Header = cxStyle166
      Styles.Indicator = cxStyle168
      Styles.Preview = cxStyle169
      BuiltIn = True
    end
    object GridTableViewStyleSheetPlumhighcolor: TcxGridTableViewStyleSheet
      Caption = 'Plum (high color)'
      Styles.Content = cxStyle171
      Styles.ContentEven = cxStyle172
      Styles.ContentOdd = cxStyle173
      Styles.Inactive = cxStyle178
      Styles.Selection = cxStyle181
      Styles.Footer = cxStyle174
      Styles.Group = cxStyle175
      Styles.GroupByBox = cxStyle176
      Styles.Header = cxStyle177
      Styles.Indicator = cxStyle179
      Styles.Preview = cxStyle180
      BuiltIn = True
    end
    object GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle182
      Styles.ContentEven = cxStyle183
      Styles.ContentOdd = cxStyle184
      Styles.Inactive = cxStyle189
      Styles.Selection = cxStyle192
      Styles.Footer = cxStyle185
      Styles.Group = cxStyle186
      Styles.GroupByBox = cxStyle187
      Styles.Header = cxStyle188
      Styles.Indicator = cxStyle190
      Styles.Preview = cxStyle191
      BuiltIn = True
    end
    object GridTableViewStyleSheetRainyDay: TcxGridTableViewStyleSheet
      Caption = 'Rainy Day'
      Styles.Content = cxStyle193
      Styles.ContentEven = cxStyle194
      Styles.ContentOdd = cxStyle195
      Styles.Inactive = cxStyle200
      Styles.Selection = cxStyle203
      Styles.Footer = cxStyle196
      Styles.Group = cxStyle197
      Styles.GroupByBox = cxStyle198
      Styles.Header = cxStyle199
      Styles.Indicator = cxStyle201
      Styles.Preview = cxStyle202
      BuiltIn = True
    end
    object GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet
      Caption = 'Red, White, and Blue (VGA)'
      Styles.Content = cxStyle204
      Styles.ContentEven = cxStyle205
      Styles.ContentOdd = cxStyle206
      Styles.Inactive = cxStyle211
      Styles.Selection = cxStyle214
      Styles.Footer = cxStyle207
      Styles.Group = cxStyle208
      Styles.GroupByBox = cxStyle209
      Styles.Header = cxStyle210
      Styles.Indicator = cxStyle212
      Styles.Preview = cxStyle213
      BuiltIn = True
    end
    object GridTableViewStyleSheetRose: TcxGridTableViewStyleSheet
      Caption = 'Rose'
      Styles.Content = cxStyle215
      Styles.ContentEven = cxStyle216
      Styles.ContentOdd = cxStyle217
      Styles.Inactive = cxStyle222
      Styles.Selection = cxStyle225
      Styles.Footer = cxStyle218
      Styles.Group = cxStyle219
      Styles.GroupByBox = cxStyle220
      Styles.Header = cxStyle221
      Styles.Indicator = cxStyle223
      Styles.Preview = cxStyle224
      BuiltIn = True
    end
    object GridTableViewStyleSheetRoselarge: TcxGridTableViewStyleSheet
      Caption = 'Rose (large)'
      Styles.Content = cxStyle226
      Styles.ContentEven = cxStyle227
      Styles.ContentOdd = cxStyle228
      Styles.Inactive = cxStyle233
      Styles.Selection = cxStyle236
      Styles.Footer = cxStyle229
      Styles.Group = cxStyle230
      Styles.GroupByBox = cxStyle231
      Styles.Header = cxStyle232
      Styles.Indicator = cxStyle234
      Styles.Preview = cxStyle235
      BuiltIn = True
    end
    object GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet
      Caption = 'Slate'
      Styles.Content = cxStyle237
      Styles.ContentEven = cxStyle238
      Styles.ContentOdd = cxStyle239
      Styles.Inactive = cxStyle244
      Styles.Selection = cxStyle247
      Styles.Footer = cxStyle240
      Styles.Group = cxStyle241
      Styles.GroupByBox = cxStyle242
      Styles.Header = cxStyle243
      Styles.Indicator = cxStyle245
      Styles.Preview = cxStyle246
      BuiltIn = True
    end
    object GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet
      Caption = 'Spruce'
      Styles.Content = cxStyle248
      Styles.ContentEven = cxStyle249
      Styles.ContentOdd = cxStyle250
      Styles.Inactive = cxStyle255
      Styles.Selection = cxStyle258
      Styles.Footer = cxStyle251
      Styles.Group = cxStyle252
      Styles.GroupByBox = cxStyle253
      Styles.Header = cxStyle254
      Styles.Indicator = cxStyle256
      Styles.Preview = cxStyle257
      BuiltIn = True
    end
    object GridTableViewStyleSheetStormVGA: TcxGridTableViewStyleSheet
      Caption = 'Storm (VGA)'
      Styles.Content = cxStyle259
      Styles.ContentEven = cxStyle260
      Styles.ContentOdd = cxStyle261
      Styles.Inactive = cxStyle266
      Styles.Selection = cxStyle269
      Styles.Footer = cxStyle262
      Styles.Group = cxStyle263
      Styles.GroupByBox = cxStyle264
      Styles.Header = cxStyle265
      Styles.Indicator = cxStyle267
      Styles.Preview = cxStyle268
      BuiltIn = True
    end
    object GridTableViewStyleSheetTealVGA: TcxGridTableViewStyleSheet
      Caption = 'Teal (VGA)'
      Styles.Content = cxStyle270
      Styles.ContentEven = cxStyle271
      Styles.ContentOdd = cxStyle272
      Styles.Inactive = cxStyle277
      Styles.Selection = cxStyle280
      Styles.Footer = cxStyle273
      Styles.Group = cxStyle274
      Styles.GroupByBox = cxStyle275
      Styles.Header = cxStyle276
      Styles.Indicator = cxStyle278
      Styles.Preview = cxStyle279
      BuiltIn = True
    end
    object GridTableViewStyleSheetWheat: TcxGridTableViewStyleSheet
      Caption = 'Wheat'
      Styles.Content = cxStyle281
      Styles.ContentEven = cxStyle282
      Styles.ContentOdd = cxStyle283
      Styles.Inactive = cxStyle288
      Styles.Selection = cxStyle291
      Styles.Footer = cxStyle284
      Styles.Group = cxStyle285
      Styles.GroupByBox = cxStyle286
      Styles.Header = cxStyle287
      Styles.Indicator = cxStyle289
      Styles.Preview = cxStyle290
      BuiltIn = True
    end
    object GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet
      Caption = 'Windows Classic'
      Styles.Content = cxStyle292
      Styles.ContentEven = cxStyle293
      Styles.ContentOdd = cxStyle294
      Styles.Inactive = cxStyle299
      Styles.Selection = cxStyle302
      Styles.Footer = cxStyle295
      Styles.Group = cxStyle296
      Styles.GroupByBox = cxStyle297
      Styles.Header = cxStyle298
      Styles.Indicator = cxStyle300
      Styles.Preview = cxStyle301
      BuiltIn = True
    end
    object GridTableViewStyleSheetWindowsClassiclarge: TcxGridTableViewStyleSheet
      Caption = 'Windows Classic (large)'
      Styles.Content = cxStyle303
      Styles.ContentEven = cxStyle304
      Styles.ContentOdd = cxStyle305
      Styles.Inactive = cxStyle310
      Styles.Selection = cxStyle313
      Styles.Footer = cxStyle306
      Styles.Group = cxStyle307
      Styles.GroupByBox = cxStyle308
      Styles.Header = cxStyle309
      Styles.Indicator = cxStyle311
      Styles.Preview = cxStyle312
      BuiltIn = True
    end
    object GridTableViewStyleSheetWindowsStandard: TcxGridTableViewStyleSheet
      Caption = 'Windows Standard'
      Styles.Content = cxStyle314
      Styles.ContentEven = cxStyle315
      Styles.ContentOdd = cxStyle316
      Styles.Inactive = cxStyle321
      Styles.Selection = cxStyle324
      Styles.Footer = cxStyle317
      Styles.Group = cxStyle318
      Styles.GroupByBox = cxStyle319
      Styles.Header = cxStyle320
      Styles.Indicator = cxStyle322
      Styles.Preview = cxStyle323
      BuiltIn = True
    end
    object GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet
      Caption = 'Windows Standard (large)'
      Styles.Content = cxStyle325
      Styles.ContentEven = cxStyle326
      Styles.ContentOdd = cxStyle327
      Styles.Inactive = cxStyle332
      Styles.Selection = cxStyle335
      Styles.Footer = cxStyle328
      Styles.Group = cxStyle329
      Styles.GroupByBox = cxStyle330
      Styles.Header = cxStyle331
      Styles.Indicator = cxStyle333
      Styles.Preview = cxStyle334
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrast1: TcxGridTableViewStyleSheet
      Caption = 'High Contrast #1'
      Styles.Content = cxStyle336
      Styles.ContentEven = cxStyle337
      Styles.ContentOdd = cxStyle338
      Styles.Inactive = cxStyle343
      Styles.Selection = cxStyle346
      Styles.Footer = cxStyle339
      Styles.Group = cxStyle340
      Styles.GroupByBox = cxStyle341
      Styles.Header = cxStyle342
      Styles.Indicator = cxStyle344
      Styles.Preview = cxStyle345
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrast1large: TcxGridTableViewStyleSheet
      Caption = 'High Contrast #1 (large)'
      Styles.Content = cxStyle347
      Styles.ContentEven = cxStyle348
      Styles.ContentOdd = cxStyle349
      Styles.Inactive = cxStyle354
      Styles.Selection = cxStyle357
      Styles.Footer = cxStyle350
      Styles.Group = cxStyle351
      Styles.GroupByBox = cxStyle352
      Styles.Header = cxStyle353
      Styles.Indicator = cxStyle355
      Styles.Preview = cxStyle356
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrast2: TcxGridTableViewStyleSheet
      Caption = 'High Contrast #2'
      Styles.Content = cxStyle358
      Styles.ContentEven = cxStyle359
      Styles.ContentOdd = cxStyle360
      Styles.Inactive = cxStyle365
      Styles.Selection = cxStyle368
      Styles.Footer = cxStyle361
      Styles.Group = cxStyle362
      Styles.GroupByBox = cxStyle363
      Styles.Header = cxStyle364
      Styles.Indicator = cxStyle366
      Styles.Preview = cxStyle367
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrast2large: TcxGridTableViewStyleSheet
      Caption = 'High Contrast #2 (large)'
      Styles.Content = cxStyle369
      Styles.ContentEven = cxStyle370
      Styles.ContentOdd = cxStyle371
      Styles.Inactive = cxStyle376
      Styles.Selection = cxStyle379
      Styles.Footer = cxStyle372
      Styles.Group = cxStyle373
      Styles.GroupByBox = cxStyle374
      Styles.Header = cxStyle375
      Styles.Indicator = cxStyle377
      Styles.Preview = cxStyle378
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrastBlack: TcxGridTableViewStyleSheet
      Caption = 'High Contrast Black'
      Styles.Content = cxStyle380
      Styles.ContentEven = cxStyle381
      Styles.ContentOdd = cxStyle382
      Styles.Inactive = cxStyle387
      Styles.Selection = cxStyle390
      Styles.Footer = cxStyle383
      Styles.Group = cxStyle384
      Styles.GroupByBox = cxStyle385
      Styles.Header = cxStyle386
      Styles.Indicator = cxStyle388
      Styles.Preview = cxStyle389
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrastBlacklarge: TcxGridTableViewStyleSheet
      Caption = 'High Contrast Black (large)'
      Styles.Content = cxStyle391
      Styles.ContentEven = cxStyle392
      Styles.ContentOdd = cxStyle393
      Styles.Inactive = cxStyle398
      Styles.Selection = cxStyle401
      Styles.Footer = cxStyle394
      Styles.Group = cxStyle395
      Styles.GroupByBox = cxStyle396
      Styles.Header = cxStyle397
      Styles.Indicator = cxStyle399
      Styles.Preview = cxStyle400
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrastWhite: TcxGridTableViewStyleSheet
      Caption = 'High Contrast White'
      Styles.Content = cxStyle402
      Styles.ContentEven = cxStyle403
      Styles.ContentOdd = cxStyle404
      Styles.Inactive = cxStyle409
      Styles.Selection = cxStyle412
      Styles.Footer = cxStyle405
      Styles.Group = cxStyle406
      Styles.GroupByBox = cxStyle407
      Styles.Header = cxStyle408
      Styles.Indicator = cxStyle410
      Styles.Preview = cxStyle411
      BuiltIn = True
    end
    object GridTableViewStyleSheetHighContrastWhitelarge: TcxGridTableViewStyleSheet
      Caption = 'High Contrast White (large)'
      Styles.Content = cxStyle413
      Styles.ContentEven = cxStyle414
      Styles.ContentOdd = cxStyle415
      Styles.Inactive = cxStyle420
      Styles.Selection = cxStyle423
      Styles.Footer = cxStyle416
      Styles.Group = cxStyle417
      Styles.GroupByBox = cxStyle418
      Styles.Header = cxStyle419
      Styles.Indicator = cxStyle421
      Styles.Preview = cxStyle422
      BuiltIn = True
    end
  end
  object strepUserDefined: TcxStyleRepository
    Left = 608
    Top = 264
    PixelsPerInch = 96
    object cxStyle424: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle425: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle426: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle427: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle428: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle429: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle430: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle431: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle432: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle433: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle434: TcxStyle
      AssignedValues = [svColor]
      Color = 8453888
    end
    object cxStyle435: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle436: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16777088
      TextColor = clBlue
    end
    object cxStyle437: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 167498850
      TextColor = clWhite
    end
    object cxStyle438: TcxStyle
      AssignedValues = [svColor]
      Color = clGray
    end
    object cxStyle439: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clNavy
    end
    object cxStyle440: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711808
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle441: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16751515
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle442: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle443: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14079702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
    end
    object cxStyle444: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15982987
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      TextColor = clBlue
    end
    object cxStyle445: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle446: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
    object cxStyle447: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16711808
      TextColor = clWhite
    end
    object cxStyle448: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16711808
      TextColor = clYellow
    end
    object cxStyle449: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16751515
      TextColor = clRed
    end
    object cxStyle450: TcxStyle
      AssignedValues = [svColor]
      Color = 13290932
    end
    object cxStyle451: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBlack
      TextColor = clWhite
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Caption = 'Klasick'#253
      Styles.Background = cxStyle424
      Styles.Content = cxStyle425
      Styles.ContentEven = cxStyle426
      Styles.ContentOdd = cxStyle427
      Styles.FilterBox = cxStyle428
      Styles.Inactive = cxStyle433
      Styles.IncSearch = cxStyle434
      Styles.Selection = cxStyle437
      Styles.Footer = cxStyle429
      Styles.Group = cxStyle430
      Styles.GroupByBox = cxStyle431
      Styles.Header = cxStyle432
      Styles.Indicator = cxStyle435
      Styles.Preview = cxStyle436
      BuiltIn = True
    end
    object cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet
      Caption = 'Alternativn'#237
      Styles.Background = cxStyle438
      Styles.Content = cxStyle439
      Styles.ContentEven = cxStyle440
      Styles.ContentOdd = cxStyle441
      Styles.FilterBox = cxStyle442
      Styles.Inactive = cxStyle447
      Styles.IncSearch = cxStyle448
      Styles.Selection = cxStyle451
      Styles.Footer = cxStyle443
      Styles.Group = cxStyle444
      Styles.GroupByBox = cxStyle445
      Styles.Header = cxStyle446
      Styles.Indicator = cxStyle449
      Styles.Preview = cxStyle450
      BuiltIn = True
    end
  end
  object dsFVTextyHead: TDataSource
    DataSet = AppCompsDM.dtsFVTextyHead
    Left = 408
    Top = 440
  end
  object dxlytlkndflstMain: TdxLayoutLookAndFeelList
    Left = 257
    Top = 63
    object dxlsStandard: TdxLayoutStandardLookAndFeel
    end
    object dxlsOffice: TdxLayoutOfficeLookAndFeel
    end
    object dxlsWeb: TdxLayoutWebLookAndFeel
    end
    object dxlsFlat: TdxLayoutCxLookAndFeel
    end
  end
end
