unit POPdmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, POPfrmuModule, IBODataset, IB_Components;

type
  TPOPdmd = class(TDataModule)
    dsPOPSeznam: TDataSource;
    POPSeznam: TIBOQuery;
    POPSeznamZNACKA: TStringField;
    POPSeznamZNRAMCOVKA: TStringField;
    POPSeznamDATUM: TDateTimeField;
    POPSeznamDAT_PLATNOST: TDateTimeField;
    POPSeznamTYP: TSmallintField;
    POPSeznamPOPIS: TStringField;
    POPSeznamREF_AOPKOD: TStringField;
    POPSeznamNAZEV: TStringField;
    POPSeznamKONTAKT: TStringField;
    POPSeznamVOZIDLO: TStringField;
    POPSeznamNSTAT: TStringField;
    POPSeznamNPSC: TStringField;
    POPSeznamNMISTO: TStringField;
    POPSeznamVSTAT: TStringField;
    POPSeznamVPSC: TStringField;
    POPSeznamVMISTO: TStringField;
    POPSeznamCENAJEDNOTKA: TStringField;
    POPSeznamCENAMENA: TStringField;
    POPSeznamCENAPOPIS: TStringField;
    POPSeznamPOZNAMKA: TMemoField;
    POPSeznamSTAV: TSmallintField;
    POPSeznamCREAID: TStringField;
    POPSeznamCREADATE: TDateTimeField;
    POPSeznamUPDID: TStringField;
    POPSeznamUPDDATE: TDateTimeField;
    POPSeznamVYBER: TStringField;
    POPSeznamCENASMLUVNI: TBCDField;
    qrPOPDopisy: TIBOQuery;
    POPRecord: TIBOQuery;
    POPRecordSID: TStringField;
    POPRecordZNACKA: TStringField;
    POPRecordREFTRASA: TStringField;
    POPRecordVYBER: TStringField;
    POPRecordDATUM: TDateField;
    POPRecordZNRAMCOVKA: TStringField;
    POPRecordDAT_PLATNOST: TDateField;
    POPRecordTYP: TSmallintField;
    POPRecordREF_AOPKOD: TStringField;
    POPRecordKONTAKT: TStringField;
    POPRecordNSTAT: TStringField;
    POPRecordNPSC: TStringField;
    POPRecordNMISTO: TStringField;
    POPRecordVSTAT: TStringField;
    POPRecordVPSC: TStringField;
    POPRecordVMISTO: TStringField;
    POPRecordVOZIDLO: TStringField;
    POPRecordCENASMLUVNI: TBCDField;
    POPRecordCENAJEDNOTKA: TStringField;
    POPRecordCENAMENA: TStringField;
    POPRecordCENAPOPIS: TStringField;
    POPRecordPOZNAMKA: TBlobField;
    POPRecordCREAID: TStringField;
    POPRecordCREADATE: TDateTimeField;
    POPRecordUPDID: TStringField;
    POPRecordUPDDATE: TDateTimeField;
    POPRecordSTAV: TSmallintField;
    POPRecordNAZEV: TStringField;
    POPRecordADRESA1: TStringField;
    POPRecordADRESA2: TStringField;
    POPRecordADRESA3: TStringField;
    POPRecordPSC: TStringField;
    POPRecordKODZEME: TStringField;
    POPRecordICO: TStringField;
    POPRecordDIC: TStringField;
    POPRecordUCET: TStringField;
    POPRecordBANKAKOD: TStringField;
    POPRecordBANKANAZEV: TStringField;
    POPRecordSPLATNOST: TSmallintField;
    POPRecordUTO: TStringField;
    POPRecordTELEFON: TStringField;
    POPRecordFAX: TStringField;
    POPRecordGSM: TStringField;
    POPRecordEMAIL: TStringField;
    POPRecordWWW: TStringField;
    POPRecordPREFMAIL: TStringField;
    POPRecordSKUPINA: TStringField;
    POPRecordK1: TStringField;
    POPRecordK2: TStringField;
    POPRecordPOPIS: TStringField;
    POPSeznamSID: TStringField;
    qrPOPDopisyID: TIntegerField;
    qrPOPDopisyREF_DOC: TStringField;
    qrPOPDopisyNAZEV: TStringField;
    qrPOPDopisyVEC: TStringField;
    qrPOPDopisyDATUM: TDateField;
    qrPOPDopisyZNACKA: TStringField;
    spInsertPopDop: TIBOQuery;
    POPSeznamSTATEUSER: TIntegerField;
    POPSeznamSTATEUSERCOLOR: TIntegerField;
    POPRecordMNakladka: TStringField;
    POPRecordMVykladka: TStringField;
    procedure dsPOPSeznamDataChange(Sender: TObject; Field: TField);
    procedure POPSeznamAfterPost(DataSet: TDataSet);
    procedure POPRecordNewRecord(DataSet: TDataSet);
    procedure POPRecordBeforePost(DataSet: TDataSet);
    procedure POPRecordAfterPost(DataSet: TDataSet);
    procedure POPRecordAfterDelete(DataSet: TDataSet);
    procedure POPRecordCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function mod_OpenRecord(AKeyIDValue: string): boolean;
    procedure UpdateStavy;
  end;

