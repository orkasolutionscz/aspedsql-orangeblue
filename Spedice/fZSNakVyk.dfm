inherited frmZSNakVyk: TfrmZSNakVyk
  Left = 504
  Top = 241
  BorderStyle = bsDialog
  Caption = 'Detail trasy'
  ClientHeight = 302
  ClientWidth = 527
  OldCreateOrder = True
  ExplicitWidth = 533
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxbcTop: TdxBarDockControl
    Width = 527
    ExplicitWidth = 527
  end
  inherited lcMain: TdxLayoutControl
    Width = 527
    Height = 276
    TabOrder = 4
    AutoSize = True
    ExplicitWidth = 527
    ExplicitHeight = 272
    object btnFTxSpeedButton2: TcxButton [0]
      Left = 436
      Top = 57
      Width = 81
      Height = 25
      Action = actVybratAOP
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnFTxSpeedButton1: TcxButton [1]
      Left = 436
      Top = 88
      Width = 81
      Height = 25
      Action = actVybratMisto
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnSpeedButton1: TcxButton [2]
      Left = 436
      Top = 119
      Width = 81
      Height = 25
      Action = actVybratSmerovku
      TabOrder = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnSpeedButton2: TcxButton [3]
      Left = 436
      Top = 150
      Width = 81
      Height = 25
      Action = actUlozitSmer
      TabOrder = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbPohybTyp: TcxDBLookupComboBox [4]
      Left = 54
      Top = 10
      DataBinding.DataField = 'TYP'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 177
    end
    object edPoradi: TcxDBTextEdit [5]
      Left = 276
      Top = 10
      DataBinding.DataField = 'PORADI'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 57
    end
    object meAdresaPopis: TcxDBMemo [6]
      Left = 54
      Top = 37
      DataBinding.DataField = 'ADRESAPOPIS'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 75
      Width = 337
    end
    object cbZeme: TcxDBLookupComboBox [7]
      Left = 54
      Top = 118
      DataBinding.DataField = 'ZEMEKOD'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 63
    end
    object edPSC: TcxDBTextEdit [8]
      Left = 144
      Top = 118
      DataBinding.DataField = 'PSC'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 57
    end
    object edAdresa3: TcxDBTextEdit [9]
      Left = 241
      Top = 118
      DataBinding.DataField = 'ADRESA3'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 209
    end
    object meSpojeni: TcxDBMemo [10]
      Left = 54
      Top = 145
      DataBinding.DataField = 'SPOJENI'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 89
      Width = 337
    end
    object edDatum: TcxDBDateEdit [11]
      Left = 54
      Top = 240
      DataBinding.DataField = 'DATUM'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 81
    end
    object edCas: TcxDBTextEdit [12]
      Left = 162
      Top = 240
      DataBinding.DataField = 'CAS'
      DataBinding.DataSource = dsZaznam
      ParentFont = False
      Properties.MaxLength = 32
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 249
    end
    object btnClose: TcxButton [13]
      Left = 436
      Top = 10
      Width = 81
      Height = 25
      Action = actOk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxlgMainGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'N'#225'stroje'
      CaptionOptions.Visible = False
      Parent = lcMainGroup_Root
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dliMainItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnFTxSpeedButton2'
      CaptionOptions.Visible = False
      Parent = dxlgMainGroup3
      Control = btnFTxSpeedButton2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dliMainItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnFTxSpeedButton1'
      CaptionOptions.Visible = False
      Parent = dxlgMainGroup3
      Control = btnFTxSpeedButton1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dliMainItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnSpeedButton1'
      CaptionOptions.Visible = False
      Parent = dxlgMainGroup3
      Control = btnSpeedButton1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dliMainItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnSpeedButton2'
      CaptionOptions.Visible = False
      Parent = dxlgMainGroup3
      Control = btnSpeedButton2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxlgMainGroup5: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Parent = lcMainGroup_Root
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxlgMainGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgMainGroup5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dliMainItem6: TdxLayoutItem
      CaptionOptions.Text = 'Typ:'
      Parent = dxlgMainGroup6
      Control = cbPohybTyp
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dliMainItem7: TdxLayoutItem
      CaptionOptions.Text = 'Po'#345'ad'#237':'
      Parent = dxlgMainGroup6
      Control = edPoradi
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dliMainItem8: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Adresa'
      Parent = dxlgMainGroup5
      Control = meAdresaPopis
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlgMainGroup7: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgMainGroup5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dliMainItem9: TdxLayoutItem
      CaptionOptions.Text = 'St'#225't'
      Parent = dxlgMainGroup7
      Control = cbZeme
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dliMainItem10: TdxLayoutItem
      CaptionOptions.Text = 'Ps'#269
      Parent = dxlgMainGroup7
      Control = edPSC
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dliMainItem11: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'M'#283'sto'
      Parent = dxlgMainGroup7
      Control = edAdresa3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dliMainItem12: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Spojen'#237':'
      Parent = dxlgMainGroup5
      Control = meSpojeni
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxlgMainGroup8: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxlgMainGroup5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dliMainItem13: TdxLayoutItem
      CaptionOptions.Text = 'Datum:'
      Parent = dxlgMainGroup8
      Control = edDatum
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dliMainItem14: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #269'as'
      Parent = dxlgMainGroup8
      Control = edCas
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dliMainItem1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = dxlgMainGroup3
      Control = btnClose
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmptyspctmMainSpaceItem1: TdxLayoutEmptySpaceItem
      CaptionOptions.Text = 'Empty Space Item'
      Parent = dxlgMainGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxlytsprtrtmMainSeparatorItem1: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = lcMainGroup_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
  end
  inherited ActionList1: TActionList
    Left = 478
    Top = 182
    object actVybratMisto: TAction
      Caption = 'Vybrat m'#237'sto'
      OnExecute = actVybratMistoExecute
    end
    object actVybratAOP: TAction
      Caption = 'Adres'#225#345'...'
      OnExecute = actVybratAOPExecute
    end
    object actVybratSmerovku: TAction
      Caption = 'Vybrat sm'#283'r'
      OnExecute = actVybratSmerovkuExecute
    end
    object actUlozitSmer: TAction
      Caption = 'Ulo'#382'it Sm'#283'r'
      OnExecute = actUlozitSmerExecute
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = ZSdmd.ZAPohyby
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
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
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
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
        end>
    end
    inherited dxbOk: TdxBarButton
      Align = iaRight
    end
  end
  object jfEnterAsTab1: TjfEnterAsTab
    Left = 360
    Top = 24
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmZSNakVyk.rsPropSaver1'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 368
    Top = 72
  end
end
