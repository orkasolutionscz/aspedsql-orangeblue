inherited FDfrmEdit: TFDfrmEdit
  Left = 582
  Top = 255
  Caption = 'Faktura do'#353'l'#225
  ClientHeight = 625
  ClientWidth = 810
  OldCreateOrder = True
  OnFormPrint = gbCustomEditFormPrint
  ExplicitWidth = 826
  ExplicitHeight = 663
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Left = 0
    Top = 26
    Width = 810
    Height = 599
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 26
    ExplicitWidth = 810
    ExplicitHeight = 599
    object pnlHlavicka: TPanel
      Left = 1
      Top = 1
      Width = 808
      Height = 249
      Align = alTop
      TabOrder = 0
      object grbIdent: TcxGroupBox
        Left = 8
        Top = 8
        Caption = ' Faktura '
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = True
        Height = 121
        Width = 345
        object lblLabel9: TcxLabel
          Left = 8
          Top = 16
          Caption = 'Doklad :'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel8: TcxLabel
          Left = 8
          Top = 40
          Caption = 'Variabiln'#237' :'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel17: TcxLabel
          Left = 176
          Top = 16
          Caption = 'Vystaveno:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel18: TcxLabel
          Left = 176
          Top = 40
          Caption = 'Da'#328'.pov.:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel21: TcxLabel
          Left = 176
          Top = 88
          Caption = 'Splatn'#225':'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edVariabilni: TcxDBTextEdit
          Left = 64
          Top = 40
          Hint = 'Sm'#283'rovac'#237' '#269#237'slo'
          DataBinding.DataField = 'VARIABILNI'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          Width = 97
        end
        object edFaktura: TcxDBButtonEdit
          Left = 64
          Top = 16
          Hint = 'Eviden'#269'n'#237' '#269#237'slo faktury.'
          DataBinding.DataField = 'FAKTURADO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          Properties.Buttons = <
            item
              Default = True
            end
            item
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edFakturaButtonClick
          ShowHint = False
          TabOrder = 0
          Width = 97
        end
        object edDatSpl: TcxDBDateEdit
          Left = 232
          Top = 88
          Cursor = crHandPoint
          Hint = 'Datum splatnosti faktury'
          DataBinding.DataField = 'DATSPLATNOST'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          Width = 89
        end
        object edDatDan: TcxDBDateEdit
          Tag = 99
          Left = 232
          Top = 40
          Cursor = crHandPoint
          Hint = 'Datum da'#328'ov'#233' povinnosti (datum nakl'#225'dky)'
          DataBinding.DataField = 'DATDANPOV'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
          Width = 89
        end
        object edDatVyst: TcxDBDateEdit
          Left = 232
          Top = 16
          Cursor = crHandPoint
          Hint = 'Datum vystaven'#237
          DataBinding.DataField = 'DATVYSTAVENI'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          Width = 89
        end
        object lbl4: TcxLabel
          Left = 8
          Top = 64
          Caption = 'P'#345'ijato'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edDatDoruceni: TcxDBDateEdit
          Left = 64
          Top = 64
          Cursor = crHandPoint
          Hint = 'Datum doru'#269'en'#237' da'#328'ov'#233'ho dokladu'
          DataBinding.DataField = 'DATDORUCENI'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          Width = 97
        end
        object cxLabel1: TcxLabel
          Left = 176
          Top = 64
          Caption = 'DP Dod.:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edDatDanDod: TcxDBDateEdit
          Left = 232
          Top = 64
          Cursor = crHandPoint
          Hint = 'Datum uveden'#233' da'#328'ov'#233' povinnosti dodavatele'
          DataBinding.DataField = 'DATDANPOVDOD'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 5
          Width = 89
        end
      end
      object grbFirma: TcxGroupBox
        Left = 360
        Top = 8
        Caption = ' Firma '
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = True
        Height = 233
        Width = 257
        object edAdresa1: TcxDBTextEdit
          Left = 56
          Top = 40
          DataBinding.DataField = 'ADRESA1'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          Width = 194
        end
        object edAdresa2: TcxDBTextEdit
          Left = 56
          Top = 64
          Hint = 'Adresa'
          DataBinding.DataField = 'ADRESA2'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          Width = 194
        end
        object edPsc: TcxDBTextEdit
          Left = 56
          Top = 88
          Hint = 'Sm'#283'rovac'#237' '#269#237'slo'
          DataBinding.DataField = 'PSC'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          Width = 61
        end
        object edZeme: TcxDBTextEdit
          Left = 56
          Top = 112
          Hint = 'Zem'#283
          DataBinding.DataField = 'ZEME'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 5
          Width = 193
        end
        object edAdresa3: TcxDBTextEdit
          Left = 120
          Top = 88
          Hint = 'M'#283'sto nebo obec'
          DataBinding.DataField = 'ADRESA3'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
          Width = 129
        end
        object edDIC: TcxDBTextEdit
          Left = 56
          Top = 136
          DataBinding.DataField = 'DIC'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          Width = 104
        end
        object edICO: TcxDBTextEdit
          Left = 160
          Top = 136
          DataBinding.DataField = 'ICO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 7
          Width = 89
        end
        object edNazev: TcxDBButtonEdit
          Left = 56
          Top = 16
          Hint = 'N'#225'zev firmy (adresu je mo'#382'no vyplnit ru'#269'n'#283' nebo pou'#382#237't adres'#225#345')'
          DataBinding.DataField = 'NAZEV'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edNazevButtonClick
          ShowHint = False
          TabOrder = 0
          Width = 194
        end
        object lblLabel11: TcxLabel
          Left = 8
          Top = 168
          Caption = #218#269'et'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edUcet: TcxDBTextEdit
          Left = 56
          Top = 168
          Hint = #268#237'slo '#250#269'tu'
          DataBinding.DataField = 'UCET_CISLO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 9
          Width = 145
        end
        object edBanka: TcxDBTextEdit
          Left = 200
          Top = 168
          Hint = 'K'#243'd banky'
          DataBinding.DataField = 'UCET_BANKA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 10
          Width = 49
        end
        object lblLabel16: TcxLabel
          Left = 8
          Top = 192
          Caption = 'M'#283'na'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cbMena: TcxDBLookupComboBox
          Left = 56
          Top = 192
          Hint = 'M'#283'na'
          DataBinding.DataField = 'CENAMENA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          ParentShowHint = False
          Properties.ListColumns = <>
          ShowHint = False
          TabOrder = 11
          Width = 65
        end
        object edCenaKurs: TcxDBCurrencyEdit
          Left = 152
          Top = 192
          RepositoryItem = dmdGlobal.repCNKurz
          AutoSize = False
          DataBinding.DataField = 'CENAKURZ'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 12
          Height = 21
          Width = 49
        end
        object lbl3: TcxLabel
          Left = 120
          Top = 192
          Caption = 'Kurz'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
      end
      object grbCenaPanel: TcxGroupBox
        Left = 8
        Top = 136
        Caption = ' Sou'#269'ty '
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = True
        Height = 105
        Width = 345
        object lblYaklad: TcxLabel
          Left = 8
          Top = 8
          AutoSize = False
          Caption = 'Z'#225'klad'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 17
          Width = 61
          AnchorX = 69
        end
        object lblLabel24: TcxLabel
          Left = 88
          Top = 8
          AutoSize = False
          Caption = 'DPH'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 16
          Width = 61
          AnchorX = 149
        end
        object lblLabel13: TcxLabel
          Left = 152
          Top = 8
          AutoSize = False
          Caption = 'Sou'#269'ty'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 17
          Width = 61
          AnchorX = 213
        end
        object lblLabel19: TcxLabel
          Left = 72
          Top = 72
          AutoSize = False
          Caption = '0'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 17
          Width = 17
        end
        object edZaklad22: TcxDBCurrencyEdit
          Tag = 99
          Left = 8
          Top = 24
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'SUMA22'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          Height = 21
          Width = 61
        end
        object edZaklad05: TcxDBCurrencyEdit
          Tag = 99
          Left = 8
          Top = 48
          Hint = 'Z'#225'klad DPH 5%'
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'SUMA05'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          Height = 21
          Width = 61
        end
        object edZaklad00: TcxDBCurrencyEdit
          Tag = 99
          Left = 8
          Top = 72
          Hint = 'Bez DPH'
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'SUMA00'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 10
          Height = 21
          Width = 61
        end
        object edDPH22: TcxDBCurrencyEdit
          Tag = 99
          Left = 88
          Top = 24
          Hint = 'DPH ze z'#225'kladu 22%'
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'DPH22'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          Height = 21
          Width = 61
        end
        object edDPH05: TcxDBCurrencyEdit
          Tag = 99
          Left = 88
          Top = 48
          Hint = 'DPH ze z'#225'kladu 5%'
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'DPH05'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
          Height = 21
          Width = 61
        end
        object edCENA22: TcxDBCurrencyEdit
          Tag = 99
          Left = 152
          Top = 24
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENA22SDPH'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          Height = 21
          Width = 61
        end
        object edCENA05: TcxDBCurrencyEdit
          Tag = 99
          Left = 152
          Top = 48
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENA05SDPH'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 5
          Height = 21
          Width = 61
        end
        object edCenaSuma: TcxDBCurrencyEdit
          Left = 272
          Top = 24
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CELKEM'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 13
          Height = 21
          Width = 61
        end
        object lbDPHSnizena: TcxDBLabel
          Left = 72
          Top = 48
          DataBinding.DataField = 'CALCDPHSNIZ'
          DataBinding.DataSource = dsZaznam
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 17
          Width = 17
        end
        object lbDBHZakladni: TcxDBLabel
          Left = 72
          Top = 24
          DataBinding.DataField = 'CALCDPHZAKL'
          DataBinding.DataSource = dsZaznam
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 17
          Width = 17
        end
        object edKUhrade: TcxDBCurrencyEdit
          Left = 272
          Top = 72
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENALIKV'
          DataBinding.DataSource = dsZaznam
          Enabled = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 14
          Height = 21
          Width = 61
        end
        object lblLabel37: TcxLabel
          Left = 216
          Top = 72
          Caption = 'K '#250'hrad'#283
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lbl1: TcxLabel
          Left = 216
          Top = 24
          Caption = 'Celkem'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 272
          Top = 48
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENAUHRAZENO'
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 17
          Height = 21
          Width = 61
        end
        object lbl2: TcxLabel
          Left = 216
          Top = 48
          Caption = 'Uhrazeno'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 250
      Width = 808
      Height = 348
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 348
      ClientRectRight = 808
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Polo'#382'ky'
        ImageIndex = 0
        object grdSrazky: TcxGrid
          Left = 0
          Top = 26
          Width = 808
          Height = 164
          Align = alClient
          TabOrder = 0
          OnEnter = grdSrazkyEnter
          OnExit = grdSrazkyExit
          object tvPolozky: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsPolozky
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
            OptionsCustomize.ColumnSorting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tvPolozkyID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              VisibleForCustomization = False
            end
            object tvPolozkyREFFD: TcxGridDBColumn
              DataBinding.FieldName = 'REFFD'
              Visible = False
              VisibleForCustomization = False
            end
            object tvPolozkyPOLOZKA: TcxGridDBColumn
              DataBinding.FieldName = 'POLOZKA'
              Options.Editing = False
            end
            object tvPolozkyPOLTEXT: TcxGridDBColumn
              DataBinding.FieldName = 'POLTEXT'
              Width = 166
            end
            object tvPolozkyZASILKA: TcxGridDBColumn
              DataBinding.FieldName = 'ZASILKA'
              Options.Editing = False
            end
            object tvPolozkyCENASMLUVNI: TcxGridDBColumn
              DataBinding.FieldName = 'CENASMLUVNI'
              Width = 88
            end
            object tvPolozkyCENAJEDNOTKY: TcxGridDBColumn
              DataBinding.FieldName = 'CENAJEDNOTKY'
              Width = 61
            end
            object tvPolozkyCENAJEDNOTKA: TcxGridDBColumn
              DataBinding.FieldName = 'CENAJEDNOTKA'
              Width = 55
            end
            object tvPolozkyCENADPHPROC: TcxGridDBColumn
              DataBinding.FieldName = 'CENADPHPROC'
              Visible = False
              Options.Editing = False
            end
            object tvPolozkyCENADPH: TcxGridDBColumn
              DataBinding.FieldName = 'CENADPH'
              Width = 59
            end
            object tvPolozkyCENASUMA: TcxGridDBColumn
              DataBinding.FieldName = 'CENASUMA'
              Width = 70
            end
            object tvPolozkyCENADPHSAZBA: TcxGridDBColumn
              DataBinding.FieldName = 'CENADPHSAZBA'
            end
            object tvPolozkyISDOPROVIZE: TcxGridDBColumn
              DataBinding.FieldName = 'ISDOPROVIZE'
            end
            object tvPolozkyZALOHA: TcxGridDBColumn
              DataBinding.FieldName = 'ZALOHA'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
            end
          end
          object lvSrazky: TcxGridLevel
            Caption = 'P'#345'ehled sr'#225#382'ek a p'#345'ir'#225#382'ek'
            GridView = tvPolozky
          end
        end
        object dck1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 808
          Height = 26
          Align = dalTop
          BarManager = dxBarManager1
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 190
          Align = alBottom
          Caption = 'Pozn'#225'mka'
          PanelStyle.Active = True
          ParentFont = False
          TabOrder = 2
          DesignSize = (
            808
            134)
          Height = 134
          Width = 808
          object edPoznamka: TcxDBMemo
            Left = 2
            Top = 21
            Anchors = [akLeft, akRight, akBottom]
            DataBinding.DataField = 'POZNAMKA'
            DataBinding.DataSource = dsZaznam
            ParentFont = False
            TabOrder = 0
            Height = 110
            Width = 803
          end
        end
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
    Width = 810
    ExplicitWidth = 810
  end
  inherited ActionList1: TActionList
    Left = 108
    Top = 4
    inherited actRecCopy: TAction
      Visible = False
    end
    object actAddDopravcePrepravy: TAction
      Caption = 'P'#345'idat z'#225'sliku (Dopravce)'
      ImageIndex = 46
      OnExecute = actAddDopravcePrepravyExecute
    end
    object actPolNew: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Nov'#225
      Hint = 'P'#345'id'#225'n'#237' polo'#382'ky faktury'
      ImageIndex = 46
      DataSource = dsPolozky
    end
    object actPolDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Odebrat'
      Hint = 'Odstranit polo'#382'ku faktury'
      ImageIndex = 47
      DataSource = dsPolozky
    end
    object actPolSave: TDataSetPost
      Category = 'Dataset'
      Caption = 'Zapsat'
      Hint = 'Z'#225'pis zm'#283'n v polo'#382'ce do datab'#225'ze'
      ImageIndex = 9
      DataSource = dsPolozky
    end
    object actAddPreprava: TAction
      Caption = 'P'#345'idat z'#225'silku (V'#353'echny)'
      ImageIndex = 46
      OnExecute = actAddDopravcePrepravyExecute
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = FDdmd.FakturyDO
    Left = 238
    Top = 6
  end
  inherited dxBarManager1: TdxBarManager
    Left = 172
    Top = 4
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar2: TdxBar [1]
      AllowClose = False
      Caption = 'Polozky'
      CaptionButtons = <>
      DockControl = dck1
      DockedDockControl = dck1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 532
      FloatTop = 255
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxb1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxb3'
        end
        item
          Visible = True
          ItemName = 'dxb2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton9: TdxBarButton
      Action = actAddDopravcePrepravy
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb1: TdxBarButton
      Action = actPolNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb2: TdxBarButton
      Action = actPolDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb3: TdxBarButton
      Action = actPolSave
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actAddPreprava
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object dsPolozky: TDataSource
    DataSet = FDdmd.dtsFDPol
    Left = 304
    Top = 8
  end
  object jfEnterAsTab1: TjfEnterAsTab
    Left = 656
    Top = 56
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdSrazky
    PopupMenus = <>
    Left = 32
    Top = 384
  end
end
