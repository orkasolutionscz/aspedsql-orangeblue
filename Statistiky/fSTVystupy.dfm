inherited frmSTVystupy: TfrmSTVystupy
  Left = 345
  Top = 256
  Caption = 'Z'#225'kladn'#237' statistick'#233' p'#345'ehledy'
  ClientHeight = 595
  ClientWidth = 961
  FormStyle = fsMDIChild
  OnCreate = jfsCustomMDICreate
  ExplicitWidth = 969
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 961
    Height = 35
    Align = alTop
    BevelOuter = bvLowered
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 10
      Width = 42
      Height = 13
      Caption = 'Za'#269#225'tek:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 156
      Top = 10
      Width = 36
      Height = 13
      Caption = 'Konec :'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dpStart: TcxDateEdit
      Left = 50
      Top = 6
      RepositoryItem = dmdGlobal.repDatum
      EditValue = 36516.9529509259d
      ParentFont = False
      Properties.InputKind = ikMask
      Properties.ShowTime = False
      TabOrder = 0
      Width = 101
    end
    object dpStop: TcxDateEdit
      Left = 194
      Top = 6
      RepositoryItem = dmdGlobal.repDatum
      EditValue = 36516.9529509259d
      ParentFont = False
      Properties.InputKind = ikStandard
      Properties.ShowTime = False
      TabOrder = 1
      Width = 101
    end
    object SpeedButton1: TcxButton
      Left = 508
      Top = 6
      Width = 97
      Height = 23
      Action = actZobrazit
      TabOrder = 2
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton4: TcxButton
      Left = 613
      Top = 6
      Width = 97
      Height = 23
      Action = actClose
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
        D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
        D60029ADD60029ADD60029ADD60029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF006BE7FF006BE7FF006BE7FF006BE7FF006BE7FF006BE7FF005ADE
        FF005ADEFF005ADEFF005ADEFF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7FF006BE7
        FF005ADEFF005ADEFF005ADEFF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7FF006BE7
        FF006BE7FF005ADEFF005ADEFF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF006BE7
        FF006BE7FF006BE7FF005ADEFF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0084EFFF0084EF
        FF006BE7FF006BE7FF006BE7FF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0084EF
        FF0084EFFF006BE7FF006BE7FF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF0084EFFF0084EFFF0084EF
        FF0084EFFF0084EFFF006BE7FF0029ADD600FF00FF00FF00FF00FF00FF0029AD
        D6009CFFFF009CFFFF0094F7FF0084EFFF0084EFFF0029ADD60029ADD60029AD
        D60029ADD60029ADD60029ADD60029ADD600FF00FF00088C1000FF00FF00FF00
        FF0029ADD6009CFFFF0084EFFF0084EFFF0029ADD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00088C1000FF00FF00FF00
        FF0052CEEF0029ADD60029ADD60029ADD60052CEEF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0018AD2900FF00FF00088C100000730800FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00088C100018AD2900088C1000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00088C10005AE78C0018AD2900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000730800007308000073080018AD2900}
      TabOrder = 3
    end
  end
  object pgcMain: TPageControl [1]
    Left = 0
    Top = 35
    Width = 961
    Height = 560
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Celkov'#253' v'#253'voj provize'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter2: TSplitter
        Left = 151
        Top = 0
        Height = 532
        ExplicitHeight = 525
      end
      object chrtProvize: TDBChart
        Left = 154
        Top = 0
        Width = 799
        Height = 532
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Gradient.Visible = True
        Title.Text.Strings = (
          'V'#253'voj provize')
        Legend.LegendStyle = lsSeries
        View3D = False
        Align = alClient
        TabOrder = 0
        PrintMargins = (
          15
          16
          15
          16)
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = STdmd.dtsProvize
          SeriesColor = clRed
          Title = 'P'#345'edpoklad'
          XLabelsSource = 'MESIC'
          Emboss.Color = 8487297
          Shadow.Color = 8487297
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'PROVIZE'
        end
        object Series2: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = STdmd.dtsProvizeFaktura
          SeriesColor = clGreen
          Title = 'Skute'#269'nost'
          XLabelsSource = 'MESIC'
          Emboss.Color = 8487297
          Shadow.Color = 8487297
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'PROVIZE'
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 151
        Height = 532
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = 'Panel1'
        Color = clMoneyGreen
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 2
          Top = 189
          Width = 147
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object pnlProviyeTab1: TPanel
          Left = 2
          Top = 2
          Width = 147
          Height = 187
          Align = alTop
          BorderWidth = 2
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 3
            Top = 25
            Width = 141
            Height = 159
            Align = alClient
            BorderStyle = bsNone
            DataSource = STdmd.dsProvize
            Options = [dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = EASTEUROPE_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object StaticText2: TPanel
            Left = 3
            Top = 3
            Width = 141
            Height = 22
            Align = alTop
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = 'P'#345'edpoklad'
            Color = clRed
            TabOrder = 1
          end
        end
        object pnlProviyeTab2: TPanel
          Left = 2
          Top = 192
          Width = 147
          Height = 338
          Align = alClient
          BorderWidth = 2
          TabOrder = 1
          object DBGrid2: TDBGrid
            Left = 3
            Top = 25
            Width = 141
            Height = 310
            Align = alClient
            BorderStyle = bsNone
            DataSource = STdmd.dsProvizeFaktura
            Options = [dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = EASTEUROPE_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object StaticText1: TPanel
            Left = 3
            Top = 3
            Width = 141
            Height = 22
            Align = alTop
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = 'Skute'#269'nost'
            Color = clGreen
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Provize dle dispe'#269'er'#367
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 532
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 2
        BorderStyle = bsSingle
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 24
          Width = 177
          Height = 502
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsProvizeDispecer
          FixedColor = clSilver
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = EASTEUROPE_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Panel4: TPanel
          Left = 2
          Top = 2
          Width = 177
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Caption = 'P'#345'edpoklad'
          Color = clBackground
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object chtProvDisp: TChart
        Left = 185
        Top = 0
        Width = 768
        Height = 532
        AllowPanning = pmNone
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Border.Visible = True
        Gradient.Visible = True
        Title.Color = 8454143
        Title.Text.Strings = (
          'Provize dle dispe'#269'er'#367)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 1
        ColorPaletteIndex = 13
        object Series4: TPieSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Visible = False
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Provize dle p'#345#237'kazce'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlPrikazciTitle: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 28
        Align = alTop
        Color = clGray
        TabOrder = 0
        object btnPrikShow: TcxButton
          Left = 6
          Top = 4
          Width = 109
          Height = 21
          Action = actPrikazciShow
          TabOrder = 0
        end
        object cxButton1: TcxButton
          Left = 116
          Top = 4
          Width = 109
          Height = 21
          Hint = 'Export do HTML'
          Caption = 'Exportovat'
          TabOrder = 1
          OnClick = cxButton1Click
        end
      end
      object grdPrik: TcxGrid
        Left = 0
        Top = 28
        Width = 953
        Height = 504
        Align = alClient
        TabOrder = 1
        object tvDop: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrikazciPrehled
          DataController.KeyFieldNames = 'AOPKOD_OBJ'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Header = cxStyle2
          Styles.Indicator = cxStyle2
          object tvDopPrikazce1: TcxGridDBColumn
            DataBinding.FieldName = 'Prikazce'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 161
          end
          object tvDopPocet1: TcxGridDBColumn
            DataBinding.FieldName = 'Pocet'
            Width = 47
          end
          object tvDopcnPlatci1: TcxGridDBColumn
            DataBinding.FieldName = 'cnPlatci'
          end
          object tvDopcnDopravce1: TcxGridDBColumn
            DataBinding.FieldName = 'cnDopravce'
            Width = 77
          end
          object tvDopprovize1: TcxGridDBColumn
            DataBinding.FieldName = 'provize'
          end
          object tvDopprovizeavg1: TcxGridDBColumn
            DataBinding.FieldName = 'provizeavg'
            Width = 82
          end
        end
        object grdPrikLevel1: TcxGridLevel
          GridView = tvDop
        end
      end
    end
    object tsPriPla: TTabSheet
      Caption = 'Provize dle p'#345#237'kace a dispe'#269'era'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 28
        Align = alTop
        Color = clGray
        TabOrder = 0
        object cxButton2: TcxButton
          Left = 6
          Top = 4
          Width = 109
          Height = 21
          Caption = 'Zobrazit p'#345'epravy'
          TabOrder = 0
          OnClick = actPrikazciShowExecute
        end
        object cxButton3: TcxButton
          Left = 116
          Top = 4
          Width = 109
          Height = 21
          Hint = 'Export do HTML'
          Caption = 'Exportovat'
          TabOrder = 1
          OnClick = cxButton3Click
        end
      end
      object grdPriDisp: TcxGrid
        Left = 0
        Top = 28
        Width = 953
        Height = 504
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPriDis
          DataController.KeyFieldNames = 'aopkod_obj'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Header = cxStyle2
          Styles.Indicator = cxStyle2
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Prikazce'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 161
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Dispecer'
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Pocet'
            Width = 47
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'cnPlatci'
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'cnDopravce'
            Width = 77
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'provize'
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'provizeavg'
            Width = 82
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Provize dle dopravce'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 28
        Align = alTop
        Color = clGray
        TabOrder = 0
        object btnDopShow: TcxButton
          Left = 6
          Top = 4
          Width = 109
          Height = 21
          Caption = 'Zobrazit p'#345'epravy'
          TabOrder = 0
          OnClick = actPrikazciShowExecute
        end
        object SpeedButton3: TcxButton
          Left = 116
          Top = 4
          Width = 109
          Height = 21
          Hint = 'Export do HTML'
          Caption = 'Exportovat'
          TabOrder = 1
          OnClick = SpeedButton3Click
        end
      end
      object grdDopr: TcxGrid
        Left = 0
        Top = 28
        Width = 953
        Height = 504
        Align = alClient
        TabOrder = 1
        object tvDopravce: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDopravciPrehled
          DataController.KeyFieldNames = 'AOPKOD_DOP'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle1
          object tvDopravceDopravce1: TcxGridDBColumn
            DataBinding.FieldName = 'Dopravce'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
          end
          object tvDopravcePocet1: TcxGridDBColumn
            DataBinding.FieldName = 'Pocet'
            Width = 72
          end
          object tvDopravcecnPlatci1: TcxGridDBColumn
            DataBinding.FieldName = 'cnPlatci'
          end
          object tvDopravcecnDopravce1: TcxGridDBColumn
            DataBinding.FieldName = 'cnDopravce'
            Width = 90
          end
          object tvDopravceprovize1: TcxGridDBColumn
            DataBinding.FieldName = 'provize'
            Width = 72
          end
          object tvDopravceprovizeavg1: TcxGridDBColumn
            DataBinding.FieldName = 'provizeavg'
            Width = 97
          end
        end
        object lv1: TcxGridLevel
          GridView = tvDopravce
        end
      end
    end
    object tsDispFirma: TTabSheet
      Caption = 'Provize Disponent - Firma'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 28
        Align = alTop
        Color = clGray
        TabOrder = 0
        object cxButton6: TcxButton
          Left = 6
          Top = 4
          Width = 109
          Height = 21
          Hint = 'Export do HTML'
          Caption = 'Exportovat'
          TabOrder = 0
          OnClick = cxButton6Click
        end
      end
      object cxgAopDisp: TcxGrid
        Left = 0
        Top = 28
        Width = 953
        Height = 504
        Align = alClient
        TabOrder = 1
        RootLevelOptions.DetailTabsPosition = dtpTop
        object tvAopDisp: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsAopDisp
          DataController.KeyFieldNames = 'IDPOZICE'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Column = tvAopDispCALCPROVIZE
              DisplayText = 'Sou'#269'et provize'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle1
          object tvAopDispIDPOZICE: TcxGridDBColumn
            DataBinding.FieldName = 'IDPOZICE'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object tvAopDispDISPECER: TcxGridDBColumn
            DataBinding.FieldName = 'DISPECER'
            Options.Editing = False
            Width = 69
          end
          object tvAopDispPOZICE: TcxGridDBColumn
            DataBinding.FieldName = 'POZICE'
            Options.Editing = False
          end
          object tvAopDispAOP_NAZEV: TcxGridDBColumn
            DataBinding.FieldName = 'AOP_NAZEV'
            RepositoryItem = repBtnFirmaDetail
            Options.ShowEditButtons = isebAlways
          end
          object tvAopDispCENAPROVIZE: TcxGridDBColumn
            DataBinding.FieldName = 'CENAPROVIZE'
            Visible = False
            Options.Editing = False
          end
          object tvAopDispAOP_DSTART: TcxGridDBColumn
            DataBinding.FieldName = 'AOP_DSTART'
            Options.Editing = False
          end
          object tvAopDispAOP_CNSTART: TcxGridDBColumn
            DataBinding.FieldName = 'AOP_CNSTART'
            Options.Editing = False
            Width = 114
          end
          object tvAopDispAOP_CNCONT: TcxGridDBColumn
            DataBinding.FieldName = 'AOP_CNCONT'
            Options.Editing = False
            Width = 92
          end
          object tvAopDispPROCCALCUSED: TcxGridDBColumn
            DataBinding.FieldName = 'PROCCALCUSED'
            Options.Editing = False
            Width = 107
          end
          object tvAopDispCALCPROVIZE: TcxGridDBColumn
            DataBinding.FieldName = 'CALCPROVIZE'
            Options.Editing = False
          end
          object tvAopDispAOPKOD_OBJ: TcxGridDBColumn
            DataBinding.FieldName = 'AOPKOD_OBJ'
            Visible = False
            Options.Editing = False
          end
        end
        object cxgAopDispDBChartView1: TcxGridDBChartView
          DiagramColumn.Active = True
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'Provize z vlastn'#237'ch firem'
          GridView = tvAopDisp
        end
      end
    end
    object ts1: TTabSheet
      Caption = 'Graf provize dispe'#269'er - rozbor'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 953
        Height = 532
        Align = alClient
        TabOrder = 0
        LevelTabs.Style = 9
        LookAndFeel.NativeStyle = True
        RootLevelOptions.DetailTabsPosition = dtpTop
        object tvChartView: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'ZASILKA'
          Categories.DisplayText = 'P'#345'eprava'
          DataController.DataSource = dsDispAll
          DataController.KeyFieldNames = 'SID'
          DiagramColumn.Active = True
          DiagramPie.Legend.Position = cppRight
          Legend.Position = cppNone
          OptionsView.CategoriesPerPage = 10
          ToolBox.CustomizeButton = True
          ToolBox.DataLevelsInfoVisible = dlivAlways
          ToolBox.DiagramSelector = True
          object tvChartViewDataGroupCustomer: TcxGridDBChartDataGroup
            DataBinding.FieldName = 'DISPECER'
            DisplayText = 'Dispe'#269'er'
          end
          object tvChartViewDataGroup1: TcxGridDBChartDataGroup
            DataBinding.FieldName = 'MESIC'
            DisplayText = 'M'#283's'#237'c'
          end
          object tvChartViewDataGroupProduct: TcxGridDBChartDataGroup
            DataBinding.FieldName = 'PRIKAZCE'
            DisplayText = 'P'#345#237'kazce'
          end
          object tvChartViewSeriesPaymentAmount: TcxGridDBChartSeries
            DataBinding.FieldName = 'SUMPROVIZE'
            DisplayText = 'Provize'
          end
          object tvChartViewSeries1: TcxGridDBChartSeries
            DataBinding.FieldName = 'SUMVLASTNIFIRMA'
          end
          object tvChartViewSeriesCount: TcxGridDBChartSeries
            DataBinding.FieldName = 'SUMPROVIZE'
            DisplayText = 'Po'#269'et p'#345'eprav'
            Visible = False
            GroupSummaryKind = skCount
          end
        end
        object tvTableView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataSource = dsDispAll
          DataController.KeyFieldNames = 'SID'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0,'
              Kind = skSum
              Column = tvTableViewSUMPROVIZE
            end
            item
              Format = '0'
              Kind = skCount
              Column = tvTableViewSID
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          object tvTableViewSID: TcxGridDBColumn
            DataBinding.FieldName = 'SID'
            Visible = False
            VisibleForCustomization = False
          end
          object tvTableViewMESIC: TcxGridDBColumn
            DataBinding.FieldName = 'MESIC'
          end
          object tvTableViewDISPECER: TcxGridDBColumn
            DataBinding.FieldName = 'DISPECER'
          end
          object tvTableViewPRIKAZCE: TcxGridDBColumn
            DataBinding.FieldName = 'PRIKAZCE'
          end
          object tvTableViewZASILKA: TcxGridDBColumn
            DataBinding.FieldName = 'ZASILKA'
          end
          object tvTableViewSUMPROVIZE: TcxGridDBColumn
            DataBinding.FieldName = 'SUMPROVIZE'
          end
        end
        object GridLevelChart: TcxGridLevel
          Caption = '  Graf provize dle dispe'#269'er'#367'  '
          GridView = tvChartView
        end
        object GridLevelTable: TcxGridLevel
          Caption = '  Tabulka provize dle dispe'#269'er'#367' '
          GridView = tvTableView
        end
      end
    end
  end
  inherited MasterDs: TDataSource
    Left = 52
    Top = 288
  end
  inherited SQLControler: TjfsSQLContr
    Left = 264
    Top = 128
  end
  object ActionListProvize: TActionList
    Images = dmdGlobal.imglDefault
    Left = 128
    Top = 60
    object actZobrazit: TAction
      Caption = 'Zobrazit'
      OnExecute = actZobrazitExecute
    end
    object actSave: TAction
      Caption = 'Ulo'#382'it...'
      OnExecute = actSaveExecute
    end
    object actPrikazciShow: TAction
      Caption = 'Zobrazit p'#345'epravy'
      OnExecute = actPrikazciShowExecute
    end
    object actPrikazciTisk: TAction
      Caption = 'Vytisknout...'
    end
    object actPrikazciExport: TAction
      Caption = 'Exportovat...'
    end
    object actDoprShow: TAction
      Caption = 'Zobrazit p'#345'epravy'
      OnExecute = actPrikazciShowExecute
    end
    object actDoprTisk: TAction
      Caption = 'Vytisknout...'
    end
    object actDoprExport: TAction
      Caption = 'Exportovat...'
    end
    object actionExportToXML: TAction
      Caption = 'XML'
      Hint = 'Export do XML'
    end
    object actionExportToXLS: TAction
      Caption = 'XLS'
      Hint = 'Export do XLS'
    end
    object actionExportToText: TAction
      Caption = 'TXT'
      Hint = 'Export do TXT'
    end
    object actionExportToHTML: TAction
      Caption = 'HTML'
      Hint = 'Export do HTML'
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.wmf'
    Filter = 'Soubory MetaFile |*.wmf|Soubory PaintBrush|*.bmp'
    Left = 268
    Top = 196
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = dmdSystem.rstrgForms
    Options = [poStoreDefValues]
    RootSection = 'Modul.Statistiky.Prehledy'
    Properties.Strings = (
      'dpStart.Date'
      'dpStop.Date'
      'edTypData.ItemIndex')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 184
    Top = 196
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 60
    Top = 128
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clWindowText
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 128
    Top = 128
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clWindowText
    end
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdPrik
    PopupMenus = <>
    Left = 264
    Top = 60
  end
  object cxGridPopupMenu3: TcxGridPopupMenu
    Grid = grdDopr
    PopupMenus = <>
    Left = 332
    Top = 60
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPriDisp
    PopupMenus = <>
    Left = 196
    Top = 60
  end
  object dsAopDisp: TDataSource
    AutoEdit = False
    DataSet = STdmd.dtsDispAop
    Left = 236
    Top = 291
  end
  object cxGridPopupMenu4: TcxGridPopupMenu
    Grid = cxgAopDisp
    PopupMenus = <>
    Left = 404
    Top = 59
  end
  object cxEditRepository1: TcxEditRepository
    Left = 406
    Top = 131
    object repBtnFirmaDetail: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = repBtnFirmaDetailPropertiesButtonClick
    end
  end
  object dsDispAll: TDataSource
    AutoEdit = False
    DataSet = STdmd.dtsProvizeDispecer
    Left = 140
    Top = 291
  end
  object dsPriDis: TDataSource
    AutoEdit = False
    DataSet = STdmd.dtsPriDis
    Left = 332
    Top = 298
  end
  object dsPrikazciPrehled: TDataSource
    AutoEdit = False
    DataSet = STdmd.dtsPrikaciPrehled
    Left = 440
    Top = 294
  end
  object dsDopravciPrehled: TDataSource
    AutoEdit = False
    DataSet = STdmd.dtsDopravciPrehled
    Left = 558
    Top = 296
  end
  object dsProvizeDispecer: TDataSource
    DataSet = STdmd.dtsProvizeDispecer
    Left = 672
    Top = 296
  end
end
