inherited DOCfrmEdit: TDOCfrmEdit
  Left = 46
  Caption = 'Detail dokumentu'
  ClientHeight = 663
  ClientWidth = 717
  Constraints.MinHeight = 523
  Constraints.MinWidth = 660
  OldCreateOrder = True
  OnDestroy = jfsCustomEvidFormDestroy
  OnFormPrint = gbCustomEditFormPrint
  ExplicitWidth = 725
  ExplicitHeight = 690
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl [0]
    Width = 717
    Height = 637
    TabOrder = 4
    AutoSize = True
    ExplicitWidth = 717
    ExplicitHeight = 637
    object edAdresa2: TcxDBTextEdit [0]
      Tag = 12
      Left = 358
      Top = 82
      Hint = 'Adresa'
      DataBinding.DataField = 'ADRESA2'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 280
    end
    object edAdresa1: TcxDBTextEdit [1]
      Tag = 12
      Left = 358
      Top = 55
      DataBinding.DataField = 'ADRESA1'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 280
    end
    object edNazev: TcxDBLookupComboBox [2]
      Tag = 11
      Left = 358
      Top = 28
      Hint = 'N'#225'zev firmy (adresu je mo'#382'no vyplnit ru'#269'n'#283' nebo pou'#382#237't adres'#225#345')'
      DataBinding.DataField = 'AOPKOD'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      Properties.ListColumns = <>
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 280
    end
    object edPsc: TcxDBTextEdit [3]
      Tag = 13
      Left = 358
      Top = 109
      Hint = 'Sm'#283'rovac'#237' '#269#237'slo'
      DataBinding.DataField = 'PSC'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 55
    end
    object edEmaily: TcxDBMemo [4]
      Left = 358
      Top = 163
      DataBinding.DataField = 'DOCEMAILY'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.WantReturns = False
      Properties.WordWrap = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 302
    end
    object edZeme: TcxDBTextEdit [5]
      Left = 358
      Top = 136
      Hint = 'Zem'#283
      DataBinding.DataField = 'ZEME'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 280
    end
    object edAdresa3: TcxDBTextEdit [6]
      Tag = 14
      Left = 453
      Top = 109
      Hint = 'M'#283'sto nebo obec'
      DataBinding.DataField = 'ADRESA3'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 185
    end
    object edVec: TcxDBTextEdit [7]
      Left = 72
      Top = 163
      DataBinding.DataField = 'VEC'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 241
    end
    object edDatum: TcxDBDateEdit [8]
      Left = 72
      Top = 55
      DataBinding.DataField = 'DATUM'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 94
    end
    object edZnacka: TcxDBButtonEdit [9]
      Tag = 1
      Left = 72
      Top = 28
      Hint = 'Eviden'#269'n'#237' '#269#237'slo faktury.'
      DataBinding.DataField = 'ZNACKA'
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
      Properties.OnButtonClick = edZnackaButtonClick
      ShowHint = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 99
    end
    object edVasDopis: TcxDBTextEdit [10]
      Left = 72
      Top = 82
      DataBinding.DataField = 'VASDOPIS'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 241
    end
    object edUrceno: TcxDBTextEdit [11]
      Left = 72
      Top = 109
      DataBinding.DataField = 'URCENO'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 241
    end
    object edVyrizuje: TcxDBTextEdit [12]
      Left = 72
      Top = 136
      DataBinding.DataField = 'VYRIZUJE'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 241
    end
    object edEditor: TcxDBMemo [13]
      Left = 22
      Top = 220
      DataBinding.DataField = 'DTEXT'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = EASTEUROPE_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Height = 395
      Width = 667
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcMainItem2: TdxLayoutItem
      CaptionOptions.Text = 'Adresa'
      Parent = lcMainGroup7
      Control = edAdresa2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem3: TdxLayoutItem
      CaptionOptions.Text = #218'tvar'
      Parent = lcMainGroup7
      Control = edAdresa1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem4: TdxLayoutItem
      CaptionOptions.Text = 'Firma'
      Parent = lcMainGroup7
      Control = edNazev
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem5: TdxLayoutItem
      CaptionOptions.Text = 'Ps'#269
      Parent = lcMainGroup5
      Control = edPsc
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem6: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Email'
      Parent = lcMainGroup3
      Control = edEmaily
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem7: TdxLayoutItem
      CaptionOptions.Text = 'Zem'#283
      Parent = lcMainGroup3
      Control = edZeme
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem8: TdxLayoutItem
      CaptionOptions.Text = 'M'#283'sto'
      Parent = lcMainGroup5
      Control = edAdresa3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem9: TdxLayoutItem
      CaptionOptions.Text = 'P'#345'edm'#283't'
      Parent = lcMainGroup6
      Control = edVec
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lcMainItem10: TdxLayoutItem
      CaptionOptions.Text = 'Datum'
      Parent = lcMainGroup6
      Control = edDatum
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem11: TdxLayoutItem
      CaptionOptions.Text = 'Zna'#269'ka'
      Parent = lcMainGroup6
      Control = edZnacka
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem13: TdxLayoutItem
      CaptionOptions.Text = 'V'#225#353' dopis'
      Parent = lcMainGroup6
      Control = edVasDopis
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem14: TdxLayoutItem
      CaptionOptions.Text = 'Ur'#269'eno'
      Parent = lcMainGroup6
      Control = edUrceno
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lcMainItem15: TdxLayoutItem
      CaptionOptions.Text = 'Vy'#345'izuje'
      Parent = lcMainGroup6
      Control = edVyrizuje
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lcMainGroup7: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Parent = lcMainGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcMainGroup9: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lcMainGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lcMainGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup9
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 3
    end
    object lcMainGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup1: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcMainGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lcMainGroup_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcMainItem1: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lcMainGroup4
      Control = edEditor
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxbcTop: TdxBarDockControl [1]
    Width = 717
    ExplicitWidth = 717
  end
  inherited ActionList1: TActionList
    Left = 100
    Top = 100
    inherited actSendMail: TAction
      Caption = 'Email (jako p'#345#237'loha)'
      Visible = True
    end
    object actCreateEmail: TAction
      Category = 'Formular'
      Caption = 'Vytvo'#345'it email'
      ImageIndex = 58
      OnExecute = actCreateEmailExecute
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = DOCdmd.DOC
    Left = 188
    Top = 100
  end
  inherited dxBarManager1: TdxBarManager
    Left = 276
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
          ItemName = 'dxiNabidka'
        end
        item
          Visible = True
          ItemName = 'dxbNahled'
        end
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
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbOk'
        end>
    end
    object dxbPrint: TdxBarButton [9]
      Action = actPrint
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbNahled: TdxBarButton [10]
      Action = actNahled
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxb1: TdxBarButton [17]
      Action = actCreateEmail
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    inherited dxiNabidka: TdxBarSubItem
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
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxbPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxiDesign'
        end>
    end
    object dxb2: TdxBarButton
      Action = actSendMail
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object rsPropSaver1: TrsPropSaver
    Storage = dmdSystem.rstrgForms
    RootSection = 'DOC.Detail'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxb1'
      end>
    UseOwnFont = False
    Left = 365
    Top = 100
  end
end
