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
      494C010143007400740010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001001000001001000000000000088
      00000000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7F0000000000000000FF7F0000E56D997B0000FF7FDE7BDE7BDE7BDE7BDE7B
      DE7BDE7BBD779C739C73BD77DE7B0000FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7F0000934ECD352925C5188414
      8414A514E71C8C3518630000E56DCB76E56DFF7FBD779C739C739C739C739C73
      9C737B6FE605E60539675A6B9C73DE7BFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7B00000821292508214A294B29
      4B2908218414630C8410056ECB72E56DFF7F0872087208720872087208720872
      0872E605B1474923E605C7655A6BBD7700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009D775A6B08210821
      4F2175219525363E066ECA76056E0000FF7F0872AA7F8A7F8A7F8A7F8B7F8A7F
      E605B147E605B1474923E60539679C73FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE39CE39CE39CE39CE39CE397521
      7025793EFE4A9A469525925E396BCE39FF7F0872B27F497F497F6A7F6A7F4A7F
      2A7FE605097FE605B1474923E6059C73FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73973E9742973EF62D373A
      3F577F571E4FDE423936F62D5342CE3900000872B27F697F4A294A294A294A29
      4A294A294A29E97EE605B147E605BD7700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A739926992A992A9521BA42
      9F635E573E531E4FBC429525553ECE3900000872B27F697F697F8A7F8A7F6A7F
      4A7F4A7F2A7FE97E2A7FE6057B6FDE7BFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73782A772E772A9521DA4A
      DF737E5F3E533E53DC469525543ECE3900002A72D67F8B7F4A294A294A294A29
      4A294A294A29C87E2A7F08729C73DE7BFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73362236263626D6253732
      7D6BFF77BF677F5F593AF6291336CE3900004C76FB7FD67FB37F8F7F6C7F4B7F
      2A7F0A7FE97EC97E2B7F29729C73DE7BFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73362615221522572E9525
      1732FB521C57583A95251626F231CE3900004C76FB7FDA7FD97FB87F967B757B
      7477537B537B537F937F2A729C73DE7BFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73572E7732572E362A1626
      B52195219521B5211526B419F231CE3900006C76FC7FFC7FFC7FEE419A774208
      79736A319977B97BB77F4C76BD77FF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73572E7836993A993E993A
      78367732572E572E162AF5211336CE3900002A726D766D766D764A2DA5140000
      C51841102B6E4C724C762972FF7F0000FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73572E783A993EB942BA46
      DB4AFB4EFC4E1C531C573D57964ACE390000FF7FFF7FFF7FFF7FB556EF3D8410
      630CE71CFF7F0000FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A73572E793A993ABA3EBA42
      DB46FC4A1C4F1D535D577F5F964ACE390000FF7FFF7FFF7FFF7FFF7FFF7F8C31
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE397A737A737A737A737A737A73
      7A737A737A737A737A737A737A73CE390000FF7FFF7FFF7FFF7FFF7F8C31FF7F
      8C31FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE39CE39CE39CE39CE39CE39CE39
      CE39CE39CE39CE39CE39CE39CE39CE390000FF7FFF7FFF7FFF7FFF7FD65A8C31
      3967FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016421642164216421642
      1642164216421642164216421642164200000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFE7B8C2E9A6BFF7F0000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      000031463146314631463146000000000000000000001642BF6B9E637E5F7E5B
      5E575E533E4F3E4B3E4F3E4F5E4F1642000000000000A66EA66EA66EA66E0000
      000000000000000000000000000000000000FF7F0000F146892211430000DC73
      BA67985F9A6BFE7B000000000000000000000000000000000000000000000000
      31467F6B9F73AC2DFF5EFF5E314600000000000000001642BF6F9E677E637E5F
      5E5B5E575E533D4F3D4B3D4B5E4F1642000000000000A66ED77FD27FB07F0973
      09730973A66EA66EA46E0000000000000000FE7BBC738B2AE71EAA26524BCA2A
      8822682268228926124BFF7F0000000000000000000000000000000000003146
      7F6B9F733F673F673F67FF5EFF5E3146000000000000163ADF739F6B9E677E63
      7E5F5E5B5E575E533D4F3D4B5E4F164200001742374637463742374237421742
      F37FD27FB17F8F7B097309730000000000000000AD320E3B4C33A81E6822E71E
      271F48236823471FC8224822FF7F000000000000000000000000000000003146
      9F733F673F673F673F673F67FF5E3146000000000000163ADF77BF6F9E6BF76A
      7E637E5FB6625E575E533D4F5E4F1642000058465D5F7E5F3D573D4F3D4BFC4A
      D17FD17FD27FD27FD27F4D77A66E00000000785FCE364F3F71434E3B2B2F2927
      2823271F271F4823671FC92234530000FF7F0000000000000000000000003146
      AC2D3F673F67082108210821AC2D31460000000000003742FF7BBF73BF6FE17C
      B56EB56AE17C5E5B5E575E535E4F16420000994A9E6BBF6B7E5FB1368E324922
      200A210AC0056E6FD17F4E77A66E0000000049226F3FAF3F6F3F7043ED322F3B
      0B2F2F3B4F3F2D372C2F4C338B2E0000FF7F9901990199019901990199013146
      BF773F673F6708213F673F67FF5E31460000000000003742FF7FDF77BF732F76
      E17CE17C0E727E5F5E5B5E575E5316420000DA4EBE6FBF6F9E677E5F7E571D4F
      71326312210AC005D17F4E77B07FA66E0000CE3ACC2E4C33AE3BAF3F2D37AC2E
      FE7B000000000000BB6F54536922DD7700009901BF6FBF6F9F673E4F3E4F3146
      BF779F733F6708213F67FF5EFF5E31460000000000007942FF7FFF7BDF77D576
      C07CC07CB46E7E637E5F7E5B7E5716420000FC52BF77DF7BBF6F9E679E5FF742
      D33A4416A316C0052C5F0B67D17F4B77000000000000CF3A6922CA2A4C2FAC2E
      996700008822CB2A5557FF7F0000BB6F00009901DE7BDE7B00409F6700400040
      3146BF777F6BAC2DFF5EFF5E314600000000000000007942FF7FFF7FFF7BE17C
      2F7A2F76E17C9E677E637E5F7F5B164200003D57DF77FF7FDF77BF6FBF6BE511
      2312E72E072F8316010A873ED27FD27FC66E000069260000FE7B0000EF3EAC2E
      12470000EB2EC71AC71E6922CE36785FFF7F9901DE7BDE7B0040BF6F00403E4F
      3E4F3146314631463146314600000000000000000000BB42FF7FFF7FFF7F4F7E
      DF77BF732F769F6B9E679E637E5B164200003E57DF77FF7FFF7FBF73FB5A333E
      E30D08378A436316A0017277B47BD67F0A730000344FC9260D37775F00000000
      000000000C33C71E461765132617A9226D329901DE7B00400040DE7BBF6F0040
      9F679901000000000000000000000000000000000000BB42FF7FFF7FFF7FFF7F
      FF7BDF77BF73BF6FBF6F7C63F856164200003D57DF7BFF7FFF7FBE7B383EBA4E
      595B2416E72EC105A56AA66EA66AC76EA66EFF7FFF7F69264927071FE61A2B2F
      0927071F071FE71EE71A061B4517C922334F9901DE7BDE7B0040DE7B00400040
      BF6F9901000000000000000000000000000000000000DC46FF7FFF7FFF7FFF7F
      FF7FFF7BDF779E6B173E173E173E16420000DC4A3D5B5D635D631C5BDB4EFF7F
      DF77144B68227442A66EA66E000000000000FE7B0000786369266B2F6A27481F
      271F281F2823292709272B2F0C2F6926FF7F9901DE7BDE7BDE7BDE7BDE7BDE7B
      BF6F9901000000000000000000000000000000000000DC46FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F3C67173EDD3A9D2618360000000000000000A66E3E57FF7FFF7F
      FF7F7D6F3742164200000000000000000000000000000000786348222E3B8F3F
      8F3F6F3B2D37692270437147CE363453FF7F9901DA09DA09DA09DA09DA09DA09
      DA099901000000000000000000000000000000000000FD4AFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F5C6B173E1F3B593A000000000000000000000000FD52DF7BDF7B
      FF7B3C6B383A00000000000000000000000000000000000000009A6BEF3A8A26
      69228A26EE3A775BCD364F3F6926FF7FFF7F0000990199019901990199019901
      99010000000000000000000000000000000000000000FD4ADF7BDF7BDF7BDF7B
      DF7BDF7BDF7B5C67173E79420000000000000000000000000000BB46DC4EDC4E
      FC4EDB4A000000000000000000000000000000000000000000000000FF7FBC73
      BB6FBB6FDE7B0000F03E8B2E5657FF7F00000000000000000000000000000000
      00000000000000000000000000000000000000000000FD4ABB42BB42BB42BB42
      BB42BB42BB42BB42173E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FE7BFF7F0000
      000000000000FE7B775F8C2E0000FF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B95615426F290B1D2C216D29
      B035334296520000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009952794E9A4E794E3746D335
      6F292C210B1D4D25AF31123E754A000000000000082108210821082108210821
      0821082108210821082108210821082108210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009952794EBB4E5F531D4FDD4E
      9A4E794E584AD43970294E250B1D6D25123E00006B2DAD358C318C31AD358C31
      8A35AD35AD31AD31AD31AD31AD318B2D6B2D000000009C739C739C739C739C73
      9C739C7339673967396739673967000000000000000000000000000000000000
      000000000000000000000000000000000000000099521D4F794E3D579F5B7F57
      5F535F531E4FDD4EBB4E794E794EF4396D290000AD359452734E524A524A734E
      524A9452734E734E734E524A524A9452AD3500009C73FF7FFF7FFF7F00009C73
      9C7300009C730000396739673967396700000000A56AA56AA56AA56AA56AA56A
      A56AA56AA56AA56AA56AA56AA56AA56A0000000099525E573D57794E9E5FDF63
      BF5F9F5B9F5B7F575F531E4F794E794E4C250000EF3D1863B556B556B556B556
      B5521863B556B556B556B556B5561863EF3D00009C73FF7FFF7FFF7F0000FF7F
      0000FF7F9C7300009C7339673967396700000000A56AD17FD17FB17F6E7B6E7B
      6E7B6E7B6E7BA56AA56A6E7B6E7BA56A0000000099529E5FDF633C5BBA52FF6B
      FF6BFF67FF63DF63BF5F9A4EBB4E794E2C21000031467B6FEF3D104210421042
      0E3E196310421042104210420E3E7B6F314600009C73FF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7F9C739C730000396700000000A56AD17FD17FD17FB17FB17F
      6E7B6E7B6E7BA56AF57FA56A6E7BA56A0000000099529E63FF6BFF67DB52FB5A
      FF73FF6FFF6FFF6BBA52DB525F53794E2C2100009452DE77B556B556B556B556
      B556BC7738673867396738673867DE77945200009C73FF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F9C730000396700000000A56AF37FD17FD17FD17FB17F
      B17F6E7B6E7BA56AF57FF57FA56AA56A0000000099529E67FF6F9E63BA52794E
      FB5E9E6FBE6FBA52FB56DF63BF5F794E2C210000B556FF7F10421042EF3D1042
      113EB967C926C722A922E822E822FF7FB55600009C73FF7F0000FF7F00000000
      FF7F00000000FF7F00009C730000396700000000A56AF37FF37FD17FD17FD17F
      B17FB17F6E7BA56AA56AA56AA56AA56A0000000099527D67FB56794E5B6BBB7B
      1963B75A794E9852FB56FF67FF67794E2C210000D65AFF7FB556B556B556B556
      B556985FC005210200024812250EFF7FD65A00009C73FF7F0000FF7F00000000
      FF7F00000000FF7F0000FF7F00009C7300000000A56AF37FF37FF37FD17FD17F
      D17FB17FB17F6E7B6E7B6E7B6E7BA56A000000009952794ED75EFF7FFF7FFE7F
      FD7FFC7FFB7FDB7BB956FB56FF6B794E4C250000F75EFF7F1042EF3D1042EF3D
      0E3EBF6B53225932792E9C36DB42BE7BF75E00009C73FF7F0000FF7F00000000
      FF7F00000000FF7F0000FF7F00009C7300000000A56AF37FF37FF37FF37FD17F
      D17FD17FB17FB17FB17F6E7B6E7BA56A00000000DA5A334E4A5EFF7FFF7FFF7F
      FE7FFD7FFD7FFC7FBA7B764EFB5A794E6E290000F75EFF7F39675A6B5A6B5A6B
      5A6BBF7B3D5B3D573D571B575E5FBC77F75E00009C73FF7F0000FF7F00000000
      FF7F00000000FF7F0000FF7F00009C7300000000A56AF37FF37FF37FF37FF37F
      D17FD17FD17FB17FB17FB17F6E7BA56A000000000000B75A285ABB7B7773F16A
      D066285A275AE551C84D0E4E794E794E33420000F75EFF7FAD358C318C318C31
      AD35AC318C318C358D2DAC35AD2DDE77F962000000009C739C739C739C739C73
      9C739C739C739C739C739C739C73000000000000A56AF37FF37FF37FF37FF37F
      F37FD17FD17FB17FB17FB17FB17FA56A0000000000000000E651E94D6A5EEB6E
      0E73317F327F327F117F965E794E774A000000001863FF7F8C318C31AD358C31
      8C356D31AD358C31AC358C31AD31BC7718630000000000000000000000000000
      0000000000000000000000000000000000000000A56AA56AA56AA56AA56AA56A
      A56AA56AA56AA56AA56AA56AA56AA56A00000000000000000000F85A794E9477
      B27F727F727F337B975A584AB8520000000000001863FF7FFF7FFF7FFF7FFF7F
      FF7BDE7BFF7BFF7BFE7BFF7FFF7FDE7718630000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F85A794E
      556F7473156B794E5646F85A0000000000000000396718633967186339671863
      3967396739673967396739673967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F85A
      BA56BA56DA5AF85A000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1042004200420042104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000373A373A373A373A373A373A
      373A373A373A373A373A373A373A373A16420000000010420042004200421042
      0042F87FF07FF07F004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001642164216421642164216421642
      16421642164216421642164216421642373A000000000042F87FF07FF07F0042
      1042004200420042104200421042000000000000370110001000100010001000
      1000100010001000100010001000100010001000100010001000100010001000
      100010001000100010001000100037010000984EBF6F5F5B5F5B5F5B5F5B5F5B
      5F5B5F5B5F5B5F5B5F5B5F5B5F5B1642373A0000000010420042004200421042
      00000000004218631863186300420000000000003701B100B100B100B100B100
      B100B100B100B100B1003701FF7FFF7F10001000FF7FFF7F3701B100B100B100
      B100B100B100B100B100B100B10037010000984EBF6F5F5B0000BF730000BF73
      0000BF730000BF730000BF735F5B1642373A0000000000000000000000000000
      00000000004200630063006300420000000000003701B100B100B100B100FF7F
      B100B100B100B100B1003701FF7FFF7F10001000FF7FFF7F3701B100B100B100
      B100B100FF7FB100B100B100B10037010000984EBF6F5F5B5F5B5F5B5F5B5F5B
      5F5B5F5B5F5B5F5B5F5B5F5B5F5B1642373A0000600160016001600160016001
      60016001004218631863186300426001600100003701B100B100B100FF7FFF7F
      B100B100B100B100B1003701FF7FFF7F10001000FF7FFF7F3701B100B100B100
      B100B100FF7FFF7FB100B100B10037010000DA56BF6F5F5B0000BF730000BF73
      0000BF730000BF730000BF735F5B1642373A0000600100020002000300030003
      00030003004200630063006300420002600100003701B100B100FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FB1003701FF7FFF7F10001000FF7FFF7F3701B100FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FB100B10037010000DA56BF6F5F5B5F5B5F5B5F5B5F5B
      5F5B5F5B5F5B5F5B5F5B5F5B5F5B1642373A0000600100020003F043F043F043
      082108210042FF7FF07FF07F00420002600100003701B100B100FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FB1003701FF7FFF7F10001000FF7FFF7F3701B100FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FB100B10037010000D956BF6F1642DA56DA56DA56DA56
      DA56DA56DA565F5B5F5B5F5B5F5B1642373A000060010003F863F863F0430821
      186318630042004200420042F0430003600100003701B100B100B100FF7FFF7F
      B100B100B100B100B1003701FF7FFF7F10001000FF7FFF7F3701B100B100B100
      B100B100FF7FFF7FB100B100B100370100001C5BBF6F1642BF6FBF6FBF6FBF6F
      BF6FBF6FDA565F5B5F5B5F5B5F5B1642373A000060010003F863F863F8630821
      F87F186318630821F043F043F0430003600100003701B100B100B100B100FF7F
      B100B100B100B100B1003701FF7FFF7F10001000FF7FFF7F3701B100B100B100
      B100B100FF7FB100B100B100B100370100001C5BBF6F16421642164216421642
      1642164216425F5B5F5B5F5B5F5B1642373A0000600100020003F863F863F863
      082108210821F043F043F04300030002600100003701B100B100B100B100B100
      B100B100B100B100B1003701FF7FFF7F10001000FF7FFF7F3701B100B100B100
      B100B100B100B100B100B100B100370100001C5BBF6FBF6FBF6FBF6FBF6FBF6F
      BF6FBF6FBF6FBF6FBF6FBF6FBF6F1642373A00006001000200020003F863F863
      F863F863F043F043F04300030002000260010000370137013701370137013701
      3701370137013701370137013701370137013701370137013701370137013701
      37013701370137013701370137013701000000001C5B1C5B1C5B1C5B1C5B1C5B
      1C5B1C5B1C5B1C5B1C5B1C5B1C5B1C5B00000000600160016001600160016001
      6001600160016001600160016001600160010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E328E328E328E328E328E328
      E328E328E328E328E328E3280000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E328606660666066606660666066
      60666066606660666066804DE328000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E328606660666066606660666066
      60666066606660666066804D804DE3280000000000000000AD35734E8C31AD35
      1042B556F75EF75E94523146524A000000000000000000001042734ECE398C31
      CE39B556D65AF75E945210421042000000000000000000001042734ECE398C31
      CE39B556D65AF75E94521042104200000000E328606660666066606660666066
      60666066606660666066804D804D804DE3280000000000008C31F75EAD35AD35
      3146B55618635A6BF75E9452B5560000000000000000000029257B6F10428C31
      EF3D9452F75E5A6B1863B556734E0000000000000000000029257B6F10428C31
      EF3D9452F75E5A6B1863B556734E00000000E328606660666066606660666066
      60666066606660666066804D804D804DE3280000000000006B2DF75EAD35AD35
      1042B55618635A6BF75E9452B5560000000000000000000008215A6B10428C31
      CE399452D65A5A6B1863B556734E0000000000000000000008215A6B10428C31
      C618D65AD65A5A6B1863B556734E00000000E328606660666066606660666066
      60666066606660666066804D804D804DE3280000000000008C31B5568C316B2D
      AD35CE39904A4002AE42734E31460000000000000000000029257B6F10428C31
      EF3D9452D65A5A6B18639452524A0000000000000000000029257B6F10428C31
      0A25853D8A355A6B18639452524A00000000E328606660666066606660666066
      60666066606660666066804D804D804DE3280000000000006B2D94528C318C31
      1042B55600034E3F4002314631460000000000000000000029259452CE396B2D
      CE399452D65AF75E9452104210420000000000000000000029259452CE396B2D
      CE39D17FC579013194521042104200000000E328267F267F267F267F267F267F
      267F267F267F267F267F804D804D804DE3280000000000006C2DF85EAD358D35
      1042B55600034E3F40029452B5560000000000000000000008215A6B10428C31
      CE399452D65A5A6B1863B556734E0000000000000000000008215A6B10428C31
      CE39F75E887BC5794435B556734E000000000000E328804D804D804D60666066
      60666066606660666066267F804D804DE3280000000000008B31F75EAD35CA29
      0C326F3E00034E3F40026F3E6F420000000000000000000008215A6B11468C35
      0D628050805080508050805080508050000000000000000008215A6B11468C35
      CF399452D65A887BC5794435734E0000000000000000E328804D804D60666066
      606660666066606660666066267F804DE3280000000000006C2DD65A8C356826
      400240020003E92E4002400240026622000000000000000008217B6F11468C31
      8050A070A070A070A070A070A070A070805000000000000008217B6F11468C31
      EF3D9452D65AF75E887BC579013100000000000000000000E328804D60666066
      6066606660666066606660666066267FE3280000000000006C2D9452AC31AB2E
      303F303F303F4E3F000300030003AB2E00000000000000000A259452CE398C31
      0D62805080508050805080508050805000000000000000000A259452CE398C31
      CE399452D65A3967D65A886E113EC61800000000000000000000E3288055C061
      C05DC061C05DC05DC05DC05DC05D8065E3280000000000006C2DF85EAD35CA29
      2E3E914600034E3F40024E3A6F3E000000000000000000000A257C6B11468D31
      CE399452B556396718639452524A000000000000000000000A257C6B11468D31
      CE399452B5563967F75E9452FF7F8E2984240000000000000000C0302045604D
      404D604D404D4049604D604D424DE32800000000000000006C2DD656AD358C31
      0F42734E00034E3F4002734E9452000000000000000000000A257C6B11468C2D
      CD35734EB5563967F75E9452524A000000000000000000000A257C6B11468C2D
      CD35734EB5563967F75E9452524A6576C5790000E328E328E328E328C030C030
      C030C030C030C030C030804DE328000000000000000000006B2D524A8C316B2D
      AD35CE3900034E3F400231463146000000000000000000000A259452CE396C35
      CD35524AB5563967F75E94523146000000000000000000000A259452CE396C35
      CD35524AB5563967F75E9452314600004070E328606660666066606660666066
      60666066606660666066E3280000000000000000000000004925524A10425246
      524A524A4F424D366D3E3146EF3D000000000000000000004925B55A3146934A
      945294529452B55694523146EF3D000000000000000000004925B55A3146934A
      945294529452B55694523146EF3D00000000E328C030C030C030C030C030C030
      C030C030C030C030C03000000000000000000000000000000000113ECF3DAE39
      CE3DCE39CE39CE39EF3D10420000000000000000000000000000113ECF3DAE39
      CE3DCE39CE39CE39EF3D10420000000000000000000000000000113ECF3DAE39
      CE3DCE39CE39CE39EF3D104200000000000000000000000000000000C0000001
      400140010001C0000000000000000000000000000000000000000000C0000001
      400140010001C000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000010001E0056006
      600660066006E0052001200100000000000000000000000000010001E0056006
      600660066006E00520012001000000000000000000000000000000000000AD42
      04160416AD420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020058005800A80066006
      60066006600680068006A005C000000000000000000020058005800A80066006
      60066006600680068006A005C000000000000000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000002005A0098112810E60066006
      600660066006600660068006A0052001000000002005A0098112810E60066006
      600660066006600660068006A005200100000000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000002005A21AA116810E800A092B
      DC77DA6FA21260066006600680062001000000002005A21AA216810E800AA212
      DA6FDC77092B6006600660068006200100000000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040010112C222821A610EE826FE7B
      FF7F5047800A6006600660068006E005000140010112C222A216610E6006610E
      5047FF7FFE7BE826600660068006E00500010000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040018222C326A21AE826FE7BFF7F
      4E3F6006600660066006600680064006000140018222C326A21A800A60066006
      60064E3FFF7FFE7BE82660068006400600010000AD4204160416041604160416
      7247C72A04160416041604160416AD42000000000D6280508050805080508050
      80508050805080508050805080500D620000A009C42AC42A4E4BFD77FF7FFE7B
      B663965F955B955B955B955B600660062001A009C42AC42AB767B763B663B663
      B663B663FE7BFF7FFD770A2F60066006200100008C32C72AC72AC72AC72AC72A
      C72AC72AC72AC72AC72AC72AC72A0416000000008050527AA070A070A070A070
      A070A070A070A070A070A070A07080500000C109E736E52EB767FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F600660064001C109E736E52EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F955B60066006400100008C3272477247724772477247
      7247C72A724772477247724772470416000000008050167FF37EF37ED37ED37E
      D37E2C7A2C7A2C7A2C7AAA79AA7980500000C1090A3F083BE52E945FFF7FFE7B
      7053E82EE82EE82EE82EE82E810E60060001C1090A3F083B0A3F2A432A432A43
      093B4F4BFE7BFF7F7253A31A810E600600010000AD428C328C328C328C328C32
      7247C72A04160416041604160416AD42000000000D6280508050805080508050
      80508050805080508050805080500D620000C109E9367053C42AC42A725BFF7F
      DC770A3BA21AA21AA21A8116810E20060001C109E9367053C42AC326C42AC42A
      0A3FDC77FF7F704FA21A8116810E200600010000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000841A95632D47A226C3267157
      FF7FFE7BE52A821A81168112A10EA00500000000841A95632D47A226C326E736
      FE7BFF7F704FA21A81168112A10EA00500000000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000841A0A3BB76B2C47C42AC32A
      725B9563C42AA21EA21AA21A6212A00500000000841A0A3BB76B2C47C42AC42A
      9563725BC326A21EA21AA2166212A00500000000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062122D47DA73935B0A3F
      E732E52EE632E632E426821A8005000000000000000062122D47DA73935B0A3F
      E732E52EE632E632E426821A8005000000000000000000000000000000008C32
      7247C72A04160000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E932E932725BB76B
      946371576F4F093F631E631E000000000000000000000000E932E932725BB76B
      9463725B6F4F093F631E631E000000000000000000000000000000000000AD42
      8C328C32AD420000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000841AC72A
      E832E832852622160000000000000000000000000000000000000000841AC72A
      E832E83285262216000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001000100010001000
      1000100010001000100010000000000000000000000000001000100010001000
      1000100010001000100010000000000000000000000000000000082108210821
      0821000000000000000000000000000000000000000000001042734ECE398C31
      CE39B556D65AF75E945210421042000000000000000000003701B100B100B100
      B100B100B100B100B10010000000000000000000000000003701B100B100B100
      B100B100B100B100B10010000000000000000000913108210821311D520D7601
      0821913191319131913191319131000000000000000000002925F75E10428C31
      EF3D9452F75E5A6B1863B556734E000000000000000000003701B100B100B100
      B100B100B100B100B10010000000000000000000000000003701B100B100B100
      B100B100B100B100B10010000000000000000000913176017601750976017801
      0821810E000200020002810E9131000000000000000000000821F75E10428C31
      CE39013101315A6B1863B556734E000000000000000000003701B100B100B100
      FF7FFF7FB100B100B10010000000000000000000000000003701B100B100B100
      FF7FFF7FB100B100B10010000000000000000000913178017801780178019901
      08210627A20EA20EA20E60029131000000000000000000002925F75E10428C31
      EF3DD17F3573013118639452524A000000000000000000003701B100B100FF7F
      FF7FFF7FFF7FB100B10010000000000000000000000000003701B100B100B100
      FF7FFF7FB100B100B10010000000000000000000913178019901990199019901
      08210627E41AE41A0527483791310000000000000000000029259452CE396B2D
      CE393573D17F3573013110421042000000000000000000003701B100FF7FFF7F
      FF7FFF7FFF7FFF7FB10010000000000000000000000000003701B100B100B100
      FF7FFF7FB100B100B1001000000000000000000091319901B901B901B901DA01
      08210002A41AE51E062748379131000000000000000000000821F75E10428C31
      CE3994523573D17F35730131734E000000000000000000003701B100B100B100
      FF7FFF7FB100B100B10010000000000000000000000000003701B100B100B100
      FF7FFF7FB100B100B100100000000000000000009131B901B9011B0EDF6FDA01
      0821000200020002600260029131000000000000000000000821F75E11468C35
      CF399452D65A3573D17FE97ED17FE97E00000000000000003701B100B100B100
      FF7FFF7FB100B100B10010000000000000000000000000003701B100FF7FFF7F
      FF7FFF7FFF7FFF7FB100100000000000000000009131DA01DA01FB05DA01DA01
      08219F639F639F639F639F639131000000000000000000000821F75E11468C31
      EF3D9452D65A0131D17FD17FD17FD17FE97E0000000000003701B100B100B100
      FF7FFF7FB100B100B10010000000000000000000000000003701B100B100FF7F
      FF7FFF7FFF7FB100B100100000000000000000009131DA01DA01FB01FB01FB01
      0821BF6BBF6BBF6BBF6BBF6B9131000000000000000000000A259452CE398C31
      CE399452D65A39673573D17F6576D17FD17F0000000000003701B100B100B100
      FF7FFF7FB100B100B10010000000000000000000000000003701B100B100B100
      FF7FFF7FB100B100B100100000000000000000009131FB01FC01FC01FC01FD01
      0821DF6BDF6FDF6FDF6FDF6F9131000000000000000000000A25F75E11468D31
      CE399452B556396718633573D17FD17FE97E0000000000003701B100B100B100
      B100B100B100B100B10010000000000000000000000000003701B100B100B100
      B100B100B100B100B1001000000000000000000091311F021E02FD01FD01FD01
      0821DF6BDF6BDF6BDF6BDF6B9131000000000000000000000A25F75E11468C2D
      CD35734EB5563967F75E94523573E97E00000000000000003701370137013701
      3701370137013701370110000000000000000000000000003701370137013701
      370137013701370137011000000000000000000091311F021F021E061E021F02
      0821DF6BDF6BDF6BDF6BDF6B9131000000000000000000000A259452CE396C35
      CD35524AB5563967F75E94523146000000000000000000003701FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F10000000000000000000000000003701FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F10000000000000000000000091319131DB15FC0D1F02
      0821104210421042104210421042000000000000000000004925B55A3146934A
      945294529452B55694523146EF3D000000000000000000003701FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F10000000000000000000000000003701FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000913191319131
      0821000000000000000000000000000000000000000000000000113ECF3DAE39
      CE3DCE39CE39CE39EF3D10420000000000000000000000003701370137013701
      3701370137013701370110000000000000000000000000003701370137013701
      3701370137013701370110000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000E4E004500000000000000000000D629D629180D1811391538153315
      5121000000000000000000000000000000000000000000001042734ECE398C31
      CE39B556D65AF75E945210421042000000000000000000001042734ECE398C31
      CE39B556D65AF75E94521042104200000000000000000000000000000000C455
      C3554541E559856A65454049815100000000180D180D7C1D9E25BF2D9D257C1D
      7D213115CC2DC71DC619E515C515A619CB2D00000000000029257B6F10428C31
      EF3D9452F75E5A6B1863B556734E0000000000000000000029257B6F10428C31
      EF3D9452F75E5A6B1863B556734E00000000000000000000000000000000A96E
      C87281514566A66EA155426242660000000039113911DF2DFF31BB21DD42FB25
      DE2D7C1D2F1EF03AAC2E0C330A2BC61A430E00000000000008215A6B10428C31
      CE399452D65A5A6B1863B556734E0000000000000000000008215A6B10428C31
      CE399452D65A5A6B1863B556734E000000000000000000000000000044492562
      E976E876C872A66E856E836A426200458A4100001A32FF313F363B2E5F4F3B2E
      FD2D7C1D8F2A785B9A634E3B2C33C822230E00000000000029257B6F10428C31
      EF3D9452D65A5A6B1863945260010000000000000000000029257B6F10428C31
      EF3D9452D65A5A6B18639452524A00000000000000000000000000002449A872
      0A7BE976EC72094EC35142664262A0518449000000009421D10C8438843C5425
      7819CE2E7043DF73DF73AF32EC32271E000000000000000029259452CE396B2D
      CE399452D65AF75E94526001A5226001000000000000000029259452CE396B2D
      CE399452D65AF75E6001C005E00560016001000000000000000000000D730A77
      E9760D777B6FAD356539426241666266AC5E00000000630C2104C248C2486238
      4C2D8926EC32B25A295A4C52061E0000000000000000000008215A6B10428C31
      CE399452D65A5A6B6001631A683BA422600100000000000008215A6B10428C31
      CE399452D65A4001C005000660010000000000000000000000000000241E875A
      E9760D777B6FAD35A63D836A63666366000000004208410C2351635D635D435D
      C24400000000467A467A467A45760000000000000000000008215A6B11468C35
      CF399452D65A60016212A4220527A31A621200000000000008215A6B11468C35
      CF399452D65A00066001B556734E0000000000008C2E210AE0014716272BA64E
      C86E0C6B5A6B8C31A83D856A856A000000000000630C8218635DA465A4658465
      225500006A66877E877E677E677EA83D000000000000000008217B6F11468C31
      EF3D9452D65A600160016001A31A6001600100000000000008217B6F11468C31
      EF3D9452D65A400A6001B556734E00000000000065166937C41AA316272B831E
      832EC822D84E4A29D13188626366000000000000C618A5146451467A467A257A
      A46500008872C97ECA7EC97EA97E256600000000000000000A259452CE398C31
      CE399452D65A3967D65A6001410E600100000000000000000A259452CE398C31
      CE3960016001A31AA31A60016001000000000000260E6937893B472F272B0523
      E41A830E440E0D22000000000000000000000000C6182925A320A465E571467A
      A46100008972EA7EEB7EEA7ECA7E466E00000000000000000A257C6B11468D31
      CE399452B556396718636001400A600100000000000000000A257C6B11468D31
      CE3960016212C4220527631A600100000000871EC41A893B893B4E43CE424312
      820E820E61064A1600000000000000000000000000006B2DAD3594521042C618
      292500006A624762696646662566A24D00000000000000000A257C6B11468C2D
      CD35734EB55639676001400AC005000000000000000000000A257C6B11468C2D
      CD35734E6001683B683B4001524A000000009253CD4BAA3F69375A6B9452E415
      4106810A820E0E3300000000000000000000000000000821CE3931461042E71C
      0000000000008B6ACD6E5577CE6A085200000000000000000A259452CE396C35
      CD3540016001E005E00580056001000000000000000000000A259452CE396C35
      CD35524AB55660016001945231460000000000004833693769375A6B94526722
      E41A830E89160000000000000000000000000000000000000000000000000000
      000000000000136FF16AD06AD166000000000000000000004925B55A3146934A
      945294529452B55694523146EF3D000000000000000000004925B55A3146934A
      945294529452B55694523146EF3D00000000000000008B3F6937396731464B26
      EA260C3300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000113ECF3DAE39
      CE3DCE39CE39CE39EF3D10420000000000000000000000000000113ECF3DAE39
      CE3DCE39CE39CE39EF3D104200000000000000000000000048339646AE31D126
      C416000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004266
      42664266426642660000000000000000000000000000B331B331B331B331B331
      B331B331B331B331B331B331B331B43500000000990199019901990199019901
      9901000099019901990199019901990199010000104200000000000000000000
      0000004000000000000000000000000000000000000000000000A85EA85E2877
      6B7F6B7F6B7F28774266426600000000000000000000D3359F637E5B5E575E4F
      3E4B1D431D431D431D431D431D43B3310000000099019F637F5F7F5F7F5B5F57
      5F5799019F637F5F7F5F7F5B5F575F5799011042000000000000000000000000
      007C00400040000000000000000000000000000000000000A85E2877937F937F
      937F00006B7F6B7F6B7F287742660000000000000000D3359E637E5F5E573D53
      3D4F1D4B1D43FD3EFD3EFD3EFD3EB331000000009901FF7FFF7FDF73BF6B9F63
      7F5B9901FF7FFF7BDF73BF6B9F637F5B9901000000000000000000000000007C
      007C0040004000400000000000000000000000000000A85E2877937F937F937F
      937F0000937F937F6B7F6B7F28774266000000000000D3359E6BBF677E5F7F5B
      5E573D4F1D4B1D43FD3EFD3EFD3EB331000000009901FF7FFF7FFF7FDF73BF6B
      7F5B9901FF7FFF7FFF7BDF73BF6B9F6399010000000000000000000000000000
      007C0040004000000000000000000000000000000000A85ED57F937F937F937F
      937F0000937F937F937F6B7F6B7F4266000000000000D439DF6F324632463246
      32461C4F3D4F1D4B1D43FD3EFD3EB331000000009901FF7FFF7FFF7FFF7FDF73
      BF6B9901FF7FFF7FFF7FFF7BDF73BF6B99010000000000000000000000000000
      00000040000000000000104200000000000000000000A85ED57FD57F937F937F
      000000000000937F937F937F6B7F4266000000000000F439FF7BC614CD49A250
      841CDA465E573D4F1D4B1D43FD3EB331000000009901FF7FFF7FFF7FFF7FFF7F
      DF739901FF7FFF7FFF7FFF7FFF7BDF7399011042000000000000000000000000
      00000000000000000000000000000000000000000000A85ED57FD57FD57F937F
      104200001042937F937F937F6B7F4266000000000000153EFF7BC61CEC714F7E
      824C1B4F7F5B3D533D4F1D4B1D43B331000000009901FF7FFF7FFF7FFF7FFF7F
      FF7F9901FF7FFF7FFF7FFF7FFF7FFF7F99010000000010420000000000000000
      00000000000000000000000010401040000000000000A85E2877D57FD57FD57F
      D57F937F937F937F937F937F28774266000000000000363EFF7F08212A254B25
      A348CC69D84E5E5B3D533D4F1D4BB331000000009901FF7FFF7FFF7FFF7FFF7F
      FF7F9901FF7FFF7FFF7FFF7FFF7FFF7F99010000000000001042104210420000
      000000000000000000001040104010401040000000000000A85EA85EA85EA85E
      A85EA85EA85EA85EA85EA85EA85E0000000000000000373EFF7FFF7FBE739E6B
      9E6BEC7168713C5F5E573D533D4FB331000000009901FF7FFF7FFF7FFF7FFF7F
      FF7F9901FF7FFF7FFF7FFF7FFF7FFF7F9901000000001F001F001F0010420000
      0000000000000000000010400000104010400000000000000000A85E937F4266
      000000000000A85E937F426600000000000000000000583EFF7F324632463246
      32469D67F86E5D635E5B5E571C4FD235000000009901FF7FFF7FFF7FFF7FFF7F
      FF7F9901FF7FFF7FFF7FFF7BFF7FFF7F9901000000001F001F001F0010420000
      0000000000000000000000001040104000000000000000000000A85E937F4266
      000000000000A85E937F4266000000000000000000007942FF7FC61494528A55
      C5203A5FDF6FBF679E633B579646B031000000009901FF7FFF7FFF7FFF7FFF7F
      FF7F9901FF7FFF7FFF7FFF7FFF7FFF7F9901000000001F001F001F0000000000
      0000000000000000000000000000000000000000000000000000A85E28772877
      426642664266287728774266000000000000000000007942FF7F08254F7EA87D
      A33C7C63DF733C5FB435B435B435B43500000000990199019901990199019901
      9901990199019901990199019901990199010000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000A85E2877
      937F937F937F287742660000000000000000000000009A42FF7FA514AC41314E
      8150177BFF7BDA56B4357C263C1AB43500000000000099019901990199019901
      9901000099019901990199019901990100000000000000000000000000000000
      000000000000000000000000000010420000000000000000000000000000A85E
      A85EA85EA85E426600000000000000000000000000009A42FF7FD55A524A524A
      7162887DD37EDA5EB435BE2EB435000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001042000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A42BE73FF7BFF7BFF7B
      DF773977CB75965AB435B4350000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A367A3E7A3E7A3E593A
      383A383A383AD535B43500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010421042104200000000000000000000990199019901
      9901990199019901990199019901990100000000990199019901990199019901
      9901990199019901990199019901990199010000A56AA56AA56AA56AA56AA56A
      A56AA56AA56AA56AA56AA56AA56A000000000000000000000000000000000000
      00000000000000000000104200000000104200000000000000009901FF7FDF73
      DF73DF73DF73BF6B9F635F575F579901000000009901FF7FFF7FFF7BDF73DF73
      BF6BBF6B9F637F5F7F5F7F5B5F575F5799010000A56AF37F8D7F8D7F8D7F8D7F
      8D7F8D7F6B7F6B7F6B7F6B7FA56A000000000000000000000000000000000000
      00000000000000000000104200000000104200000000000000009901FF7FFF7F
      FF7FFF7FDF73DF73BF6B9F635F579901000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7BDF73BF6B9F637F5B99010000A56AF37FD27FD27FB07FB07F
      8D7F8D7F8D7F6B7F6B7F6B7FA56A000000000000000000000000000000000000
      00000000000000000000104210421042000000000000990199019901FF7FFF7F
      FF7FFF7FFF7FFF7FDF73BF6B9F639901000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7BDF73BF6B9F6399010000A56AF37FD27FD27FD27FB07F
      B07F8D7F8D7F8D7F6B7F6B7FA56A000000000000000000000000000000000000
      000000000000000000001042000000001042000000009901FF7F9901FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FDF73BF6B9901000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7BDF73BF6B99010000A56AF37FD27FD27FD27FD27F
      B07FB07F8D7F8D7F8D7F6B7FA56A000000000000000000000000000000000000
      000000000000000000001042000000001042000000009901FF7F9901FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FDF739901000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7BDF7399010000A56AF37FD27FD27FD27FD27F
      D27FB07FB07F8D7F8D7F8D7FA56A000000000000000000000000000000000000
      000000000000000000001042104210420000990199019901FF7F9901FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FDF73990100000000990199019901990199019901
      9901990199019901990199019901990199010000A56AF37FD27FD27FD27FD27F
      D27FD27FB07FB07F8D7F8D7FA56A000000000000000000000000000000000000
      0000000000000000000000000000000000009901FF7F9901FF7F990199019901
      99019901990199019901990199019901000000009901FF7FFF7FFF7FDF73DF73
      BF6BBF6BBF6BBF6B7F5F7F5F7F5F7F5F99010000A56AF37FD27FD27FD27FD27F
      B07FB07FB07FB07FB07F8D7FA56A000000000000000000000000000000000000
      0000000000000000000000000000000000009901FF7F9901FF7FFF7F99019901
      99019901990199019901990199010000000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7BDF73BF6B9F6399010000A56AF37FF37FD27FB07FB07F
      A56AA56AA56AA56AA56AA56AA56A0000210A0000000000000000000000000000
      0000000000000000000000000000000000009901FF7F9901FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FDF73990100000000000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7BDF73BF6B990100000000A56AF37FB07FB07FA56A
      00000000000000000000000000000000210A0000000000000000000000000000
      0000000000000000000000000000000000009901FF7F99019901990199019901
      99019901990199019901990100000000000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7BDF739901000000002A77A56AA56AA56A2A77
      00000000000000000000A3160000210AC0051042000000000000104200000000
      0000000000000000000000000000000000009901FF7FFF7F9901990199019901
      9901990199019901990100000000000000000000990199019901990199019901
      9901990199019901990199019901990199010000000000000000000000000000
      00000000000000000000210AA316210A00000000000000000000000000000000
      0000000000000000000000000000000000009901FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FDF739901000000000000000000000000000099019901990199019901
      9901990199019901990199019901990100000000000000000000000000000000
      00000000000000000000210A8B47A31600000000104200001042000000000000
      0000000000000000000000000000000000009901990199019901990199019901
      9901990199019901000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C005C005C005A3160000000000000000000000000000
      0000000000000000000000000000000000000000990199019901990199019901
      9901990199010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000004000400040004000400040
      00000000000000000000C005000000000000000000001042FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10420000000000001042000000000000
      0000000000000000000010420000000000000000AC35AC35AC35AC35AC35AC35
      AC35AC35AC35AC35AC35AC35AC35AC3500000000004000400000000000000040
      00000000000000001042E105104200000000000000001042FF7FFF7F18631863
      186318631863186318631863FF7FFF7F10420000000010421042186318631863
      18631863186310421042000010420000000000003146FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F314600000000000000400040000000000000
      0000000000000000C0058B47C00500000000000000001042FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1042000000000000FF7F186318631863
      10421042104210421042104200000000000000003146FF7FDF36DF36DF36DF36
      DF36DF36DF36DF36DF36DF36FF7F314600000000000000000040004000000000
      000000000000C005483748370627C0050000000000001042FF7FFF7F18631863
      186318631863186318631863FF7FFF7F10420000000010421042000000000000
      00000000000000000000104210420000000000003146FF7FDF36FF7FFF7FDF36
      FF7FFF7FDF36FF7FFF7FDF36FF7F314600000000000000000000004000400000
      00000000C005E105E1050627E105E105C005000000001042FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10420000000010421042186318631863
      1863186318631042104200001042000000000000734AFF7FDF36FF7FFF7FDF36
      FF7FFF7FDF36FF7FFF7FDF36FF7F734A00000000004000000000000000400040
      00000000000000000000C005000000000000000000001042FF7FFF7F18631863
      186318631863186318631863FF7FFF7F1042000000000000FF7F186318631863
      1042104210421042104210420000000000000000734AFF7FDF36DF36DF36DF36
      DF36DF36DF36DF36DF36DF36FF7F734A00000000004000400040004000400040
      00000000000000000000C005000000000000000000001042FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10420000000010421042000000000000
      0000000000000000000010421042000000000000734AFF7F9E2EFF7FFF7F9E2E
      FF7FFF7F9E2EFF7FFF7F9E2EFF7F734A00000000000000000000000000000000
      00000000000000000000C005000000000000000000001042FF7FFF7F18631863
      186318631863186318631863FF7FFF7F10420000000010421042186318631863
      18631863186310421042000010420000000000009452DE7B9E2EFF7FFF7F9E2E
      FF7FFF7F9E2EFF7FFF7F9E2EDE7B945200000000100010001000000010001000
      10000000000000000000C005000000000000000000001042FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1042000000000000FF7F186318631863
      10421042104210421042104200000000000000009452DE7B7D127D127D127D12
      7D127D127D127D127D127D12DE7B945200000000104210000000000000001000
      10420000000000000000C0050000000000001042104210421042104210421042
      1042104210421042104210421042104210420000000010421042000000000000
      0000000000000000000010421042000000000000B556BD777D12FF7FFF7F7D12
      FF7FFF7F7D12FF7FFF7F7D12BD77B55600000000000010001000100010001000
      00000000000000000000C0050000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F10421863186318631863186310420000000010421042186318631863
      1863186318631863186300001042000000000000B556BD777D12FF7FFF7F7D12
      FF7FFF7F7D12FF7FFF7F7D12BD77B55600000000000010421000000010001042
      00000000000000000000C0050000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F1042186318631042186318631042000000000000FF7F186318631863
      1863186318631863186318630000000000000000D65A7B6F7D127D127D127D12
      7D127D127D127D127D127D127B6FD65A00000000000000001000100010000000
      00000000000000000000C0050000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F10421863104210421042186310420000000010421863FF7FFF7FFF7F
      FF7FFF7FFF7FFF7F186310421042000000000000D65A7B6F7B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6FD65A00000000000000001042100010420000
      00000000000000000000C0050000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F10421863186318631863186310420000000000001042104200000000
      0000000000000000104210420000000000000000D65AD65AD65AD65AD65AD65A
      D65AD65AD65AD65AD65AD65AD65AD65A00000000000000000000100000000000
      00000000000000000000C0050000000000001042104210421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000CE39CF39
      F03DEF3DCF39CE39000000000000000000000000000000000000000000000000
      007C007C000000000000000000000000007C000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE391042B556B556
      9452744E744E744E1042CE390000000000000000000000000000000000000000
      007C007C007C0000000000000000007C007C000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000E07F1042
      E07F1042E07F1042E07F1042E07F00000000000000001042744E3967734A5242
      524A314A533E113E9752544ACE39000000000000000000000000000000000000
      1863007C007C000000000000007C007C0000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000FF7F0000E07F
      1042E07F1042E07F1042E07F1042E07F00000000CE39744E5B6B52461857DF67
      F9629566FF735A67F035774E544ACE3900000000000000000000000000000000
      1863007C007C007C0000007C007C007C00000000E07F00000000E07F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000E07FFF7F0000
      E07F1042E07F1042E07F1042E07F1042E07F0000324AAF3EA311595BDF673E4B
      DD3ABD32FD42DF6FDD77D0359852104200000000000000000000000000000000
      18631863007C007C007C007C007C0000000000000000E07FE07FE07F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000E07F000000000000FF7FE07FFF7F
      000000000000000000000000000000000000CE394F3E641EE52A6926DE63DF67
      BF5F3E4BFD3E1E439F633963F239764E11420000000000000000000000000000
      18631863007C007C007C007C00000000000000000000E07FE07FE07F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000E07FE07F0000E07FFF7FE07F
      FF7FE07FFF7FE07FFF7FE07F000000000000EE35E20D0527683BE52AAD2EFF6B
      FF6BDE639F57FF3EBE36DF6F1136784E11420000000000000000000000000000
      1863007C007C007C007C007C0000000000000000E07FE07FE07F00000000FF7F
      FF7FFF7FFF7F0000000000000000000000000000E07FE07F0000FF7FE07FFF7F
      E07FFF7FE07FFF7FE07FFF7F000000000000A209410EC31AE526A422E20DCF32
      B54AAD317342F2315A2EF962F045784E1242000000000000000000000000007C
      007C007C007C007C007C007C007C000000000000E07FE07F0000FF7F0000FF7F
      FF7FFF7FFF7F0000FF7FFF7F000000000000E07FE07FE07F0000E07FFF7FE07F
      FF7FE07FFF7F000000000000000000000000A515E619410E82162822785F9853
      B54AE71CA514AD2D582EB662CE45784E12420000000000000000000010021863
      18631863186318630000007C007C007C0000E07FE07FE07F0000E07F0000FF7F
      FF7FFF7FFF7F0000FF7F0000000000000000E07FE07F000000000000E07FFF7F
      E07FFF7F0000000000000000000000000000124AB146E109410E6B2EFF7FFF7B
      FF6B5A572921743E3F4BBF5F323E785211420000000000000000100210021863
      1863186318631863186300000000007C007C0000E07FE07F0000FF7F0000FF7F
      FF7FFF7FFF7F000000000000000000000000E07FE07F00000000000000000000
      000000000000000000000000000000000000CE3995520312200203129B6FFF7F
      FF7BFF739C67081D323A5A5B3442774E11420000000000001002100218631863
      1863186318631863100210020000000000000000E07FE07FE07F000000000000
      000000000000000000000000000000000000E07FE07F0000FF7FE07FFF7FE07F
      FF7F0000E07FE07F00000000000000000000000011468F42E00500062516134F
      DD77FE7BFF7FBD67175353429952114200000000000010021002186318631863
      18631863186318631002100210020000000000000000E07FE07FE07F00000000
      0000E07FE07FE07F00000000000000000000E07FE07FE07F0000FF7FE07FFF7F
      0000E07FE07FE07F000000000000000000000000CE39534E8E3EE20DC001A001
      A005C311785F9C6B954A98523346CE3900000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07FE07FE07FE07F
      E07FE07FE07FE07F000000000000000000000000E07FE07FE07F000000000000
      E07FE07FE07F00000000000000000000000000000000EF3D534EF556B1464E36
      6F369242D6529552B8563346EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07F00000000E07FE07FE07F
      E07FE07F00000000E07F00000000000000000000E07FE07FE07FE07FE07FE07F
      E07FE07FE07F000000000000000000000000000000000000CE3911429556D75E
      B65A95569552534E1042CE390000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E07F
      000000000000000000000000000000000000E07F00000000E07FE07FE07FE07F
      E07F00000000E07F0000000000000000000000000000000000000000CE39CE39
      EF3DEF3DCE39CE39000000000000000000000000000000000000000000000000
      0000943594350000000000000000000000000000893D574A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000001F001F000000000000000000000000000000000000000000
      9435104294350000000000000000000000006D622372E951584A000000000000
      000000000000000000000000000000000000000000000000EA61000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F00000000000000000000000000000000000000000000009435
      396B10429435000000000000000000000000C97ECA7E2476E951584A00000000
      000000000000000000000000000000000000000000000000E675EA61A5610000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000001F00000000000000000000000000000000000000000000009435
      BD77104294350000000000000000000000000000CA7ECA7E0372E951584A0000
      000000000000000000000000000000000000000000000000E771E07DC079EA61
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000001F00000000000000000000000000000000000000000000009435
      BD771042943500000000000000000000000000000000CA7EC97E2372E951574A
      0000000000000000000000000000000000000000000000000000607E207E207E
      EA61000000000000000000000000000000000000000000000000000000000000
      0000000000001F0000000000000000000000000000000000000000000000D435
      BD7710429435000000000000000000000000000000000000CA7EC97E046EAB39
      0000F539984EDA52994E000000000000000000000000000000000000C07E207E
      407EEA61EA61000000000000000000000000000000000000007C000000000000
      0000000000001F00000000000000000000000000000000000000000000001736
      BD77104294350000000000000000000000000000000000000000EA7E56775446
      76469E67FF6BFF6BFF6B7C5FB95200000000000000000000000000000000C07E
      017F607E607EEA6100000000000000000000000000000000007C007C00000000
      000000001F000000000000000000000000000000000000000000000000005A36
      BD771042943500000000000000000000000000000000000000000000D95ADA52
      BF63FF6BFF6BFF6BFF6FFF77DE77364600000000000000000000000000000000
      C07EE17EA07E607EEA6100000000000000000000000000000000007C007C0000
      00001F00000000000000000000000000000000000000000000000000F72DBD77
      396B104208219435000000000000000000000000000000000000000058467E5B
      5E53DF67FF6B760DFF77FF7BFF7F5B5F00000000000000000000EA61EA61EA61
      007FE17FC67FE27EA07EEA61EA610000000000000000000000000000007C007C
      000000001F000000000000000000000000000000000000000000F72DBD77396B
      F75E31466B2D08219435000000000000000000000000000000000000FB529F57
      3E4BDF675C63760D5C635C63FF77BE6B784A0000000000000000A57E007FA07F
      C07FC07FE07FA97F237F807EEA61000000000000007C007C00000000007C007C
      0000000000001F0000000000000000000000000000000000F72DBD77BD771863
      B5563146CE396B2D08219435000000000000000000000000000000001C577F57
      FD42760D760D760D760D760DFF6FDE6BB84E0000000000000000877E007FA07F
      C07FA07F607FE07FE07FA77F017FEA6100000000007C007C00000000007C007C
      0000000000001F000000000000000000000000000000F72DBD77BD77396BF75E
      734E10421042CE396B2D082194350000000000000000000000000000FB569F5B
      FD423E4BBF63760DBF63FF6FFF6FBE6B984E00000000000000000000017F877F
      A97FC87FE37FE07FE07FE17FE47FEA61000000000000007C007C007C007C0000
      0000000000001F00000000000000000000000000F72DBD77BD77396B18631863
      1042104210421042CE396B2D08219435000000000000000000000000784ABF63
      BF635E533E4F760DDF67DF6BFF6B7C5F00000000000000000000000000000000
      467FC17FE07FC07F407FC07EEA61000000000000000000000000000000000000
      0000000000001F00000000000000000000005A365A365A365A365A365A365A36
      5A365A365A365A365A365A365A365A365A360000000000000000000000001B57
      FF7FDF773E4BFD423E4F9F5BDF63774600000000000000000000000000000000
      00000000467FC07FA07FA07E807EEA6100000000000000000000000000000000
      00000000000000001F001F000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FA5EBE6BBF639F579F5B7E5BB94E000000000000000000000000000000000000
      0000000000000000467F687F427F8B7EEA610000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B94AB94EFB52FB5200000000000000000000000000000000000000000000
      000000000000000000000000467F8A7EEA610000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094359435943594359435
      9435943594359435943594359435943500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003146
      314631463146314694520000000000000000000000004931BF635E5B5D573D4F
      3D4B1D47FD42FD3EFD42FD421D43943500000000000000000000000000000000
      0000000000000000000000000000186300000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002104EE3DDE7B
      38671863D65AFF7F18634204D65E000000000000AC41A361AC417E5F5D573D53
      3D4F1D4B1D47FD42FD3EFD3E1D439435000000000000FF7FFF7F1863FF7FFF7F
      1863FF7FFF7F1863FF7FFF7F00000000000000000000FF7F0000000000000000
      00000000000000000000FF7F00000000000000000000000000000000AD35DE7B
      5A6B3A671863FF7F186700004A290000000000000000867EC269AD417E5F5D5B
      3D533D4F1D4B1D47FD42FD3E1D43943500000000000018631863186318631863
      18631863000000000000000010420000000000000000FF7F0000000000000000
      00000000000000000000FF7F00000000000000000000630CE71CA5143046596B
      724E31461142BD773867A618E7184310AD3100000000942D867EC2698B417E5F
      5D573D533D4F1D4B1D47FD421D439435000000000000FF7FFF7F1863FF7FFF7F
      1863000010421863186310420000104200000000000000000000000000000000
      0000000000000000000000000000000000000000EF3D4B29F03DA514AD35B556
      D55AD65AD65A9452524E87184A2D4929E71C00000000D435DF77867EE855912D
      F539922DF53599421D4B1D471D439435000000000000FF7FFF7F1863FF7FFF7F
      0000104218631863FF031042104200000000000000000000FF7F000000000000
      000000000000FF7F0000000000000000000000004A29724E504A714A514A524A
      724E0F3E5046514A724E114E6D35724B6D3500000000D435FF7FBE7335463642
      FB525D5BDA4E363A99421D4B1D47943500000000000018631863186318631863
      000018631863186318631042186300000000000000000000FF7F000000000000
      000000000000FF7F0000000000000000000000004A29F75ED75E3246F03DB035
      B03570358F35B1359139F451312D18677556000000001736FF7FDF77153E1B5B
      9E679E63FF7BDA4EF5353D4F3D4B9435000000000000FF7FFF7F1863FF7FFF7F
      00001863FF03186318631042186300000000000000000000FF7F000000000000
      000000000000FF7F000000000000000000000000CE39596BF141F7411542F43D
      F53DF33DF33DF43D143E1642312D5C73B556000000001736FF7FFF7F9231BE6F
      BE6F9E67FF775D5B922D3D535E539435000000000000FF7FFF7F1863FF7FFF7F
      00001042FF03FF03186310421042000000000000000000000000000000000000
      000000000000000000000000000000000000000031463967F2413029CB188810
      680C670C68108810CA1830292F291867B556000000005A36FF7FFF7F36421B63
      BE73BE6FFF6BFB52F5395E573D53943500000000000018631863186318631863
      1863000010421863186310420000000000000000000000000000FF7F00000000
      000000000000FF7F00000000000000000000000000003A6797566810964EFF7F
      FF7FFF7FFF7FFF7FFF7F680C89103967D65A000000005A36FF7FFF7FFA5E574A
      1B63BE6F1B5B3642363E3B5BB64A9435000000000000FF7FFF7F1863FF7FFF7F
      1863FF7F00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D55AD65AD0393246FF7F
      FF7FFF7FFF7FFF7FFE7F8F353346D55A0000000000007B3AFF7FFF7FFF7FFA5E
      36429231153E994EB42DB42DB42D9435000000000000FF7FFF7F1863FF7FFF7F
      1863FF7FFF7F1863FF7FFF7F0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000009B6FDE7B
      FF7F3967734E314610420000000000000000000000007B3AFF7FFF7FFF7FFF7F
      FF7FFF7BFF7BFA5EB42D7C2A3C1AB62500000000000010001000100010001000
      10001000100010001000100000000000000000000000000000000000FF7F0000
      0000000000000000FF7F0000000000000000000000000000000000003A67FE7F
      FF7F9452524618639452000000000000000000000000BC3EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1B63B42DDF2EF72D000000000000000010001000100010001000
      1000100010001000100010000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001863DE7B
      DE7BB5567B6F9C739452000000000000000000000000BC3EDE77DE77DE77DE77
      DE77DE77DE77FA5EB42D17360000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F75E5A6B
      5A6BD65A5A6B94520000000000000000000000000000BC3E5A365A365A365A36
      5A365A365A365A36B42D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000752D55293425554A3863
      3963396338633863764E13211321542900000000000000000000000000000000
      0000000000000000000000000000C06CC06C0000000000000000000000000000
      0000000000000000000000000000000000000000990199019901990199019901
      9901990199019901990199019901990199010000F7399931B935762D13429752
      3C67DF7BFF7BDE7BD95AB214D318782D752D0000C06CC06C0000000000000000
      000000000000000000000000C06CC06C000000000000000000003146524ACE39
      CE398C316B2D4A294A296B2D00000000000000009901FF7FFF7FFF7BDF73BF6B
      9F63AA3D3A575E575F575F575F575F5799010000F73999319931762DF33D1321
      D6397C6FDF7BFF7FDA5AD218D318772D752D0000C06CC06CC06C000000000000
      00000000000000000000C06CC06C00000000000000000000524A1042734E4A29
      4A29AD35E71C4A290821C618E71C0000000000009901FF7F1763176317631763
      1763AA3D000015671763176317635F5799010000F73999319931762D1542F31C
      F31CF95EBD77FF7F1C63B214D218772D752D0000C06CC06CC06CC06C00000000
      0000000000000000C06CC06C000000000000000000000000734E1042734E2925
      2925AD35A5144A2908218410A5140000000000009901FF7FFF7FFF7FFF7FFF7B
      DF73AA3D000000005F575E575F575F5799010000F73999319931762D36463325
      D218744E5A6BFF7F1C63B214D218772D752D00000000C074C06CC06CC06C0000
      000000000000C06CC06C0000000000000000000000000000734E104294520821
      0821AD35630C4A2908214208A5140000000000009901FF7F1763176317631763
      1763AA3DBF6F3B1E0000166317635F5799010000F73999319931772D5846584A
      1642354697521C63BB56F41CF41C782D752D0000000000000000C06CC06CC06C
      0000C06CC06CC06C000000000000000000000000000000009452104294522925
      2925AD35630C4A2908214208A5140000000000009901FF7FFF7FFF7FFF7FFF7F
      FF7F6F52BF6F3B1E00005F575F575F5799010000F73999319931993199319931
      99319931782D782D993199319931B935552D00000000000000000000C06CC070
      C070C070C06C00000000000000000000000000000000000094521042B5562925
      2925AD35630C4A2908214208A5140000000000009901FF7F1763176317631763
      17631763AA3DBF6F3B1E0000D55E5F5799010000F7395629762D18429A52BA56
      BA52BA569A529A52BA52BA567A4E99315529000000000000000000000000C070
      C070C074000000000000000000000000000000000000000094521042B5562925
      2925AD35630C4A2908214208A5140000000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F6F52BF6F3B1E00005F575F5799010000F73955253C67DE7BDE77DE7B
      DE7BDE7BDE7BDE7BDE7BDE7BFB5E782D552D00000000000000000000C06CC074
      C070C074C078000000000000000000000000000000000000734E104294520821
      0821AD35630C4A2908214208A5140000000000009901FF7F1763176317631763
      176317631763AA3DBF6F3B1E00005F5799010000F73956255D6BDF7BBE77BE77
      BE77BE77BE77BE77BE77DE7BFB5E782D552D0000000000000000C078C074C070
      00000000C078C07800000000000000000000000000000000734E104294520821
      0821AD35630C4A2908214208A5140000000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F6F52BF6F3B1E400C5F5799010000F73956255D6BBD775A6B5A6B
      5A6B5A6B5A6B5A6B5A6BBD77FB5E782D552D000000000000C07CC074C0780000
      000000000000C07CC078000000000000000000000000524A9452CE39734EE71C
      E71CAD35630C4A2929254208C618EF3D000000009901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FAA3D0000846D000099010000F73956255D6BBD775B6B7B6F
      7B6F7B6F7B6F7B6F5B6BBD77FB5E782D552D00000000C078C078C07C00000000
      0000000000000000C078C078000000000000000000003146734E734E524AEF3D
      EF3D8C316B2D4A2929250821C618841000000000990199019901990199019901
      9901990199019901B415846D846D271099010000F73956255D6BDE777C6F7C6F
      7C6F7C6F7C6F7C6F7C6FBD77FB5E782D552D0000C078C078C078000000000000
      000000000000000000000000C0780000000000000000CE398C318C31AD358C31
      8C314A294A2929252925C618C618CE3900000000000099019901990199019901
      99019901990199019901204C204CFC3000000000F73956255D6BBD775A6B5A6B
      5A6B5A6B5A6B5A6B5A6BBD77FB5E782D552DC078C078C0780000000000000000
      000000000000000000000000000000000000000000000000734E524A524A1042
      1042EF3DCE39AD35AD358C316B2D000000000000000000000000000000000000
      0000000000000000000000000000000000000000F73956255C67DF7BBE77BE77
      BE77BE77BE77BE77BE77DF7BFB5E782D552DC078C07800000000000000000000
      000000000000000000000000000000000000000000000000000000009452EF3D
      00000000CE39EF3D082100000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005525D95A5A6B39673967
      396739673967396739675A6BB956342500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009452
      EF3DEF3DEF3D0821000000000000000000000000000094359435943594359435
      9435943594359435943594359435943500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000003646712D
      712D712D712D712D712D712D712D712D0000000000009435BF63384B3A4B3D4F
      3C4B1D43FD42FD3EFD42FD421D43943500000000A56AC66EA46A000000000000
      000000000000000000000000000000000000000000000000D541164216421642
      164216421642164216421642164216420000000000000000000000003646DF73
      BE6FBE6FBE6FBE6FBE6FBE6F9E67712D0000000000009435BF67F33A6512AD26
      440A440A8B1ED93AFD3EFD3E1D43943500000000A56A7377B07F0973A46A8362
      836283620000000000000000000000000000000000000000D541FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F16420000000000000000000000003646BE6F
      7E677E637E637E637E637D677D67712D000000000000942DBF6F374F22060002
      000200020002450EFB3EFD3E1D43943500000000A56AEA72F37FF27F6E7B6E7B
      6E7B6E7B0973A46A83620000000000000000000000000000D541FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F16420000000000000000000000003646DF73
      5F535F535F535F535F535F537D67712D000000000000942DDF73374F430A0002
      430AF53AAE260002AE26FD421D43943500000000A56AEA72F57FD17FB17FB17F
      B17F6E7B6E7B6E7B0977A46A000000000000000000000000D541FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1642000000003646712D712D712D3646DF77
      7E637E637E637E637E5F9E677D67B331000000000000D435DF77575321060002
      0002D02E3D53D436AD261D471D43943500000000A56AA56A7577D27FD27FB17F
      B17FB17FB17F6E7B6E7B0977000000000000000000000000D541FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1642000000003646DF73BE6FBE6F3646DF77
      9E677E637E637E637E639E6B7D67B335000000000000D435FF7F9C6B344B1343
      F23AF33A5D573D53133F1D4B1D47943500000000A56A6E7BA56AF37FD17FD17F
      D17FB17FB17FB17F6E7B6E7B836200000000000000000000D541FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1642000000003646BE6F7E677E633646FF7B
      5F535F535F535F535F535F539D6BF4390000000000001736FF7F7453BF73BE6B
      1343F23AF23AF33A3D533D4F3E4B943500000000A56AD27FA56A7577B47BB47B
      D47FB17FB17FB17F6E7BC005836200000000000000000000D541FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1642000000003646DF735F535F533646FF7B
      9F6B9F6B9E6B9E679F6BDF737D6FF4390000000000001736FF7F0E3B5553BF73
      103B0002000221065D573D535E53943500000000A56AF37F6E7BA56A83628362
      83627577D17FB07FC0058B47C00583620000000000000000D541FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1642000000003646DF777E637E633646FF7F
      FF7FFF7FFF7BFF7B7D6F1A63B756163A0000000000005A36FF7F304300020F3B
      5553430E000222065E5B5E573D53943500000000A56AF37FD27F6E7B6E7B6E7B
      6D7BA56A7577C0054A3F48370627C005000000000000067E067E067EDE7BDE7B
      DE7BDE7BDE7BDE7BDE7BDE7BDE7B1642000000003646DF779E677E633646FF7F
      FF7FFF7FFF7BFF7B36463646364636460000000000005A36FF7FDE7785160002
      0002000200022206BF673B5BB64A943500000000A56AF37FD27FD27FD27FD27F
      6E7B6E7BA56A83622212062762128362000000000000067EC87A067EBD77BD77
      BD77BD77BD77BD77BD77BD77BD771642000000003646FF7B5F535F533646FF7F
      FF7FFF7FFF7FFF7F3646DD36383E00000000000000007B3AFF7FFF7FDB6FEC32
      64126412EE366512B229B42DB42D943500000000A56AF87FF27FF37FFA7FFA7F
      B17FB27F6E7B6E7B010AA316010A00000000067E067E067EC87A067E067E067E
      9C739C739C739C73163A564636421642000000003646FF7B9F6B9F6B36463646
      364636463646364636461742000000000000000000007B3AFF7FFF7FFF7FFF7F
      DB6FDB6FFF7BD54AB1297C2A3C1AB62500000000A46A7377F87FF87F7377A36A
      8362836283628362210A810E000000000000067E517B767B767B767B517B067E
      7B6F7B6F7B6F1863163AFF7FFF7F1642000000003646FF7FFF7FFF7FFF7BFF7B
      7D6F1A63B756163A0000000000000000000000000000BC3EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1B63B42DDF2EF72D0000000000000000C66EA56A836283620000
      000000000000210A810E010A000000000000067E067E067E767B067E067E067E
      5A6B5A6B5A6B1863163AFF7F16420000000000003646FF7FFF7FFF7FFF7BFF7B
      36463646364636460000000000000000000000000000BC3EDE77DE77DE77DE77
      DE77DE77DE771B63B42D17360000000000000000000000000000000000000000
      C005E105210A210AE105000000000000000000000000067E767B067E39673967
      3967396739671863163A164200000000000000003646FF7FFF7FFF7FFF7FFF7F
      3646DD36383E00000000000000000000000000000000BC3E5A365A365A365A36
      5A365A365A365A36B42D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000067E067E067E5D635D63
      5D635D635D63FA5A163A00000000000000000000364636463646364636463646
      3646174200000000000000000000000000000000000000000000000000000000
      A879615C00000000000000000000000000000000000000000000000000000000
      A71E420A00000000000000000000000000000000000000000000000000000000
      420AA71E00000000000000000000000000000000000000000000000000000000
      615CA8790000000000000000000000000000000000000000000000000000A879
      806060600000000000000000000000000000000000000000000000000000A71E
      240EA00200000000000000000000000000000000000000000000000000000000
      A002240EA71E0000000000000000000000000000000000000000000000000000
      60608060A87900000000000000000000000000000000000000000000A879605C
      A2684060000000000000000000000000000000000000000000000000A71E030E
      640E600200000000000000000000000000000000000000000000000000000000
      6002640E030EA71E000000000000000000000000000000000000000000000000
      4060A268605CA879000000000000000000000000000000000000A8798060C268
      6064625C00000000000000000000000000000000000000000000A71E210A0102
      2102600200000000000000000000000000000000000000000000000000000000
      600221020102210AA71E00000000000000000000000000000000000000000000
      625C6064C2688060A8790000000000000000000000000000A8798060EA756068
      60684060405C4058825C295D285D285D8D61000000000000A71EE209AC324412
      20022106C002C006030F68238A2B6D37A002A0026D378A2B6823030FC006C002
      210620024412AC32E209A71E0000000000008D61285D285D295D825C4058405C
      406060686068EA758060A87900000000000000000000A8798060EA75C2708064
      6064605C406040582050204C2050E758205400000000A71EE30DAC32240E0002
      200620028002C002E0020103430F8C33600660068C33430F0103E002C0028002
      200220060002240EAC32E30DA71E000000002054E7582050204C205040584060
      605C60648064C270EA758060A879000000000000A8798060EA758070A06C8068
      6064606040602058405400502050004C20540000A71EE30DAC32E311E0010002
      20066002A002C002E002000320038C33420642068C3320030003E002C002A002
      600220060002E001E311AC32E30DA71E00002054004C20500050405420584060
      606060648068A06C8070EA758060A8790000A8798060CA7D2475A074806C8068
      60646060405C40582054214C0150E7582054A71EE311AC32251AE00100020002
      20064002A002C002E002010320038C37800280028C3720030103E002C002A002
      4002200600020002E001251AAC32E311A71E2054E7580150214C20544058405C
      606060648068806CA0742475CA7D8060A879A8798060EA750271807081708064
      60646060405C2058205420500050004C2054A71EC315AC32271AC001E0010002
      20064006A002C002E002010320038D37610261028D3720030103E002C002A002
      400620060002E001C001271AAC32C315A71E2054004C0050205020542058405C
      606060648064817080700271EA758060A8790000A8798060A879817080688068
      60646060405C4058205420502150004C20540000A71EE311AC32050EE1050002
      400240028002C002E002010320038C33600260028C3320030103E002C0028002
      400240020002E105050EAC32E311A71E00002054004C2150205020544058405C
      60606064806880688170A8798060A879000000000000A8798060EA75C2688068
      60646060405C2054405421500150E758205400000000A71EE20DAC32220E0002
      20024102A006C002E0020103430FAD3340064006AD33430F0103E002C002A006
      410220020002220EAC32E20DA71E000000002054E7580150215040542054405C
      606060648068C268EA758060A87900000000000000000000A879605CEA758068
      80646060405C415C825C285D285D285DAE5D000000000000A71EE209AC324312
      40024002A002C006030F68238B2F6F3FA002A0026F3F8B2F6823030FC006A002
      400240024312AC32E209A71E000000000000AE5D285D285D285D825C415C405C
      606080648068EA75605CA8790000000000000000000000000000A8798060A168
      6168615C00000000000000000000000000000000000000000000A71E210A0102
      2002600200000000000000000000000000000000000000000000000000000000
      600220020102210AA71E00000000000000000000000000000000000000000000
      615C6168A1688060A879000000000000000000000000000000000000A879605C
      80648060000000000000000000000000000000000000000000000000A71E230E
      430E420600000000000000000000000000000000000000000000000000000000
      4206430E230EA71E000000000000000000000000000000000000000000000000
      80608064605CA87900000000000000000000000000000000000000000000A879
      806080600000000000000000000000000000000000000000000000000000A71E
      430E600200000000000000000000000000000000000000000000000000000000
      6002430EA71E0000000000000000000000000000000000000000000000000000
      80608060A8790000000000000000000000000000000000000000000000000000
      A879415C00000000000000000000000000000000000000000000000000000000
      A71E441200000000000000000000000000000000000000000000000000000000
      4412A71E00000000000000000000000000000000000000000000000000000000
      415CA8790000000000000000000000000000424D3E000000000000003E000000
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
      494C01010A007400740018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000004800000001001000000000000036
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
      000000000000000000000000000000000000000000000000000000000000724E
      724E8C318C318C318C318C318C31724E724E0000000000000000000000000000
      0000000000000000000000000000000000000000000000001042614901310131
      0131C02410420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000724E08212B1D
      B125F529592E5A2E5A2E59261626D2294C1DC718114600000000000000000000
      000000000000000000001042614901310131C02410420000E97EFA7FF77FD17F
      D17F6576E2650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008E2D4C19F429192E
      3A2A5B2A592639265A263A263A2A392A592A382E701D0A290000000000000000
      00000000000000000000E97EFA7FF77FD17F6576E26500001042E97EE97EE97E
      E97EE97E10420131C02400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E31B229182A392A1926
      3A2639261826392A182A392A19263A26182A192AF4252B414A39000000000000
      000000000000000000001042E97EE97EE97EE97E10420000000000000000907E
      927FF77F2F6F8962055E6B650000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000724E9129172A192A18261826
      1826192239261922182617263926192238223822F4252B5D2A65104200000000
      000000000000000000000000000000000000000000000000000000000000517E
      3177F77FED6A68620462696D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009452F52518261822F8215B32
      FE463D53BE5FBF5FBF5FBE5FBF5B1E4F9B361926D5212C4D4D69082100000000
      0000000000000000000000000000000000000000000000000000000000000000
      6149013101310131C02400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000052461722F91D592E7E539D57
      BD5BBE5F9F5BBF5BBE57BF5B9E579F63BD5B9F5B773A2A49ED744A2900000000
      0000000000000000000000000000000000000000000000000000000000006F76
      3177F77FED6A6862046287650000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000534AD6211C439F5B9E579E57
      7F579F5B9D579D579F579F5B9F579F579E5BB74A1046326A4D694A2900000000
      000000000000E001E001E001E001E001E001E001E001E001E001E001E001CE6A
      7277F77FED6A68620462C355E001E001E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000524ABC3E7E535E537E537E57
      7E537E577E577F577F577E577D577442324E956E977A967EF1716B2D00000000
      000000000000E00140024002400240020003F453F863F863F863F863F863F863
      8B66013101310131C024400240024002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000734E1D4F7F577F537F537E4F
      7E4F7E537E537E573D539446115655725576757A7476767E557A8C3100000000
      000000000000E0014002400240020003F453F863F863F8638C318C318C31EF6A
      0E6FF77F0D6B88620462024E40024002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007452B14A924A914E914E914E
      924E924E914E7252F04134723276337A557234763276536E34768C3100000000
      000000000000E001400240020003F453F863F863F8638C31F87F1863F87F3177
      937FF77F8F7F0A7B8772444E40024002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000D65E4F63F07FCF7FEF7FEF7F
      F07FEF7FEF7FD07F0D67D16113721372F171F271137A1276126E8C3100000000
      000000000000E00140020003F453F863F863F8638C31F87F1863186318631863
      E97EE97EE97EE97EE97EF86300034002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000724E4C4AAE7FCE7FAE7FAF7F
      CF7FAE7FAD7FCF7FAE7F0F63CF5DB271D279D171D171D271AF4D945200000000
      000000000000E00140020003F863F863F863F8638C31F87FF87F18631863F87F
      F87F8C31F863F863F863F86300034002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000324A6E56B07FAF7F8E7F
      8E7FAF7F8E7FAE7FAD7F8D7FEE62AD59916991719169AF49EF3D000000000000
      000000000000E00140020003F453F863F863F863F8638C311863186318631863
      8C31F863F863F863F863F45300034002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000524A2D520E6F8D7F
      8C7F8D7F8D7F8D7F8E7F8D7F8E7FEE66AE59705DAF4951460000000000000000
      000000000000E001400240020003F453F863F863F863F8638C318C318C318C31
      F863F863F863F863F453000340024002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000724E304A2D4A
      AE620D6F2C776C7F6B7F2C770D6FCF620D460F42724E00000000000000000000
      000000000000E0014002400240020003F453F863F863F863F863F863F863F863
      F863F863F863F4530003400240024002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000724E
      D65E9452524A1042F03D314E7252D65E724E0000000000000000000000000000
      000000000000E00140024002400240020003F863F863F863F863F863F863F863
      F863F863F45300034002400240024002E0010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E001E001E001E001E001E001E001E001E001E001E001E001E001
      E001E001E001E001E001E001E001E001E0010000000000000000000000000000
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
      000000000000000000000000000000005646D62DD42DF3355446000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6188A3500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000055423501F300D300D300D100CF040F154E21
      F139564600000000000000000000000000000000000000000000000000000000
      0000000000006F25A70C853D8A35000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A56AA56AA56AA56AA56AA56A
      A56AA56AA56AA56AA56AA56AA56AA56AA56AA56AA56AA56AA56AA56AA56A0000
      00000000000000000000000056463501BA01F300951D3C637942F729340DD300
      D100CF040F154E21534600000000000000000000000000000D32CA21661A661A
      661A661A661A5A6BD162D17FC579443500000000000000000000000000000000
      0000000000000000000000000000000000009131082108210000000000000000
      0000000000000000000000000000000000000000A56AD17FD17FD17FD17F6E7B
      6E7B6E7B6E7B6E7B6E7B6E7B6E7B6E7BA56AA56A6E7B6E7B6E7B6E7BA56A0000
      0000000000000000000056465605DB01DA011405D7297D675C633C5F1B5BDB52
      383AB625340DD300EE10564600000000000000000000AE3A020A28238412861A
      A71EA71EA71EE2090D7FD17FC579C5790131AE2D000000000000000000000000
      0000000000000000000000009131082108217601760108219131913191319131
      9131913191319131913100000000000000000000A56AD17FD17FD17FB17FB17F
      6E7B6E7B6E7B6E7B6E7B6E7B6E7B6E7BA56AF57FA56A6E7B6E7B6E7BA56A0000
      000000000000000056467605FC01FB01DA011405F72D7D6B5D673C631C5F1B5B
      FB52DA4EBA4A79421636D7290000000000000000000025162823A61AE822E926
      0A2B9653671EF13E671E826A887BC579C5794435000000000000000000000000
      000000000000000091310821760176015405760178010821A242A242A242A242
      A242A242A242A242913100000000000000000000A56AD17FD17FD17FD17FD17F
      B17FB17F6E7B6E7B6E7B6E7B6E7B6E7BA56AF57FF57FA56A6E7B6E7BA56A0000
      000000000000000077091C021C02FB01DB011405F7319D6F7D6B5C633C5FDB52
      DA4EBA4EBA4E9A467942D72900000000000000000000471EA516C71EE9260B2F
      7347CA2ACE369A5F89229653826A887BC579C579032D00000000000000000000
      000000000000913176017601760178017801780178010821A242A242A242A242
      A242833E833E833E913100000000000000000000A56AD17FD17FD17FD17FD17F
      B17FB17FB17F6E7B6E7B6E7B6E7B6E7BA56AF57FF57FD17FA56A6E7BA56A0000
      000000000000000099011D021C02FC01FB01140517329D6F7D6B5D6779469A46
      BA4A79427942BA4A9A46D72900000000000000000000F1466516E9260B2F2D37
      96538C32FE77FE77F03E96532C33826A887BC579C57944350000000000000000
      000000000000913178017801780178017801990199010821A242833E833E833E
      633E633A443A2736913100000000000000000000A56AF37FF37FD17FD17FD17F
      D17FB17FB17FB17F6E7B6E7B6E7B6E7BA56AD17FD17FD17FD17FA56AA56A0000
      0000000000000000B9013D021D021C02FC0114053836BE739D6F5C6BE555C555
      844D0C52383ABA4E9A4AD729000000000000000000000000271AE9262C339653
      8A269A67FF7FFF7FD04273472E3B0B2F826A887BC579C5790131000000000000
      0000000000009131780199019901990199019901990108210532443A443A443A
      4436243625360836913100000000000000000000A56AF37FF37F7B6F734E734E
      734EF03DC6186F25D65AB17F6E7B6E7BA56AA56AA56AA56AA56AA56AA56A0000
      0000000000000000B9013E023D021C021C02F3007121BE779E737D6B5D673C63
      1A5F705AB852DA4EBA4AD7290000000000000000000000000000271ACA2A6922
      D346176317637C67D23E2F3F4F3FCA2A081E826A887BC579E65CC61800000000
      0000000000009131990199019901B901B901B90199010821C52D243625362532
      2536053205322536913100000000000000000000A56AF37FF37FF37FD17FD17F
      D17FD17F6F25A70C853D8A356E7B6E7B6E7B6E7B6E7B6E7B6E7B6E7BA56A0000
      0000000000000000B9015E023D021D021C02D200EB14DE77BE739D6F7D6B5D67
      3C631B5BFB56DB52BA4ED729000000000000000000000000000000002922C325
      0756E45DE45D28560832EC32671E2A2600000000826A886E113E103EC6180000
      00000000000091319901B901B901B901B901B901DA01082125360532052EE62D
      E629E62D072EE831913100000000000000000000A56AF37FF37FF37FF37FF37F
      D17FD17F5A6BD162D17FC57944356E7B6E7B6E7B6E7B6E7B6E7B6E7BA56A0000
      0000000000000000BA015E023E023D021D02D2000D19BE77BE779E737D6F7D67
      5C633C5F1B5BFB56DB52D729000000000000000000000000000000000B4EE361
      2472257225722472E259A52900000000000000000000B02DFF7FBE738E298424
      0000000000009131B901B901B901DA01DA01FF36DA010821A625E729E729C625
      E729E92DAB29AB29913100000000000000000000A56AF37FF37FF37FF37FF37F
      F37FD17FD17F826AD17FC579C5790131B17FB17F6E7B6E7B6E7B6E7BA56A0000
      0000000000000000DA055F025E023E023D02B71D3E57FC4A9A3EDC46FC4A1D53
      FC52FB561B5BFB56DB52D72900000000000000000000000000000000E45D4576
      457A467E467E667A4576A44D00000000000000000000000053463C5B853DC579
      E65C000000009131DA01DA01DA01DA015F539F63FF360821AB29AB29C625EC29
      EC295236763ADE42913100000000000000000000A56AF37FF37F7B6F734E734E
      734EF03DF03DF03D826A887BC579C5794435F03DF03DF03DF03D6E7BA56A0000
      0000000000000000DA057F065F025E029E1ABF73DF777E637E635E5B1D533E53
      182E8A04CC08EC14B42956460000000000000000000000000000E5554576677E
      677E677E677E677E677E2572A24D000000000000000000000000A94D6576C579
      E65C000000009131DA01DA01DA01DA01DA015F53DA010821DE42DE42DE42DE42
      DE42DE42DE42DE42913100000000000000000000A56AF37FF37FF37FF37FF37F
      F37FF37FF37FD17FD17F826A887BC579C579032DB17FB17F6E7B6E7BA56A0000
      0000000000000000DA097F0A7F025F029E1ABF73FF7FBF735E5F5E5F5E5F9A4A
      1836583E3832B71D3015000000000000000000000000000000000462677E887E
      887E887E887E887E887E677A6635000000000000000000000000000040704070
      0000000000009131DA01DA01FB01FB01FB01FB01FB010821DE42DE42DE42DE42
      DE42DE42DE42DE42913100000000000000000000A56AF37FF37FF37FF37FF37F
      F37FF37FF37FF37FD17FD17F826A887BC579C5794435B17FB17F6E7BA56A0000
      0000000000000000FA0D9F0E7F065F025E023A22BE73DF775D635E63BA4E7942
      BA4ABA4A9A463832301500000000000000000000000000000C4E677A887EA97E
      A97EED7EED7EA97EA97E887AA641000000000000000000000000000000000000
      0000000000009131FB01FB01FB01FB01FB01FB01FB010821DE42DE429F6F9F6F
      9F6F7F67DE42DE42913100000000000000000000A56AF37FF37FF37FF37FF37F
      F37FF37FF37FF37FD17FD17FD17F826A887BC579C5790131B17FB17FA56A0000
      0000000000000000FA119F169F0E7F065F021A1E5D631C539C2E9A469A4ABA4E
      DA4EBA4E9A4A5936511500000000000000000000000000008D62887AA97EC97E
      ED7ECA7EED7ECA7EED7EA97EC749000000000000000000000000000000000000
      0000000000009131FB01FC01FC01FB01FB01FD01FD0108213D5F9F6F9F6F7F67
      5E673D5F9F6FDE42913100000000000000000000A56AA56AA56AA56AA56AA56A
      A56AA56AA56AA56AA56AA56AA56AA56A826A887BC579E65CC618A56AA56A0000
      0000000000000000FA11BF1A9F127F0A7F023B1E9E737D6B1A5F504E0F4A534A
      5742BA4EBA4E5936511500000000000000000000000000004A5E8876CA7E0D7F
      0D7F0D7FCA7AC976CA7ACA7AC745000000000000000000000000000000000000
      00000000000091311F02FD01FD01FD01FD01FD01FD010821DE421E533E5F9F6F
      5E673E5F1E53DE42913100000000000000000000000000000000000000000000
      000000000000000000000000000000000000826A886E113E103EC61800000000
      00000000000000001A16DF1EBF169F0E7F065C1EBE739D6F3A67B0666F5A4E56
      2C56DB52BA4E7A3A521500000000000000000000000000008C62E4592566466E
      466E04622562266205624566A24D000000000000000000000000000000000000
      0000000000009131DA011F021F021E02FE01FD01FD010821DE42DE42DE423D5F
      3D5F3D5FDE42DE42913100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B02DFF7FBE738E2984240000
      00000000000000001A1ADF22BF1A9F169F0E7D1EBE779E739D6F7D675C633C5F
      1B5BFB56DB529B3A521500000000000000000000000000000C4EC45128624962
      AD6AEF76AC7A69722766A4510000000000000000000000000000000000000000
      0000000000000000B531B531DA011F02FD011E021F020821DE42DE42DE42DE42
      DE42DE42DE42DE42913100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053463C5B853DC579E65C
      00000000000000001A1EFF2ADF22BF1A9F129E22DE77BE739D6F7D6B5D673C63
      1C5F1B5BDB52BB3E731500000000000000000000000000000000C4512662AD6A
      F172F172EE72AB6E4762A24D0000000000000000000000000000000000000000
      000000000000000000000000B531B531DA011F021F0208211042104210421042
      1042104210421042104200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A94D6576C579E65C
      00000000000000001A22FF2EFF26DF1EBF1A9F163F473F473E533D533D533C5F
      1C571C5BFB56BB3E9419000000000000000000000000000000000000285A4862
      AD6A3373F172485EA24D00000000000000000000000000000000000000000000
      00000000000000000000000000000000B531B531B531B5310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000407040700000
      00000000000000003A223F3F5F4F5E537D677D6B5D673C631C57FC52DB4EBB3E
      7B361A22D90DBA0D173200000000000000000000000000000000000000008D5E
      495A6A5E29560C4E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009A4679427942794279425842383A383A383A583E383A383A
      7846564600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000006B2DE71C104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      CD3D8841095A653D282510420000000000000000000000000000000000000000
      0000000000000000000000000000646664666466646664660000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000CD3D8845
      4B624C662A5EA649653D28251042000000000000000000000000000000000000
      000000000000000000000000000064664F774B770873C76EC76E856A42662162
      0000000000000000000000000000000000000000000000000000000000000000
      000000006B2D8C31000000000000000000000000000000000000000000000000
      0000000000009901990199019901990199019901990199019901990199019901
      990199019901990199019901990100000000000000000000CD3DA8454B624C66
      6D6A4C662A5EA649A649653D2825104200000000000000000000000000000000
      000000000000000000000000000042665177F57FEF7FD07FAE7B8D7B4B770873
      C66E846A42666366000000000000000000000000000000000000000000000000
      CE3984104A294A29CE3900000000000000000000000000000000000000000000
      0000000000009901FE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9901000000000000CD41A9452B624C666C6A6D66
      4B626C6A2A5EA649A649A649653D282510420000000000000000000000000000
      00000000000000000000000000002162CA6EF47FEF7FCF7FCF7FD07FD07FCF7F
      AF7F8D7B4B7B2A77C77242660000000000000000000000000000A514630C2B25
      BA561021630CA514420800000000000000000000000000000000000000000000
      0000000000009901FE7FEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2D
      EB2DEB2DEB2DEB2DEB2DFE7F990100000000000025314C664C662B622A5EA649
      2A5A6D6A2A5EA649A649A649A649653D27251042000000000000000000000000
      00000000000000000000000000006366C86E927BF17FAE7FCF7FAE7FAE7FAE7F
      AF7FAF7FAF7FAF7FEA72A56E0000000000000000000000008C314C29574A3F67
      3F67542987108A10240489418B35082129250821000000000000000000000000
      0000000000009901FE7FEB2DFE7FFE7FF362FE7FFE7FF362FE7FFE7FFE7FFE7F
      FE7FF362FE7FFE7FEB2DFE7F990100000000000025314C664441A649A649E134
      A7514C662A5EE8516D66A649A649A649653D2725104200000000000000000000
      0000000000000000000000000000846AE8724F77D27FCE7FCF7FAE7FAE7FAE7F
      AE7FAE7F8E7F8E7FEA72097763660000000000000000EF3D9A523F67DC5A3546
      8D3196318A1087104708AF6E8649410C4A290821000000000000000000000000
      0000000000009901FE7FEB2D90429042F36290429042F3629042904290429042
      9042F36290429042EB2DFE7F990100000000000025314C66023922396445095A
      6C6AAF72F076B2620E4A4B5EA649A649A649653D272510420000000000000000
      0000000064666466646664666466846A8C7BE872B27BCF7FCE7FAE7FAE7FAE7F
      AE7FAE7F8E7F8E7FEA726C7FC66E0000000000000000CE399A52F23D09216B2D
      C6183746690C630C4308AF6EE955601CA514A514082500008C316B2D00000000
      0000000000009901FE7FEB2DFE7FFE7FF362FE7FFE7FF362FE7FFE7FFE7FFE7F
      FE7FF362FE7FFE7FEB2DFE7F990100000000000025314C664441095A6C6AAF72
      F176D36AD65E3967F041D4620956A649A649A649653D27251042000000000000
      0000000064664F774B770873C76E856A8E7BE8727277F27FCE7FCE7FAE7FAE7F
      AE7FAE7F8E7F8E7FEA728D7F2A770000000000000000CE39574A0921E71CC618
      AF35BA56AE14650C4308AF6E095A6445601CC12C6545611408216B2DCE390000
      0000000000009901FE7FEB2D90429042F36290429042F3629042904290429042
      9042F36290429042EB2DFE7F990100000000000025314C666C6AAF72F176D36A
      D65E19673A6B5A6B324AD65A72562A5AA649A649A649653D2725104200000000
      0000000042664D77297729774B77846AB07F6B7BCA6E7277927B927BB27BD17F
      AE7FAD7F8D7F8E7FEA728D7F8E7B636600000000000000006D2DB135AE35FA5E
      1C639A52174211212504A761A24C454565458649864DE23084108C31620C0000
      0000000000009901FE7FEB2DFE7FFE7FF362FE7FFE7FF362FE7FFE7FFE7FFE7F
      FE7FF362FE7FFE7FEB2DFE7F99010000000000004635AF72F176F36AF6623967
      7B6F5B6F5B6F5B6F524AD75EB5562F4A2B5EA649A649A649653D27250F3E0000
      000000002162EA6E6B7B6B7B8C7B856AAF7FF07FE872E872E872E872E8725177
      D37FCF7FAD7FAD7FEA726B7BF07FE77200000000000000004B29BF771C639A52
      794E794EAF35C71C601C6069E068604CA2402445864D44416114630CE2300825
      0000000000009901FE7FEB2D90429042F36290429042F3629042904290429042
      9042F36290429042EB2DFE7F9901000000000000883DE95972527C739C739C73
      7C73BD775B6F9556B65AF75EB65A1146F5620956A649A649A649653D28250000
      000000006366C86EAE7BAD7FAE7B856AAF7FEF7FF07FCF7FCE7FAD7F4A77E872
      E872927BB27BD17F8E7B8F7FF37F8E7B63660000000000008C318E31F43DF65E
      0F21A418C1304155067A127FE859E130A0408048A24024454441023986490825
      0000000000009901FE7FEB2DFE7FFE7FF362FE7FFE7FF362FE7FFE7FFE7FFE7F
      FE7FF362FE7FFE7FEB2DFE7F9901000000000000524E8749524EFE7BBD77BC77
      796BB5563146D75E5B6FB65AD75E524AF86250522A5AA649A649A64904290000
      00000000846AE8728F7BCF7FCF7F856AAF7FEF7FCF7FCF7FCF7FCF7FD07FAD7F
      E872E8722F7350775077507772777277856A00000000000000000000630CC818
      802441550776CE7E337F547F2B5A2339A00CC030A0448050823C454586490825
      0000000000009901FE7FEB2D90429042F36290429042F3629042904290429042
      9042F36290429042EB2DFE7F99010000000000000000B45A734EFE7BB76B2E4F
      072A74525B6FF862734ED65A5B6F524A18637452304E2B5EA649A64904290000
      00000000846A8C7BE872CF7FCF7F856AD07FEF7FCF7FCF7FCF7FCF7FCF7FCF7F
      CF7F8C7BE872E872E87243664366646643660000000000000000000029252929
      487EF07E337F337F977F5677F0724B62A74D864DE220E144C058604CA2400825
      0000000000009901FE7FEB2DFE7FFE7FF362FE7FFE7FF362FE7FFE7FFE7FFE7F
      FE7FF362FE7FFE7FEB2DFE7F990100000000000000000000EA290D4B872EC519
      AB2D3966124A95563A6B3A6BD75EB65A186395561042F6660956A64904290000
      00000000856A8E7BE872917BF07F856AB27BF07FCF7FCF7FCE7FAF7F8E7B8E7B
      8F7BB07FAF7FB07F097300000000000000000000000000000000000029254A29
      337F547F757F5677B06A0A5E4C628E6AAF6E2B5EA74D6545022D015DC05C0725
      0000000000009901FE7FEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2D
      EB2DEB2DEB2DEB2DEB2DFE7F990100000000000000000000A71DA4156A29B555
      B861D34CF2453B67D75E534ED75E5B6FF75EB65A524A39672635095604290000
      00000000846AB07F6B7BCA6E7277927B4366F37FF07FF17FF07FE8726466856A
      856A856AA66EC76E856A000000000000000000000000000000000000CE394A29
      977F3477B06A4B62E9550A5AA74DE9556C668E6AAE6E6C66864D864D64510825
      0000000000009901FE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9901000000000000000000000000524AB248D34C
      0F39553EFD3A5A2A74525B6F1967945295565B6F524A3A6BE3286445883D0000
      00000000856AAF7FF07FE872E872E872436643664366436643664366AD7FEA72
      6B7BF07FE772000000000000000000000000000000000000000000000000CE39
      CA494C626C660A5E8E6A337FAF6EC8552B5E4C626C666D6AD0722B5EC8510825
      0000000000009901FE7FFE7FFE7FFE7FEB2DEB2DEB2DEB2DEB2DEB2DEB2DEB2D
      EB2DEB2DFE7FFE7FFE7FFE7F990100000000000000000000000000002E39EF20
      BD365E223A1992318E739052745219675B6FF86294523A6B893DA945304A0000
      00000000856AAF7FEF7FF07FCF7FCE7FAD7F4A77E872E872927BB27BD17F8E7B
      8F7FF37F8E7B6366000000000000000000000000000000000000000000000000
      CE39272DA8454C620A5EA74DE955C851E9552B620A5A4C666C668E6A8E6A2929
      0000000000009901FE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7F9901000000000000000000000000000000003325
      F91472310B67C87F6B7B4F4E5A6BF862524AB5565B6F19671042000000000000
      00000000856AAF7FEF7FCF7FCF7FCF7FCF7FD07FAD7FE872E8722F7350775077
      507772777277856A000000000000000000000000000000000000000000000000
      00000000CE396A31673D6C660A5AE9590A5AE9550A5AE9596C66A8456935CE39
      000000000000FB01FB01FB01FB01FB01FB01FB01FB01FB01FB01FB01FB01FB01
      FB01FB01FB01FB01FB01FB019901000000000000000000000000000000000000
      524A0D736B7B6D5A6F4AEE4AAA3E324A5B6F3A6BB556B5560000000000000000
      00000000856AD07FEF7FCF7FCF7FCF7FCF7FCF7FCF7FCF7F8C7BE872E872E872
      4366436664664366000000000000000000000000000000000000000000000000
      0000000000000000CE390725CA492B5A2A5EE8550A5AEA510725CE3900000000
      0000000000009901990199019901990199019901990199019901990199019901
      9901990199019901990199019901000000000000000000000000000000000000
      00000E4A8929CD42E93A451EC925586234529556000000000000000000000000
      00000000856AB27BF07FCF7FCF7FCE7FAF7F8E7B8E7B8F7BB07FAF7FB07F0973
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE396A35673DA8456935CE390000000000000000
      0000000000000000DA09DA09DA09DA09DA09DA09DA09DA09DA09DA09DA09DA09
      DA09DA09DA09DA09DA09DA090000000000000000000000000000000000000000
      00000000EB2D0416A925F451D965155591450000000000000000000000000000
      0000000000004366F37FF07FF17FF07FE8726466856A856A856AA66EC76E856A
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE39CE39000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000524AB0401555AF3C124A00000000000000000000000000000000
      0000000000004366436643664366436643660000000000000000000000000000
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
