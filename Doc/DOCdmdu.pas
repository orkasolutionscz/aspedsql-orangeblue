{ -----------------------------------------------------------------------------
  Unit Name: DOCdmdu
  Author:    Administrator
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit DOCdmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, fMessageDlg, IBODataset, IB_Components, uSqlParser;

type
  TDOCdmd = class(TDataModule)
    dsDoc: TDataSource;
    DOC: TIBOQuery;
    DOCZNACKA: TStringField;
    DOCVYBER: TStringField;
    DOCTYP: TSmallintField;
    DOCAOPKOD: TStringField;
    DOCNAZEV: TStringField;
    DOCADRESA1: TStringField;
    DOCADRESA2: TStringField;
    DOCADRESA3: TStringField;
    DOCPSC: TStringField;
    DOCZEME: TStringField;
    DOCICO: TStringField;
    DOCDIC: TStringField;
    DOCDATUM: TDateField;
    DOCURCENO: TStringField;
    DOCVASDOPIS: TStringField;
    DOCVEC: TStringField;
    DOCVYRIZUJE: TStringField;
    DOCDTEXT: TMemoField;
    DOCCREAID: TStringField;
    DOCCREADATE: TDateTimeField;
    DOCUPDID: TStringField;
    DOCUPDDATE: TDateTimeField;
    DOCSTAV: TIntegerField;
    DOCOWNER: TStringField;
    DOCEX_FILENAME: TStringField;
    DOCEX_DOPIS: TStringField;
    DOCSeznam: TIBOQuery;
    DOCSeznamZNACKA: TStringField;
    DOCSeznamDATUM: TDateTimeField;
    DOCSeznamVEC: TStringField;
    DOCSeznamNAZEV: TStringField;
    DOCSeznamZEME: TStringField;
    DOCSeznamCREAID: TStringField;
    DOCSeznamCREADATE: TDateTimeField;
    DOCSeznamUPDID: TStringField;
    DOCSeznamUPDDATE: TDateTimeField;
    DOCViewAOP: TIBOQuery;
    DOCViewAOPZNACKA: TStringField;
    DOCViewAOPAOPKOD: TStringField;
    DOCViewAOPOWNER: TStringField;
    DOCViewAOPNAZEV: TStringField;
    DOCViewAOPDATUM: TDateTimeField;
    DOCViewAOPVEC: TStringField;
    DOCSeznamVYBER: TStringField;
    DOCSID: TStringField;
    DOCSeznamSID: TStringField;
    DOCViewAOPSID: TStringField;
    DOCSeznamADRESA3: TStringField;
    DOCSeznamSTATEUSER: TIntegerField;
    DOCDOCEMAILY: TStringField;
    DOCSeznamSTATEUSERCOLOR: TIntegerField;
    DOCSablony: TIBOQuery;
    DOCSablonyID: TIntegerField;
    DOCSablonyEvidence: TStringField;
    DOCSablonyPopis: TStringField;
    DOCSablonyVEC: TStringField;
    DOCSablonySablona: TMemoField;
    procedure DOCNewRecord(DataSet: TDataSet);
    procedure DOCSeznamAfterPost(DataSet: TDataSet);
    procedure DOCBeforePost(DataSet: TDataSet);
    procedure DOCAOPKODChange(Sender: TField);
    procedure DOCAfterPost(DataSet: TDataSet);
    procedure DOCSablonyNewRecord(DataSet: TDataSet);
    private
      { Private declarations }
    public
      { Public declarations }
      function mod_OpenRecord(AKeyIDValue: string): boolean;
      function CopyRecord(AOldId: string): string;
  end;

var
  DOCdmd: TDOCdmd;

function GetDOCdmd: TDOCdmd;

implementation

uses
  uVarClass, appdmduSystem, DOCfrmuModule, DOCConstDefUnit, appGenIdUnit, AOPfrmuModule;

{$R *.DFM}

function GetDOCdmd: TDOCdmd;
begin
  if not Assigned(DOCdmd) then
    Application.CreateForm(TDOCdmd, DOCdmd);
  Result := DOCdmd;
end;

function TDOCdmd.mod_OpenRecord(AKeyIDValue: string): boolean;
begin
  Result := true;
  DOC.close;
  DOC.ParamByName(SDOCKEYPARAMNAME).AsString := AKeyIDValue;
  try
    DOC.Open;
  except
    Result := false;
  end;
end;

procedure TDOCdmd.DOCNewRecord(DataSet: TDataSet);
begin
  DOCSID.AsString        := GenGUIDID22;
  DOCCREAID.AsString     := jfaUserInfo.UserZnacka;
  DOCCREADATE.AsDateTime := Now;
  DOCZNACKA.AsString     := DOCfrmModule.NewNumRadaJmeno;
  DOCDATUM.AsDateTime    := Date;
  DOCVYRIZUJE.AsString   := jfaUserInfo.UserName;
  DOCTYP.AsInteger       := 0;
end;

procedure TDOCdmd.DOCSablonyNewRecord(DataSet: TDataSet);
begin
  DOCSablonyEvidence.AsString := DOCSablony.Params[0].AsString;
end;

procedure TDOCdmd.DOCSeznamAfterPost(DataSet: TDataSet);
begin
  DOCSeznam.Refresh;
end;

function TDOCdmd.CopyRecord(AOldId: string): string;
begin
  Result := GenGUIDID22;

  dmdSystem.spProc.SQL.Text                    := DOC.SQL.Text;
  dmdSystem.spProc.ParamByName('SID').AsString := AOldId;
  dmdSystem.spProc.Open;

  mod_OpenRecord(Result);
  DOC.Insert;
  DOC.FieldValues[DOCfrmModule.gbDOCCopyList] := dmdSystem.spProc.FieldValues[DOCfrmModule.gbDOCCopyList];
  DOCSID.AsString                             := Result;
  DOC.Post;
  DOC.Refresh; // Musi se nacist data ze serveru
end;

procedure TDOCdmd.DOCBeforePost(DataSet: TDataSet);
begin
  DOCZNACKA.AsString := DOCfrmModule.GetNewKeyIdValue(DOCZNACKA.AsString);
  if DOC.state = dsInsert then
    DOCCREAID.AsString := jfaUserInfo.UserZnacka
  else if DOC.state = dsEdit then
    DOCUPDID.AsString := jfaUserInfo.UserZnacka;

end;

procedure TDOCdmd.DOCAOPKODChange(Sender: TField);
var
  aFirmaObj: TAOPFirmaClass;
begin
  //
  if DOC.state in [dsEdit, dsInsert] then
  begin
    aFirmaObj := TAOPFirmaClass.CreateCustom(DOCdmd.DOCAOPKOD.AsString, false);
    try
      if aFirmaObj.Execute(false) then
      begin
        DOCNAZEV.AsString     := aFirmaObj.Nazev;
        DOCADRESA1.AsString   := aFirmaObj.Adresa1;
        DOCADRESA2.AsString   := aFirmaObj.Adresa2;
        DOCPSC.AsString       := aFirmaObj.Psc;
        DOCADRESA3.AsString   := aFirmaObj.Adresa3;
        DOCZEME.AsString      := aFirmaObj.Zeme;
        DOCDOCEMAILY.AsString := aFirmaObj.SendingAdress;
      end;

    finally
      aFirmaObj.Free;
    end;
  end;
end;

procedure TDOCdmd.DOCAfterPost(DataSet: TDataSet);
begin
  DOC.ParamByName('SID').AsString := DOCSID.AsString;
  DOC.Refresh;
end;

end.
