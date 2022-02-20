object STfrmModule: TSTfrmModule
  OldCreateOrder = False
  OnInitModule = gbEvidenceModuleInitModule
  ModuleCaption = 'Modul Statistiky'
  ModuleName = 'Statistiky'
  NewNumRadaVybrat = False
  Height = 380
  Width = 604
  object actlModule: TActionList
    Images = dmdGlobal.imglDefault
    Left = 80
    Top = 28
    object actStatistika: TAction
      Caption = 'Statistika'
      OnExecute = ShowBrowse
    end
    object actDetailCeny: TAction
      Caption = 'P'#345'epravy s detailem cen'
      OnExecute = actDetailCenyExecute
    end
  end
  object actlBGModule: TActionList
    Images = dmdGlobal.imglModul
    Left = 78
    Top = 94
    object actBGStatistika: TAction
      Caption = 'Statistiky'
      ImageIndex = 8
      OnExecute = ShowBrowse
    end
  end
end
