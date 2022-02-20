unit STdmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBODataset;

type
  TSTdmd = class(TDataModule)
    dsProvize: TDataSource;
    dsProvizeFaktura: TDataSource;
    dtsCenyPrehled: TIBOQuery;
    dtsCenyPrehledZASILKA: TStringField;
    dtsCenyPrehledDATUM: TDateTimeField;
    dtsCenyPrehledTyp: TStringField;
    dtsCenyPrehledDopravce: TStringField;
    dtsCenyPrehledPrikazce: TStringField;
    dtsCenyPrehledCO: TStringField;
    dtsCenyPrehledPCena: TFloatField;
    dtsCenyPrehledPJednotky: TFloatField;
    dtsCenyPrehledPJednotka: TStringField;
    dtsCenyPrehledPMena: TStringField;
    dtsCenyPrehledPCelkem: TFloatField;
    dtsCenyPrehledPCelkemKc: TFloatField;
    dtsCenyPrehledDCena: TFloatField;
    dtsCenyPrehledDJednotky: TFloatField;
    dtsCenyPrehledDJednotka: TStringField;
    dtsCenyPrehledDMena: TStringField;
    dtsCenyPrehledDCelkem: TFloatField;
    dtsCenyPrehledDCelkemKc: TFloatField;
    dtsCenyPrehledDISPECER: TStringField;
    dtsCenyPrehledAUTOSPZ: TStringField;
    dtsCenyPrehledCREAID: TStringField;
    dtsCenyPrehledNakladka: TStringField;
    dtsCenyPrehledVykladka: TStringField;
    dtsCenyPrehledVDATUM: TDateField;
    dtsPrikaciPrehled: TIBOQuery;
    dtsCenyPrehledSID: TStringField;
    dtsCenyPrehledIDPLATCI: TIntegerField;
    dtsPrikaciPrehledaopkod_obj: TStringField;
    dtsPrikaciPrehledPrikazce: TStringField;
    dtsPrikaciPrehledPocet: TIntegerField;
    dtsPrikaciPrehledcnPlatci: TFloatField;
    dtsPrikaciPrehledcnDopravce: TFloatField;
    dtsPrikaciPrehledprovize: TFloatField;
    dtsPrikaciPrehledprovizeavg: TFloatField;
    dtsDopravciPrehled: TIBOQuery;
    dtsDopravciPrehledAOPKOD_DOP: TStringField;
    dtsDopravciPrehledDopravce: TStringField;
    dtsDopravciPrehledPocet: TIntegerField;
    dtsDopravciPrehledcnPlatci: TFloatField;
    dtsDopravciPrehledcnDopravce: TFloatField;
    dtsDopravciPrehledprovize: TFloatField;
    dtsDopravciPrehledprovizeavg: TFloatField;
    dtsProvize: TIBOQuery;
    dtsProvizeFaktura: TIBOQuery;
    dtsProvizeDispecer: TIBOQuery;
    dtsProvizeDispecerDISPECER: TStringField;
    dtsProvizeDispecerPROVIZE: TFloatField;
    dtsProvizeMESIC: TStringField;
    dtsProvizePROVIZE: TBCDField;
    dtsProvizeFakturaMESIC: TStringField;
    dtsProvizeFakturaPROVIZE: TBCDField;
    dtsPriDis: TIBOQuery;
    dtsPriDisaopkod_obj: TStringField;
    dtsPriDisPrikazce: TStringField;
    dtsPriDisDispecer: TStringField;
    dtsPriDisPocet: TIntegerField;
    dtsPriDiscnPlatci: TFloatField;
    dtsPriDiscnDopravce: TFloatField;
    dtsPriDisprovize: TFloatField;
    dtsPriDisprovizeavg: TFloatField;
    dtsDispAop: TIBOQuery;
    dtsDispAopDISPECER: TStringField;
    dtsDispAopAOPKOD_OBJ: TStringField;
    dtsDispAopCENAPROVIZE: TBCDField;
    dtsDispAopAOP_NAZEV: TStringField;
    dtsDispAopAOP_DSTART: TDateField;
    dtsDispAopAOP_CNSTART: TBCDField;
    dtsDispAopAOP_CNCONT: TBCDField;
    dtsDispAopPROCCALCUSED: TBCDField;
    dtsDispAopCALCPROVIZE: TBCDField;
    dtsDispAopIDPOZICE: TStringField;
    dtsDispAopPOZICE: TStringField;
    dtsDispAll: TIBOQuery;
    dtsDispAllDISPECER: TStringField;
    dtsDispAllSUMPROVIZE: TBCDField;
    dtsDispAllZASILKA: TStringField;
    dtsDispAllSID: TStringField;
    dtsDispAllPRIKAZCE: TStringField;
    dtsDispAllMESIC: TStringField;
    dtsDispAllSUMVLASTNIFIRMA: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CloseAll;
  end;

var
  STdmd: TSTdmd;

