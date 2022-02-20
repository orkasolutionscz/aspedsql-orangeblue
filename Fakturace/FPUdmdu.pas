unit FPUdmdu;

interface

uses
  FPUfrmuModule, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IB_Components, IBODataset, uSqlParser;

type
  TFPUdmd = class(TDataModule)
    dsFPURecord: TDataSource;
    FPURecord: TIBOQuery;
    FPURecordID: TIntegerField;
    FPURecordREF_UCET: TStringField;
    FPURecordDAT_ZAPISU: TDateField;
    FPURecordDAT_PLATBY: TDateField;
    FPURecordPRIK_TEXT: TStringField;
    FPURecordPRIKAZ_UDAJ: TStringField;
    FPURecordSYMB_KONST: TStringField;
    FPURecordCELKEM: TBCDField;
    FPURecordPOZNAMKA: TBlobField;
    FPURecordUCET: TStringField;
    FPURecordKODBANKY: TStringField;
    FPUPolozky: TIBOQuery;
    FPUPolozkyID: TIntegerField;
    FPUPolozkyCISLO_DOKL: TStringField;
    FPUPolozkyREF_FUHR: TIntegerField;
    FPUPolozkyPRIJEMCE: TStringField;
    FPUPolozkyREF_DOKLAD: TStringField;
    FPUPolozkyVARIABILNI: TStringField;
    FPUPolozkyUCET_CISLO: TStringField;
    FPUPolozkyUCET_BANKA: TStringField;
    FPUPolozkyUCET_KONST: TStringField;
    FPUPolozkyUCET_SPECIF: TStringField;
    FPUPolozkyCASTKA: TFloatField;
    FPUSeznam: TIBOQuery;
    FPUSeznamID: TIntegerField;
    FPUSeznamREF_UCET: TStringField;
    FPUSeznamUCET: TStringField;
    FPUSeznamBANKA: TStringField;
    FPUSeznamDAT_ZAPISU: TDateTimeField;
    FPUSeznamDAT_PLATBY: TDateTimeField;
    FPUSeznamPRIK_TEXT: TStringField;
    FPUSeznamPRIKAZ_UDAJ: TStringField;
    FPUSeznamSYMB_KONST: TStringField;
    FPUSeznamCELKEM: TFloatField;
    FPUSeznamPOZNAMKA: TMemoField;
    qrVyberDoklady: TIBOQuery;
    qrVyberDokladyDATSPLATNOST: TDateTimeField;
    qrVyberDokladyNAZEV: TStringField;
    qrVyberDokladyCENALIKV: TFloatField;
    qrVyberDokladyUCET_CISLO: TStringField;
    qrVyberDokladyUCET_BANKA: TStringField;
    qrVyberDokladyUCET_SPECIF: TStringField;
    qrVyberDokladySID: TStringField;
    qrVyberDokladyFAKTURADO: TStringField;
    qrVyberDokladyVARIABILNI: TStringField;
    FPUPolozkyVRACENO: TStringField;
    qrSumFPUPolozky: TIBOQuery;
    qrSumFPUPolozkyCELKEM: TBCDField;
    FPUVybFakContr: TjfsSQLContr;
    FPURecordMENA: TStringField;
    procedure FPUPolozkyAfterPost(DataSet: TDataSet);
    procedure FPUPolozkyAfterDelete(DataSet: TDataSet);
    procedure FPUPolozkyAfterScroll(DataSet: TDataSet);
    procedure FPUPolozkyBeforeDelete(DataSet: TDataSet);
    procedure dsFPURecordDataChange(Sender: TObject; Field: TField);
    procedure FPUPolozkyNewRecord(DataSet: TDataSet);
    procedure FPUSeznamAfterPost(DataSet: TDataSet);
    procedure FPURecordAfterPost(DataSet: TDataSet);
    procedure PostMasterDataset(DataSet: TDataSet);
    procedure FPURecordNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    lcDelFaktura: string;
  public
    { Public declarations }
    procedure mod_OpenRecord(AKeyIDValue: string);
    function PridejPolozku: boolean;
    procedure RecalcUhradaHlavicka(AIDUhrady: integer);
  end;

var
  FPUdmd: TFPUdmd;

function GetFPUdmd: TFPUdmd; // Pomocna funkce testujici existenci modulu AOPdmd

implementation

{$R *.DFM}

uses
  appdmduSystem, FPUConstDefUnit, FPULookFakturuForm;

var
  intLook: TFPULookFakturuFrm;

function GetFPUdmd: TFPUdmd; // Pomocna funkce testujici existenci modulu AOPdmd
begin
  if not Assigned(FPUdmd) then
    Application.CreateForm(TFPUdmd, FPUdmd);
  Result := FPUdmd;
end;

procedure TFPUdmd.mod_OpenRecord(AKeyIDValue: string);
begin
  // if AKeyIDValue <> EmptyStr then
  begin
    FPURecord.close;
    FPURecord.ParamByName('ID').AsString := AKeyIDValue;
    FPUPolozky.close;
    FPUPolozky.ParamByName('REF_FUHR').AsString := AKeyIDValue;
    try
      FPURecord.Open;
      FPUPolozky.Open;
    except
    end;
  end;
end;

procedure TFPUdmd.FPUPolozkyAfterPost(DataSet: TDataSet);
var
  lcHlavicka: integer;
