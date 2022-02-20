program aswpoho;

uses
  Forms,
  fMainUnit in 'exp-pohoda\fMainUnit.pas' {frmMain},
  dConnectUnit in 'exp-pohoda\dConnectUnit.pas' {dmdConnect: TDataModule},
  appIniOptionsUnit in 'exp-pohoda\appIniOptionsUnit.pas',
  fMessageDlg in 'exp-pohoda\fMessageDlg.pas' {frmPotvrzeni},
  dPohoExportImportUnit in 'exp-pohoda\dPohoExportImportUnit.pas' {dmdPohoExpImp: TDataModule},
  fOptionsUnit in 'exp-pohoda\fOptionsUnit.pas' {frmOptions},
  dSQLPohodaConnect in 'exp-pohoda\dSQLPohodaConnect.pas' {dmdSqlPohoda: TDataModule},
  fAopPohodaParUnit in 'exp-pohoda\fAopPohodaParUnit.pas' {frmAopParovani};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TdmdConnect, dmdConnect);
  Application.CreateForm(TdmdSqlPohoda, dmdSqlPohoda);
  Application.CreateForm(TdmdPohoExpImp, dmdPohoExpImp);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
