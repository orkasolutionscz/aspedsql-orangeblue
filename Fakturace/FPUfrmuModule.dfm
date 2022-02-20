object FPUfrmModule: TFPUfrmModule
  OldCreateOrder = False
  OnInitModule = gbEvidenceModuleInitModule
  OnFinalModule = jfsEvidenceModuleFinalModule
  ModuleCaption = 'P'#345#237'kazy k '#250'hrad'#283
  ModuleName = 'FPUhrady'
  NewNumRadaJmeno = 'Rada1'
  NewNumRadaVybrat = False
  Height = 327
  Width = 547
  object rsPropModule: TrsPropSaver
    Active = False
    FormPlacementOptions = []
    Storage = dmdSystem.rsSTUser
    Options = [poStoreDefValues]
    RootSection = 'Modul.PrikazyKUhrade'
    Properties.Strings = (
      'NewNumRadaJmeno'
      'NewNumRadaVybrat')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnAfterLoad = rsPropModuleAfterLoad
    OnAfterSave = rsPropModuleAfterSave
    Left = 114
    Top = 40
  end
  object ActionList1: TActionList
    Left = 184
    Top = 40
    object actFPUBrowse: TAction
      Caption = 'P'#345#237'kazy k '#250'hrad'#283
      OnExecute = actFPUBrowseExecute
    end
  end
  object actlBGModule: TActionList
    Left = 186
    Top = 114
    object actBGBrowse: TAction
      Caption = 'P'#345'.'#250'hr.'
      Hint = 'P'#345#237'kazy k '#250'hrad'#283
      ImageIndex = 9
      OnExecute = actFPUBrowseExecute
    end
  end
end
