{ -----------------------------------------------------------------------------
  Unit Name: POPfrmuModule
  Author:    fait
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit POPfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, uCustomModule, uCustomForms, rsStorage, rsPropSaver, ActnList,
  frxClass;

type
  TPOPfrmModule = class(TjfsEvidenceModule)
    rsModule: TrsPropSaver;
    actlBGModule: TActionList;
    actBGBrowse: TAction;
    actlPoptavky: TActionList;
    actKTLTyp: TAction;
    actBrowse: TAction;
    frrModule: TfrxReport;
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure ModulBrowse(Sender: TObject);
    procedure actKTLTypExecute(Sender: TObject);
    procedure gbEvidenceModulePrintModule(Sender: TObject; const EvKeyIDValue: string);
    procedure rsModuleAfterLoad(Sender: TObject);
    procedure rsModuleAfterSave(Sender: TObject);
    procedure jfsEvidenceModuleFinalModule(Sender: TObject);
    procedure frrModuleGetValue(const VarName: String; var Value: Variant);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    gbPocetZnaku  : Integer;
    gbUseMesto    : Boolean;
    gbPrePlatnCena: Boolean;
    gbPreVozidlo  : Boolean;
    gbPopCopyList : String;
    constructor Create(AOwner: TComponent); override;
    procedure PrintModule(ADefaultReport: Boolean = false; AKeyIdValue: string = ''); override;
    function GetDefaultReport: string;
    procedure ShowBrowse(AWhere: string);
    function GetNewKeyIdValue(ARada: string): string;
    procedure CreateDokument(AKeyIdValue: string; AMultiRecord: Boolean);
  published
    { Published declarations }
  end;

var
  POPfrmModule: TPOPfrmModule;

function GetPOPmodul: TPOPfrmModule; // Pomocna funkce testujici existenci modulu POPdmd

implementation

uses variants, uVarClass, uAppUtils, POPdmdu, appdmduSystem, _frmuCustomBrowse, POPfrmuBrowse,
  POPfrmuEdit, POPfrmuKTLTypy, AOPfrmuModule, appunConst, POPfrauOptions,
  DOCfrmuModule, DOCdmdu, fMessageDlg, DOCConstDefUnit,
  appGenIdUnit, POPConstDefUnit, uAppControler, appReportModule, appfrmuGlobal, JclStrings,
  appReportManagerForm;

{$R *.DFM}

function GetPOPmodul: TPOPfrmModule; // Pomocna funkce testujici existenci modulu POPdmd
begin
  if not Assigned(POPfrmModule) then
    Application.CreateForm(TPOPfrmModule, POPfrmModule);
  Result := POPfrmModule;
end;

constructor TPOPfrmModule.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  if POPdmd = nil then
    Application.CreateForm(TPOPdmd, POPdmd);
  gbUseMesto     := false;
  gbPrePlatnCena := True;
  gbPreVozidlo   := True;
  gbPopCopyList  := 'REFTRASA;ZNRAMCOVKA;TYP;REF_AOPKOD;KONTAKT;NSTAT;NPSC;NMISTO;VSTAT;VPSC;VMISTO;VOZIDLO;CENASMLUVNI;CENAJEDNOTKA;CENAMENA;CENAPOPIS';
end;

procedure TPOPfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin
  if GetdmdSystem.gbAktivace.GetModulPoptavky then
  begin
    rsModule.LoadValues;
    { Registrace a Nastaveni èíslené øady }
    if not dmdSystem.CheckRegisteredNumLine(ModuleName, NewNumRadaJmeno) then
      dmdSystem.RegisterNewNumLine(ModuleName, NewNumRadaJmeno, '13', 'PP', 4);
    dmdSystem.GetAviableNumLines(ModuleName, ExistCisRady);
  end;
  actBGBrowse.Visible := dmdSystem.gbAktivace.GetModulPoptavky and jfaUserInfo.ShowPoptavky;
  actBrowse.Visible   := actBGBrowse.Visible;
  actKTLTyp.Visible   := actBGBrowse.Visible;
end;

procedure TPOPfrmModule.ModulBrowse(Sender: TObject);
begin
  ShowBrowse('');
end;

procedure TPOPfrmModule.ShowBrowse(AWhere: string);
begin
  FindShowFormWhereOrder(TPOPfrmBrowse, AWhere, '');
end;

function TPOPfrmModule.GetDefaultReport: string;
begin
  if (DefaultReport = '') or (not FileExists(DefaultReport)) then
    DefaultReport := RMselectSestava(dmReport.GenEvidenceFolder(ModuleName), frrModule);
  Result          := DefaultReport;

end;

function TPOPfrmModule.GetNewKeyIdValue(ARada: string): string;
begin
  Result := ARada;
  if ExistCisRady.IndexOf(ARada) >= 0 then
    Result := dmdSystem.GetNewNum(ModuleName, ARada, True);

end;

procedure TPOPfrmModule.actKTLTypExecute(Sender: TObject);
var
  dlg: TPOPfrmKTLTypy;
begin
  dlg := TPOPfrmKTLTypy.Create(Application);
  try
    dlg.ShowModal;
  finally
    dlg.Free;
  end;

end;

procedure TPOPfrmModule.gbEvidenceModulePrintModule(Sender: TObject; const EvKeyIDValue: string);
begin
  POPdmd.mod_OpenRecord(EvKeyIDValue);
end;

procedure TPOPfrmModule.rsModuleAfterLoad(Sender: TObject);
begin
  gbPocetZnaku   := rsModule.Storage.ReadInteger('gbPocetZnaku', gbPocetZnaku);
  gbUseMesto     := rsModule.Storage.ReadBoolean('gbUseMesto', gbUseMesto);
  gbPrePlatnCena := rsModule.Storage.ReadBoolean('gbPrePlatnCena', gbPrePlatnCena);
  gbPreVozidlo   := rsModule.Storage.ReadBoolean('gbPreVozidlo', gbPreVozidlo);
  gbPopCopyList  := rsModule.Storage.ReadString('gbPopCopyList', gbPopCopyList)
end;

procedure TPOPfrmModule.rsModuleAfterSave(Sender: TObject);
begin
  // Poptavky
  rsModule.Storage.WriteInteger('gbPocetZnaku', gbPocetZnaku);
  rsModule.Storage.WriteBoolean('gbUseMesto', gbUseMesto);
  rsModule.Storage.WriteBoolean('gbPrePlatnCena', gbPrePlatnCena);
  rsModule.Storage.WriteBoolean('gbPreVozidlo', gbPreVozidlo);
  rsModule.Storage.WriteString('gbPopCopyList', gbPopCopyList)

end;

procedure TPOPfrmModule.CreateDokument(AKeyIdValue: string; AMultiRecord: Boolean);
var
  cFirma   : TAOPFirmaClass;
  aNewSID  : string;
  sListText: TStrings;
  sAopKod  : string;
const
  { (* }
  SDEST_ODKUD_INFO = 'Odkud      : ';
  SDEST_KAM_INFO   = 'Kam        : ';

  SDESTINACE  = '%s-%s %s';
  SCENAVYSTUP = 'Cena       : %s %s/%s';
  SMATERIAL   = 'Materiál   : %s';
  SVOZIDLO    = 'Prostøedek : %s';
  { *) }

  ILINEIDENT = 0;

  function CreateDestinace(AStat, APsc, AMesto: string): string;
  begin
    Result := Format(SDESTINACE, [AStat, APsc, AMesto]);
  end;

  procedure CreateMultiLine;
  begin
    sListText.Add(strMakeStr(' ', ILINEIDENT) + CreateDestinace(POPdmd.POPRecordNSTAT.AsString, POPdmd.POPRecordNPSC.AsString, POPdmd.POPRecordNMISTO.AsString) + ' - ' +
      CreateDestinace(POPdmd.POPRecordVSTAT.AsString, POPdmd.POPRecordVPSC.AsString, POPdmd.POPRecordVMISTO.AsString) + Format(' [ %s %s/%s ]',
      [POPdmd.POPRecordCENASMLUVNI.AsString, POPdmd.POPRecordCENAMENA.AsString, POPdmd.POPRecordCENAJEDNOTKA.AsString])

      );

  end;

  procedure CreateTextLines;
  begin
    sListText.Add('');
    sListText.Add(strMakeStr(' ', ILINEIDENT) + SDEST_ODKUD_INFO + CreateDestinace(POPdmd.POPRecordNSTAT.AsString, POPdmd.POPRecordNPSC.AsString, POPdmd.POPRecordNMISTO.AsString));

    sListText.Add(strMakeStr(' ', ILINEIDENT) + SDEST_KAM_INFO + CreateDestinace(POPdmd.POPRecordVSTAT.AsString, POPdmd.POPRecordVPSC.AsString, POPdmd.POPRecordVMISTO.AsString));

    sListText.Add(strMakeStr(' ', ILINEIDENT) + Format(SCENAVYSTUP, [POPdmd.POPRecordCENASMLUVNI.AsString, POPdmd.POPRecordCENAMENA.AsString, POPdmd.POPRecordCENAJEDNOTKA.AsString]));

    sListText.Add(strMakeStr(' ', ILINEIDENT) + Format(SMATERIAL, [POPdmd.POPRecordCENAPOPIS.AsString]));

    sListText.Add(strMakeStr(' ', ILINEIDENT) + Format(SVOZIDLO, [POPdmd.POPRecordVOZIDLO.AsString]));
  end;

begin

  sListText := TStringList.Create;
  POPdmd.mod_OpenRecord(AKeyIdValue);
  sAopKod := VarToStr(POPdmd.POPRecordREF_AOPKOD.AsVariant);
  cFirma  := TAOPFirmaClass.CreateCustom(sAopKod, false);
  aNewSID := GenGUIDID22;

  try
    DOCdmd.mod_OpenRecord(aNewSID);
    DOCdmd.DOC.Insert;
    DOCdmd.DOCZNACKA.AsString  := DOCfrmModule.GetNewKeyIdValue(DOCfrmModule.NewNumRadaJmeno);
    DOCdmd.DOCSID.AsString     := aNewSID;
    DOCdmd.DOCOWNER.AsString   := POPdmd.POPRecordSID.AsString;
    DOCdmd.DOCTYP.AsInteger    := 0;
    DOCdmd.DOCAOPKOD.AsString  := sAopKod;
    DOCdmd.DOCNAZEV.AsString   := cFirma.Nazev;
    DOCdmd.DOCADRESA1.AsString := cFirma.Adresa1;
    DOCdmd.DOCADRESA2.AsString := cFirma.Adresa2;
    DOCdmd.DOCPSC.AsString     := cFirma.Psc;
    DOCdmd.DOCADRESA3.AsString := cFirma.Adresa3;
    DOCdmd.DOCZEME.AsString    := cFirma.Zeme;
    DOCdmd.DOCDATUM.AsDateTime := date;
    DOCdmd.DOCVASDOPIS.Clear;
    // DOCdmd.DOCVEC.AsString      := Format('Cenová %s', [LowerCase(POPdmd.POPRecordPOPIS.AsString)]);
    DOCdmd.DOCVEC.AsString      := Format('Nakládka: %s Vykládka: %s', [POPdmd.POPRecordMNakladka.AsString, POPdmd.POPRecordMVykladka.AsString]);
    DOCdmd.DOCVYRIZUJE.AsString := jfaUserInfo.UserName;
    DOCdmd.DOCURCENO.AsString   := POPdmd.POPRecordKONTAKT.AsString;

    // pokud je multirecord
    if AMultiRecord then
    begin
      POPdmd.POPSeznam.First;
      while not POPdmd.POPSeznam.Eof do
      begin
        POPdmd.mod_OpenRecord(POPdmd.POPSeznamSID.AsString);
        CreateMultiLine;
        POPdmd.POPSeznam.Next;
      end;
    end
    else
      CreateTextLines;

    sListText.Add('');
    sListText.Add(dmdSystem.gbAktivace.Nazev1 + ', ' + jfaUserInfo.UserName);

    DOCdmd.DOCDTEXT.Assign(sListText);
    DOCdmd.DOC.Post;

    // Naplneni sList ze zaznamu POPRecord
    if AMultiRecord then
    begin
      POPdmd.POPSeznam.First;
      while not POPdmd.POPSeznam.Eof do
      begin
        POPdmd.mod_OpenRecord(POPdmd.POPSeznamZNACKA.AsString);

        POPdmd.spInsertPopDop.ParamByName('REF_POP').AsString := POPdmd.POPSeznamSID.AsString;
        POPdmd.spInsertPopDop.ParamByName('REF_DOC').AsString := aNewSID;
        POPdmd.spInsertPopDop.ExecSQL;

        POPdmd.POPSeznam.Next;
      end;
    end
    else
    begin
      POPdmd.spInsertPopDop.ParamByName('REF_POP').AsString := POPdmd.POPSeznamSID.AsString;
      POPdmd.spInsertPopDop.ParamByName('REF_DOC').AsString := aNewSID;
      POPdmd.spInsertPopDop.ExecSQL;

    end;

    DOCfrmModule.ShowDetail(aNewSID, fsmEdit);
  finally
    cFirma.Free;
    sListText.Free;
  end;

end;

procedure TPOPfrmModule.jfsEvidenceModuleFinalModule(Sender: TObject);
begin
  if dmdSystem.gbAktivace.GetModulPoptavky then
  begin
    rsModule.SaveValues;
  end;

end;

procedure TPOPfrmModule.PrintModule(ADefaultReport: Boolean; AKeyIdValue: string);
begin
  POPdmd.mod_OpenRecord(AKeyIdValue);
  frrModule.Recipient.Clear;
  // frrModule.Recipient.Subject := POPdmd.POPRecordPOPIS.AsString + ' : ' + POPdmd.POPRecordZNACKA.AsString;
  frrModule.Recipient.Subject := POPdmd.POPRecordZNACKA.AsString;
  if ADefaultReport then
    dmReport.ShowReport(dmReport.GenEvidenceFolder(ModuleName), frrModule)
  else
    dmReport.ShowManager(dmReport.GenEvidenceFolder(ModuleName), frrModule);
end;

procedure TPOPfrmModule.frrModuleGetValue(const VarName: String; var Value: Variant);
begin
  if CompareText(VarName, vnOtherRecId) = 0 then
  begin
    Value := POPdmd.POPRecordSID.AsString;
  end;

end;

end.