var
  POPdmd: TPOPdmd;

function GetPOPdmd: TPOPdmd; // Pomocna funkce testujici existenci modulu POPdmd

implementation

uses appdmduSystem, appGenIdUnit, uVarClass, appunConst;

{$R *.DFM}

function GetPOPdmd: TPOPdmd; // Pomocna funkce testujici existenci modulu AOPdmd
begin
  if not Assigned(POPdmd) then
    Application.CreateForm(TPOPdmd, POPdmd);
  Result := POPdmd;
end;

{ TPOPdmd }

function TPOPdmd.mod_OpenRecord(AKeyIDValue: string): boolean;
begin
  Result := true;
  POPRecord.close;
  POPRecord.ParamByName('SID').AsString := AKeyIDValue;
  try
    POPRecord.Open;
  except
    Result := false;
  end;
end;

procedure TPOPdmd.UpdateStavy;
begin
  dmdSystem.spProc.close;
  dmdSystem.spProc.sql.Clear;
  dmdSystem.spProc.sql.Add('UPDATE POPCENY SET STAV = 3 WHERE dat_platnost < current_date');
  try
    dmdSystem.spProc.ExecSQL;
  except

  end;
end;

procedure TPOPdmd.DataModuleCreate(Sender: TObject);
begin
 //
 qrPOPDopisy.DataSource := dsPOPSeznam;

end;

procedure TPOPdmd.dsPOPSeznamDataChange(Sender: TObject; Field: TField);
begin
//  qrPOPDopisy.close;
//  qrPOPDopisy.ParamByName('SID').AsString := POPSeznamSID.AsString;
//  qrPOPDopisy.Open;

end;

procedure TPOPdmd.POPSeznamAfterPost(DataSet: TDataSet);
begin
  POPSeznam.RefreshRows;
end;

procedure TPOPdmd.POPRecordNewRecord(DataSet: TDataSet);
begin
  POPRecordSID.AsString           := GenGUIDID22;
  POPRecordZNACKA.AsString        := GetPOPModul.NewNumRadaJmeno;
  POPRecordTYP.AsInteger          := 1;
  POPRecordDATUM.AsDateTime       := date;
  POPRecordCENASMLUVNI.AsCurrency := 0;
  POPRecordCENAMENA.AsVariant     := SYS_KORUNA_NAZEV;
  POPRecordCENAJEDNOTKA.AsVariant := 'LKW';
end;

procedure TPOPdmd.POPRecordBeforePost(DataSet: TDataSet);
begin
  if POPRecord.State = dsInsert then
    POPRecordCREAID.AsString := jfaUserInfo.UserZnacka
  else
    POPRecordUPDID.AsString := jfaUserInfo.UserZnacka;

  if POPRecordDAT_PLATNOST.AsDateTime >= date() then
    POPRecordSTAV.AsInteger := 1
  else
    POPRecordSTAV.AsInteger := 3;

  POPRecordZNACKA.AsString := POPfrmModule.GetNewKeyIdValue(POPRecordZNACKA.AsString);

end;

procedure TPOPdmd.POPRecordCalcFields(DataSet: TDataSet);
const
  SFormatMisto = '%s-%s %s';
begin
  POPRecordMNakladka.AsString :=
   Format(SFormatMisto,[POPRecordNSTAT.AsString,POPRecordNPSC.AsString, POPRecordNMISTO.AsString]);
  POPRecordMVykladka.AsString :=
   Format(SFormatMisto,[POPRecordVSTAT.AsString,POPRecordVPSC.AsString, POPRecordVMISTO.AsString]);


end;

procedure TPOPdmd.POPRecordAfterDelete(DataSet: TDataSet);
begin
  if POPSeznam.Active then
    POPSeznam.RefreshKeys;

end;

procedure TPOPdmd.POPRecordAfterPost(DataSet: TDataSet);
begin
  POPRecord.ParamByName('SID').AsString := POPRecordSID.AsString;
  POPRecord.Refresh;
end;

end.
