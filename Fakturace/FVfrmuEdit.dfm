inherited frmFVEdit: TfrmFVEdit
  Left = 400
  Top = 246
  ActiveControl = cbFVFaktTyp
  Caption = 'Detail faktury'
  ClientHeight = 593
  ClientWidth = 826
  OldCreateOrder = True
  OnFormPrint = jfsCustomEvidFormFormPrint
  ExplicitWidth = 842
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Left = 0
    Top = 26
    Width = 826
    Height = 567
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 26
    ExplicitWidth = 826
    ExplicitHeight = 567
    object pnlZakladni: TPanel
      Left = 1
      Top = 1
      Width = 824
      Height = 283
      Align = alTop
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      object lblLabel6: TcxLabel
        Left = 176
        Top = 8
        Caption = 'Vystaveno:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel12: TcxLabel
        Left = 176
        Top = 32
        Caption = 'Da'#328'.pov.:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel15: TcxLabel
        Left = 360
        Top = 152
        Caption = 'Obj./dat. :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel18: TcxLabel
        Left = 8
        Top = 56
        Caption = 'Variab.:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel20: TcxLabel
        Left = 176
        Top = 56
        Caption = 'Splatn'#225':'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel21: TcxLabel
        Left = 8
        Top = 8
        Caption = 'Typ :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel22: TcxLabel
        Left = 360
        Top = 176
        Caption = #218'hrada/'#250#269'et :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel31: TcxLabel
        Left = 360
        Top = 76
        Caption = 'St'#225't :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel2: TcxLabel
        Left = 360
        Top = 99
        Caption = 'DI'#268' / I'#268'O :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel33: TcxLabel
        Left = 360
        Top = 25
        Caption = 'Adresa :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel34: TcxLabel
        Left = 360
        Top = 60
        Caption = 'Ps'#269' / Obec :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel13: TcxLabel
        Left = 8
        Top = 106
        Caption = 'Text :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel7: TcxLabel
        Left = 360
        Top = 200
        Caption = 'P'#345#237'lohy :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel9: TcxLabel
        Left = 360
        Top = 224
        Caption = 'Z'#225'v'#283'r :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel10: TcxLabel
        Left = 360
        Top = 248
        Caption = 'M'#283'na / kurs :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel8: TcxLabel
        Left = 8
        Top = 256
        Caption = 'Z'#225'lohy:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel37: TcxLabel
        Left = 168
        Top = 256
        Caption = 'K '#250'hrad'#283':'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel39: TcxLabel
        Left = 360
        Top = 8
        Caption = 'Firma :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel3: TcxLabel
        Left = 8
        Top = 32
        Caption = 'Faktura :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object grbCenaPanel: TcxGroupBox
        Left = 8
        Top = 160
        ParentColor = False
        ParentFont = False
        TabOrder = 47
        Transparent = True
        Height = 89
        Width = 305
        object lblYaklad: TcxLabel
          Left = 64
          Top = 8
          AutoSize = False
          Caption = 'Z'#225'klad'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 17
          Width = 57
          AnchorX = 121
        end
        object lblLabel24: TcxLabel
          Left = 144
          Top = 8
          AutoSize = False
          Caption = 'DPH'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 17
          Width = 59
          AnchorX = 203
        end
        object lbl1: TcxLabel
          Left = 224
          Top = 8
          AutoSize = False
          Caption = 'Sou'#269'ty'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 17
          Width = 73
          AnchorX = 297
        end
        object lblLabel19: TcxLabel
          Left = 120
          Top = 60
          AutoSize = False
          Caption = '0'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 17
          Width = 25
        end
        object lblDPHSnizena: TcxLabel
          Left = 120
          Top = 42
          AutoSize = False
          Caption = '5'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 17
          Width = 25
        end
        object lblDBHZakladni: TcxLabel
          Left = 120
          Top = 24
          AutoSize = False
          Caption = '19'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 17
          Width = 25
        end
        object edZaklad22: TcxDBCurrencyEdit
          Tag = 99
          Left = 56
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
          Width = 65
        end
        object edZaklad05: TcxDBCurrencyEdit
          Tag = 99
          Left = 56
          Top = 42
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
          TabOrder = 1
          Height = 21
          Width = 65
        end
        object edZaklad00: TcxDBCurrencyEdit
          Tag = 99
          Left = 56
          Top = 60
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
          TabOrder = 2
          Height = 21
          Width = 65
        end
        object edDPH22: TcxDBCurrencyEdit
          Tag = 99
          Left = 144
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
          TabOrder = 9
          Height = 21
          Width = 61
        end
        object edDPH05: TcxDBCurrencyEdit
          Tag = 99
          Left = 144
          Top = 42
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
          TabOrder = 10
          Height = 21
          Width = 61
        end
        object edCENA22: TcxDBCurrencyEdit
          Tag = 99
          Left = 222
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
          TabOrder = 11
          Height = 21
          Width = 76
        end
        object edCENA05: TcxDBCurrencyEdit
          Tag = 99
          Left = 222
          Top = 42
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataSource = dsZaznam
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 12
          Height = 21
          Width = 76
        end
        object edCenaSuma: TcxDBCurrencyEdit
          Left = 222
          Top = 60
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
          Width = 76
        end
      end
      object edDIC: TcxDBTextEdit
        Tag = 15
        Left = 432
        Top = 99
        DataBinding.DataField = 'DIC'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ValidateOnEnter = True
        ShowHint = False
        TabOrder = 14
        Width = 115
      end
      object edICO: TcxDBTextEdit
        Tag = 15
        Left = 552
        Top = 99
        DataBinding.DataField = 'ICO'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 15
        Width = 81
      end
      object edZeme: TcxDBTextEdit
        Left = 432
        Top = 76
        Hint = 'Zem'#283
        DataBinding.DataField = 'ZEME'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.Edges = [bLeft, bRight, bBottom]
        TabOrder = 13
        Width = 201
      end
      object edAdresa3: TcxDBTextEdit
        Tag = 14
        Left = 496
        Top = 59
        Hint = 'M'#283'sto nebo obec'
        DataBinding.DataField = 'ADRESA3'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.Edges = [bLeft, bRight]
        TabOrder = 12
        Width = 137
      end
      object edPsc: TcxDBTextEdit
        Tag = 13
        Left = 432
        Top = 59
        Hint = 'Sm'#283'rovac'#237' '#269#237'slo'
        DataBinding.DataField = 'PSC'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.Edges = [bLeft, bRight]
        TabOrder = 11
        Width = 68
      end
      object edAdresa2: TcxDBTextEdit
        Tag = 12
        Left = 432
        Top = 42
        Hint = 'Adresa'
        DataBinding.DataField = 'ADRESA2'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.Edges = [bLeft, bRight]
        TabOrder = 10
        Width = 201
      end
      object edAdresa1: TcxDBTextEdit
        Tag = 12
        Left = 432
        Top = 25
        DataBinding.DataField = 'ADRESA1'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.Edges = [bLeft, bRight]
        TabOrder = 9
        Width = 201
      end
      object edObjedn: TcxDBTextEdit
        Tag = 7
        Left = 432
        Top = 152
        Hint = #268#237'slo objedn'#225'vky pl'#225'tce'
        DataBinding.DataField = 'OBJEDNAVKA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 17
        Width = 115
      end
      object edPrilohy: TcxDBTextEdit
        Tag = 22
        Left = 432
        Top = 200
        Hint = 'P'#345#237'lohy (po'#269'et, odkaz na pozn'#225'mku,...)'
        DataBinding.DataField = 'PRILOHY'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 21
        Width = 201
      end
      object edSymbVar: TcxDBTextEdit
        Tag = 2
        Left = 56
        Top = 55
        Hint = 'Variabiln'#237' symbol ('#269#237'slo faktury)'
        DataBinding.DataField = 'SYMBVARIA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ValidateOnEnter = True
        ShowHint = False
        TabOrder = 2
        Width = 95
      end
      object edFaktura: TcxDBButtonEdit
        Tag = 1
        Left = 56
        Top = 32
        Hint = 'Eviden'#269'n'#237' '#269#237'slo faktury.'
        DataBinding.DataField = 'FAKTURA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.Buttons = <
          item
          end
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edFakturaPropertiesButtonClick
        ShowHint = False
        TabOrder = 1
        Width = 95
      end
      object edNazev: TcxDBButtonEdit
        Tag = 11
        Left = 432
        Top = 8
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
        Properties.OnButtonClick = edNazevPropertiesButtonClick
        ShowHint = False
        Style.Edges = [bLeft, bTop, bRight]
        TabOrder = 8
        Width = 201
      end
      object edCenaKurs: TcxDBCurrencyEdit
        Left = 496
        Top = 248
        RepositoryItem = dmdGlobal.repCNKurz
        AutoSize = False
        DataBinding.DataField = 'CENAKURS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 24
        Height = 21
        Width = 57
      end
      object edCenaSumaKc: TcxDBCurrencyEdit
        Left = 560
        Top = 248
        TabStop = False
        RepositoryItem = dmdGlobal.repCenaRO
        AutoSize = False
        DataBinding.DataField = 'CENASUMAKC'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 25
        Height = 21
        Width = 73
      end
      object edZalohy: TcxDBCurrencyEdit
        Left = 64
        Top = 256
        TabStop = False
        RepositoryItem = dmdGlobal.repCenaRO
        AutoSize = False
        DataBinding.DataField = 'CENAZALOHY'
        DataBinding.DataSource = dsZaznam
        ParentColor = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 42
        Height = 21
        Width = 64
      end
      object edKUhrade: TcxDBCurrencyEdit
        Left = 232
        Top = 256
        TabStop = False
        RepositoryItem = dmdGlobal.repCenaRO
        AutoSize = False
        DataBinding.DataField = 'CENALIKV'
        DataBinding.DataSource = dsZaznam
        ParentColor = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 43
        Height = 21
        Width = 73
      end
      object edDatSpl: TcxDBDateEdit
        Tag = 6
        Left = 232
        Top = 56
        Cursor = crHandPoint
        Hint = 'Datum splatnosti faktury'
        DataBinding.DataField = 'DATSPLATNOST'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
        Width = 79
      end
      object edDatDan: TcxDBDateEdit
        Tag = 5
        Left = 232
        Top = 32
        Cursor = crHandPoint
        Hint = 'Datum da'#328'ov'#233' povinnosti (datum nakl'#225'dky)'
        DataBinding.DataField = 'DATDANPOV'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
        Width = 79
      end
      object edDatVyst: TcxDBDateEdit
        Tag = 4
        Left = 232
        Top = 8
        Cursor = crHandPoint
        Hint = 'Datum vystaven'#237
        DataBinding.DataField = 'DATVYSTAVENI'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
        Width = 79
      end
      object edObjednDatum: TcxDBDateEdit
        Tag = 15
        Left = 552
        Top = 152
        DataBinding.DataField = 'OBJEDDATUM'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 18
        Width = 81
      end
      object edText: TcxDBMemo
        Left = 56
        Top = 104
        Hint = 'Text pozn'#225'mky'
        DataBinding.DataField = 'FAKTTEXT'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 4
        Height = 49
        Width = 256
      end
      object cbFVMena: TcxDBLookupComboBox
        Tag = 21
        Left = 432
        Top = 248
        Hint = 'M'#283'na'
        DataBinding.DataField = 'CENAMENA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ListColumns = <>
        ShowHint = False
        TabOrder = 23
        Width = 61
      end
      object lsFVPata: TcxDBLookupComboBox
        Left = 432
        Top = 224
        DataBinding.DataField = 'TEXTAFTER'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ListColumns = <>
        ShowHint = False
        TabOrder = 22
        Width = 201
      end
      object cbFVUhrada: TcxDBLookupComboBox
        Tag = 9
        Left = 432
        Top = 176
        Hint = 'Forma '#250'hrady faktury'
        DataBinding.DataField = 'FORMUHRADY'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ListColumns = <>
        ShowHint = False
        TabOrder = 19
        Width = 115
      end
      object cbFVUcet: TcxDBLookupComboBox
        Tag = 10
        Left = 552
        Top = 176
        Hint = #268#237'slo '#250#269'tu'
        DataBinding.DataField = 'UCETZKR'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ListColumns = <>
        ShowHint = False
        TabOrder = 20
        Width = 81
      end
      object cbFVFaktTyp: TcxDBLookupComboBox
        Tag = 8
        Left = 56
        Top = 8
        Hint = 'Typ faktury'
        DataBinding.DataField = 'FAKTTYP'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ListColumns = <>
        ShowHint = False
        TabOrder = 0
        Width = 95
      end
      object lbl2: TcxLabel
        Left = 360
        Top = 122
        Caption = 'Email:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object edEmail: TcxDBTextEdit
        Tag = 15
        Left = 432
        Top = 122
        DataBinding.DataField = 'PLA_EMAILS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 16
        Width = 201
      end
      object lbl3: TcxLabel
        Left = 8
        Top = 80
        Caption = #218'vod:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object edTextBefore: TcxDBLookupComboBox
        Left = 56
        Top = 80
        DataBinding.DataField = 'TEXTBEFORE'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        Properties.ListColumns = <>
        ShowHint = False
        TabOrder = 3
        Width = 256
      end
    end
    object pnlPreprava: TPanel
      Left = 1
      Top = 284
      Width = 824
      Height = 84
      Align = alTop
      BorderWidth = 2
      ParentColor = True
      TabOrder = 1
      object lblLabel1: TcxLabel
        Left = 208
        Top = 56
        Caption = 'Substr'#225't:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel30: TcxLabel
        Left = 8
        Top = 56
        Caption = 'LKW:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel32: TcxLabel
        Left = 208
        Top = 32
        Caption = 'Vykl'#225'dka:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel27: TcxLabel
        Left = 208
        Top = 8
        Caption = 'Nakl'#225'dka:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel26: TcxLabel
        Left = 8
        Top = 32
        Caption = 'V. pozice:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel25: TcxLabel
        Left = 8
        Top = 8
        Caption = 'N. pozice:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object edNPoz: TcxDBTextEdit
        Left = 64
        Top = 8
        Hint = 'Eviden'#269'n'#237' '#269#237'slo p'#345'epravy'
        DataBinding.DataField = 'NPOZ'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 0
        Width = 121
      end
      object edVPoz: TcxDBTextEdit
        Left = 64
        Top = 32
        Hint = 'Polo'#382'ka Code Pl'#225'tce z evidence Pl'#225'tci'
        DataBinding.DataField = 'VPOZ'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 1
        Width = 121
      end
      object edSPZ: TcxDBTextEdit
        Left = 64
        Top = 56
        Hint = 'SPZ dopravn'#237'ho prost'#345'edku'
        DataBinding.DataField = 'SPZ'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 2
        Width = 121
      end
      object edMNakl: TcxDBTextEdit
        Left = 344
        Top = 8
        Hint = 'M'#237'sto nakl'#225'dky'
        DataBinding.DataField = 'MNAKL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 6
        Width = 225
      end
      object edMVykl: TcxDBTextEdit
        Left = 344
        Top = 32
        Hint = 'M'#237'sto vykl'#225'dky'
        DataBinding.DataField = 'MVYKL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 7
        Width = 225
      end
      object edSubstrat: TcxDBTextEdit
        Left = 264
        Top = 56
        Hint = 'Specifikace n'#225'kladu'
        DataBinding.DataField = 'SUBSTRAT'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 5
        Width = 305
      end
      object edDATNakl: TcxDBDateEdit
        Left = 264
        Top = 8
        Hint = 'Datum prvn'#237' nakl'#225'dky'
        DataBinding.DataField = 'DATNAKL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 3
        Width = 79
      end
      object edDatVykl: TcxDBDateEdit
        Left = 264
        Top = 32
        Hint = 'Datum prvn'#237' nakl'#225'dky'
        DataBinding.DataField = 'DATVYKL'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 4
        Width = 79
      end
    end
    object dxPageControl1: TcxPageControl
      Left = 1
      Top = 368
      Width = 824
      Height = 198
      Align = alClient
      TabOrder = 2
      Properties.ActivePage = dxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 198
      ClientRectRight = 824
      ClientRectTop = 24
      object dxTabSheet1: TcxTabSheet
        Caption = 'Polo'#382'ky'
        object ntbPolozky: TNotebook
          Left = 0
          Top = 26
          Width = 824
          Height = 148
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'POLSeznam'
            object grdPolozky: TcxGrid
              Left = 0
              Top = 0
              Width = 824
              Height = 148
              Align = alClient
              TabOrder = 0
              object tvPolozky: TcxGridDBTableView
                OnDblClick = tvPolozkyDblClick
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
                DataController.DataSource = dsFAPolozky
                DataController.KeyFieldNames = 'ID'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnSorting = False
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object tvPolozkyID: TcxGridDBColumn
                  DataBinding.FieldName = 'ID'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvPolozkyREFFV: TcxGridDBColumn
                  DataBinding.FieldName = 'REFFV'
                  Visible = False
                  Options.Editing = False
                  VisibleForCustomization = False
                end
                object tvPolozkyPOLTEXT: TcxGridDBColumn
                  DataBinding.FieldName = 'POLTEXT'
                  Options.Editing = False
                end
                object tvPolozkyCENASMLUVNI: TcxGridDBColumn
                  DataBinding.FieldName = 'CENASMLUVNI'
                  RepositoryItem = dmdGlobal.repCena
                  Options.Editing = False
                end
                object tvPolozkyCENAJEDNOTKY: TcxGridDBColumn
                  DataBinding.FieldName = 'CENAJEDNOTKY'
                  RepositoryItem = dmdGlobal.repCena
                  Options.Editing = False
                end
                object tvPolozkyCENAJEDNOTKA: TcxGridDBColumn
                  DataBinding.FieldName = 'CENAJEDNOTKA'
                  Options.Editing = False
                end
                object tvPolozkyCENASUMA: TcxGridDBColumn
                  DataBinding.FieldName = 'CENASUMA'
                  RepositoryItem = dmdGlobal.repCena
                  Options.Editing = False
                end
                object tvPolozkyZALOHA: TcxGridDBColumn
                  DataBinding.FieldName = 'ZALOHA'
                  Options.Editing = False
                end
                object tvPolozkyCENADPH: TcxGridDBColumn
                  DataBinding.FieldName = 'CENADPH'
                  RepositoryItem = dmdGlobal.repCena
                  Options.Editing = False
                end
                object tvPolozkyCENADPHPROC: TcxGridDBColumn
                  DataBinding.FieldName = 'CENADPHPROC'
                  Options.Editing = False
                end
                object tvPolozkyISDOPROVIZE: TcxGridDBColumn
                  DataBinding.FieldName = 'ISDOPROVIZE'
                  RepositoryItem = dmdGlobal.repBoolChar
                end
              end
              object grdPolozkyLevel1: TcxGridLevel
                GridView = tvPolozky
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'POLEdit'
            object pnlPolCenaInfo: TPanel
              Left = 228
              Top = 44
              Width = 327
              Height = 45
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 4
              object Label23: TcxLabel
                Left = 4
                Top = 2
                Caption = 'Jednotky'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label28: TcxLabel
                Left = 116
                Top = 2
                Caption = 'Sou'#269'et'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label29: TcxLabel
                Left = 168
                Top = 2
                Caption = 'DPH %'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label35: TcxLabel
                Left = 260
                Top = 2
                Caption = 'DPH cena'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object edPolDPH: TcxDBCurrencyEdit
                Tag = 99
                Left = 230
                Top = 18
                TabStop = False
                RepositoryItem = dmdGlobal.repCena
                AutoSize = False
                DataBinding.DataField = 'CENADPH'
                DataBinding.DataSource = dsFAPolozky
                ParentFont = False
                TabOrder = 2
                Height = 21
                Width = 77
              end
              object edPolSuma: TcxDBCurrencyEdit
                Tag = 99
                Left = 78
                Top = 18
                RepositoryItem = dmdGlobal.repCena
                AutoSize = False
                DataBinding.DataField = 'CENASUMA'
                DataBinding.DataSource = dsFAPolozky
                ParentFont = False
                TabOrder = 3
                Height = 21
                Width = 77
              end
              object cbPolDphProc: TcxDBLookupComboBox
                Tag = 99
                Left = 158
                Top = 18
                DataBinding.DataField = 'CENADPHPROC'
                DataBinding.DataSource = dsFAPolozky
                ParentFont = False
                Properties.ListColumns = <>
                TabOrder = 1
                Width = 67
              end
              object cbPolJednTyp: TcxDBLookupComboBox
                Tag = 99
                Left = 2
                Top = 18
                RepositoryItem = dmdGlobal.repJednotky
                DataBinding.DataField = 'CENAJEDNOTKA'
                DataBinding.DataSource = dsFAPolozky
                ParentFont = False
                Properties.ListColumns = <>
                TabOrder = 0
                Width = 73
              end
            end
            object Label14: TcxLabel
              Left = 52
              Top = 46
              Caption = 'Z'#225'klad'
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label17: TcxLabel
              Left = 142
              Top = 46
              Caption = 'Po'#269'et jednotek'
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label36: TcxLabel
              Left = 10
              Top = 18
              Caption = 'Text:'
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object edPolZaklad: TcxDBCurrencyEdit
              Tag = 99
              Left = 50
              Top = 62
              RepositoryItem = dmdGlobal.repCena
              AutoSize = False
              DataBinding.DataField = 'CENASMLUVNI'
              DataBinding.DataSource = dsFAPolozky
              ParentFont = False
              TabOrder = 1
              Height = 21
              Width = 87
            end
            object edPolJednPocet: TcxDBCurrencyEdit
              Tag = 99
              Left = 140
              Top = 62
              RepositoryItem = dmdGlobal.repCena
              AutoSize = False
              DataBinding.DataField = 'CENAJEDNOTKY'
              DataBinding.DataSource = dsFAPolozky
              ParentFont = False
              TabOrder = 2
              Height = 21
              Width = 87
            end
            object edPolText: TcxDBButtonEdit
              Tag = 99
              Left = 50
              Top = 18
              DataBinding.DataField = 'POLTEXT'
              DataBinding.DataSource = dsFAPolozky
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              TabOrder = 0
              Width = 351
            end
            object chkPolZaloha: TcxDBCheckBox
              Left = 408
              Top = 20
              RepositoryItem = dmdGlobal.repBoolChar
              Caption = 'Jedn'#225' se o z'#225'lohu'
              DataBinding.DataField = 'ZALOHA'
              DataBinding.DataSource = dsFAPolozky
              ParentColor = False
              ParentFont = False
              TabOrder = 3
              Transparent = True
              Visible = False
              Width = 113
            end
            object chkIsDoProvize: TcxDBCheckBox
              Left = 536
              Top = 60
              RepositoryItem = dmdGlobal.repBoolChar
              Caption = 'Do provize'
              DataBinding.DataField = 'ISDOPROVIZE'
              DataBinding.DataSource = dsFAPolozky
              ParentColor = False
              ParentFont = False
              TabOrder = 8
              Transparent = True
              Width = 81
            end
          end
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 824
          Height = 26
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object dxTabSheet2: TcxTabSheet
        Caption = 'Pozn'#225'mka'
        object edPoznamka: TcxDBMemo
          Left = 0
          Top = 0
          Hint = 'Text pozn'#225'mky'
          Align = alClient
          DataBinding.DataField = 'POZNAMKA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 0
          Height = 174
          Width = 824
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
    Width = 826
    ExplicitWidth = 826
  end
  inherited ActionList1: TActionList
    Left = 60
    Top = 60
    object actFreeFV: TAction
      Category = 'Ostatni'
      Caption = 'Odpojit'
      ImageIndex = 47
      OnExecute = actFreeFVExecute
    end
    object actZaokrouhlit: TAction
      Category = 'Ostatni'
      Caption = 'Zaokrouhlit'
      OnExecute = actZaokrouhlitExecute
    end
    object actExportSkoda: TAction
      Category = 'Formular'
      Caption = 'Export FV '#352'koda'
      ImageIndex = 37
      OnExecute = actExportSkodaExecute
    end
  end
  inherited dsZaznam: TDataSource
    Left = 236
    Top = 60
  end
  inherited dxBarManager1: TdxBarManager
    Left = 324
    Top = 60
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
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
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxb2'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxb3'
        end
        item
          Visible = True
          ItemName = 'dxbExportSkoda'
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
          ItemName = 'dbxs1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb12'
        end>
    end
    object dxBarManager1Bar2: TdxBar [1]
      Caption = 'Polozky'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 449
      FloatTop = 287
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxb5'
        end
        item
          Visible = True
          ItemName = 'dxb6'
        end
        item
          Visible = True
          ItemName = 'dxb8'
        end
        item
          Visible = True
          ItemName = 'dxb7'
        end
        item
          Visible = True
          ItemName = 'dxb9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb10'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxb1: TdxBarButton
      Action = actFreeFV
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb2: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object dxb3: TdxBarButton
      Action = actNahled
      Category = 0
    end
    object dxb4: TdxBarButton
      Action = actZaokrouhlit
      Category = 0
    end
    object dxb5: TdxBarButton
      Action = actPolNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb6: TdxBarButton
      Action = actPolNewZasilka
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb7: TdxBarButton
      Action = actPolEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb8: TdxBarButton
      Action = actPolSave
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb9: TdxBarButton
      Action = actPolCancel
      Category = 0
    end
    object dxb10: TdxBarButton
      Action = actPolZaloha
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb11: TdxBarButton
      Action = actPolDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb12: TdxBarButton
      Action = actOk
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dbxs1: TdxBarSubItem
      Caption = 'Dal'#353#237' funkce'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxb1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb4'
        end
        item
          Visible = True
          ItemName = 'dxb13'
        end>
    end
    object dxb13: TdxBarButton
      Action = actSendMail
      Category = 0
    end
    object dxbExportSkoda: TdxBarButton
      Action = actExportSkoda
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object dsFAPolozky: TDataSource
    DataSet = FVdmd.FAPolozky
    OnDataChange = dsFAPolozkyDataChange
    Left = 148
    Top = 60
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'FVfrmEdit.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 412
    Top = 60
  end
  object actlstPolozky: TActionList
    Images = dmdGlobal.imglDefault
    Left = 68
    Top = 116
    object actPolNew: TAction
      Caption = 'P'#345'idat'
      Hint = 'Nov'#225' polo'#382'ka faktury'
      ImageIndex = 6
      OnExecute = actPolNewExecute
    end
    object actPolNewZasilka: TAction
      Caption = 'P'#345'idat (Z'#225'silka)'
      Hint = 'Nov'#225' polo'#382'ka faktury ze z'#225'silky'
      ImageIndex = 6
      OnExecute = actPolNewZasilkaExecute
    end
    object actPolEdit: TAction
      Caption = 'Opravit'
      Hint = 'Oprava polo'#382'ky'
      ImageIndex = 8
      OnExecute = actPolEditExecute
    end
    object actPolSave: TAction
      Caption = 'Zapsat'
      Hint = 'Zapsat zm'#283'ny'
      ImageIndex = 9
      OnExecute = actPolSaveExecute
    end
    object actPolCancel: TAction
      Caption = 'Storno'
      Hint = 'P'#345'eru'#353'it opravu polo'#382'ky'
      ImageIndex = 10
      OnExecute = actPolCancelExecute
    end
    object actPolDelete: TAction
      Caption = 'Odstranit'
      Hint = 'Odstranit polo'#382'ku'
      ImageIndex = 11
      OnExecute = actPolDeleteExecute
    end
    object actPolZaloha: TAction
      Caption = 'Uhrazen'#225' z'#225'loha'
      Hint = 'Vytvo'#345'it '#345#225'dek uhrazen'#233' z'#225'lohy'
      ImageIndex = 52
      OnExecute = actPolZalohaExecute
    end
  end
  object jfEnterAsTab1: TjfEnterAsTab
    Left = 152
    Top = 120
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPolozky
    PopupMenus = <>
    Left = 240
    Top = 120
  end
end
