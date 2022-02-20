unit DOCfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, rsStorage, rsPropSaver, uCustomForms, uCustomModule, DOCfrauOptions,
  frxClass, frxDBSet;

type
  TDOCfrmModule = class(TjfsEvidenceModule)
    rsPropUser: TrsPropSaver;
    ActionList1: TActionList;
    actBrowse: TAction;
    actlBGModule: TActionList;
    actBGBrowse: TAction;
    frxDOC: TfrxDBDataset;
    frxDocSeznam: TfrxDBDataset;
    frrDoc: TfrxReport;
    procedure DataModuleCreate(Sender: TObject);
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure actBrowseExecute(Sender: TObject);
    procedure jfsEvidenceModuleFinalModule(Sender: TObject);
    procedure frrDocGetValue(const VarName: String; var Value: Variant);
    procedure rsPropUserAfterLoad(Sender: TObject);
    procedure rsPropUserAfterSave(Sender: TObject);
    private
      FgbDOCCopyList: string;
      procedure SetgbDOCCopyList(const Value: string);
      { Private declarations }
    protected
      { Protected declarations }
    public
      { Public declarations }
      procedure PrintModule(ADefaultReport: boolean = false; AKeyIdValue: string = ''); override;

      procedure ShowBrowse(AWhere: string);
      function ShowDetail(AZnacka: string; Mode: TFormShowMode; AOwner: string = ''; AAOPKod: string = ''): string;
      function GetNewKeyIdValue(ARada: string): string;
      { Pohledy }
      procedure ViewShowAOP(AZnacka: string);
      // procedure ViewShowOwner(AOwner: string);
      function GetDefaultReport:string;
    published
      property gbDOCCopyList: string read FgbDOCCopyList write SetgbDOCCopyList;
  end;

var
  DOCfrmModule: TDOCfrmModule;

implementation

uses
  fMessageDlg, _frmuCustomBrowse, appdmduSystem, DOCdmdu, DOCfrmuBrowse,
  AOPfrmuModule, fDOCEditUnit, ZSdmdu, appunConst, DOCConstDefUnit, uAppControler, appReportManagerForm,
  appReportModule, appIniOptionsUnit;

{$R *.DFM}

procedure TDOCfrmModule.ShowBrowse(AWhere: string);
begin
  FindShowFormWhereOrder(TDocBrowseFrm, AWhere, '');
end;

function TDOCfrmModule.ShowDetail(AZnacka: string; Mode: TFormShowMode; AOwner: string = ''; AAOPKod: string = ''): string;
var
  frm     : TDocfrmEdit;
  IntFirma: TAOPFirmaClass;
begin
  frm := TDocfrmEdit.Create(nil);
  try
    DOCdmd.mod_OpenRecord(AZnacka);
    case Mode of
      fsmInsert:
        begin
          DOCdmd.DOC.insert;
          DOCdmd.DOCOWNER.AsString := AOwner;
          if AAOPKod <> EmptyStr then
          begin
            IntFirma := TAOPFirmaClass.CreateCustom(AAOPKod, false);
            try
              frm.FillAopAdresa(IntFirma);
            finally
              IntFirma.free;
            end;
          end;
        end;
    end;
    frm.ShowModal;
    Result := DOCdmd.DOCSID.AsString;
  finally
    frm.free;
  end;
end;

function TDOCfrmModule.GetDefaultReport: string;
begin
  if (DefaultReport = '') or (not FileExists(DefaultReport)) then
    DefaultReport := RMselectSestava(dmReport.GenEvidenceFolder(ModuleName), frrDoc);
  Result := DefaultReport;
end;

function TDOCfrmModule.GetNewKeyIdValue(ARada: string): string;
begin
  Result := ARada;
  if ExistCisRady.IndexOf(ARada) >= 0 then
    Result := dmdSystem.GetNewNum(ModuleName, ARada, true);
end;

procedure TDOCfrmModule.DataModuleCreate(Sender: TObject);
begin
  gbDOCCopyList := 'TYP;AOPKOD;NAZEV;ADRESA1;ADRESA2;ADRESA3;PSC;ZEME;ICO;DIC;URCENO;VASDOPIS;DTEXT';
end;

procedure TDOCfrmModule.ViewShowAOP(AZnacka: string);
begin
  DOCdmd.DOCViewAOP.Close;
  DOCdmd.DOCViewAOP.ParamByName('AOPKOD').AsString := AZnacka;
  DOCdmd.DOCViewAOP.open;
end;

procedure TDOCfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin
  { Pokud je modul povolen, zaregistrujeme Frame nastaveni }
  if GetdmdSystem.gbAktivace.GetModulDopisy then
  begin
    { Inicialiyace nastaveni }
    rsPropUser.LoadValues;
    { Registrace a Nastaveni èíslené øady }
    if not dmdSystem.CheckRegisteredNumLine(ModuleName, NewNumRadaJmeno) then
      dmdSystem.RegisterNewNumLine(ModuleName, NewNumRadaJmeno, '14', 'KO', 4);
    dmdSystem.GetAviableNumLines(ModuleName, ExistCisRady);
  end;
  { Povoleni modulu v aplikaci }
  actBGBrowse.Visible := dmdSystem.gbAktivace.GetModulDopisy;
  actBrowse.Visible   := actBGBrowse.Visible;
end;

procedure TDOCfrmModule.actBrowseExecute(Sender: TObject);
begin
  ShowBrowse('');
end;

procedure TDOCfrmModule.jfsEvidenceModuleFinalModule(Sender: TObject);
begin
  rsPropUser.SaveValues;
end;

procedure TDOCfrmModule.SetgbDOCCopyList(const Value: string);
begin
  FgbDOCCopyList := Value;
end;

procedure TDOCfrmModule.PrintModule(ADefaultReport: boolean; AKeyIdValue: string);
begin
  DOCdmd.mod_OpenRecord(AKeyIdValue);
  DOCfrmModule.frrDoc.Recipient.Clear;
  DOCfrmModule.frrDoc.Recipient.SendAdress := DOCdmd.DOCDOCEMAILY.AsString;
  DOCfrmModule.frrDoc.Recipient.Subject    := DOCdmd.DOCVEC.AsString + ' Naše znaèka: ' + DOCdmd.DOCZNACKA.AsString;

  if ADefaultReport then
  begin
    dmReport.ShowReport(GetDefaultReport, frrDoc);
  end
  else
    dmReport.ShowManager(dmReport.GenEvidenceFolder(ModuleName), frrDoc);
end;

procedure TDOCfrmModule.rsPropUserAfterLoad(Sender: TObject);
begin
  gbDOCCopyList := rsPropUser.Storage.ReadString('gbDOCCopyList', gbDOCCopyList);
end;

procedure TDOCfrmModule.rsPropUserAfterSave(Sender: TObject);
begin
  rsPropUser.Storage.WriteString('gbDOCCopyList', gbDOCCopyList);
end;

procedure TDOCfrmModule.frrDocGetValue(const VarName: String; var Value: Variant);
begin
  if CompareText(VarName, vnOtherRecId) = 0 then
  begin
    Value := DOCdmd.DOCSID.AsString;
  end;

end;

end.
