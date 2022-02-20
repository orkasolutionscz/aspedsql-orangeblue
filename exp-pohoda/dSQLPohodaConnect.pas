unit dSQLPohodaConnect;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, rsStorage,
  rsPropSaver;

type
  TdmdSqlPohoda = class(TDataModule)
    conPohodaSQL: TADOConnection;
    dtsADLocate: TADODataSet;
    dtsADLocateID: TAutoIncField;
    dtsADLocateFirma: TStringField;
    dtsADLocateICO: TStringField;
    dtsADLocateDIC: TStringField;
    dtsGetKursDatId: TADODataSet;
    dtsGetKursDatIdID: TAutoIncField;
    dtsGetKursMena: TADODataSet;
    dtsGetKursMenaNBs: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetAopId(AopDIC: string): Integer;
    function GetKursPohoda(aMena: string; aDatum: TDateTime): Currency;
    function DBConnect: Boolean;
    procedure Setup;
  end;

var
  dmdSqlPohoda: TdmdSqlPohoda;

implementation

{$R *.dfm}

uses dConnectUnit, Dialogs;

procedure TdmdSqlPohoda.DataModuleCreate(Sender: TObject);
begin
  conPohodaSQL.Connected := false;
end;

function TdmdSqlPohoda.DBConnect: Boolean;
var
  conStr: string;
begin
  conStr := 'Provider=sqloledb;Data Source=' + MsSQLServerName + ';' + 'Initial Catalog=' + MsSQLDBName + ';' + 'User Id=' + MsSQLUserName + ';' + 'Password=' + MsSQLPasswd;

  Result := false;
  conPohodaSQL.Close;
  conPohodaSQL.ConnectionString := conStr;
  conPohodaSQL.LoginPrompt      := false;

  if (NOT conPohodaSQL.Connected) then
    try
      conPohodaSQL.Open;
      Result := True;
    except
      on E: Exception do
      begin
        MessageDlg('There was an error connecting to the database. Error:' + #13#10 + E.Message, mtError, [mbOk], 0);
      end;
    end;
end;

function TdmdSqlPohoda.GetAopId(AopDIC: string): Integer;
begin
  Result := -1;

  try
    if not dtsADLocate.Active then
      dtsADLocate.Open;

    if dtsADLocate.Locate('Dic', AopDIC, []) then
      Result := dtsADLocateID.AsInteger
    else
      Result := 0;

  except
    //
  end;

end;

function TdmdSqlPohoda.GetKursPohoda(aMena: string; aDatum: TDateTime): Currency;
begin
  // select sCKurspol.NBs
  // from   sCKurs
  // right outer join  sCKurspol on (sCKurs.id = sCKurspol.RefAg)
  /// where  (sCKurspol.Kod = 'EUR') and (sCKurs.Datum >='1.1.2014')
  ///
  /// V databazi jsou 2 tabulky pro nacitani kurzu.
  /// ridici sCKurs kde je datum od kdz ten kury plati
  /// podriyena sCKurspol kde je aktualni kurz pro pouzivane meny
  ///
  /// Musime nejprve zjistit, ktery radek ridici tabulky budeme pouyivat
  ///
  /// select first 1 sCKurs.id from sCKurs where sCKurs.datum <= :datum order by sCKurs.datum desc
  /// select first 1 skl_inv.id,skl_inv.dat_zahajeni  from skl_inv where skl_inv.dat_zahajeni <= :datum order by skl_inv.dat_zahajeni desc
  Result := 1;

  if (aMena = '') or (aDatum <=0) then exit;

  dtsGetKursDatId.Close;
  dtsGetKursDatId.Parameters[0].Value := aDatum;
  dtsGetKursDatId.Open;
  if dtsGetKursDatId.RecordCount = 1 then
  begin
     dtsGetKursMena.Close;
     dtsGetKursMena.Parameters[0].Value := dtsGetKursDatIdID.AsInteger;
     dtsGetKursMena.Parameters[1].Value := aMena;
     dtsGetKursMena.Open;
     Result := dtsGetKursMenaNBs.AsCurrency;
  end;
end;

procedure TdmdSqlPohoda.Setup;
begin
end;

end.
