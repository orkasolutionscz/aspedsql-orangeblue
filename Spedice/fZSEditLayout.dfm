inherited frmZSDetailLay: TfrmZSDetailLay
  Left = 0
  Caption = 'Z'#225'silka detail'
  ClientHeight = 656
  ClientWidth = 1091
  Position = poDesigned
  OnFormPrint = gbCustomEditFormPrint
  ExplicitWidth = 1107
  ExplicitHeight = 694
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxbcTop: TdxBarDockControl
    Width = 1091
    ExplicitWidth = 1091
  end
  inherited lcMain: TdxLayoutControl
    Width = 1091
    Height = 630
    AutoSize = True
    ExplicitWidth = 1091
    ExplicitHeight = 630
    object edZasilka: TcxDBButtonEdit [0]
      Left = 98
      Top = 28
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 105
    end
    object edIntObj: TcxDBTextEdit [1]
      Tag = 3
      Left = 435
      Top = 55
      Hint = #268'islo objedn'#225'vky. Slou'#382#237' ke kumulaci z'#225'silek.'
      DataBinding.DataField = 'INTOBJ'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 114
    end
    object cbTypPrepravy: TcxDBLookupComboBox [2]
      Left = 435
      Top = 28
      Hint = 'Po'#382'adovan'#253' (potvrzen'#253') dopravn'#237' prost'#345'edek'
      DataBinding.DataField = 'TYP'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 114
    end
    object edDispecer: TcxDBLookupComboBox [3]
      Tag = 3
      Left = 258
      Top = 28
      Hint = #268'islo objedn'#225'vky. Slou'#382#237' ke kumulaci z'#225'silek.'
      DataBinding.DataField = 'DISPECER'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 108
    end
    object edStredisko: TcxDBTextEdit [4]
      Tag = 3
      Left = 258
      Top = 55
      Hint = #268'islo objedn'#225'vky. Slou'#382#237' ke kumulaci z'#225'silek.'
      DataBinding.DataField = 'INTSTREDISKO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 108
    end
    object edDatPorizeni: TcxDBDateEdit [5]
      Tag = 4
      Left = 98
      Top = 55
      Cursor = crHandPoint
      Hint = 'Datum vystaven'#237
      DataBinding.DataField = 'DATPORIZENI'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 105
    end
    object cbPrikNazev: TcxDBLookupComboBox [6]
      Left = 98
      Top = 94
      DataBinding.DataField = 'AOPKOD_OBJ'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Properties.OnCloseUp = cbPrikNazevPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 454
    end
    object edPrikEmails: TcxDBTextEdit [7]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBJ_EMAILS'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 43
      Visible = False
      Width = 385
    end
    object grdPlatci: TcxGrid [8]
      Left = 615
      Top = 46
      Width = 449
      Height = 75
      Align = alLeft
      TabOrder = 15
      TabStop = False
      object glvPlatci: TcxGridLevel
        GridView = ZSdmd.tvPlatci
        object glvPlatciLevel1: TcxGridLevel
        end
      end
    end
    object cxButton2: TcxButton [9]
      Left = 584
      Top = 28
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
      TabOrder = 13
    end
    object btnPlatci: TcxButton [10]
      Left = 584
      Top = 59
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
      TabOrder = 14
    end
    object grdPohyby: TcxGrid [11]
      Left = 615
      Top = 153
      Width = 449
      Height = 80
      Align = alLeft
      TabOrder = 18
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
    object cxButton1: TcxButton [12]
      Left = 584
      Top = 135
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
      TabOrder = 16
    end
    object btnPohyby: TcxButton [13]
      Left = 584
      Top = 166
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
      TabOrder = 17
    end
    object edSubstrat: TcxDBTextEdit [14]
      Left = 22
      Top = 151
      Hint = 'Stru'#269'n'#253' popis p'#345'epravovan'#233'ho zbo'#382#237
      DataBinding.DataField = 'SUBSTRATINFO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 350
    end
    object edHmotnost: TcxDBCurrencyEdit [15]
      Left = 378
      Top = 151
      AutoSize = False
      DataBinding.DataField = 'HMBRUTTO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#.### kg'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 21
      Width = 63
    end
    object edHMText: TcxDBTextEdit [16]
      Left = 447
      Top = 151
      Hint = 'Stru'#269'n'#253' popis p'#345'epravovan'#233'ho zbo'#382#237
      DataBinding.DataField = 'HMTEXT'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 105
    end
    object edSubstratPopis: TcxDBMemo [17]
      Tag = 99
      Left = 22
      Top = 196
      Hint = 'Detailn'#237' popis p'#345'epravovan'#233'ho zbo'#382#237
      Align = alLeft
      DataBinding.DataField = 'SUBSTRAT'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Height = 61
      Width = 532
    end
    object edPrikaz: TcxDBTextEdit [18]
      Tag = 11
      Left = 22
      Top = 289
      Hint = 
        'P'#345#237'kaz (CODE) kter'#253'm se bude prokazovat '#345'idi'#269' p'#345'i nakl'#225'dce a vyk' +
        'l'#225'dce.'
      DataBinding.DataField = 'PRIKAZ'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 532
    end
    object edClo: TcxDBMemo [19]
      Tag = 99
      Left = 22
      Top = 334
      Hint = 'Informace pro proclen'#237
      Align = alLeft
      DataBinding.DataField = 'CLO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Height = 42
      Width = 532
    end
    object edMemo: TcxDBMemo [20]
      Tag = 99
      Left = 584
      Top = 287
      Hint = 'Zde je m'#237'sto pro zaps'#225'n'#237' pozn'#225'mek.'
      Align = alLeft
      DataBinding.DataField = 'POZNAMKA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Height = 51
      Width = 480
    end
    object edKratkeInfo: TcxDBTextEdit [21]
      Left = 584
      Top = 362
      DataBinding.DataField = 'KRATKEINFO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 480
    end
    object cbDopNazev: TcxDBLookupComboBox [22]
      Left = 98
      Top = 420
      DataBinding.DataField = 'AOPKOD_DOP'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Properties.OnCloseUp = cbDopNazevPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Edges = [bLeft, bTop, bRight]
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Width = 454
    end
    object edDopEmails: TcxDBTextEdit [23]
      Left = 98
      Top = 447
      DataBinding.DataField = 'DOP_EMAILS'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 22
      Width = 454
    end
    object edAutoSPZ: TcxDBButtonEdit [24]
      Tag = 16
      Left = 98
      Top = 474
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 23
      Width = 119
    end
    object cbVozidlo: TcxDBLookupComboBox [25]
      Left = 246
      Top = 474
      Hint = 'Po'#382'adovan'#253' (potvrzen'#253') dopravn'#237' prost'#345'edek'
      DataBinding.DataField = 'VOZIDLO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Width = 306
    end
    object edCenaSmluvni: TcxDBCurrencyEdit [26]
      Tag = 99
      Left = 22
      Top = 520
      RepositoryItem = dmdGlobal.repCena
      AutoSize = False
      DataBinding.DataField = 'CENASMLUVNI'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 63
    end
    object cbCenaMena: TcxDBLookupComboBox [27]
      Left = 91
      Top = 520
      DataBinding.DataField = 'CENAMENA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 26
      Width = 49
    end
    object edCenaKurs: TcxDBCurrencyEdit [28]
      Tag = 99
      Left = 146
      Top = 520
      RepositoryItem = dmdGlobal.repCNKurz
      AutoSize = False
      DataBinding.DataField = 'CENAKURS'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      OnDblClick = edCenaKursDblClick
      Height = 21
      Width = 49
    end
    object cbCenaJednotka: TcxDBLookupComboBox [29]
      Left = 201
      Top = 520
      DataBinding.DataField = 'CENAJEDNOTKA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 28
      Width = 65
    end
    object edCenaJednotky: TcxDBCurrencyEdit [30]
      Tag = 99
      Left = 272
      Top = 520
      RepositoryItem = dmdGlobal.repCena
      AutoSize = False
      DataBinding.DataField = 'CENAJEDNOTKY'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Height = 21
      Width = 41
    end
    object edCenaSrazky: TcxDBCurrencyEdit [31]
      Tag = 99
      Left = 319
      Top = 520
      RepositoryItem = dmdGlobal.repCena
      AutoSize = False
      DataBinding.DataField = 'CENASRAZKY'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 30
      Height = 21
      Width = 49
    end
    object cbCenaDPHProc: TcxDBLookupComboBox [32]
      Left = 374
      Top = 520
      DataBinding.DataField = 'CENADPHPROC'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 31
      Width = 49
    end
    object edCenaSuma: TcxDBCurrencyEdit [33]
      Tag = 99
      Left = 429
      Top = 520
      TabStop = False
      RepositoryItem = dmdGlobal.repCenaRO
      AutoSize = False
      DataBinding.DataField = 'CENASUMA'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 32
      Height = 21
      Width = 57
    end
    object edCENASUMASDPH: TcxDBCurrencyEdit [34]
      Tag = 99
      Left = 492
      Top = 520
      TabStop = False
      RepositoryItem = dmdGlobal.repCenaRO
      AutoSize = False
      DataBinding.DataField = 'CENASUMASDPH'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 33
      Height = 21
      Width = 60
    end
    object edCenaPodminky: TcxDBTextEdit [35]
      Left = 98
      Top = 547
      DataBinding.DataField = 'PODMINKY'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 34
      Width = 166
    end
    object edSplatnost: TcxDBCurrencyEdit [36]
      Tag = 99
      Left = 320
      Top = 547
      AutoSize = False
      DataBinding.DataField = 'D_SPLATNOST'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 35
      Height = 21
      Width = 47
    end
    object edCenaDopravce: TcxDBCurrencyEdit [37]
      Left = 492
      Top = 547
      Hint = 'Cena Dopravce pro v'#253'po'#269'et provize'
      TabStop = False
      RepositoryItem = dmdGlobal.repCenaRO
      AutoSize = False
      DataBinding.DataField = 'CENADOPRAVCE'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 36
      Height = 21
      Width = 60
    end
    object edCENADPH: TcxDBCurrencyEdit [38]
      Tag = 99
      Left = 10000
      Top = 10000
      TabStop = False
      RepositoryItem = dmdGlobal.repCenaRO
      AutoSize = False
      DataBinding.DataField = 'CENADPH'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Height = 21
      Width = 57
    end
    object pnlDokumentace: TPanel [39]
      Left = 10000
      Top = 10000
      Width = 461
      Height = 81
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 38
      Visible = False
    end
    object pnlFD: TPanel [40]
      Left = 584
      Top = 436
      Width = 480
      Height = 134
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 37
    end
    object pnlOstNakl: TPanel [41]
      Left = 10000
      Top = 10000
      Width = 185
      Height = 41
      BevelOuter = bvNone
      TabOrder = 42
      Visible = False
    end
    object pnlProvize: TPanel [42]
      Left = 10000
      Top = 10000
      Width = 185
      Height = 41
      BevelOuter = bvNone
      TabOrder = 41
      Visible = False
    end
    object cbDopPodminky: TcxDBLookupComboBox [43]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'REF_ZSPODMINKY'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 39
      Visible = False
      Width = 263
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
      Index = -1
    end
    object lcMainGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup12
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainItem1: TdxLayoutItem
      CaptionOptions.Text = 'Z'#225'silka'
      Parent = lcMainGroup1
      Control = edZasilka
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem2: TdxLayoutItem
      CaptionOptions.Text = 'Objedn'#225'vka'
      Parent = lcMainGroup13
      Control = edIntObj
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem3: TdxLayoutItem
      CaptionOptions.Text = 'Typ'
      Parent = lcMainGroup13
      Control = cbTypPrepravy
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem4: TdxLayoutItem
      CaptionOptions.Text = 'Dispe'#269'er'
      Parent = lcMainGroup14
      Control = edDispecer
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem5: TdxLayoutItem
      CaptionOptions.Text = 'St'#345'edisko'
      Parent = lcMainGroup2
      Control = edStredisko
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem6: TdxLayoutItem
      CaptionOptions.Text = 'Datum po'#345#237'zen'#237
      Parent = lcMainGroup1
      Control = edDatPorizeni
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'P'#345#237'kazce'
      Parent = lcMainGroup19
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lcMainItem7: TdxLayoutItem
      CaptionOptions.Text = 'P'#345#237'kazce:'
      Parent = lcMainGroup3
      Control = cbPrikNazev
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dliPrikazceEmai: TdxLayoutItem
      CaptionOptions.Text = 'Email'
      Control = edPrikEmails
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lcMainItem9: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pl'#225'tci'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup11
      Control = grdPlatci
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem10: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = lcMainGroup16
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem11: TdxLayoutItem
      CaptionOptions.Text = 'btnPlatci'
      CaptionOptions.Visible = False
      Parent = lcMainGroup16
      Control = btnPlatci
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem12: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Trasy'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup26
      Control = grdPohyby
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainGroup7: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup10
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainItem13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lcMainGroup7
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem14: TdxLayoutItem
      CaptionOptions.Text = 'btnPohyby'
      CaptionOptions.Visible = False
      Parent = lcMainGroup7
      Control = btnPohyby
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainGroup8: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Popis n'#225'kladu'
      Parent = lcMainGroup19
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lcMainGroup9: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainItem15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Zbo'#382#237
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup9
      Control = edSubstrat
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem16: TdxLayoutItem
      CaptionOptions.Text = 'Hmotnost '
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup9
      Control = edHmotnost
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem17: TdxLayoutItem
      CaptionOptions.Text = 'Dopln'#283'n'#237
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup9
      Control = edHMText
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem18: TdxLayoutItem
      AlignVert = avTop
      CaptionOptions.Text = 'Detailn'#237' popis'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup19
      Control = edSubstratPopis
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem19: TdxLayoutItem
      AlignVert = avTop
      CaptionOptions.Text = 'P'#345#237'kaz/code'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup19
      Control = edPrikaz
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lcMainItem20: TdxLayoutItem
      AlignVert = avTop
      CaptionOptions.Text = 'Clo'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup19
      Control = edClo
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lcMainItem21: TdxLayoutItem
      AlignVert = avTop
      CaptionOptions.Text = 'Pozn'#225'mka'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup28
      Control = edMemo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem22: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'Intern'#237' info'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup28
      Control = edKratkeInfo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lcMainGroup12
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcMainGroup12: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup13: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lcMainGroup12
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object lcMainGroup14: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup22
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lcMainGroup15: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pl'#225'tci'
      Parent = lcMainGroup5
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup16: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup15
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup17: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Trasy'
      Parent = lcMainGroup5
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lcMainGroup19: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup18
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lcMainSplitterItem1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lcMainGroup19
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object lcMainSplitterItem3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lcMainGroup11
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object lcMainSplitterItem4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lcMainGroup19
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 6
    end
    object lcMainSplitterItem5: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = -1
    end
    object lcMainGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup22: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcMainGroup10: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup17
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup11: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup15
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcMainItem8: TdxLayoutItem
      CaptionOptions.Text = 'Dopravce'
      Parent = lcMainGroup20
      Control = cbDopNazev
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainGroup18: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainItem23: TdxLayoutItem
      CaptionOptions.Text = 'Email'
      Parent = lcMainGroup20
      Control = edDopEmails
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainGroup20: TdxLayoutGroup
      CaptionOptions.Text = 'Dopravce'
      Parent = lcMainGroup29
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lcMainItem24: TdxLayoutItem
      CaptionOptions.Text = 'RZ'
      Parent = lcMainGroup21
      Control = edAutoSPZ
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainGroup21: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lcMainGroup20
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lcMainItem25: TdxLayoutItem
      CaptionOptions.Text = 'Typ'
      Parent = lcMainGroup21
      Control = cbVozidlo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem26: TdxLayoutItem
      CaptionOptions.Text = 'Z'#225'klad'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = edCenaSmluvni
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainGroup23: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup20
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lcMainItem27: TdxLayoutItem
      CaptionOptions.Text = 'M'#283'na'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = cbCenaMena
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem28: TdxLayoutItem
      CaptionOptions.Text = 'Kurz'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = edCenaKurs
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem29: TdxLayoutItem
      CaptionOptions.Text = 'Jednotka'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = cbCenaJednotka
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lcMainItem30: TdxLayoutItem
      CaptionOptions.Text = 'Po'#269'et'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = edCenaJednotky
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lcMainItem31: TdxLayoutItem
      CaptionOptions.Text = 'P'#345#237'platky'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = edCenaSrazky
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lcMainItem32: TdxLayoutItem
      CaptionOptions.Text = 'DPH %'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = cbCenaDPHProc
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lcMainItem33: TdxLayoutItem
      CaptionOptions.Text = 'Celkem'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = edCenaSuma
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lcMainItem34: TdxLayoutItem
      CaptionOptions.Text = 's DPH'
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup23
      Control = edCENASUMASDPH
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object lcMainLabeledItem1: TdxLayoutLabeledItem
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.AlignVert = tavBottom
      CaptionOptions.Text = 'Cena smluvn'#237
      Index = -1
    end
    object lcMainItem35: TdxLayoutItem
      CaptionOptions.Text = 'Pozn'#225'mka'
      Parent = lcMainGroup25
      Control = edCenaPodminky
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainGroup24: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcMainItem36: TdxLayoutItem
      CaptionOptions.Text = 'Splatnost'
      Parent = lcMainGroup25
      Control = edSplatnost
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainGroup25: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lcMainGroup20
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lcMainItem37: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Cena provize'
      Parent = lcMainGroup25
      Control = edCenaDopravce
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem38: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      Control = edCENADPH
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lcMainGroup26: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup10
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcMainGroup27: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup22
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcMainGroup28: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup27
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainItem40: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Dokumentace'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup30
      Control = pnlDokumentace
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainSeparatorItem1: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = lcMainGroup3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object lcMainSeparatorItem2: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = lcMainGroup3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object lcMainGroup30: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup24
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object lcMainItem41: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Faktury do'#353'l'#233
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lcMainGroup30
      Control = pnlFD
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem42: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Ostatn'#237' n'#225'klady'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = pnlOstNakl
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lcMainItem44: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Rozd'#283'len'#237' provize'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = pnlProvize
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lcMainItem39: TdxLayoutItem
      CaptionOptions.Text = 'Podm'#237'nky'
      Control = cbDopPodminky
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lcMainGroup29: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup24
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 148
    Top = 60
    inherited actNahled: TAction
      Visible = False
    end
    object actSendPotvrzeni: TAction [15]
      Category = 'Formular'
      Caption = 'Odeslat potvrzen'#237' objedn'#225'vky'
      Hint = 
        'Vytvo'#345#237' dokument Potvrzen'#237' objedn'#225'vky a p'#345'ilo'#382#237' jej k emailu na ' +
        'P'#345#237'kazce'
      ImageIndex = 58
      OnExecute = actSendPotvrzeniExecute
    end
    object actSendObjednavka: TAction [16]
      Category = 'Formular'
      Caption = 'Odeslat objedn'#225'vku dopravy'
      ImageIndex = 58
      OnExecute = actSendObjednavkaExecute
    end
    object actPrintObj: TAction [17]
      Category = 'Formular'
      Caption = 'Objedn'#225'vka'
      ImageIndex = 13
      OnExecute = actPrintObjExecute
    end
    object actPrintPotv: TAction [18]
      Category = 'Formular'
      Caption = 'Potvrzenka'
      ImageIndex = 13
      OnExecute = actPrintPotvExecute
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = ZSdmd.Zasilky
    Left = 412
    Top = 59
  end
  inherited dxBarManager1: TdxBarManager
    AutoHideEmptyBars = True
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxb9'
        end>
    end
    object dxBarSubItem1: TdxBarSubItem [10]
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
    object dxb3: TdxBarButton [11]
      Action = actPrintObj
      Category = 0
    end
    object dxb4: TdxBarButton [12]
      Action = actPrintPotv
      Category = 0
    end
    object dxb5: TdxBarButton [13]
      Action = actSendObjednavka
      Category = 0
    end
    object dxb6: TdxBarButton [14]
      Action = actSendPotvrzeni
      Category = 0
    end
    object dbxs1: TdxBarSubItem [15]
      Caption = 'Nastaven'#237
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxiDesign'
        end>
    end
    object dxb7: TdxBarButton [16]
      Action = actNahled
      Category = 0
    end
    object dxb8: TdxBarButton [17]
      Action = actPrint
      Category = 0
    end
    object dxb9: TdxBarButton [18]
      Action = actOk
      Category = 0
      PaintStyle = psCaptionGlyph
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
    Left = 236
    Top = 60
  end
  object dsPohyby: TDataSource
    AutoEdit = False
    DataSet = ZSdmd.ZAPohyby
    Left = 324
    Top = 60
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'Zasilky.DetailNew'
    Properties.Strings = (
      'actAutoSize.Checked')
    WhenLoad = wlOnShow
    WhenSave = wsOnClose
    Left = 148
    Top = 128
  end
  object jfEnterAsTab1: TjfEnterAsTab
    Left = 224
    Top = 128
  end
end
