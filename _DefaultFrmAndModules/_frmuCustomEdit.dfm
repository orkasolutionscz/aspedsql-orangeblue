object frmCustomEdit: TfrmCustomEdit
  Left = 91
  Top = 113
  BorderIcons = [biSystemMenu, biMaximize]
  ClientHeight = 304
  ClientWidth = 521
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
  CloseAfterDelete = True
  MSGDeleteWarning = 
    'Jste si opravdu jisti '#382'e chcete odstranit tento z'#225'znam?'#10#13'Pokud p' +
    'otvrd'#237'te [Prov'#233'st], bude z'#225'znam nen'#225'vratn'#283' smaz'#225'n'
  OnDBDataToControls = gbCustomEditDBDataToControls
  OnDBClearFields = gbCustomEditDBClearFields
  OnFormDataStateChange = frmControlerFormDataStateChange
  EditOptions = [feoEdit, feoInsert, feoCopy, feoDelete]
  PixelsPerInch = 96
  TextHeight = 13
  object ActionList1: TActionList
    Images = dmdGlobal.imglDefault
    Left = 30
    Top = 30
    object actRecPrior: TAction
      Category = 'Dataset'
      Caption = '<'
      Hint = 'P'#345'edch'#225'zej'#237'c'#237' z'#225'znam'
      ImageIndex = 1
      OnExecute = actRecordMove
    end
    object actRecNext: TAction
      Category = 'Dataset'
      Caption = '>'
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
    object actRecNew: TAction
      Category = 'Dataset'
      Caption = 'Nov'#253
      Hint = 'Nov'#253' z'#225'znam'
      ImageIndex = 6
      ShortCut = 16462
      OnExecute = actRecNewExecute
    end
    object actRecCopy: TAction
      Category = 'Dataset'
      Caption = 'Kopie'
      Hint = 'Kopie aktu'#225'ln'#237'ho z'#225'znamu'
      ImageIndex = 7
      ShortCut = 16459
      OnExecute = actRecCopyExecute
    end
    object actRecEdit: TAction
      Category = 'Dataset'
      Caption = 'Opravit'
      Hint = 'Oprava aktu'#225'ln'#237'ho z'#225'znamu'
      ImageIndex = 8
      ShortCut = 16453
      OnExecute = actRecEditExecute
    end
    object actRecPost: TAction
      Category = 'Dataset'
      Caption = 'Zapsat'
      Hint = 'Zapsat proveden'#233' zm'#283'ny'
      ImageIndex = 9
      ShortCut = 16467
      OnExecute = actRecPostExecute
    end
    object actRecCancel: TAction
      Category = 'Dataset'
      Caption = 'Storno'
      Hint = 'P'#345'eru'#353'en'#237' opravy (vkl'#225'd'#225'n'#237')'
      ImageIndex = 10
      ShortCut = 27
      OnExecute = actRecCancelExecute
    end
    object actRecDelete: TAction
      Category = 'Dataset'
      Caption = 'Odstranit'
      Hint = 'Odstranit aktu'#225'ln'#237' z'#225'znam'
      ImageIndex = 11
      ShortCut = 16430
      OnExecute = actRecDeleteExecute
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
    object actRecRefresh: TAction
      Category = 'Dataset'
      Caption = 'Ob'#269'erstvit'
      Hint = 'Ob'#269'erstvit z'#225'znamy'
      ImageIndex = 4
      ShortCut = 116
      OnExecute = actRecRefreshExecute
    end
  end
end
