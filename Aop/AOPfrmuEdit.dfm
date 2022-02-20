inherited AOPfrmEdit: TAOPfrmEdit
  Left = 542
  Top = 238
  ActiveControl = edZnacka
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Informace o firm'#283
  ClientHeight = 607
  ClientWidth = 815
  ParentFont = True
  OldCreateOrder = True
  ExplicitWidth = 821
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Left = 0
    Top = 26
    Width = 815
    Height = 581
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 26
    ExplicitWidth = 815
    ExplicitHeight = 581
    object pgcMain: TcxPageControl
      Left = 1
      Top = 1
      Width = 813
      Height = 264
      Align = alTop
      TabOrder = 0
      Properties.ActivePage = tbsAdresa
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 264
      ClientRectRight = 813
      ClientRectTop = 24
      object tbsAdresa: TcxTabSheet
        Caption = 'Detail adresy'
        ImageIndex = 0
        object lblLabel9: TcxLabel
          Left = 312
          Top = 40
          Caption = 'Telefon:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel12: TcxLabel
          Left = 312
          Top = 64
          Caption = 'FAX:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel17: TcxLabel
          Left = 312
          Top = 112
          Caption = 'E-Mail:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel18: TcxLabel
          Left = 312
          Top = 88
          Caption = 'Mobil:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblFirma: TcxLabel
          Left = 8
          Top = 40
          Caption = 'N'#225'zev:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel33: TcxLabel
          Left = 8
          Top = 88
          Caption = 'Ulice:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel24: TcxLabel
          Left = 8
          Top = 184
          Caption = 'I'#268'O/DI'#268':'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel13: TcxLabel
          Left = 8
          Top = 208
          Caption = 'Splatnost:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel22: TcxLabel
          Left = 312
          Top = 160
          Caption = 'Kl'#237#269' 1:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel2: TcxLabel
          Left = 8
          Top = 16
          Caption = 'K'#243'd:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel3: TcxLabel
          Left = 8
          Top = 64
          Caption = 'Jm'#233'no:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel8: TcxLabel
          Left = 448
          Top = 160
          Caption = 'Kl'#237#269' 2:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel11: TcxLabel
          Left = 312
          Top = 136
          Caption = 'Skupina:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel14: TcxLabel
          Left = 8
          Top = 136
          Caption = 'M'#283'sto:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel15: TcxLabel
          Left = 8
          Top = 112
          Caption = 'Ps'#269':'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel16: TcxLabel
          Left = 8
          Top = 160
          Caption = 'St'#225't:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edTelefon: TcxDBTextEdit
          Left = 368
          Top = 40
          Hint = 'Telefonn'#237' '#269#237'slo  (bez p'#345'edvolby)'
          DataBinding.DataField = 'TELEFON'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 12
          Width = 185
        end
        object edFax: TcxDBTextEdit
          Left = 368
          Top = 64
          Hint = 'Faxov'#233' '#269#237'slo (bez p'#345'edvolby)'
          DataBinding.DataField = 'FAX'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 13
          Width = 185
        end
        object edEmail: TcxDBTextEdit
          Left = 368
          Top = 112
          Hint = 'e-mailov'#225' adresa'
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 15
          OnEnter = edEmailEnter
          Width = 185
        end
        object edAdresa1: TcxDBTextEdit
          Tag = 12
          Left = 80
          Top = 64
          DataBinding.DataField = 'ADRESA1'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          Width = 185
        end
        object edAdresa2: TcxDBTextEdit
          Tag = 12
          Left = 80
          Top = 88
          Hint = 'Adresa'
          DataBinding.DataField = 'ADRESA2'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          Width = 185
        end
        object edAdresa3: TcxDBTextEdit
          Tag = 14
          Left = 80
          Top = 136
          Hint = 'M'#283'sto nebo obec'
          DataBinding.DataField = 'ADRESA3'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 5
          Width = 185
        end
        object edNazev: TcxDBTextEdit
          Tag = 12
          Left = 80
          Top = 40
          Hint = 'N'#225'zev firmy'
          DataBinding.DataField = 'NAZEV'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          Width = 185
        end
        object edDic: TcxDBTextEdit
          Left = 168
          Top = 184
          DataBinding.DataField = 'DIC'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 8
          Width = 97
        end
        object edIco: TcxDBTextEdit
          Left = 80
          Top = 184
          DataBinding.DataField = 'ICO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 7
          Width = 81
        end
        object edKlic1: TcxDBTextEdit
          Left = 368
          Top = 160
          Hint = 'Pomocn'#253' kl'#237#269' 1'
          DataBinding.DataField = 'K1'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 17
          Width = 81
        end
        object edKlic2: TcxDBTextEdit
          Left = 480
          Top = 160
          Hint = 'Pomocn'#253' kl'#237#269' 2'
          DataBinding.DataField = 'K2'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 18
          Width = 73
        end
        object edMobil: TcxDBTextEdit
          Left = 368
          Top = 88
          Hint = 'GSM'
          DataBinding.DataField = 'GSM'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 14
          Width = 185
        end
        object edSplatnost: TcxDBTextEdit
          Left = 80
          Top = 208
          Hint = 'Splatnost faktury'
          DataBinding.DataField = 'SPLATNOST'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 9
          Width = 81
        end
        object edZnacka: TcxDBButtonEdit
          Left = 80
          Top = 16
          Hint = 'Identifik'#225'tor adresy, doporu'#269'ujeme pou'#382#237'vat I'#268'O'
          TabStop = False
          DataBinding.DataField = 'AOPKOD'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
            end>
          Properties.OnButtonClick = edZnackaButtonClick
          TabOrder = 0
          Width = 131
        end
        object edPsc: TcxDBButtonEdit
          Tag = 13
          Left = 80
          Top = 112
          Hint = 'Sm'#283'rovac'#237' '#269#237'slo'
          DataBinding.DataField = 'PSC'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edPscButtonClick
          ShowHint = False
          TabOrder = 4
          Width = 81
        end
        object cbZeme: TcxDBLookupComboBox
          Left = 80
          Top = 160
          Hint = 'Zem'#283
          DataBinding.DataField = 'KODZEME'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 6
          Width = 185
        end
        object lblLabel20: TcxLabel
          Left = 312
          Top = 16
          Caption = 'RaalTrans'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edKodRaal: TcxDBTextEdit
          Left = 368
          Top = 16
          Hint = 'K'#243'd v databance Raal Trans'
          DataBinding.DataField = 'KOD_RAAL'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 10
          Width = 57
        end
        object lbl1: TcxLabel
          Left = 440
          Top = 16
          Caption = 'TimoCom'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edTimoCom: TcxDBTextEdit
          Left = 496
          Top = 16
          Hint = 'K'#243'd v databance TimoCom'
          DataBinding.DataField = 'KOD_TIMO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 11
          Width = 57
        end
        object lbl2: TcxLabel
          Left = 312
          Top = 208
          Caption = 'Referent:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edVlastnik: TcxDBLookupComboBox
          Left = 368
          Top = 208
          Hint = 'Refernt kter'#233'mu pat'#345#237' tento kontakt'
          DataBinding.DataField = 'VLASTNIK'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 38
          Width = 185
        end
        object cbSkupina: TcxDBLookupComboBox
          Left = 368
          Top = 136
          Hint = 'Za'#345'azen'#237' do skupiny'
          RepositoryItem = AOPfrmModule.repSkupiny
          DataBinding.DataField = 'SKUPINA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 16
          Width = 185
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Ostatn'#237
        ImageIndex = 1
        object lblLabel4: TcxLabel
          Left = 8
          Top = 16
          Caption = 'Banka:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel5: TcxLabel
          Left = 8
          Top = 40
          Caption = 'K'#243'd:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel10: TcxLabel
          Left = 8
          Top = 64
          Caption = #218#269'et:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edbankaNazev: TcxDBTextEdit
          Left = 80
          Top = 16
          Hint = 'N'#225'zev banky'
          DataBinding.DataField = 'BANKANAZEV'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 1
          Width = 185
        end
        object edBankaKod: TcxDBTextEdit
          Left = 80
          Top = 40
          Hint = 'K'#243'd banky'
          DataBinding.DataField = 'BANKAKOD'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 3
          Width = 81
        end
        object edUcet: TcxDBTextEdit
          Left = 80
          Top = 64
          Hint = 'Bankovn'#237' '#250#269'et'
          DataBinding.DataField = 'UCET'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 5
          Width = 185
        end
        object lblLabel19: TcxLabel
          Left = 8
          Top = 88
          Caption = 'http:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edWWW: TcxDBTextEdit
          Left = 80
          Top = 88
          Hint = 'domovsk'#225' str'#225'nka na internetu'
          DataBinding.DataField = 'WWW'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 7
          Width = 185
        end
        object lblLabel1: TcxLabel
          Left = 8
          Top = 112
          Caption = 'Fax-Email:'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object edPrefMail: TcxDBComboBox
          Left = 80
          Top = 112
          Hint = 'Typ doru'#269'ov'#225'n'#237' korespondence'
          DataBinding.DataField = 'PREFMAIL'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 9
          Visible = False
          Width = 185
        end
        object cxGroupBox1: TcxGroupBox
          Left = 288
          Top = 8
          Caption = ' Provize '
          ParentFont = False
          TabOrder = 10
          Height = 105
          Width = 233
          object lblDatum: TcxLabel
            Left = 8
            Top = 24
            Caption = 'Aktivn'#237' od:'
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object edDatum: TcxDBDateEdit
            Left = 88
            Top = 20
            DataBinding.DataField = 'PR_DSTART'
            DataBinding.DataSource = dsZaznam
            ParentFont = False
            TabOrder = 0
            Width = 97
          end
          object lblLabel6: TcxLabel
            Left = 8
            Top = 48
            Caption = 'Start provize'
            ParentFont = False
            Transparent = True
          end
          object edPrStart: TcxDBCurrencyEdit
            Left = 88
            Top = 44
            RepositoryItem = dmdGlobal.repProcenta
            AutoSize = False
            DataBinding.DataField = 'PR_CNSTART'
            DataBinding.DataSource = dsZaznam
            ParentFont = False
            TabOrder = 1
            Height = 21
            Width = 69
          end
          object lbl3: TcxLabel
            Left = 8
            Top = 72
            Caption = 'B'#283#382'n'#225' provize'
            ParentFont = False
            Transparent = True
          end
          object edPrCont: TcxDBCurrencyEdit
            Left = 88
            Top = 68
            RepositoryItem = dmdGlobal.repProcenta
            AutoSize = False
            DataBinding.DataField = 'PR_CNCONT'
            DataBinding.DataSource = dsZaznam
            ParentFont = False
            TabOrder = 2
            Height = 21
            Width = 69
          end
        end
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 265
      Width = 813
      Height = 315
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = tbsKontakty
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 315
      ClientRectRight = 813
      ClientRectTop = 24
      object tbsKontakty: TcxTabSheet
        Caption = 'Kontakty'
        ImageIndex = 0
        object grdKontakty: TcxGrid
          Left = 0
          Top = 26
          Width = 813
          Height = 265
          Align = alClient
          TabOrder = 0
          OnEnter = grdKontaktyEnter
          object tvKontakty: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.DataSource = dsKontakty
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klikn'#283'te zde pro p'#345'id'#225'n'#237' nov'#233'ho kontaktu'
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tvKontaktyID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object tvKontaktyPRIJMENI: TcxGridDBColumn
              DataBinding.FieldName = 'PRIJMENI'
              Width = 135
            end
            object tvKontaktyJMENO: TcxGridDBColumn
              DataBinding.FieldName = 'JMENO'
              Width = 68
            end
            object tvKontaktyEMAIL: TcxGridDBColumn
              DataBinding.FieldName = 'EMAIL'
              Width = 89
            end
            object tvKontaktyFUNKCE: TcxGridDBColumn
              DataBinding.FieldName = 'FUNKCE'
              Visible = False
            end
            object tvKontaktyTELEFON1: TcxGridDBColumn
              DataBinding.FieldName = 'TELEFON1'
            end
            object tvKontaktyTELEFON2: TcxGridDBColumn
              DataBinding.FieldName = 'TELEFON2'
              Visible = False
            end
            object tvKontaktyMOBIL: TcxGridDBColumn
              DataBinding.FieldName = 'MOBIL'
              Width = 97
            end
            object tvKontaktyFAX: TcxGridDBColumn
              DataBinding.FieldName = 'FAX'
            end
            object tvKontaktyCOMMTYP: TcxGridDBColumn
              DataBinding.FieldName = 'COMMTYP'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'PDF'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'JPG'
                  Value = 1
                end
                item
                  Description = 'DOC'
                  Value = 2
                end>
              Visible = False
              VisibleForCustomization = False
            end
            object tvKontaktyISVYCHOZI: TcxGridDBColumn
              DataBinding.FieldName = 'ISVYCHOZI'
              RepositoryItem = dmdGlobal.repBoolChar
            end
          end
          object grdKontaktyLevel1: TcxGridLevel
            GridView = tvKontakty
          end
        end
        object dckKontakty: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 813
          Height = 26
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object tbsUcty: TcxTabSheet
        Caption = 'Bankovn'#237' '#250#269'ty'
        ImageIndex = 1
        TabVisible = False
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tbsDocs: TcxTabSheet
        Caption = 'Dokumentace'
        ImageIndex = 2
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 815
    ExplicitWidth = 815
  end
  inherited ActionList1: TActionList
    Left = 567
    Top = 100
    inherited actRecDelete: TDataSetDelete
      ShortCut = 0
    end
    inherited actCancel: TAction
      Visible = False
    end
    object actKontAdd: TDataSetInsert
      Category = 'Dataset'
      Caption = 'P'#345'idat kontakt'
      Hint = 'P'#345'id'#225'n'#237' nov'#233'ho kontaktu'
      ImageIndex = 46
      DataSource = dsKontakty
    end
    object actKontDel: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Odstranit kontakt'
      Hint = 'Odebr'#225'n'#237' vybran'#233'ho kontaktu'
      ImageIndex = 47
      OnExecute = actKontDelExecute
      DataSource = dsKontakty
    end
    object actVybrat: TAction
      Category = 'Formular'
      Caption = 'Vybrat'
      OnExecute = actVybratExecute
    end
    object actGridStyl: TAction
      Category = 'Formular'
      Caption = 'Styl seznamu'
      ImageIndex = 39
      OnExecute = actGridStylExecute
    end
    object actSetDefaultEmail: TAction
      Caption = 'Hlavn'#237' kontakt'
      ImageIndex = 36
      OnExecute = actSetDefaultEmailExecute
      OnUpdate = actSetDefaultEmailUpdate
    end
    object actPolSave: TDataSetPost
      Category = 'Dataset'
      Caption = 'Zapsat kontakt'
      Hint = 'Post'
      ImageIndex = 9
      DataSource = dsKontakty
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AOPdmd.dtsAOP
    Left = 657
    Top = 100
  end
  inherited dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Left = 687
    Top = 100
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbSubSeznam'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxbOk'
        end>
    end
    object dxBarManager1Bar2: TdxBar [1]
      Caption = 'Kontakty'
      CaptionButtons = <>
      DockControl = dckKontakty
      DockedDockControl = dckKontakty
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 421
      FloatTop = 242
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxb3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb1'
        end
        item
          Visible = True
          ItemName = 'dxb4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxbGridStyl: TdxBarButton [11]
      Action = actGridStyl
      Category = 0
    end
    object dxbSubSeznam: TdxBarSubItem [12]
      Caption = 'Seznam'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbGridStyl'
        end>
    end
    object dxb1: TdxBarButton [13]
      Action = actKontAdd
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb2: TdxBarButton [14]
      Action = actKontDel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb3: TdxBarButton [15]
      Action = actSetDefaultEmail
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb4: TdxBarButton [16]
      Action = actPolSave
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object dsKontakty: TDataSource
    DataSet = AOPdmd.dtsAOPJmena
    Left = 627
    Top = 100
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = popKontakty
      end>
    Left = 597
    Top = 100
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'AOPfrmEdit.rsPropSaver1'
    Properties.Strings = (
      'tvKontakty.Styles.StyleSheet')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 627
    Top = 130
  end
  object popKontakty: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbGridStyl'
      end>
    UseOwnFont = False
    Left = 567
    Top = 130
  end
  object jfEnterAsTab1: TjfEnterAsTab
    Left = 597
    Top = 130
  end
end
