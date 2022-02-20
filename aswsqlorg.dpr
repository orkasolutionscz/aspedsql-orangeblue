program aswsqlorg;

uses
  ExceptionLog,
  ECore,
  ETypes,
  Forms,
  Dialogs,
  uCustomForms,
  uAppControler,
  appfrmuMain in 'Global\appfrmuMain.pas' {frmMainForm},
  FVfrmuBrowse in 'Fakturace\FVfrmuBrowse.pas' {FVfrmBrowse},
  FVdmdu in 'Fakturace\FVdmdu.pas' {FVdmd: TDataModule},
  FVfrmuModule in 'Fakturace\FVfrmuModule.pas' {FVfrmModule: TDataModule},
  ZSfrmuBrowse in 'Spedice\ZSfrmuBrowse.pas' {ZSBrowseFrm},
  ZSdmdu in 'Spedice\ZSdmdu.pas' {ZSdmd: TDataModule},
  ZSfrmuKTLTypPlatby in 'Spedice\ZSfrmuKTLTypPlatby.pas' {ZSfrmKTLTypPlatby},
  FVfrmuKTLUhrady in 'Fakturace\FVfrmuKTLUhrady.pas' {FVfrmKTLUhrady},
  ZSfrmuKTLUdalosti in 'Spedice\ZSfrmuKTLUdalosti.pas' {ZSfrmKTLUdalosti},
  ZSfrmuKTLTypy in 'Spedice\ZSfrmuKTLTypy.pas' {ZSfrmKTLTypy},
  ZSfrmuKTLPodminky in 'spedice\ZSfrmuKTLPodminky.pas' {ZSfrmKTLPodminky},
  FVfrmuZaokrouleniDlg in 'Fakturace\FVfrmuZaokrouleniDlg.pas' {FVfrmZaokrouleniDlg},
  ZSfrmuVyberNakVyk in 'Spedice\ZSfrmuVyberNakVyk.pas' {ZSfrmVyberNakVyk},
  appdmduSystem in 'Global\appdmduSystem.pas' {dmdSystem: TDataModule},
  appfrmuKTLDPH in 'Global\appfrmuKTLDPH.pas' {frmKTLDPH},
  appfrmuKTLJednotky in 'Global\appfrmuKTLJednotky.pas' {frmKTLJednotky},
  appfrmuKTLMeny in 'Global\appfrmuKTLMeny.pas' {frmKTLMeny},
  AOPfrmuPickUser in 'Aop\AOPfrmuPickUser.pas' {frmAOPSelectUser},
  AOPfrmuEdit in 'Aop\AOPfrmuEdit.pas' {AOPfrmEdit},
  fAOPSkupinyUnit in 'Aop\fAOPSkupinyUnit.pas' {AOPfrmKTLSkupiny},
  fAOPStatyUnit in 'Aop\fAOPStatyUnit.pas' {AOPfrmKTLZeme},
  AOPfrmuModule in 'Aop\AOPfrmuModule.pas' {AOPfrmModule: TDataModule},
  AOPdmdu in 'Aop\AOPdmdu.pas' {AOPdmd: TDataModule},
  AOPfrauOptions in 'Aop\AOPfrauOptions.pas' {AOPfraOptions: TFrame},
  DOCfrmuModule in 'Doc\DOCfrmuModule.pas' {DOCfrmModule: TDataModule},
  FDfrauOptions in 'Fakturace\FDfrauOptions.pas' {FDfraOptions: TFrame},
  DOCfrmuBrowse in 'Doc\DOCfrmuBrowse.pas' {DocBrowseFrm},
  fDOCEditUnit in 'Doc\fDOCEditUnit.pas' {DOCfrmEdit},
  DOCdmdu in 'Doc\DOCdmdu.pas' {DOCdmd: TDataModule},
  ZSfrauOptions in 'Spedice\ZSfrauOptions.pas' {ZSfraOptions: TFrame},
  FVfrauOptions in 'Fakturace\FVfrauOptions.pas' {FVfraOptions: TFrame},
  appunConst in 'global\appunConst.pas',
  ZSfrmuKTLAuta in 'Spedice\ZSfrmuKTLAuta.pas' {ZSfrmKTLAuta},
  _frmuSplash in '_DefaultFrmAndModules\_frmuSplash.pas' {frmSplash},
  _frmuCustomDialog in '_DefaultFrmAndModules\_frmuCustomDialog.pas' {frmCustomDialog},
  _frmuCustomEdit in '_DefaultFrmAndModules\_frmuCustomEdit.pas' {frmCustomEdit},
  _frmuCustomPick in '_DefaultFrmAndModules\_frmuCustomPick.pas' {frmCustomPick},
  fUserChangePwd in 'Global\fUserChangePwd.pas' {frmZmenaHeslaDlg},
  fUsers in 'Global\fUsers.pas' {frmUsers},
  fAOPscUnit in 'Aop\fAOPscUnit.pas' {frmAopPsc},
  FDdmdu in 'Fakturace\FDdmdu.pas' {FDdmd: TDataModule},
  FPUfrmuModule in 'Fakturace\FPUfrmuModule.pas' {FPUfrmModule: TDataModule},
  FPUfrmuBrowse in 'fakturace\FPUfrmuBrowse.pas' {FPUfrmBrowse},
  ZSfrmuVyberDlg in 'Spedice\ZSfrmuVyberDlg.pas' {ZSfrmVyberDlg},
  FDfrauPrehled in 'Fakturace\FDfrauPrehled.pas' {FDfraPrehled: TFrame},
  FVfrauPrehled in 'Fakturace\FVfrauPrehled.pas' {FVfraPrehled: TFrame},
  AOPfrauJMPrehled in 'Aop\AOPfrauJMPrehled.pas' {AOPfraJMPrehled: TFrame},
  ZSfrauUdalosti in 'Spedice\ZSfrauUdalosti.pas' {ZSfraUdalosti: TFrame},
  ZSfrmuKTLPohyby in 'Spedice\ZSfrmuKTLPohyby.pas' {ZSfrmKTLPohyby},
  appfrmuGlobal in 'Global\appfrmuGlobal.pas' {dmdGlobal: TDataModule},
  POPfrmuModule in 'Poptavky\POPfrmuModule.pas' {POPfrmModule: TjfsEvidenceModule},
  POPdmdu in 'Poptavky\POPdmdu.pas' {POPdmd: TDataModule},
  POPfrmuBrowse in 'Poptavky\POPfrmuBrowse.pas' {POPfrmBrowse},
  POPfrmuEdit in 'Poptavky\POPfrmuEdit.pas' {POPfrmEdit},
  DOCfrauOptions in 'Doc\DOCfrauOptions.pas' {DOCfraOptions: TCustomOptionsFrame},
  POPfrmuKTLTypy in 'Poptavky\POPfrmuKTLTypy.pas' {POPfrmKTLTypy},
  appfrauPathOptions in 'Global\appfrauPathOptions.pas' {appfraPathOptions: TCustomOptionsFrame},
  appfrauKomunikaceOptions in 'Global\appfrauKomunikaceOptions.pas' {appfraKomunikaceOptions: TCustomOptionsFrame},
  POPfrauOptions in 'Poptavky\POPfrauOptions.pas' {POPfraOptions: TCustomOptionsFrame},
  fAppOptions in 'Global\fAppOptions.pas' {GlobalOptionsFrm},
  appfrmuWaiWindow in 'Global\appfrmuWaiWindow.pas' {appfrmWaiWindow},
  FDfrmuModule in 'Fakturace\FDfrmuModule.pas' {FDfrmModule: TjfsEvidenceModule},
  FPUdmdu in 'Fakturace\FPUdmdu.pas' {FPUdmd: TDataModule},
  FDfrmuEdit in 'Fakturace\FDfrmuEdit.pas' {frmFDEditPol},
  _frmuCustomLookup in '_defaultfrmandmodules\_frmuCustomLookup.pas' {frmCustomLookup},
  FPUExpClassUnit in 'fakturace\FPUExpClassUnit.pas',
  FPULookFakturuForm in 'fakturace\FPULookFakturuForm.pas' {FPULookFakturuFrm},
  FPUfrauOptions in 'fakturace\FPUfrauOptions.pas' {FPUfraOptions: TCustomOptionsFrame},
  ZSfrmuVyberPlatceDlg in 'spedice\ZSfrmuVyberPlatceDlg.pas' {ZSfrmVyberPlatceDlg},
  FVfrmuKTLTexty in 'fakturace\FVfrmuKTLTexty.pas' {FVfrmKTLTexty},
  FVfrmuKTLTypy in 'fakturace\FVfrmuKTLTypy.pas' {FVfrmKTLTypy},
  appIniOptionsUnit in 'global\appIniOptionsUnit.pas',
  appDPHunit in 'global\appDPHunit.pas',
  appGenIdUnit in 'global\appGenIdUnit.pas',
  ZSPlatciDetailForm in 'Spedice\ZSPlatciDetailForm.pas' {frmPlatciDetail},
  devexptls in 'Global\devexptls.pas',
  fModulBrowse in '_DefaultFrmAndModules\fModulBrowse.pas' {frmModulBrowse},
  FDConstDefunit in 'Fakturace\FDConstDefunit.pas',
  ZSConstDefUnit in 'Spedice\ZSConstDefUnit.pas',
  ZSfrmuModule in 'Spedice\ZSfrmuModule.pas' {ZSfrmModule: TjfsEvidenceModule},
  AOPConstDefUnit in 'Aop\AOPConstDefUnit.pas',
  DOCConstDefUnit in 'Doc\DOCConstDefUnit.pas',
  POPConstDefUnit in 'Poptavky\POPConstDefUnit.pas',
  FPUConstDefUnit in 'Fakturace\FPUConstDefUnit.pas',
  FVConstDefUnit in 'Fakturace\FVConstDefUnit.pas',
  _frmuCustomBrowse in '_DefaultFrmAndModules\_frmuCustomBrowse.pas' {frmCustomBrowse},
  AOPfrmuBrowse in 'Aop\AOPfrmuBrowse.pas' {AOPBrowseFrm},
  fKatalogyModul in 'katalogy\fKatalogyModul.pas' {AppCompsDM: TDataModule},
  fZSDokumenty in 'Spedice\fZSDokumenty.pas' {fraZSDokumenty: TFrame},
  fStatusLook in 'katalogy\fStatusLook.pas' {frmAppStausLook},
  fGetConnect in 'Global\fGetConnect.pas' {frmGetConnection},
  STdmdu in 'Statistiky\STdmdu.pas' {STdmd: TDataModule},
  STfrmuModule in 'Statistiky\STfrmuModule.pas' {STfrmModule: TjfsEvidenceModule},
  STfrmuCenyView in 'Statistiky\STfrmuCenyView.pas' {STfrmCenyView},
  ZSfrauOstNaklad in 'Spedice\ZSfrauOstNaklad.pas' {ZSfraOstNakl: TFrame},
  fKTLFaktPlatbTexty in 'Global\fKTLFaktPlatbTexty.pas' {frmKTLPlatbyTypy},
  ZSGenFVUnit in 'Spedice\ZSGenFVUnit.pas',
  FDfrmuBrowse in 'Fakturace\FDfrmuBrowse.pas' {FDfrmBrowse},
  fCustEditLay in '_DefaultFrmAndModules\fCustEditLay.pas' {frmCustEditLay},
  fGetGridStyle in 'Global\fGetGridStyle.pas' {frmGetGridStyle},
  fZSNakVyk in 'Spedice\fZSNakVyk.pas' {frmZSNakVyk},
  appReportModule in 'Reports\appReportModule.pas' {dmReport: TDataModule},
  appReportManagerForm in 'Reports\appReportManagerForm.pas' {appReportManagerFrm},
  appReportUtils in 'Reports\appReportUtils.pas',
  FVfrmuEdit in 'Fakturace\FVfrmuEdit.pas' {frmFVEdit},
  frCustomDocsFrame in 'Global\frCustomDocsFrame.pas' {fraCustomDocs: TFrame},
  uSysDocUtils in 'Global\uSysDocUtils.pas',
  fZSDopravci in 'Spedice\fZSDopravci.pas' {frmZSDopravce},
  fGetCopyFields in 'Global\fGetCopyFields.pas' {frmGetFields},
  fZSProvizeDelene in 'Spedice\fZSProvizeDelene.pas' {fraZSProvize: TFrame},
  fUctyKtl in 'katalogy\fUctyKtl.pas' {frmUcty},
  fPUDetail in 'Fakturace\fPUDetail.pas' {frmPUDetail},
  fSTVystupy in 'Statistiky\fSTVystupy.pas' {frmSTVystupy},
  fCustKtlUnit in '_DefaultFrmAndModules\fCustKtlUnit.pas' {frmCusKtl: TjfsCustomEvidForm},
  fFindOrWhereDlg in 'Global\fFindOrWhereDlg.pas' {frmFindOrWhere},
  fDOCCustomSablony in 'Doc\fDOCCustomSablony.pas' {frmDOCCustomSablony: TjfsCustomEvidForm},
  fZSEditLayout in 'Spedice\fZSEditLayout.pas' {frmZSDetailLay: TjfsCustomEvidForm},
  fCustEdit in '_DefaultFrmAndModules\fCustEdit.pas' {frmCustEdit: TjfsCustomEvidForm},
  fZSEdit in 'Spedice\fZSEdit.pas' {frmZSDetail: TjfsCustomEvidForm},
  Vcl.Themes,
  Vcl.Styles,
  fGridExportDlg in '_DefaultFrmAndModules\fGridExportDlg.pas' {frmGridExport},
  fAOPPrevedNaKontaktUnit in 'Aop\fAOPPrevedNaKontaktUnit.pas' {frmAopPrevodNaKontakt},
  fAOPPrevodAdresyUnit in 'Aop\fAOPPrevodAdresyUnit.pas' {frmAopPrevodAdresy},
  fPOPSablony in 'Poptavky\fPOPSablony.pas' {frmPOPSablony: TjfsCustomEvidForm},
  fZSSablony in 'Spedice\fZSSablony.pas' {frmZSSablony: TjfsCustomEvidForm},
  fGlobalGrdOptions in 'Global\fGlobalGrdOptions.pas' {fraGlobalGrdOptions: TjfsCustomSettingFrame},
  fGlobalOptions in 'Global\fGlobalOptions.pas' {fraGlobalOptions: TjfsCustomSettingFrame},
  fGridOptions in 'Global\fGridOptions.pas' {fraGridOptions: TjfsCustomSettingFrame},
  fLogoOptions in 'Global\fLogoOptions.pas' {fraLogoOptions: TjfsCustomSettingFrame},
  fFirmaOptions in 'Global\fFirmaOptions.pas' {fraFirmaOptions: TjfsCustomSettingFrame},
  fZsConfirmCopy in 'Spedice\fZsConfirmCopy.pas' {frmCOnfirmCopy},
  uFVExportSkodaXml in 'Fakturace\uFVExportSkodaXml.pas',
  fMemoTextDlg in '_components\fMemoTextDlg.pas' {frmMemoTextDlg},
  fSQLModulControler in '_components\fSQLModulControler.pas' {fraSQLModul: TFrame},
  uSendFaxMail in 'Reports\uSendFaxMail.pas',
  fFDVyberZasilkuDlg in 'Fakturace\fFDVyberZasilkuDlg.pas' {frmFDSelectZasilka};

