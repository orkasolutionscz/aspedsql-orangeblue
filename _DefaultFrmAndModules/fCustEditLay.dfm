object frmCustEditLay: TfrmCustEditLay
  Left = 139
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Edita'#269'n'#237' okno'
  ClientHeight = 543
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  IsDataChanged = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxbcTop: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 692
    Height = 26
    Align = dalTop
    BarManager = dxBarManager1
  end
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 26
    Width = 692
    Height = 517
    Align = alClient
    TabOrder = 5
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object ActionList1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 30
    object actRecPrior: TAction
      Category = 'Dataset'
      Hint = 'P'#345'edch'#225'zej'#237'c'#237' z'#225'znam'
      ImageIndex = 1
      OnExecute = actRecordMove
    end
    object actRecNext: TAction
      Category = 'Dataset'
      Hint = 'Dal'#353#237' z'#225'znam'
      ImageIndex = 2
      OnExecute = actRecordMove
    end
    object actOk: TAction
      Category = 'Formular'
      Caption = 'Zav'#345#237't'
      Hint = 
        'Ukon'#269'en'#237' pr'#225'ce s formul'#225#345'em.'#13#10'Proveden'#233' zm'#283'ny budou zaps'#225'ny do t' +
        'abulky.'
      ImageIndex = 28
      ShortCut = 119
      OnExecute = actOkExecute
    end
    object actRecNew: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Nov'#253
      Hint = 'Nov'#253' z'#225'znam'
      ImageIndex = 6
      ShortCut = 16462
      DataSource = dsZaznam
    end
    object actRecCopy: TAction
      Category = 'Dataset'
      Caption = 'Kopie'
      Hint = 'Kopie aktu'#225'ln'#237'ho z'#225'znamu'
      ImageIndex = 7
      ShortCut = 16459
      OnExecute = actRecCopyExecute
    end
    object actRecEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Opravit'
      Hint = 'Oprava aktu'#225'ln'#237'ho z'#225'znamu'
      ImageIndex = 8
      ShortCut = 16453
      DataSource = dsZaznam
    end
    object actRecPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'Zapsat'
      Hint = 'Zapsat proveden'#233' zm'#283'ny'
      ImageIndex = 9
      ShortCut = 16467
      DataSource = dsZaznam
    end
    object actRecCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Storno'
      Hint = 'P'#345'eru'#353'en'#237' opravy (vkl'#225'd'#225'n'#237')'
      ImageIndex = 10
      ShortCut = 27
      DataSource = dsZaznam
    end
    object actRecDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Odstranit'
      Hint = 'Odstranit aktu'#225'ln'#237' z'#225'znam'
      ImageIndex = 11
      ShortCut = 16430
      OnExecute = actRecDeleteExecute
      DataSource = dsZaznam
    end
    object actCancel: TAction
      Category = 'Formular'
      Caption = 'Zp'#283't'
      OnExecute = actCancelExecute
    end
    object actPrint: TAction
      Category = 'Formular'
      Caption = 'Tisk'
      Hint = 'Tiskov'#253' mana'#382'er'
      ImageIndex = 12
      ShortCut = 16464
      OnExecute = actPrintExecute
    end
    object actHelp: TAction
      Category = 'Formular'
      Caption = 'N'#225'pov'#283'da'
      Visible = False
      OnExecute = actHelpExecute
    end
    object actNahled: TAction
      Category = 'Formular'
      Caption = 'N'#225'hled'
      Hint = 'Zobraz'#237' n'#225'hled z'#225'kladn'#237' sestavy'
      ImageIndex = 13
      OnExecute = actNahledExecute
    end
    object actRecRefresh: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'Ob'#269'erstvit'
      Hint = 'Ob'#269'erstvit z'#225'znamy'
      ImageIndex = 4
      ShortCut = 116
      DataSource = dsZaznam
    end
    object actSendMail: TAction
      Category = 'Formular'
      Caption = 'Odeslta emailem'
      ImageIndex = 58
      Visible = False
      OnExecute = actSendMailExecute
    end
    object actLayRestoreDefault: TAction
      Category = 'Layout'
      Caption = 'Obnovit rozlo'#382'en'#237' formul'#225#345'e'
      OnExecute = actLayRestoreDefaultExecute
    end
    object actLayCustomize: TAction
      Category = 'Layout'
      Caption = 'Upravit rozlo'#382'en'#237' formul'#225#345'e'
      OnExecute = actLayCustomizeExecute
    end
    object actLayCustomizeSave: TAction
      Category = 'Layout'
      Caption = 'Ulo'#382'it rozlo'#382'en'#237' formul'#225#345'e'
      OnExecute = actLayCustomizeSaveExecute
    end
    object actAutoSize: TAction
      Category = 'Layout'
      AutoCheck = True
      Caption = 'Automatick'#225' velikost'
      OnExecute = actAutoSizeExecute
    end
  end
  object dsZaznam: TDataSource
    OnDataChange = dsZaznamDataChange
    Left = 118
    Top = 30
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmdGlobal.imglDefault
    NotDocking = [dsNone, dsLeft, dsRight]
    PopupMenuLinks = <>
    RegistryPath = '\Software\LMSS\ASPED\aspedsql\'
    UseSystemFont = False
    Left = 206
    Top = 32
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      Caption = 'Hlavni'
      CaptionButtons = <>
      DockControl = dxbcTop
      DockedDockControl = dxbcTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 294
      FloatTop = 238
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxiNabidka'
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
          ItemName = 'dxbOk'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = actRecPrior
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actRecNext
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actRecNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actRecCopy
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = actRecEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = actRecPost
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = actRecCancel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = actRecDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbOk: TdxBarButton
      Action = actOk
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxiDesign: TdxBarSubItem
      Caption = #218'prava vzhledu'
      Category = 0
      Visible = ivAlways
      ImageIndex = 33
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbLayDesign'
        end
        item
          Visible = True
          ItemName = 'dxbLayDesignSave'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbLayRestoreDefault'
        end>
    end
    object dxbLayDesign: TdxBarButton
      Action = actLayCustomize
      Category = 0
    end
    object dxbLayDesignSave: TdxBarButton
      Action = actLayCustomizeSave
      Category = 0
    end
    object dxbLayRestoreDefault: TdxBarButton
      Action = actLayRestoreDefault
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actAutoSize
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxiNabidka: TdxBarSubItem
      Caption = 'Nab'#237'dka'
      Category = 0
      Visible = ivAlways
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
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxiDesign'
        end>
    end
  end
end
