{ ***************************************************************
  *
  * Unit Name: AOPdmdu
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit AOPdmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Db, fMessageDlg, ActnList, cxEdit,
  cxDBEditRepository, cxEditRepositoryItems, IBODataset, IB_Components,
  uCustomModule, uAOPConstDefUnit, IB_Process, IB_Script, Vcl.ExtCtrls;

type
  TAOPdmd = class(TjfsDefaultModule)
    dsAop: TDataSource;
    dtsAOP: TIBOQuery;
    dtsAOPAOPKOD: TStringField;
    dtsAOPVYBER: TStringField;
    dtsAOPNAZEV: TStringField;
    dtsAOPADRESA1: TStringField;
    dtsAOPADRESA2: TStringField;
    dtsAOPADRESA3: TStringField;
    dtsAOPPSC: TStringField;
    dtsAOPKODZEME: TStringField;
    dtsAOPICO: TStringField;
    dtsAOPDIC: TStringField;
    dtsAOPUCET: TStringField;
    dtsAOPBANKAKOD: TStringField;
    dtsAOPBANKANAZEV: TStringField;
    dtsAOPSPLATNOST: TIntegerField;
    dtsAOPUTO: TStringField;
    dtsAOPTELEFON: TStringField;
    dtsAOPFAX: TStringField;
    dtsAOPGSM: TStringField;
    dtsAOPEMAIL: TStringField;
    dtsAOPWWW: TStringField;
    dtsAOPPREFMAIL: TStringField;
    dtsAOPSMSSLUZBA: TStringField;
    dtsAOPSKUPINA: TStringField;
    dtsAOPK1: TStringField;
    dtsAOPK2: TStringField;
    dtsAOPKODSTBS: TStringField;
    dtsAOPDIR: TStringField;
    dtsAOPJSOUKONTAKTY: TStringField;
    dtsAOPCREAID: TStringField;
    dtsAOPCREADATE: TDateTimeField;
    dtsAOPUPDID: TStringField;
    dtsAOPUPDDATE: TDateTimeField;
    dtsAOPSTAV: TIntegerField;
    dtsAOPPOPISZEME: TStringField;
    dtsAOPKODTEL: TStringField;
    dtsAOPJmena: TIBOQuery;
    AOPSeznam: TIBOQuery;
    AOPSeznamAOPKOD: TStringField;
    AOPSeznamNAZEV: TStringField;
    AOPSeznamADRESA1: TStringField;
    AOPSeznamADRESA2: TStringField;
    AOPSeznamPSC: TStringField;
    AOPSeznamADRESA3: TStringField;
    AOPSeznamKODZEME: TStringField;
    AOPSeznamICO: TStringField;
    AOPSeznamDIC: TStringField;
    AOPSeznamSPLATNOST: TIntegerField;
    AOPSeznamTELEFON: TStringField;
    AOPSeznamFAX: TStringField;
    AOPSeznamGSM: TStringField;
    AOPSeznamEMAIL: TStringField;
    AOPSeznamSKUPINA: TStringField;
    AOPSeznamK1: TStringField;
    AOPSeznamK2: TStringField;
    AOPSeznamUPDDATE: TDateTimeField;
    AOPSeznamUPDID: TStringField;
    AOPSeznamSTAV: TIntegerField;
    AOPSeznamPOPIS: TStringField;
    AOPSeznamVYBER: TStringField;
    dsAdresy: TDataSource;
    dtsAOPJmenaID: TIntegerField;
    dtsAOPJmenaAOPKOD: TStringField;
    dtsAOPJmenaPRIJMENI: TStringField;
    dtsAOPJmenaJMENO: TStringField;
    dtsAOPJmenaEMAIL: TStringField;
    dtsAOPJmenaFAX: TStringField;
    dtsAOPJmenaTELEFON1: TStringField;
    dtsAOPJmenaTELEFON2: TStringField;
    dtsAOPJmenaFUNKCE: TStringField;
    dtsAOPJmenaMOBIL: TStringField;
    ViewAOPJmena: TIBOQuery;
    ViewAOPJmenaID: TIntegerField;
    ViewAOPJmenaPrijmeni: TStringField;
    ViewAOPJmenaJmeno: TStringField;
    ViewAOPJmenaEmail: TStringField;
    ViewAOPJmenaFunkce: TStringField;
    ViewAOPJmenaTelefon1: TStringField;
    ViewAOPJmenaTelefon2: TStringField;
    ViewAOPJmenaMobil: TStringField;
    ViewAOPJmenaFax: TStringField;
    AOPSeznamSTATEUSER: TIntegerField;
    AOPSeznamKOD_RAAL: TStringField;
    AOPSeznamKOD_TIMO: TStringField;
    dtsAOPKOD_RAAL: TStringField;
    dtsAOPKOD_TIMO: TStringField;
    dtsAopInfo: TIBOQuery;
    dtsAopInfoAOPKOD: TStringField;
    dtsAopInfoVYBER: TStringField;
    dtsAopInfoNAZEV: TStringField;
    dtsAopInfoADRESA1: TStringField;
    dtsAopInfoADRESA2: TStringField;
    dtsAopInfoADRESA3: TStringField;
    dtsAopInfoPSC: TStringField;
    dtsAopInfoKODZEME: TStringField;
    dtsAopInfoICO: TStringField;
    dtsAopInfoDIC: TStringField;
    dtsAopInfoUCET: TStringField;
    dtsAopInfoBANKAKOD: TStringField;
    dtsAopInfoBANKANAZEV: TStringField;
    dtsAopInfoSPLATNOST: TSmallintField;
    dtsAopInfoUTO: TStringField;
    dtsAopInfoTELEFON: TStringField;
    dtsAopInfoFAX: TStringField;
    dtsAopInfoGSM: TStringField;
    dtsAopInfoEMAIL: TStringField;
    dtsAopInfoWWW: TStringField;
    dtsAopInfoPREFMAIL: TStringField;
    dtsAopInfoSMSSLUZBA: TStringField;
    dtsAopInfoSKUPINA: TStringField;
    dtsAopInfoK1: TStringField;
    dtsAopInfoK2: TStringField;
    dtsAopInfoKODSTBS: TStringField;
    dtsAopInfoKOD_RAAL: TStringField;
    dtsAopInfoKOD_TIMO: TStringField;
    dtsAopInfoDIR: TStringField;
    dtsAopInfoJSOUKONTAKTY: TStringField;
    dtsAopInfoCREAID: TStringField;
    dtsAopInfoCREADATE: TDateTimeField;
    dtsAopInfoUPDID: TStringField;
    dtsAopInfoUPDDATE: TDateTimeField;
    dtsAopInfoSTAV: TSmallintField;
    dtsAopInfoPOPISZEME: TStringField;
    dtsAopInfoKODTEL: TStringField;
    dtsAOPSID: TStringField;
    dtsAOPVLASTNIK: TStringField;
    dtsAopInfoVLASTNIK: TStringField;
    dtsAOPJmenaISVYCHOZI: TStringField;
    dtsAOPJmenaCOMMTYP: TSmallintField;
    ViewAOPJmenaCOMMTYP: TSmallintField;
    ViewAOPJmenaISVYCHOZI: TStringField;
    AOPSeznamSTATEUSERCOLOR: TIntegerField;
    dtsKontrolaIc: TIBOQuery;
    dtsAOPPR_DSTART: TDateField;
    dtsAOPPR_CNSTART: TBCDField;
    dtsAOPPR_CNCONT: TBCDField;
    KTLZeme: TIBOQuery;
    KTLZemeKOD: TStringField;
    KTLZemePOPIS: TStringField;
    KTLZemeKODTEL: TStringField;
    KTLSkupiny: TIBOQuery;
    KTLSkupinyPOPIS: TStringField;
    KTLPsc: TIBOQuery;
    KTLPscKODZEME: TStringField;
    KTLPscPSC: TStringField;
    KTLPscMESTO: TStringField;
    dtsAopSU: TIBOQuery;
    dtsAopSUID: TIntegerField;
    dtsAopSUEVIDENCE: TIntegerField;
    dtsAopSUKOD: TStringField;
    dtsAopSUPOPIS: TStringField;
    dtsAopSUCOLOR: TIntegerField;
    dtsAOPLook: TIBOQuery;
    dtsAOPLookPSC: TStringField;
    dtsAOPLookAOPKOD: TStringField;
    dtsAOPLookICO: TStringField;
    dtsAOPLookNAZEV: TStringField;
    dtsAOPLookADRESA1: TStringField;
    dtsAOPLookADRESA3: TStringField;
    dtsAOPLookEMAIL: TStringField;
    dtsAOPLookFAX: TStringField;
    dtsAOPLookGSM: TStringField;
    dtsAOPLookKODZEME: TStringField;
    dtsAOPLookSKUPINA: TStringField;
    dtsAOPLookK1: TStringField;
    dtsAOPLookKOD_TIMO: TStringField;
    dtsAOPLookKOD_RAAL: TStringField;
    dtsAOPLookSTATEUSER: TIntegerField;
    dtsAOPLookDIC: TStringField;
    dtsAOPLookJSOUKONTAKTY: TStringField;
    dtsAOPLookCOLOR: TIntegerField;
    dtsAOPFirmy: TIBOQuery;
    dtsAOPFirmyAOPKOD: TStringField;
    dtsAOPFirmyNAZEV: TStringField;
    dtsAOPFirmyFIRMA_INFO: TStringField;
    dtsKontakty: TIBOQuery;
    dtsKontaktyID: TIntegerField;
    dtsKontaktyAOPKOD: TStringField;
    dtsKontaktyPrijmeni: TStringField;
    dtsKontaktyJmeno: TStringField;
    dtsKontaktyEmail: TStringField;
    dtsKontaktyFAX: TStringField;
    dtsKontaktyMOBIL: TStringField;
    dtsKontaktyTELEFON1: TStringField;
    ibsFillStaty: TIB_Script;
    tmr1: TTimer;
    dtsGetAopColor: TIBOQuery;
    dtsGetAopColorCOLOR: TIntegerField;
    procedure dtsAOPJmenaNewRecord(DataSet: TDataSet);
    procedure dtsAOPJmenaAfterPost(DataSet: TDataSet);
    procedure AOPSeznamAfterPost(DataSet: TDataSet);
    procedure dtsAOPNewRecord(DataSet: TDataSet);
    procedure dtsAOPBeforePost(DataSet: TDataSet);
    procedure dtsAOPPSCChange(Sender: TField);
    procedure dtsAOPAfterPost(DataSet: TDataSet);
    procedure dtsAOPJmenaBeforeEdit(DataSet: TDataSet);
    procedure dtsAOPJmenaBeforeInsert(DataSet: TDataSet);
    procedure dtsAOPAfterDelete(DataSet: TDataSet);
    procedure dsAopDataChange(Sender: TObject; Field: TField);
    procedure jfsDefaultModuleInitModule(Sender: TObject);
    procedure KTLPscNewRecord(DataSet: TDataSet);
    procedure dtsKontaktyNewRecord(DataSet: TDataSet);
    procedure KTLZemeAfterOpen(DataSet: TDataSet);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function mod_OpenRecord(AKeyIDValue: string): boolean;
    // function JMOpenRecord(AkeyIDValue: string): boolean;
    function CopyRecord(AOldId: string; aAutoPost: boolean = true): string;
    function AOPKodNotExist(AAOPKOD: string): boolean;
    function AOPDIcExist(AAOPKOD: string; aDIc: string): boolean;
    function GetDefEmail(AAOPKOD: string): string;
    function GetAopColor(AAOPKOD: string): integer;
  end;

var
  AOPdmd: TAOPdmd;

function GetAOPdmd: TAOPdmd; // Pomocna funkce testujici existenci modulu AOPdmd

implementation

uses
  AOPfrmuModule, appdmduSystem, Devexptls, menus, cxLookupEdit, cxDBLookupComboBox, cxDBLookupEdit,
  uVarClass, appfrmuGlobal, fKatalogyModul;

{$R *.DFM}

function GetAOPdmd: TAOPdmd;
begin
  if not Assigned(AOPdmd) then
    Application.CreateForm(TAOPdmd, AOPdmd);
  Result := AOPdmd;
end;

function TAOPdmd.AOPKodNotExist(AAOPKOD: string): boolean;
begin
  dmdSystem.spProc.Close;
  dmdSystem.spProc.SQL.Clear;
  dmdSystem.spProc.SQL.Add('select AOPKOD from AOP where aopkod = :AOPKOD');
  dmdSystem.spProc.ParamByName('AOPKOD').AsString := AAOPKOD;
  dmdSystem.spProc.open;
  Result := dmdSystem.spProc.IsEmpty;
  dmdSystem.spProc.Close;
end;

function TAOPdmd.mod_OpenRecord(AKeyIDValue: string): boolean;
begin
  Result := true;
  // dtsAOPJmena.Open;

  dtsAOP.Close;
  dtsAOP.ParamByName('AOPKOD').AsString := AKeyIDValue;
  try
    dtsAOP.open;
  except
    Result := false;
  end;
end;

procedure TAOPdmd.tmr1Timer(Sender: TObject);
begin
  if dtsAOPFirmy.Active then
    dtsAOPFirmy.Refresh;

end;

procedure TAOPdmd.dtsAOPJmenaNewRecord(DataSet: TDataSet);
begin
  dtsAOPJmenaAOPKOD.AsString    := dtsAOPAOPKOD.AsString;
  dtsAOPJmenaISVYCHOZI.AsString := 'F';
  dtsAOPJmenaCOMMTYP.AsInteger  := 0;
end;

procedure TAOPdmd.dtsAOPJmenaAfterPost(DataSet: TDataSet);
begin
  dtsAOP.Refresh;
end;

procedure TAOPdmd.AOPSeznamAfterPost(DataSet: TDataSet);
begin
  AOPSeznam.Refresh;
end;

procedure TAOPdmd.dtsAOPNewRecord(DataSet: TDataSet);
begin
  dtsAOPAOPKOD.AsString    := aopfrmmodule.NewNumRadaJmeno;
  dtsAOPKODZEME.AsVariant  := AOP_DEFAULT_ZEME;
  dtsAOPPREFMAIL.AsString  := 'EMAIL';
  dtsAOPSPLATNOST.AsString := IntToStr(dmdSystem.gbSplatnost);
  dtsAOPCREAID.AsString    := jfaUserInfo.UserZnacka;
end;

procedure TAOPdmd.dtsAOPBeforePost(DataSet: TDataSet);
var
  IcNotExist: boolean;
begin
  // Kontrola existence kontaktu se stejnym IC.
  if AOPDIcExist(dtsAOPAOPKOD.AsString, dtsAOPDIC.AsString) then
  begin
    if dtsAOP.State = dsInsert then
    begin
      if not DisplayConfirm('Upozornìní: Kontakt se stejným DIÈ již v evidenci EXISTUJE!', 'Chcete pøesto kontakt uložit?') then
        SysUtils.Abort;
    end
    else if dtsAOP.State = dsEdit then
    begin
      DisplayInfo('Upozornìní: Kontakt se stejným DIÈ již v evidenci EXISTUJE!');
    end;
  end;

  // Kontrola zda existuje kontakt se stejnym AOPKOD jako je IC nove firmy
  // Pokud ano nebo pokud neni nastaveno dmdGlobal.gvAOPUseIcoAsID na true, dosadime generovany kod
  IcNotExist := AOPKodNotExist(dtsAOPICO.AsString);
  if dmdGlobal.gvAOPUseIcoAsID and (dtsAOPICO.AsString <> EmptyStr) and IcNotExist then
    dtsAOPAOPKOD.AsString := dtsAOPICO.AsString
  else
    dtsAOPAOPKOD.AsString := aopfrmmodule.GetNewKeyIdValue(dtsAOPAOPKOD.AsString);

  if dtsAOP.State = dsEdit then
    dtsAOPUPDID.AsString := jfaUserInfo.UserZnacka;

end;

procedure TAOPdmd.dtsAOPPSCChange(Sender: TField);
var
  tmpMesto: string;
begin
  // Hledani lze pouzit pouze pro ceske zeme
  if dtsAOPKODZEME.AsVariant = AOP_DEFAULT_ZEME then
  begin
    if dtsAOPPSC.AsString = EmptyStr then
      exit;

    tmpMesto := aopfrmmodule.HledejMesto(dtsAOPPSC.AsString);

    if tmpMesto <> EmptyStr then
      dtsAOPADRESA3.AsString := tmpMesto;
  end;

end;

procedure TAOPdmd.dtsKontaktyNewRecord(DataSet: TDataSet);
begin
  dtsKontaktyAOPKOD.AsString := dtsAOPLookAOPKOD.AsString;
end;

procedure TAOPdmd.dtsAOPAfterPost(DataSet: TDataSet);
begin
  dtsAOP.ParamByName('AOPKOD').AsString := dtsAOPAOPKOD.AsString;
  // Musime obcerstit vzhledavaci seynam adres
  if dtsAOPLook.Active then
  begin
    dtsAOPLook.Close;
    dtsAOPLook.open;
  end;
  if dtsAOPFirmy.Active then
  begin
    dtsAOPFirmy.Close;
    dtsAOPFirmy.open;
  end;
end;

procedure TAOPdmd.dtsAOPJmenaBeforeEdit(DataSet: TDataSet);
begin
  if dtsAOP.State in [dsEdit, dsInsert] then
    dtsAOP.Post;
end;

procedure TAOPdmd.dtsAOPJmenaBeforeInsert(DataSet: TDataSet);
begin
  if dtsAOP.State in [dsEdit, dsInsert] then
    dtsAOP.Post;
end;

function TAOPdmd.GetAopColor(AAOPKOD: string): integer;
begin
  dtsGetAopColor.Close;
  dtsGetAopColor.Params[0].AsString := AAOPKOD;
  dtsGetAopColor.open;
  Result := dtsGetAopColorCOLOR.AsInteger;
  if Result = 0 then
    Result := -1;

end;


procedure TAOPdmd.dtsAOPAfterDelete(DataSet: TDataSet);
begin
  // Musime obcerstit vzhledavaci seynam adres
  if dtsAOPLook.Active then
    dtsAOPLook.Refresh;
  if dtsAOPFirmy.Active then
    dtsAOPFirmy.Refresh;

end;

function TAOPdmd.GetDefEmail(AAOPKOD: string): string;
begin
  dtsAopInfo.Close;
  dtsAopInfo.ParamByName('AOPKOD').AsString := AAOPKOD;
  dtsAopInfo.open;

  if not dtsAopInfo.IsEmpty then
    Result := dtsAopInfoEMAIL.AsString
  else
    Result := '';
end;

procedure TAOPdmd.jfsDefaultModuleInitModule(Sender: TObject);
begin
  if KTLZeme.Active then
    KTLZeme.Refresh
  else
    KTLZeme.open;

  if KTLSkupiny.Active then
    KTLSkupiny.Refresh
  else
    KTLSkupiny.open;

  if KTLPsc.Active then
    KTLPsc.Refresh
  else
    KTLPsc.open;

  if dtsAopSU.Active then
    dtsAopSU.Refresh
  else
    dtsAopSU.open;

  if dtsAOPLook.Active then
    dtsAOPLook.Refresh
  else
    dtsAOPLook.open;

  if dtsAOPFirmy.Active then
    dtsAOPFirmy.Refresh
  else
    dtsAOPFirmy.open;
end;

procedure TAOPdmd.KTLPscNewRecord(DataSet: TDataSet);
begin
  KTLPscKODZEME.AsString := AOP_DEFAULT_ZEME;
end;

procedure TAOPdmd.KTLZemeAfterOpen(DataSet: TDataSet);
begin
  if KTLZeme.IsEmpty then
  begin
    ibsFillStaty.Execute;
    KTLZeme.Close;
    KTLZeme.open;
  end;
end;

function TAOPdmd.AOPDIcExist(AAOPKOD, aDIc: string): boolean;
begin
  Result := false;
  if aDIc = EmptyStr then
    exit; // Nebudeme kontrolovat prazdne DIC

  dtsKontrolaIc.Close;
  dtsKontrolaIc.ParamByName('AOPKOD').AsString := AAOPKOD;
  dtsKontrolaIc.ParamByName('DIC').AsString    := aDIc;
  dtsKontrolaIc.open;
  Result := not dtsKontrolaIc.IsEmpty;
  dtsKontrolaIc.Close;
end;

procedure TAOPdmd.dsAopDataChange(Sender: TObject; Field: TField);
begin
  // if Field = nil then
  // begin
  // dtsAOPJmena.Close;
  // dtsAOPJmena.ParamByName('AOPKOD').AsString := dtsAOPAOPKOD.AsString;
  // try
  // dtsAOPJmena.open;
  // except
  // end;
  // end;
end;

function TAOPdmd.CopyRecord(AOldId: string; aAutoPost: boolean): string;
begin
  Result := dtsAOPAOPKOD.AsString;

  dmdSystem.spProc.SQL.Text                       := dtsAOP.SQL.Text;
  dmdSystem.spProc.ParamByName('AOPKOD').AsString := AOldId;
  dmdSystem.spProc.open;

  mod_OpenRecord(Result);

  dtsAOP.Insert;
  dtsAOP.FieldValues[aopfrmmodule.gbAOPCopyList] := dmdSystem.spProc.FieldValues[aopfrmmodule.gbAOPCopyList];
  Result                                         := dtsAOPAOPKOD.AsString;
  if aAutoPost then // Priynak ze chcem zaznam ulozit a obcerstvit
  begin
    dtsAOP.Post;
    dtsAOP.Refresh; // Musi se nacist data ze serveru
  end;

end;

end.