{$R *.RES}
{$R czechlang.RES}

{$DEFINE NOTWINTERMINAL}
{ Nastaveni kompilace pro Wondows Terminal }
{ V pripade ze se jedna o kompilaci pro klasicke windows nechat zapnuto }
procedure RegisterOptionsFrames;
begin
{$IFNDEF DUNIT_TESTING}
  jfsAppManager.RegisterOptFrame(TfraFirmaOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TfraLogoOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TappfraPathOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TfraGlobalGrdOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TappfraKomunikaceOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TfraGlobalOptions.Create(Application));
  //jfsAppManager.RegisterOptFrame(TfraGridOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TZSfraOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TAOPfraOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TDOCfraOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TFDfraOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TFPUfraOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TFVfraOptions.Create(Application));
  jfsAppManager.RegisterOptFrame(TPOPfraOptions.Create(Application));
{$ENDIF}
end;

begin
  mxRegistryAppRootKey := 'SOFTWARE\JFAPPS\ORKASQL';
  Application.Initialize;
  Application.Title := 'A-SPED SQL X1';
  Application.HelpFile := 'asped50.chm';
  // frmSplashScreen := TfrmSplashScreen.Create(nil) ;
  // frmSplashScreen.Show;
  // frmSplashScreen.Update;

  GetdmdSystem;
  GetdmReport;
  // Application.CreateForm(TdmdSystem, dmdSystem);
  GetAOPdmd;
  // Application.CreateForm(TAOPdmd, AOPdmd);
  GetFVdmd;
  // Application.CreateForm(TFVdmd, FVdmd);
  GetZsdmd;
  // Application.CreateForm(TZSdmd, ZSdmd);
  GetDOCdmd;
  // Application.CreateForm(TDOCdmd, DOCdmd);
  GetFDdmd;
  // Application.CreateForm(TFDdmd, FDdmd);
  GetdmdGlobal;
  // Application.CreateForm(TdmdGlobal, dmdGlobal);
  GetPOPdmd;
  // Application.CreateForm(TPOPdmd, POPdmd);
  GetFPUdmd;
  // Application.CreateForm(TFPUdmd, FPUdmd);
  GetSTdmd;
  // Application.CreateForm(TSTdmd, STdmd);
  GetAOPmodul;
  // Application.CreateForm(TAOPfrmModule, AOPfrmModule);
  GetZSModul;
  // Application.CreateForm(TZSfrmModule, ZSfrmModule);
  Application.CreateForm(TDOCfrmModule, DOCfrmModule);
  Application.CreateForm(TFVfrmModule, FVfrmModule);
  Application.CreateForm(TFDfrmModule, FDfrmModule);
  Application.CreateForm(TFPUfrmModule, FPUfrmModule);
  GetPOPmodul;
  // Application.CreateForm(TPOPfrmModule, POPfrmModule);
  Application.CreateForm(TSTfrmModule, STfrmModule);
  RegisterOptionsFrames; // Registrace

  dmdSystem.IBOMainDB.Connected := True;
  if dmdSystem.Login then
    Application.CreateForm(TfrmMainForm, frmMainForm)
  else
    Application.Terminate;

  // frmSplashScreen.Hide;
  // frmSplashScreen.Free;
  Application.run;

end.




