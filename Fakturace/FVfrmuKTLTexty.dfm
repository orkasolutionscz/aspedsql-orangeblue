inherited FVfrmKTLTexty: TFVfrmKTLTexty
  Left = 614
  Top = 321
  Caption = 'Faktury - dopl'#328'kov'#233' texty'
  ClientHeight = 605
  ClientWidth = 592
  Constraints.MaxWidth = 600
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  OnCreate = jfsCustomEvidFormCreate
  ExplicitWidth = 600
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGlobalData: TPanel
    Width = 592
    ExplicitWidth = 592
    inherited dxlHlavni: TdxLayoutControl
      Width = 590
      ExplicitWidth = 590
      object edPopis: TcxDBTextEdit [0]
        Left = 75
        Top = 53
        DataBinding.DataField = 'POPIS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 505
      end
      object edSablona: TcxDBMemo [1]
        Left = 75
        Top = 80
        DataBinding.DataField = 'TEXTCS'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Height = 89
        Width = 505
      end
      object edTypTextu: TcxDBImageComboBox [2]
        Left = 75
        Top = 26
        RepositoryItem = repFVtextTyp
        DataBinding.DataField = 'TYP'
        DataBinding.DataSource = dsZaznam
        ParentFont = False
        Properties.Items = <
          item
            Description = 'Text na z'#225'v'#283'r'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Text na po'#269#225'tku'
            Value = 1
          end>
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      inherited dxlgLayoutControl1Group_Root: TdxLayoutGroup
        Index = -1
      end
      object dliHlavniItem2: TdxLayoutItem
        CaptionOptions.Text = 'Popis'
        Parent = dxlgLayoutControl1Group_Root
        Control = edPopis
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dliHlavniItem3: TdxLayoutItem
        CaptionOptions.Text = 'Text Z'#225'hlav'#237
        Parent = dxlgLayoutControl1Group_Root
        Control = edSablona
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem
        CaptionOptions.Text = 'Empty Space Item'
        Parent = dxlgLayoutControl1Group_Root
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        Index = 0
      end
      object dliHlavniItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Typ textu'
        Parent = dxlgLayoutControl1Group_Root
        Control = edTypTextu
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  inherited dxbcTop: TdxBarDockControl
    Width = 592
    ExplicitWidth = 592
  end
  inherited pnlSeznam: TPanel
    Width = 592
    Height = 324
    ExplicitWidth = 592
    ExplicitHeight = 324
    inherited cxGridKtl1: TcxGrid
      Width = 592
      Height = 324
      ExplicitWidth = 592
      ExplicitHeight = 324
      inherited tvKatalog: TcxGridDBTableView
        DataController.KeyFieldNames = 'ID'
        object tvKatalogID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvKatalogTYP: TcxGridDBColumn
          DataBinding.FieldName = 'TYP'
          RepositoryItem = repFVtextTyp
        end
        object tvKatalogPOPIS: TcxGridDBColumn
          DataBinding.FieldName = 'POPIS'
          Width = 276
        end
        object tvKatalogTEXTCS: TcxGridDBColumn
          DataBinding.FieldName = 'TEXTCS'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.VisibleLineCount = 4
          Width = 215
        end
      end
    end
  end
  inherited pnlTlacitka: TPanel
    Top = 559
    Width = 592
    ExplicitTop = 559
    ExplicitWidth = 592
    inherited pnlButtons: TPanel
      Left = 424
      ExplicitLeft = 424
    end
  end
  inherited dsZaznam: TDataSource
    DataSet = AppCompsDM.KTLFVTexty
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'Katalogy.FVKTLTexty'
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 100
    Top = 188
  end
  object cx: TcxEditRepository
    Left = 184
    Top = 192
    object repFVtextTyp: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Text na z'#225'v'#283'r faktury'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Text na '#250'vod faktury'
          Value = 1
        end>
    end
  end
end
