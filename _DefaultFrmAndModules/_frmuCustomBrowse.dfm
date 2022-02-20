object frmCustomBrowse: TfrmCustomBrowse
  Left = 387
  Top = 211
  ClientHeight = 407
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefault
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnMouseActivate = jfsCustomMDIMouseActivate
  IsDataChanged = False
  PixelsPerInch = 96
  TextHeight = 13
  object MasterDs: TDataSource
    AutoEdit = False
    Left = 128
    Top = 60
  end
  object ActionList1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 59
    Top = 61
    object actSQLOne: TAction
      Tag = 1
      Category = 'SQL'
      Caption = 'V'#253'b'#283'r'
      Hint = 'Definice podm'#237'nky v'#253'b'#283'ru'
      ImageIndex = 16
      ShortCut = 16454
      OnExecute = actSQLOneExecute
    end
    object actRecFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = 'Prvn'#237
      Hint = 'Prvn'#237' z'#225'znam'
      ImageIndex = 0
      DataSource = MasterDs
    end
    object actSQLSpeed: TAction
      Tag = 2
      Category = 'SQL'
      Caption = 'Hodnota'
      Hint = 'Vybrat z existuj'#237'c'#237'ch hodnot sloupce'
      ImageIndex = 17
      OnExecute = actSQLSpeedExecute
    end
    object actRecPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = 'Minul'#253
      Hint = 'Minul'#253' z'#225'znam'
      ImageIndex = 1
      DataSource = MasterDs
    end
    object actRecNext: TDataSetNext
      Category = 'Dataset'
      Caption = 'Dal'#353#237
      Hint = 'Dal'#353#237' z'#225'znam'
      ImageIndex = 2
      DataSource = MasterDs
    end
    object actSQLUserWhere: TAction
      Category = 'SQL'
      Caption = 'U'#382'ivatelsk'#225' podm'#237'nka'
      Hint = 'Ru'#269'n'#237' z'#225'pis podm'#237'nky'
      OnExecute = actSQLUserWhereExecute
    end
    object actRecLast: TDataSetLast
      Category = 'Dataset'
      Caption = 'Posledn'#237
      Hint = 'Posledn'#237' z'#225'znam'
      ImageIndex = 3
      DataSource = MasterDs
    end
    object actRecDetail: TAction
      Category = 'Dataset'
      Caption = 'Detail'
      Hint = 'P'#345'epnut'#237' na detail.'#13#10'Lze prov'#233'st opravu '#250'daj'#367
      ImageIndex = 5
      ShortCut = 113
      OnExecute = actRecDetailExecute
    end
    object actRecNew: TAction
      Category = 'Dataset'
      Caption = 'Nov'#253
      Hint = 'Nov'#253' z'#225'znam'
      ImageIndex = 6
      ShortCut = 16462
      OnExecute = actRecNewExecute
    end
    object actRecKopie: TAction
      Category = 'Dataset'
      Caption = 'Kopie'
      Hint = 'Kopie z'#225'znamu'
      ImageIndex = 7
      OnExecute = actRecKopieExecute
    end
    object actClose: TAction
      Category = 'Formular'
      Caption = 'Uzav'#345#237't modul'
      Hint = 'Konec pr'#225'ce s modulem'
      ImageIndex = 28
      ShortCut = 119
      OnExecute = actCloseExecute
    end
    object actSQLValue: TAction
      Tag = 4
      Category = 'SQL'
      Caption = 'Vyber stejn'#233
      Hint = 'Vybere z'#225'znamy se stejmou hodnotou'
      ImageIndex = 18
      ShortCut = 16455
      OnExecute = actSQLValueExecute
    end
    object actSQLStored: TAction
      Tag = 3
      Category = 'SQL'
      Caption = 'Obl'#237'ben'#233
      Hint = 'Vybrat z ulo'#382'en'#253'ch podm'#237'nek'
      ImageIndex = 19
      OnExecute = actSQLStoredExecute
    end
    object actSQLCancel: TAction
      Category = 'SQL'
      Caption = 'V'#353'echny'
      Hint = 'Zobrazit v'#353'echny z'#225'znamy'
      ImageIndex = 20
      ShortCut = 16465
      OnExecute = actSQLCancelExecute
    end
    object actSQLHistory: TAction
      Category = 'SQL'
      Caption = 'Historie'
      Hint = 'Zobrazit historii dotaz'#367
      ImageIndex = 23
      OnExecute = actSQLHistoryExecute
    end
    object actRecRefresh: TAction
      Category = 'Dataset'
      Caption = 'Obnovit'
      Hint = 'Ob'#269'erstven'#237' dat'
      ImageIndex = 4
      ShortCut = 116
      OnExecute = actRecRefreshExecute
    end
    object actSQLSaveWhere: TAction
      Category = 'SQL'
      Caption = 'Ulo'#382'it podm'#237'nku'
      Hint = 'Ulo'#382'it pr'#225'v'#283' platnou podm'#237'nku na disk'
      OnExecute = actSQLSaveWhereExecute
    end
    object actSQLEditWhere: TAction
      Category = 'SQL'
      Caption = 'Spr'#225'va podm'#237'nek'
      Hint = #218'prava ulo'#382'en'#253'ch podm'#237'nek'
      OnExecute = actSQLEditWhereExecute
    end
    object actSQLDayNew: TAction
      Category = 'SQL'
      Caption = 'Dnes nov'#233
      Hint = 'Zobrazit dnes nov'#233
      ImageIndex = 21
      OnExecute = actSQLDayNewExecute
    end
    object actSQLDayChange: TAction
      Category = 'SQL'
      Caption = 'Dnes opraven'#233
      Hint = 'Zobrazit dne'#353'n'#237' zm'#283'ny'
      ImageIndex = 22
      OnExecute = actSQLDayChangeExecute
    end
    object actRecFind: TAction
      Category = 'Dataset'
      Caption = 'Hledej doklad'
      Hint = 'Dialog pro vyhled'#225'n'#237' z'#225'znamu'
      ImageIndex = 15
      ShortCut = 16456
      OnExecute = actRecFindExecute
    end
    object actRecUpdateAll: TAction
      Category = 'Dataset'
      Caption = 'Aktualizace obsahu sloupce...'
      ImageIndex = 29
      OnExecute = actRecUpdateAllExecute
    end
    object actSQLSaveCurSetting: TAction
      Category = 'SQL'
      Caption = 'Ulo'#382'it aktu'#225'ln'#237' nastaven'#237' ...'
      OnExecute = actSQLSaveCurSettingExecute
    end
  end
  object SQLControler: TjfsSQLContr
    AllRecord = '0=0'
    OnWhereChange = SQLControlerWhereChange
    Options.StartingWhere = '0=0'
    Syntax.Strings = (
      'SELECT'
      'INTO'
      'FROM'
      'WHERE'
      'GROUP'
      'HAVING'
      'UNION'
      'PLAN'
      'ORDER'
      'COMPUTE'
      'FOR'
      'INTO TEMP')
    Left = 196
    Top = 60
  end
end
