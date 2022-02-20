inherited frmPlatciDetail: TfrmPlatciDetail
  Left = 513
  Top = 250
  ActiveControl = edPlatce
  BorderStyle = bsDialog
  Caption = 'Pl'#225'tce p'#345'epravy'
  ClientHeight = 550
  ClientWidth = 686
  OldCreateOrder = True
  ExplicitWidth = 692
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Left = 0
    Top = 26
    Width = 589
    Height = 524
    Align = alClient
    BevelOuter = bvNone
    ExplicitLeft = 0
    ExplicitTop = 26
    ExplicitWidth = 589
    ExplicitHeight = 524
    object pnlPlatce: TPanel
      Left = 0
      Top = 0
      Width = 589
      Height = 217
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object edPozice: TcxDBTextEdit
        Left = 104
        Top = 64
        DataBinding.DataField = 'POZICE'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 2
        Width = 376
      end
      object edPodminky: TcxDBTextEdit
        Left = 104
        Top = 112
        DataBinding.DataField = 'PODMINKY'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 4
        Width = 376
      end
      object edPlatce: TcxDBLookupComboBox
        Left = 104
        Top = 16
        DataBinding.DataField = 'AOPKOD'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.ListColumns = <>
        Style.Edges = [bLeft, bTop, bRight]
        TabOrder = 0
        Width = 376
      end
      object edFaktura: TcxDBTextEdit
        Left = 104
        Top = 88
        TabStop = False
        DataBinding.DataField = 'FAKTURA'
        DataBinding.DataSource = dsZaznam
        Enabled = False
        ParentFont = False
        TabOrder = 3
        Width = 117
      end
      object Label3: TcxLabel
        Left = 16
        Top = 64
        Caption = 'Co&de pl'#225'tce:'
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 16
        Top = 88
        Caption = '&Faktura:'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 16
        Top = 112
        Caption = 'Pozn'#225'mka k FV:'
        ParentFont = False
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 16
        Top = 16
        Caption = 'Pl'#225'tce:'
        ParentFont = False
      end
      object cxGroupBox1: TcxGroupBox
        Left = 24
        Top = 144
        Caption = ' Cena '
        ParentFont = False
        TabOrder = 9
        Height = 65
        Width = 457
        object edProvize: TcxDBCurrencyEdit
          Left = 88
          Top = 32
          TabStop = False
          RepositoryItem = dmdGlobal.repCena
          AutoSize = False
          DataBinding.DataField = 'CENAPROVIZE'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ReadOnly = True
          TabOrder = 0
          Height = 21
          Width = 65
        end
        object Label16: TcxLabel
          Left = 16
          Top = 16
          Caption = 'Celkem'
          ParentFont = False
          Transparent = True
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 160
          Top = 32
          TabStop = False
          RepositoryItem = dmdGlobal.repCena
          AutoSize = False
          DataBinding.DataField = 'CENASUMAKC'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ReadOnly = True
          TabOrder = 2
          Height = 21
          Width = 65
        end
        object edCelkem: TcxDBCurrencyEdit
          Left = 16
          Top = 32
          TabStop = False
          RepositoryItem = dmdGlobal.repCena
          AutoSize = False
          DataBinding.DataField = 'CENASUMA'
          DataBinding.DataSource = dsZaznam
          Enabled = False
          ParentFont = False
          TabOrder = 3
          Height = 21
          Width = 65
        end
        object cbMena: TcxDBLookupComboBox
          Left = 280
          Top = 32
          DataBinding.DataField = 'CENAMENA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 4
          Width = 57
        end
        object edCenaKurs: TcxDBCurrencyEdit
          Left = 344
          Top = 32
          RepositoryItem = dmdGlobal.repCNKurz
          AutoSize = False
          DataBinding.DataField = 'CENAKURS'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 5
          OnDblClick = actNActiKurzExecute
          Height = 21
          Width = 69
        end
        object Label7: TcxLabel
          Left = 280
          Top = 16
          Caption = 'M'#283'na'
          ParentFont = False
        end
        object Label10: TcxLabel
          Left = 344
          Top = 16
          Caption = 'Kurs'
          ParentFont = False
        end
        object cxLabel1: TcxLabel
          Left = 88
          Top = 16
          Caption = 'Cellkem PRO'
          ParentFont = False
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 160
          Top = 16
          Caption = 'PRO (CZK)'
          ParentFont = False
          Transparent = True
        end
      end
      object edEmail: TcxDBTextEdit
        Left = 104
        Top = 33
        DataBinding.DataField = 'PLA_EMAILS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.Edges = [bLeft, bRight, bBottom]
        TabOrder = 1
        Width = 376
      end
    end
    object grdSrazky: TcxGrid
      Left = 0
      Top = 217
      Width = 589
      Height = 307
      Align = alClient
      TabOrder = 1
      OnExit = grdSrazkyExit
      RootLevelOptions.DetailTabsPosition = dtpTop
      RootLevelStyles.Tab = dmdGlobal.cxStyle11
      object tvSrazky: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSrazky
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.InfoText = 'Klikn'#283'te zde pro zad'#225'n'#237' nov'#233'ho z'#225'znamu'
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvSrazkyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object tvSrazkyRefPlatce: TcxGridDBColumn
          DataBinding.FieldName = 'RefPlatce'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object tvSrazkyCenaText: TcxGridDBColumn
          DataBinding.FieldName = 'CenaText'
          Width = 113
        end
        object tvSrazkyCENAMENAZAKLAD: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENAZAKLAD'
          Visible = False
          Styles.Content = dmdGlobal.cxStyle11
          Styles.Header = dmdGlobal.cxStyle11
        end
        object tvSrazkyCENAMENA: TcxGridDBColumn
          DataBinding.FieldName = 'CENAMENA'
          Visible = False
          Styles.Content = dmdGlobal.cxStyle11
          Styles.Header = dmdGlobal.cxStyle11
        end
        object tvSrazkyCENAKURZ: TcxGridDBColumn
          DataBinding.FieldName = 'CENAKURZ'
          Visible = False
          Styles.Content = dmdGlobal.cxStyle11
          Styles.Header = dmdGlobal.cxStyle11
        end
        object tvSrazkyCenaZaklad: TcxGridDBColumn
          DataBinding.FieldName = 'CenaZaklad'
          Width = 67
        end
        object tvSrazkyCENASLEVA: TcxGridDBColumn
          DataBinding.FieldName = 'CENASLEVA'
          Visible = False
        end
        object tvSrazkyCenaJednotka: TcxGridDBColumn
          DataBinding.FieldName = 'CenaJednotka'
        end
        object tvSrazkyCenaJednotky: TcxGridDBColumn
          DataBinding.FieldName = 'CenaJednotky'
          Width = 92
        end
        object tvSrazkyCENASAZBADPH: TcxGridDBColumn
          DataBinding.FieldName = 'CENASAZBADPH'
        end
        object tvSrazkyCENADPHPROC: TcxGridDBColumn
          DataBinding.FieldName = 'CENADPHPROC'
          Visible = False
          Options.Editing = False
          Width = 82
        end
        object tvSrazkyCENADPH: TcxGridDBColumn
          DataBinding.FieldName = 'CENADPH'
          Visible = False
        end
        object tvSrazkyCenaSuma: TcxGridDBColumn
          DataBinding.FieldName = 'CenaSuma'
          Width = 79
        end
        object tvSrazkyISDOPROVIZE: TcxGridDBColumn
          DataBinding.FieldName = 'ISDOPROVIZE'
        end
        object tvSrazkyCENAPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'CENAPOPIS'
          Visible = False
        end
      end
      object lvSrazky: TcxGridLevel
        Caption = 'Seznam polo'#382'ek pro fakturaci '
        GridView = tvSrazky
      end
    end
  end
  object pnlFormButton: TPanel [1]
    Left = 589
    Top = 26
    Width = 97
    Height = 524
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 6
    object btnGetKurz: TcxButton
      Left = 8
      Top = 112
      Width = 81
      Height = 25
      Action = actGetKurz
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object btnFakturaRMVazba: TcxButton
      Left = 8
      Top = 81
      Width = 81
      Height = 25
      Action = actFakturaRMVazba
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object btnPolAd: TcxButton
      Left = 8
      Top = 280
      Width = 81
      Height = 25
      Action = actPolNew
      Colors.Normal = 4707838
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD840021842900218429006BAD
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD
        8400218429002184290021842900218429002184290094DE8C0039B552002184
        2900218429002184290021842900218429006BAD8400FF00FF00FF00FF0063A5
        630039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
        520039B5520039B5520039B5520039B5520021842900FF00FF00FF00FF0063A5
        630094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE
        8C0094DE8C0094DE8C0094DE8C0094DE8C0021842900FF00FF00FF00FF006BAD
        840063A5630063A5630063A5630063A5630063A5630094DE8C0039B552002184
        2900218429002184290021842900218429006BAD8400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD840063A5630063A563006BAD
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
    object btnPolDel: TcxButton
      Left = 8
      Top = 312
      Width = 81
      Height = 25
      Action = actPolDel
      Colors.Default = 4707838
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B84
        C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
        A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF000021
        A5009494F7000029E7000029E7000029E7000029E7000029E7000029E7000029
        E7000029E7000029E7000029E7000029E7000021A500FF00FF00FF00FF000021
        A500B5C6FF009CBDFF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638C
        F700638CF700638CF700526BF700526BF7000021A500FF00FF00FF00FF006B84
        C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
        A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
    end
    object btnFactAct: TcxButton
      Left = 8
      Top = 50
      Width = 81
      Height = 25
      Caption = 'btnFactAct'
      TabOrder = 0
    end
    object btnPolSave: TcxButton
      Left = 8
      Top = 344
      Width = 81
      Height = 25
      Action = actPolSave
      Colors.Default = 4707838
      TabOrder = 5
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 686
    ExplicitWidth = 686
  end
  inherited ActionList1: TActionList
    Left = 128
    Top = 60
    object actPolNew: TDataSetInsert
      Category = 'Polozky'
      Caption = 'P'#345'idat'
      Hint = 'Nov'#253' z'#225'znam v p'#345'ir'#225#382'k'#225'ch a sr'#225#382'k'#225'ch'
      ImageIndex = 46
      DataSource = dsSrazky
    end
    object actPolDel: TDataSetDelete
      Category = 'Polozky'
      Caption = 'Odebrat'
      Hint = 'Odstranit polo'#382'ku p'#345'ir'#225#382'ky'
      ImageIndex = 47
      DataSource = dsSrazky
    end
    object actPolSave: TDataSetPost
      Category = 'Dataset'
      Caption = 'Zapsat'
      Hint = 'Post'
      ImageIndex = 9
      DataSource = dsSrazky
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = ZSdmd.ZAPlatci
    Left = 333
    Top = 62
  end
  inherited dxBarManager1: TdxBarManager
    Left = 60
    Top = 128
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object ActionListPlatce: TActionList
    Images = dmdGlobal.imglDefault
    Left = 61
    Top = 60
    object actFakturaNew: TAction
      Caption = 'Vystavit fakturu'
      Hint = 'Vystavit fakturu'
      OnExecute = FakturaAction
    end
    object actFakturaShow: TAction
      Caption = 'Zobrazit fakturu'
      Hint = 'Zobrazit vystavenou fakturu'
      OnExecute = FakturaAction
    end
    object actFakturaRMVazba: TAction
      Caption = 'Zru'#353'it vazbu'
      Hint = 'Zru'#353'it vazbu na fakturu'
      OnExecute = actFakturaRMVazbaExecute
    end
    object actGetKurz: TAction
      Caption = 'Na'#269#237'st akt. kurz'
      OnExecute = actNActiKurzExecute
    end
  end
  object dsSrazky: TDataSource
    DataSet = ZSdmd.ZAPlatciSrazky
    Left = 264
    Top = 60
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdSrazky
    PopupMenus = <>
    Left = 196
    Top = 60
  end
  object jfEnterAsTab1: TjfEnterAsTab
    Left = 224
    Top = 128
  end
end
