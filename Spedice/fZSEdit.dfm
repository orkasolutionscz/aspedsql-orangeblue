inherited frmZSDetail: TfrmZSDetail
  Left = 1098
  Top = 134
  ActiveControl = edZasilka
  Caption = 'Z'#225'silka detail'
  ClientHeight = 774
  ClientWidth = 1019
  Constraints.MinWidth = 600
  OldCreateOrder = True
  OnShow = jfsCustomEvidFormShow
  OnFormPrint = gbCustomEditFormPrint
  ExplicitWidth = 1035
  ExplicitHeight = 812
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Left = 10
    Top = 49
    Width = 647
    Height = 672
    ExplicitLeft = 10
    ExplicitTop = 49
    ExplicitWidth = 647
    ExplicitHeight = 672
    object scrDetail: TScrollBox
      Left = 1
      Top = 105
      Width = 645
      Height = 368
      Align = alTop
      TabOrder = 1
      object pnlPlatci: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 81
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 0
        object lblTrasz: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'Pl'#225'tci'
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Angle = 90
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 79
          Width = 94
        end
        object grdPlatci: TcxGrid
          Left = 95
          Top = 1
          Width = 449
          Height = 79
          Align = alLeft
          TabOrder = 1
          TabStop = False
          object glvPlatci: TcxGridLevel
          end
        end
        object btnPlatci: TcxButton
          Left = 64
          Top = 8
          Width = 25
          Height = 25
          Action = actPlatceEdit
          OptionsImage.Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C990199019901990199019901990199019901990199019901
            9901990199011F7C9901FF7FFF7FFF7BDF73BF6B9F63AA3D3A575E575F575F57
            5F575F5799011F7C9901FF7F17631763176317631763AA3D0000156717631763
            17635F5799011F7C9901FF7FFF7FFF7FFF7FFF7BDF73AA3D000000005F575E57
            5F575F5799011F7C9901FF7F17631763176317631763AA3DBF6F3B1E00001663
            17635F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7F6F52BF6F3B1E00005F57
            5F575F5799011F7C9901FF7F176317631763176317631763AA3DBF6F3B1E0000
            D55E5F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7FFF7F6F52BF6F3B1E0000
            5F575F5799011F7C9901FF7F1763176317631763176317631763AA3DBF6F3B1E
            00005F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6F52BF6F3B1E
            400C5F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FAA3D0000
            846D000099011F7C9901990199019901990199019901990199019901B415846D
            846D271099011F7C1F7C9901990199019901990199019901990199019901204C
            204CFC301F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C}
          OptionsImage.Margin = 2
          TabOrder = 0
        end
        object cxButton2: TcxButton
          Left = 64
          Top = 32
          Width = 25
          Height = 25
          Action = actPlatceNew
          OptionsImage.Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7CD541164216421642164216421642164216421642
            164216421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C067E067E067EDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B
            DE7B16421F7C1F7C1F7C067EC87A067EBD77BD77BD77BD77BD77BD77BD77BD77
            BD7716421F7C067E067E067EC87A067E067E067E9C739C739C739C73163A5646
            364216421F7C067E517B767B767B767B517B067E7B6F7B6F7B6F1863163AFF7F
            FF7F16421F7C067E067E067E767B067E067E067E5A6B5A6B5A6B1863163AFF7F
            16421F7C1F7C1F7C1F7C067E767B067E396739673967396739671863163A1642
            1F7C1F7C1F7C1F7C1F7C067E067E067E5D635D635D635D635D63FA5A163A1F7C
            1F7C1F7C1F7C}
          OptionsImage.Margin = 2
          TabOrder = 3
        end
      end
      object pnlTrasa: TPanel
        Left = 0
        Top = 81
        Width = 641
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 1
        object lblTras: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'Trasy'
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Angle = 90
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 58
          Width = 94
        end
        object btnPohyby: TcxButton
          Left = 64
          Top = 8
          Width = 25
          Height = 25
          Action = actPohybyEdit
          OptionsImage.Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C990199019901990199019901990199019901990199019901
            9901990199011F7C9901FF7FFF7FFF7BDF73BF6B9F63AA3D3A575E575F575F57
            5F575F5799011F7C9901FF7F17631763176317631763AA3D0000156717631763
            17635F5799011F7C9901FF7FFF7FFF7FFF7FFF7BDF73AA3D000000005F575E57
            5F575F5799011F7C9901FF7F17631763176317631763AA3DBF6F3B1E00001663
            17635F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7F6F52BF6F3B1E00005F57
            5F575F5799011F7C9901FF7F176317631763176317631763AA3DBF6F3B1E0000
            D55E5F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7FFF7F6F52BF6F3B1E0000
            5F575F5799011F7C9901FF7F1763176317631763176317631763AA3DBF6F3B1E
            00005F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6F52BF6F3B1E
            400C5F5799011F7C9901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FAA3D0000
            846D000099011F7C9901990199019901990199019901990199019901B415846D
            846D271099011F7C1F7C9901990199019901990199019901990199019901204C
            204CFC301F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C}
          OptionsImage.Margin = 2
          TabOrder = 0
        end
        object grdPohyby: TcxGrid
          Left = 95
          Top = 1
          Width = 449
          Height = 58
          Align = alLeft
          TabOrder = 1
          TabStop = False
          object tvPohyby: TcxGridDBTableView
            OnDblClick = grdPohybyDblClick
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
            DataController.DataSource = dsPohyby
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
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tvPohybyID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object tvPohybyTYP: TcxGridDBColumn
              DataBinding.FieldName = 'TYP'
            end
            object tvPohybyPOPIS: TcxGridDBColumn
              DataBinding.FieldName = 'POPIS'
            end
            object tvPohybyPORADI: TcxGridDBColumn
              DataBinding.FieldName = 'PORADI'
              SortIndex = 0
              SortOrder = soAscending
            end
            object tvPohybyADRESA3: TcxGridDBColumn
              DataBinding.FieldName = 'ADRESA3'
            end
            object tvPohybyPSC: TcxGridDBColumn
              DataBinding.FieldName = 'PSC'
            end
            object tvPohybyZEMEKOD: TcxGridDBColumn
              DataBinding.FieldName = 'ZEMEKOD'
            end
            object tvPohybySPOJENI: TcxGridDBColumn
              DataBinding.FieldName = 'SPOJENI'
            end
            object tvPohybyDATUM: TcxGridDBColumn
              DataBinding.FieldName = 'DATUM'
            end
            object tvPohybyCAS: TcxGridDBColumn
              DataBinding.FieldName = 'CAS'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = tvPohyby
          end
        end
        object cxButton1: TcxButton
          Left = 64
          Top = 32
          Width = 25
          Height = 25
          Action = actPohybyNew
          OptionsImage.Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7CD541164216421642164216421642164216421642
            164216421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C1F7CD541FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F16421F7C1F7C1F7C067E067E067EDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B
            DE7B16421F7C1F7C1F7C067EC87A067EBD77BD77BD77BD77BD77BD77BD77BD77
            BD7716421F7C067E067E067EC87A067E067E067E9C739C739C739C73163A5646
            364216421F7C067E517B767B767B767B517B067E7B6F7B6F7B6F1863163AFF7F
            FF7F16421F7C067E067E067E767B067E067E067E5A6B5A6B5A6B1863163AFF7F
            16421F7C1F7C1F7C1F7C067E767B067E396739673967396739671863163A1642
            1F7C1F7C1F7C1F7C1F7C067E067E067E5D635D635D635D635D63FA5A163A1F7C
            1F7C1F7C1F7C}
          OptionsImage.Margin = 2
          TabOrder = 3
        end
      end
      object pnlSubstrat: TPanel
        Left = 0
        Top = 141
        Width = 641
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        UseDockManager = False
        ParentColor = True
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        object lblSubstrat: TcxLabel
          Left = 320
          Top = 3
          Caption = 'Hmotnost :'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel4: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'Zbo'#382#237' :'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 26
          Width = 90
        end
        object edSubstrat: TcxDBTextEdit
          Left = 96
          Top = 3
          Hint = 'Stru'#269'n'#253' popis p'#345'epravovan'#233'ho zbo'#382#237
          DataBinding.DataField = 'SUBSTRATINFO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 0
          Width = 225
        end
        object edHMText: TcxDBTextEdit
          Left = 440
          Top = 5
          Hint = 'Stru'#269'n'#253' popis p'#345'epravovan'#233'ho zbo'#382#237
          DataBinding.DataField = 'HMTEXT'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 4
          Width = 105
        end
        object edHmotnost: TcxDBCurrencyEdit
          Left = 375
          Top = 4
          AutoSize = False
          DataBinding.DataField = 'HMBRUTTO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#.### kg'
          TabOrder = 1
          Height = 21
          Width = 63
        end
      end
      object pnlSubstratInfo: TPanel
        Left = 0
        Top = 169
        Width = 641
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 3
        object edSubstratPopis: TcxDBMemo
          Tag = 99
          Left = 95
          Top = 1
          Hint = 'Detailn'#237' popis p'#345'epravovan'#233'ho zbo'#382#237
          Align = alLeft
          DataBinding.DataField = 'SUBSTRAT'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 38
          Width = 449
        end
        object lbl4: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 38
          Width = 94
        end
      end
      object pnlPrikaz: TPanel
        Left = 0
        Top = 209
        Width = 641
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 4
        object lblLabel3: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'P'#345#237'kaz/code:'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 26
          Width = 90
        end
        object edPrikaz: TcxDBTextEdit
          Tag = 11
          Left = 96
          Top = 4
          Hint = 
            'P'#345#237'kaz (CODE) kter'#253'm se bude prokazovat '#345'idi'#269' p'#345'i nakl'#225'dce a vyk' +
            'l'#225'dce.'
          DataBinding.DataField = 'PRIKAZ'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 1
          Width = 449
        end
      end
      object pnlClo: TPanel
        Left = 0
        Top = 237
        Width = 641
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 5
        object lblSensitiveLabel3: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'CLO...'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 38
          Width = 94
        end
        object edClo: TcxDBMemo
          Tag = 99
          Left = 95
          Top = 1
          Hint = 'Informace pro proclen'#237
          Align = alLeft
          DataBinding.DataField = 'CLO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ScrollBars = ssVertical
          TabOrder = 1
          Height = 38
          Width = 449
        end
      end
      object pnlPoznamka: TPanel
        Left = 0
        Top = 277
        Width = 641
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 6
        object lblSensitiveLabel1: TcxLabel
          Left = 1
          Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'Pozn'#225'mka'
          ParentColor = False
          ParentFont = False
          Transparent = True
          Height = 38
          Width = 94
        end
        object edMemo: TcxDBMemo
          Tag = 99
          Left = 95
          Top = 1
          Hint = 'Zde je m'#237'sto pro zaps'#225'n'#237' pozn'#225'mek.'
          Align = alLeft
          DataBinding.DataField = 'POZNAMKA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ScrollBars = ssVertical
          TabOrder = 1
          Height = 38
          Width = 449
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 317
        Width = 641
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        UseDockManager = False
        ParentColor = True
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
        object lbl2: TcxLabel
          Left = 2
          Top = 5
          Caption = 'Intern'#237' info'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edKratkeInfo: TcxDBTextEdit
          Left = 95
          Top = 2
          DataBinding.DataField = 'KRATKEINFO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 0
          Width = 449
        end
      end
    end
    object pnlTitulek: TPanel
      Left = 1
      Top = 1
      Width = 645
      Height = 104
      Align = alTop
      ParentColor = True
      TabOrder = 0
      object lblLabel10: TcxLabel
        Left = 204
        Top = 8
        Caption = '&Objedn'#225'vka:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel11: TcxLabel
        Left = 8
        Top = 56
        Caption = 'P'#345#237'kazce:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel14: TcxLabel
        Left = 408
        Top = 8
        Caption = 'Typ :'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel15: TcxLabel
        Left = 8
        Top = 8
        Caption = 'P&ozice:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblLabel5: TcxLabel
        Left = 8
        Top = 32
        Caption = 'Disp./ st'#345'.:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lbl1: TcxLabel
        Left = 204
        Top = 32
        Caption = 'Datum po'#345#237'zen'#237':'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblPrikEmail: TcxLabel
        Left = 8
        Top = 73
        Caption = 'Email:'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object edIntObj: TcxDBTextEdit
        Tag = 3
        Left = 296
        Top = 8
        Hint = #268'islo objedn'#225'vky. Slou'#382#237' ke kumulaci z'#225'silek.'
        DataBinding.DataField = 'INTOBJ'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 1
        Width = 105
      end
      object edStredisko: TcxDBTextEdit
        Tag = 3
        Left = 152
        Top = 32
        Hint = #268'islo objedn'#225'vky. Slou'#382#237' ke kumulaci z'#225'silek.'
        DataBinding.DataField = 'INTSTREDISKO'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        TabOrder = 4
        Width = 49
      end
      object edPrikEmails: TcxDBTextEdit
        Left = 96
        Top = 73
        DataBinding.DataField = 'OBJ_EMAILS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.Edges = [bLeft, bRight, bBottom]
        TabOrder = 7
        Width = 449
      end
      object edDatPorizeni: TcxDBDateEdit
        Tag = 4
        Left = 296
        Top = 32
        Cursor = crHandPoint
        Hint = 'Datum vystaven'#237
        DataBinding.DataField = 'DATPORIZENI'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
        Width = 105
      end
      object edZasilka: TcxDBButtonEdit
        Left = 96
        Top = 8
        DataBinding.DataField = 'ZASILKA'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.Buttons = <
          item
            Width = 10
          end
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edZasilkaButtonClick
        TabOrder = 0
        Width = 105
      end
      object cbTypPrepravy: TcxDBLookupComboBox
        Left = 440
        Top = 8
        Hint = 'Po'#382'adovan'#253' (potvrzen'#253') dopravn'#237' prost'#345'edek'
        DataBinding.DataField = 'TYP'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 105
      end
      object cbPrikNazev: TcxDBLookupComboBox
        Left = 96
        Top = 56
        DataBinding.DataField = 'AOPKOD_OBJ'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.ListColumns = <>
        Properties.OnCloseUp = cbPrikNazevPropertiesCloseUp
        Style.Edges = [bLeft, bTop, bRight]
        TabOrder = 6
        Width = 449
      end
      object edDispecer: TcxDBLookupComboBox
        Tag = 3
        Left = 96
        Top = 32
        Hint = #268'islo objedn'#225'vky. Slou'#382#237' ke kumulaci z'#225'silek.'
        DataBinding.DataField = 'DISPECER'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 57
      end
    end
    object dxpDopravce: TcxPageControl
      Left = 1
      Top = 473
      Width = 645
      Height = 208
      Align = alTop
      TabOrder = 2
      Properties.ActivePage = tbsDopravce
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 208
      ClientRectRight = 645
      ClientRectTop = 24
      object tbsDopravce: TcxTabSheet
        Caption = 'Dopravce'
        object lblFs3DLabel3: TcxLabel
          Left = 344
          Top = 74
          Caption = 'P'#345#237'platky'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblFs3DLabel2: TcxLabel
          Left = 304
          Top = 74
          Caption = 'Po'#269'et'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel13: TcxLabel
          Left = 8
          Top = 114
          Caption = 'Pozn'#225'mka'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblFs3DLabel1: TcxLabel
          Left = 8
          Top = 90
          Caption = 'Smluvn'#237' &cena:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel21: TcxLabel
          Left = 8
          Top = 50
          Caption = '&SPZ:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblCenaCelkem: TcxLabel
          Left = 440
          Top = 74
          Caption = 'Celkem'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel1: TcxLabel
          Left = 96
          Top = 74
          Caption = 'Z'#225'klad'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel6: TcxLabel
          Left = 144
          Top = 74
          Caption = 'M'#283'na'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel7: TcxLabel
          Left = 240
          Top = 74
          Caption = 'Jednotky'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel9: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Dopravce:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel12: TcxLabel
          Left = 392
          Top = 74
          Caption = 'Dph %'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel17: TcxLabel
          Left = 192
          Top = 74
          Caption = 'Kurz'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblLabel8: TcxLabel
          Left = 288
          Top = 50
          Caption = 'Vozidlo:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lbl3: TcxLabel
          Left = 416
          Top = 114
          Caption = 'Cena provize:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblCelkemSDph: TcxLabel
          Left = 496
          Top = 74
          Caption = 's DPH'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblDopEmail: TcxLabel
          Left = 8
          Top = 25
          Caption = 'Email:'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edCenaPodminky: TcxDBTextEdit
          Left = 96
          Top = 114
          DataBinding.DataField = 'PODMINKY'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 14
          Width = 209
        end
        object edDopEmails: TcxDBTextEdit
          Left = 96
          Top = 25
          DataBinding.DataField = 'DOP_EMAILS'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Style.Edges = [bLeft, bRight, bBottom]
          TabOrder = 1
          Width = 449
        end
        object edAutoSPZ: TcxDBButtonEdit
          Tag = 16
          Left = 96
          Top = 50
          Hint = 'SPZ dopravn'#237'ho prost'#345'edku.'
          DataBinding.DataField = 'AUTOSPZ'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
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
          Properties.CharCase = ecUpperCase
          Properties.OnButtonClick = edAutoSPZPropertiesButtonClick
          TabOrder = 2
          Width = 175
        end
        object edCenaSmluvni: TcxDBCurrencyEdit
          Tag = 99
          Left = 96
          Top = 90
          RepositoryItem = dmdGlobal.repCena
          AutoSize = False
          DataBinding.DataField = 'CENASMLUVNI'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 4
          Height = 21
          Width = 49
        end
        object edCenaJednotky: TcxDBCurrencyEdit
          Tag = 99
          Left = 304
          Top = 90
          RepositoryItem = dmdGlobal.repCena
          AutoSize = False
          DataBinding.DataField = 'CENAJEDNOTKY'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 8
          Height = 21
          Width = 41
        end
        object edCenaSrazky: TcxDBCurrencyEdit
          Tag = 99
          Left = 344
          Top = 90
          RepositoryItem = dmdGlobal.repCena
          AutoSize = False
          DataBinding.DataField = 'CENASRAZKY'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 9
          Height = 21
          Width = 49
        end
        object edCenaKurs: TcxDBCurrencyEdit
          Tag = 99
          Left = 192
          Top = 90
          RepositoryItem = dmdGlobal.repCNKurz
          AutoSize = False
          DataBinding.DataField = 'CENAKURS'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 6
          OnDblClick = edCenaKursDblClick
          Height = 21
          Width = 49
        end
        object edCenaSuma: TcxDBCurrencyEdit
          Tag = 99
          Left = 440
          Top = 90
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENASUMA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 11
          Height = 21
          Width = 57
        end
        object edCenaDopravce: TcxDBCurrencyEdit
          Left = 488
          Top = 114
          Hint = 'Cena Dopravce pro v'#253'po'#269'et provize'
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENADOPRAVCE'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 13
          Height = 21
          Width = 57
        end
        object edCENASUMASDPH: TcxDBCurrencyEdit
          Tag = 99
          Left = 496
          Top = 90
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENASUMASDPH'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 12
          Height = 21
          Width = 49
        end
        object edCENADPH: TcxDBCurrencyEdit
          Tag = 99
          Left = 560
          Top = 90
          TabStop = False
          RepositoryItem = dmdGlobal.repCenaRO
          AutoSize = False
          DataBinding.DataField = 'CENADPH'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          TabOrder = 16
          Visible = False
          Height = 21
          Width = 57
        end
        object cbCenaMena: TcxDBLookupComboBox
          Left = 144
          Top = 90
          DataBinding.DataField = 'CENAMENA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 5
          Width = 49
        end
        object cbCenaDPHProc: TcxDBLookupComboBox
          Left = 392
          Top = 90
          DataBinding.DataField = 'CENADPHPROC'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 10
          Width = 49
        end
        object cbCenaJednotka: TcxDBLookupComboBox
          Left = 240
          Top = 90
          DataBinding.DataField = 'CENAJEDNOTKA'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 7
          Width = 65
        end
        object cbVozidlo: TcxDBLookupComboBox
          Left = 344
          Top = 50
          Hint = 'Po'#382'adovan'#253' (potvrzen'#253') dopravn'#237' prost'#345'edek'
          DataBinding.DataField = 'VOZIDLO'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 201
        end
        object cbDopNazev: TcxDBLookupComboBox
          Left = 96
          Top = 8
          DataBinding.DataField = 'AOPKOD_DOP'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.ListColumns = <>
          Properties.OnCloseUp = cbDopNazevPropertiesCloseUp
          Style.Edges = [bLeft, bTop, bRight]
          TabOrder = 0
          Width = 449
        end
        object edSplatnost: TcxDBCurrencyEdit
          Tag = 99
          Left = 344
          Top = 114
          AutoSize = False
          DataBinding.DataField = 'D_SPLATNOST'
          DataBinding.DataSource = dsZaznam
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          TabOrder = 15
          Height = 21
          Width = 33
        end
        object lbl5: TcxLabel
          Left = 304
          Top = 114
          Caption = 'Splatn.'
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
      end
      object tbsOstNakl: TcxTabSheet
        Caption = 'Jin'#233' n'#225'klady'
        ImageIndex = 3
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tbsDopravceFaktury: TcxTabSheet
        Caption = 'Do'#353'l'#233' faktury'
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
      object tbsProvize: TcxTabSheet
        Caption = 'Rozd'#283'len'#237' provize'
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 1019
    ExplicitWidth = 1019
  end
  inherited ActionList1: TActionList
    Left = 148
    Top = 60
    inherited actNahled: TAction
      Visible = False
    end
    object actSendPotvrzeni: TAction
      Category = 'Formular'
      Caption = 'Odeslat potvrzen'#237' objedn'#225'vky'
      Hint = 
        'Vytvo'#345#237' dokument Potvrzen'#237' objedn'#225'vky a p'#345'ilo'#382#237' jej k emailu na ' +
        'P'#345#237'kazce'
      ImageIndex = 58
      OnExecute = actSendPotvrzeniExecute
    end
    object actSendObjednavka: TAction
      Category = 'Formular'
      Caption = 'Odeslat objedn'#225'vku dopravy'
      ImageIndex = 58
      OnExecute = actSendObjednavkaExecute
    end
    object actGetObj: TAction
      Category = 'Formular'
      Caption = 'Vybrat sestavu objedn'#225'vky'
      OnExecute = actGetObjExecute
    end
    object actGetPotv: TAction
      Category = 'Formular'
      Caption = 'Vybrat sestavu potvrzen'#237
      OnExecute = actGetPotvExecute
    end
    object actPrintObj: TAction
      Category = 'Formular'
      Caption = 'Objedn'#225'vka'
      ImageIndex = 13
      OnExecute = actPrintObjExecute
    end
    object actPrintPotv: TAction
      Category = 'Formular'
      Caption = 'Potvrzenka'
      ImageIndex = 13
      OnExecute = actPrintPotvExecute
    end
  end
  inherited dsZaznam: TDataSource
    Left = 412
    Top = 60
  end
  inherited dxBarManager1: TdxBarManager
    Left = 60
    Top = 128
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dbxs1'
        end
        item
          BeginGroup = True
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxb3'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxb4'
        end
        item
          Visible = True
          ItemName = 'dxb8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxb9'
        end>
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Sestavy'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxb3'
        end
        item
          Visible = True
          ItemName = 'dxb4'
        end
        item
          Visible = True
          ItemName = 'dxb5'
        end
        item
          Visible = True
          ItemName = 'dxb6'
        end>
    end
    object dxb1: TdxBarButton
      Action = actGetObj
      Category = 0
    end
    object dxb2: TdxBarButton
      Action = actGetPotv
      Category = 0
    end
    object dxb3: TdxBarButton
      Action = actPrintObj
      Category = 0
    end
    object dxb4: TdxBarButton
      Action = actPrintPotv
      Category = 0
    end
    object dxb5: TdxBarButton
      Action = actSendObjednavka
      Category = 0
    end
    object dxb6: TdxBarButton
      Action = actSendPotvrzeni
      Category = 0
    end
    object dxbMaxRadky: TdxBarSpinEdit
      Caption = 'Max. '#345#225'dky'
      Category = 0
      Hint = 
        'Nastavte hodnotu maxim'#225'ln'#237'm po'#269'tu '#345#225'dk'#367' pro automatick'#233' zv'#283't'#353'ov'#225 +
        'n'#237' Textov'#233' polo'#382'ky'
      Visible = ivAlways
      OnChange = dxbMaxRadkyChange
      ShowCaption = True
      MaxValue = 15.000000000000000000
      MinValue = 2.000000000000000000
      Value = 4.000000000000000000
    end
    object dbxs1: TdxBarSubItem
      Caption = 'Nastaven'#237
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxb1'
        end
        item
          Visible = True
          ItemName = 'dxb2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbMaxRadky'
        end
        item
          Visible = True
          ItemName = 'dbxs2'
        end>
    end
    object dxb7: TdxBarButton
      Action = actNahled
      Category = 0
    end
    object dxb8: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object dxb9: TdxBarButton
      Action = actOk
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dbxs2: TdxBarSubItem
      Caption = 'Pozice panelu Dopravce'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbShowPnlDopTop'
        end
        item
          Visible = True
          ItemName = 'dxbShowPnlDopDown'
        end>
    end
    object dxbShowPnlDopDown: TdxBarButton
      Caption = 'St'#225'le dole'
      Category = 0
      Hint = 'St'#225'le dole'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = dxbShowPnlDopDownClick
    end
    object dxbShowPnlDopTop: TdxBarButton
      Caption = 'Zarovnat nahoru'
      Category = 0
      Hint = 'Zarovnat nahoru'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxbShowPnlDopTopClick
    end
  end
  object ActionListZS: TActionList
    Images = dmdGlobal.imglDefault
    OnUpdate = ActionListZSUpdate
    Left = 60
    Top = 60
    object actPohybyNew: TAction
      Category = 'Pohyby'
      Caption = 'Nov'#253
      Hint = 'Nov'#253' z'#225'znam trasy'
      ImageIndex = 6
      OnExecute = actPohybyNewExecute
    end
    object actPohybyEdit: TAction
      Category = 'Pohyby'
      Caption = 'Upravit'
      Hint = 'Oprava z'#225'znamu'
      ImageIndex = 8
      OnExecute = actPohybyEditExecute
    end
    object actPlatceNew: TAction
      Category = 'Platci'
      Caption = 'Nov'#253
      Hint = 'Nov'#253' z'#225'znam o pl'#225'tci'
      ImageIndex = 6
      OnExecute = actPlatceNewExecute
    end
    object actPlatceEdit: TAction
      Category = 'Platci'
      Caption = 'Upravit'
      Hint = 'Oprava z'#225'znamu pl'#225'tce'
      ImageIndex = 8
      OnExecute = actPlatceEditExecute
    end
  end
  object dsPlatci: TDataSource
    AutoEdit = False
    DataSet = ZSdmd.ZAPlatci
    OnDataChange = dsPlatciDataChange
    Left = 236
    Top = 60
  end
  object dsPohyby: TDataSource
    AutoEdit = False
    DataSet = ZSdmd.ZAPohyby
    OnDataChange = dsPohybyDataChange
    Left = 324
    Top = 60
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'Zasilky.DetailNew'
    Properties.Strings = (
      'actUseEmails.Checked'
      'dxbMaxRadky.Value'
      'dxpDopravce.Align'
      'scrDetail.AutoSize'
      'scrDetail.Align')
    WhenLoad = wlOnShow
    WhenSave = wsOnClose
    OnAfterLoad = rsPropSaver1AfterLoad
    Left = 148
    Top = 128
  end
  object jfEnterAsTab1: TjfEnterAsTab
    Left = 224
    Top = 128
  end
end