function GetSTdmd: TSTdmd;

implementation

uses
  appDMDuSystem, appIniOptionsUnit, uSqlParser;

{$R *.DFM}

function GetSTdmd: TSTdmd;
begin
  if STdmd = nil then
    Application.CreateForm(TSTdmd, STdmd);
  Result := STdmd;
end;

procedure TSTdmd.CloseAll;
begin
  dtsCenyPrehled.Close;
  dtsPrikaciPrehled.Close;
  dtsPriDis.Close;
  dtsProvize.Close;
  dtsProvizeFaktura.Close;
  dtsProvizeDispecer.Close;
  dtsDopravciPrehled.Close;
  dtsDispAop.Close;
  dtsDispAll.Close;
end;

procedure TSTdmd.DataModuleCreate(Sender: TObject);
begin
  if IniOptions.StatiskyTypDatum = 1 then
  begin
    dtsPrikaciPrehled.SQL.Clear;
    dtsPrikaciPrehled.SQL.Add('SELECT aopkod_obj, Prikazce, COUNT(SID) Pocet, SUM(CENAPLATCI) cnPlatci, SUM(CENADOPRAVCE) cnDopravce, SUM(CENAPROVIZE)  provize, AVG(CENAPROVIZE) provizeavg ');
    dtsPrikaciPrehled.SQL.Add('FROM ZSSeznam ');
    dtsPrikaciPrehled.SQL.Add('WHERE (STAV < 2) AND (DATUM >= :DSTART and  DATUM <= :DSTOP)');
    dtsPrikaciPrehled.SQL.Add('GROUP BY aopkod_obj, Prikazce order by Prikazce ');

    dtsPriDis.SQL.Clear;
    dtsPriDis.SQL.Add('SELECT aopkod_obj, Prikazce, Dispecer, COUNT(SID) Pocet, SUM(CENAPLATCI) cnPlatci, SUM(CENADOPRAVCE) cnDopravce, SUM(CENAPROVIZE)  provize, AVG(CENAPROVIZE) provizeavg');
    dtsPriDis.SQL.Add('FROM ZSSeznam ');
    dtsPriDis.SQL.Add('WHERE (STAV < 2) AND (DATUM >= :DSTART and  DATUM <= :DSTOP)');
    dtsPriDis.SQL.Add('GROUP BY aopkod_obj, Prikazce, Dispecer order by Prikazce ');

    dtsProvize.SQL.Clear;
    dtsProvize.SQL.Add('SELECT extract(year from datum)||' +QuotedStr('/')+ '||lpad(extract(month from datum),2,' + QuotedStr('0') + ') MESIC , SUM(CENAPROVIZE) PROVIZE');
    dtsProvize.SQL.Add('FROM ZS ');
    dtsProvize.SQL.Add('WHERE (STAV < 2) AND (DATUM >= :DSTART and  DATUM <= :DSTOP)');
    dtsProvize.SQL.Add('GROUP BY 1');

    dtsProvizeFaktura.SQL.Clear;
    dtsProvizeFaktura.SQL.Add('SELECT lpad(extract(month from datum),2,' + QuotedStr('0') + ')||' +QuotedStr('/')+ '||extract(year from datum) MESIC , SUM(CENAPROVIZE) PROVIZE');
    dtsProvizeFaktura.SQL.Add('FROM ZS ');
    dtsProvizeFaktura.SQL.Add('WHERE (STAV < 2) AND (JEFAKTURA = :JEFAKTURA)  AND (DATUM >= :DSTART and  DATUM <= :DSTOP)');
    dtsProvizeFaktura.SQL.Add('GROUP BY 1');

    dtsProvizeDispecer.SQL.Clear;
    dtsProvizeDispecer.SQL.Add('SELECT DISPECER, SUM(CENAPROVIZE) AS PROVIZE');
    dtsProvizeDispecer.SQL.Add('FROM ZS ');
    dtsProvizeDispecer.SQL.Add('WHERE (STAV < 2) AND (DATUM >= :DSTART and  DATUM <= :DSTOP)');
    dtsProvizeDispecer.SQL.Add('GROUP BY DISPECER');

    dtsDopravciPrehled.SQL.Clear;
    dtsDopravciPrehled.SQL.Add('SELECT aopkod_dop, Dopravce, COUNT(ZASILKA) Pocet, SUM(CENAPLATCI) cnPlatci,SUM(CENADOPRAVCE) cnDopravce, SUM(CENAPROVIZE) provize, AVG(CENAPROVIZE) provizeavg');
    dtsDopravciPrehled.SQL.Add('FROM ZSSeznam ');
    dtsDopravciPrehled.SQL.Add('WHERE (STAV < 2) AND (DATUM >= :DSTART and  DATUM <= :DSTOP)');
    dtsDopravciPrehled.SQL.Add('GROUP BY aopkod_dop, dopravce order by dopravce');
  end;


end;

end.