begin
  lcHlavicka := FPUPolozkyREF_FUHR.AsInteger;
  // Prepocet castky v hlavicce
  RecalcUhradaHlavicka(lcHlavicka);
end;

procedure TFPUdmd.FPUPolozkyAfterDelete(DataSet: TDataSet);
var
  lcHlavicka: integer;
begin
  lcHlavicka := FPUPolozkyREF_FUHR.AsInteger;
  RecalcUhradaHlavicka(lcHlavicka);
end;

procedure TFPUdmd.FPUPolozkyAfterScroll(DataSet: TDataSet);
begin
  lcDelFaktura := '';
end;

procedure TFPUdmd.FPUPolozkyBeforeDelete(DataSet: TDataSet);
begin
  lcDelFaktura := FPUPolozkyREF_DOKLAD.AsString;
end;

procedure TFPUdmd.RecalcUhradaHlavicka(AIDUhrady: integer);
begin
  qrSumFPUPolozky.Active                            := false;
  qrSumFPUPolozky.ParamByName('REF_FUHR').AsInteger := AIDUhrady;
  qrSumFPUPolozky.Active                            := true;

  FPURecord.edit;
  FPURecordCELKEM.AsCurrency := qrSumFPUPolozkyCELKEM.AsCurrency;
  FPURecord.post;

end;


procedure TFPUdmd.dsFPURecordDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then
  begin
    FPUPolozky.Active                            := false;
    FPUPolozky.ParamByName('REF_FUHR').AsInteger := FPURecordID.AsInteger;
    FPUPolozky.Active                            := true;
  end;

end;

procedure TFPUdmd.FPUPolozkyNewRecord(DataSet: TDataSet);
begin
  FPUPolozkyREF_FUHR.AsInteger := FPURecordID.AsInteger;
end;

procedure TFPUdmd.FPUSeznamAfterPost(DataSet: TDataSet);
begin
  FPUSeznam.RefreshRows;
end;

procedure TFPUdmd.FPURecordAfterPost(DataSet: TDataSet);
var
  StrExec: string;
begin
  FPURecord.ParamByName('ID').AsInteger := FPURecordID.AsInteger;
  FPURecord.Refresh;
  //
  // Aktualizace data splatnosti u jednotlivych faktur;
  //
  FPUPolozky.DisableControls;
  FPUPolozky.First;
  while not FPUPolozky.Eof do
  begin
    try
      StrExec := 'UPDATE FADOSLE SET DATUHRAZENO = ' + QuotedStr(FPURecordDAT_PLATBY.AsString) + ' WHERE SID = ' + QuotedStr(FPUPolozkyREF_DOKLAD.AsString);
      dmdSystem.IBOMainDB.ExecSQL(StrExec);
    except
    end;
    FPUPolozky.Next;
  end;
  FPUPolozky.First;
  FPUPolozky.EnableControls;
end;

procedure TFPUdmd.PostMasterDataset(DataSet: TDataSet);
begin
  if FPURecord.State in [dsEdit, dsInsert] then
    FPURecord.post;
end;

function TFPUdmd.PridejPolozku: boolean;
var
  lcCisloDokl: string;
  lcKeyValue : variant;
  // intLook : TFPULookFakturuFrm;
begin
  if not Assigned(intLook) then
    intLook := TFPULookFakturuFrm.Create(Application);

  try
    qrVyberDoklady.close;
    qrVyberDoklady.ParamByName('mena').AsString := FPURecordMENA.AsString;
    qrVyberDoklady.Open;

    intLook.dsLook.DataSet := qrVyberDoklady;

    Result := intLook.Look(lcKeyValue);
    if Result then
    begin
      // lcFaktura := qrVyberDokladyFakturaDO.AsString;
      lcCisloDokl := FPUfrmModule.GetNewKeyIdValue(FPUfrmModule.NewNumRadaJmeno);
      // Tady naplnime radek prikazu
      FPUPolozky.Insert;
      FPUPolozkyPRIJEMCE.AsString   := qrVyberDokladyNAZEV.AsString;
      FPUPolozkyREF_DOKLAD.AsString := lcKeyValue;
      FPUPolozkyVARIABILNI.AsString := qrVyberDokladyVARIABILNI.AsString;
      FPUPolozkyUCET_CISLO.AsString := qrVyberDokladyUCET_CISLO.AsString;
      FPUPolozkyUCET_BANKA.AsString := qrVyberDokladyUCET_BANKA.AsString;
      FPUPolozkyUCET_KONST.AsString := FPUfrmModule.gbDefaultKonstatni;

      if FPUfrmModule.gbABODokladDoSpecif then
        FPUPolozkyUCET_SPECIF.AsString := lcKeyValue
      else
        FPUPolozkyUCET_SPECIF.AsString := qrVyberDokladyUCET_SPECIF.AsString;
      FPUPolozkyCASTKA.AsCurrency      := qrVyberDokladyCENALIKV.AsCurrency;
      FPUPolozkyCISLO_DOKL.AsString    := lcCisloDokl;
      FPUPolozky.post;

    end;
  finally
    // intLook.free;
  end;
end;

procedure TFPUdmd.FPURecordNewRecord(DataSet: TDataSet);
begin
  FPURecordDAT_ZAPISU.AsDateTime := date;
  FPURecordDAT_PLATBY.AsDateTime := date;

end;

end.
