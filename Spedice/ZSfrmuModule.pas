{ ***************************************************************
  *
  * Unit Name: ZSfrmuModule
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit ZSfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, rsStorage, rsPropSaver, uCustomModule, uCustomForms,
  cxEdit, cxDBEditRepository, cxStyles, ZSGenFVUnit, frxClass, frxDBSet,
  cxClasses, uDbMerger;

type
  { Katalogove Recordy }
  TRecZSKTLUdalost = record
    FUdalost: string;
    FDalsiText: string;
  end;

  TZSNakVykMisto = class(TObject)
  public
    AdresaPopis: TStrings;
    ADRESA3    : string;
    PSC        : string;
    ZEMEKOD    : string;
    SPOJENI    : TStrings;
    constructor CreateCustom;
    destructor Destroy; override;
  end;

  TZSfrmModule = class(TjfsEvidenceModule)
    rsModule: TrsPropSaver;
    actlZasilky: TActionList;
    actKTLAuta: TAction;
    actKTLCoPlati: TAction;
    actKTLUdalosti: TAction;
    actKTLTypyPreprav: TAction;
    actKTLSablony: TAction;
    actBrowse: TAction;
    actZSPobExport: TAction;
    actZSPobImport: TAction;
    actlBGModule: TActionList;
    actBGBrowse: TAction;
    actKTLPohyby: TAction;
    actKTLPodminky: TAction;
    frrZS: TfrxReport;
    frxZSSeznam: TfrxDBDataset;
    frxZS: TfrxDBDataset;
    cxStyleRepository1: TcxStyleRepository;
    cxsVyrizeno: TcxStyle;
    procedure KTLExecute(Sender: TObject);
    procedure actKTLAutaExecute(Sender: TObject);
    procedure actKTLTypyPrepravExecute(Sender: TObject);
    procedure actKTLCoPlatiExecute(Sender: TObject);
    procedure actKTLSablonyExecute(Sender: TObject);
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure actBrowseExecute(Sender: TObject);
    procedure actZSPobExportExecute(Sender: TObject);
    procedure actZSPobImportExecute(Sender: TObject);
    procedure rsModuleAfterLoad(Sender: TObject);
    procedure rsModuleAfterSave(Sender: TObject);
    procedure actKTLPohybyExecute(Sender: TObject);
    procedure gbEvidenceModuleDestroy(Sender: TObject);
    procedure actKTLPodminkyExecute(Sender: TObject);
    procedure jfsEvidenceModuleFinalModule(Sender: TObject);
    procedure frrZSGetValue(const VarName: String; var Value: Variant);
    procedure jfsEvidenceModuleCreate(Sender: TObject);
  private
    { Private declarations }
    iMerger: TjfsMerger;
  protected
    { Protected declarations }
  public

    { Public declarations }
    gbEnPlatceFVStorno    : boolean; // Povoleni storna faktury
    gbDispecerIsLoggedUser: boolean;
    gbDispecerValue       : string;
    gbStrediskoValue      : string;
    { Vlastnost povolujici editaci zaznamu kdyz existuji faktury }
    gbEnEditIfFaktura: boolean;

    /// <summary>
    /// <para>
    /// Uživatelská vlastnost.
    /// </para>
    /// <para>
    /// Pokud je nastaveno TRUE bude se v detailu pøepravy v náhledu
    /// plátcù, zobrazovat subdetail s položkama
    /// </para>
    /// <para>
    /// Nastavuje se v nastavení modulu pøepravy
    /// </para>
    /// </summary>
    gbPlatceInfoDetailMode: boolean;
    // gbAddAvizoToHistory: boolean;
    gbPohybArdesaAsLine: boolean;

    // Evidence udalosti
    gbZmenaSPZ     : boolean;
    gbZmenaDopravce: boolean;
    // Ostatni
    gbMinusprovize: boolean; // Prepinac pro povoleni vypoctu provize i kdyz
    // neni zadana jedna z cen.
    gbGenFvPole: TZSGenFvImportFields;
    // Vychoyi text podminek
    gbTextPodminky: integer;
    // Vychoyi text potvryenky
    gbTextPotvrzeni: integer;
    // Nastaveni zda pri tisku bude automaticky naplnovano pole email adresa
    gbAutoFillEmail: boolean;
    // Nastaveni
    gbZSGenFvGetAktualKurz: boolean; // Pokud TRUE pri generovani faktury nacte aktualni kurz
    // Pokud FALSE nacte kurz z Platce

    // Priznaky pro kopirovane pole
    gbZSCopyListZS        : string;
    gbZSCopyListPlatce    : string;
    gbZSCopyPlatcePrirazky: boolean;
    gbZSCopyListPlatciSR  : string;
    gbZSCopyListPohyby    : string;
    gbZSCopyListOstNakl   : string;
    gbZSCopyEnableOstNakl : boolean;
    gbZSTiskObjednavka    : string;
    gbZSTiskPotvrzeni     : string;
    gbZsTemplSubjektObj   : string; // Salona pro tvorbu subjektu objednavkz emailu
    gbZsTemplSubjektPot   : string; // Salona pro tvorbu subjektu potvrzeni emailu

    /// <summary>
    /// Pokud je hodnota nastavena na TRUE mùže uživatel generovat fakturu
    /// z formuláøe Plátce
    /// </summary>
    gbZsCreateFVEnable: boolean;

    // Automatice generovani provizi dle Referenta Kontaktu

    procedure ShowBrowse(AWhere: string);
    { Puvodni funkce }
    // function ShowDetail(AZasilka: string; Mode: TFormShowMode): string;
    { Nova funkce, result znaci potrebu refresh seznamu }
    function ShowDetail(var AZasilka: string; Mode: TFormShowMode): boolean;

    function GetNewKeyIdValue(ARada: string): string;

    function PrepareRepObjednavka: boolean;
    function PrepareRepPotvrzeni: boolean;

    { ZS Katalogy }
    { Novy zpusob volani katalogu }
    procedure ShowKTLPodminky;
    function ShowKTLUdalosti(var ARecUdalost: TRecZSKTLUdalost): boolean;
    // function ShowKTLSablony(AKeyIDValue: string; AShowCreateSablona: boolean = false): boolean;
    { Ostatni funkce a procedury }
    procedure CreateDokument(Lines: TStrings; AAopKod: string);
    function GetPrepravu(AZasilka: string): string;
    function GetPrepravuPlatce(APlatce: string): string;
    procedure PrintModule(ADefaultReport: boolean = false; AKeyIdValue: string = ''); override;

  end;

  TNakVykType = (ntNakladka, ntVykladka, ntProstoj, ntOstatni);

var
  ZSfrmModule   : TZSfrmModule;
  dxLayoutZsEdit: boolean;

function GetZSModul: TZSfrmModule;

implementation

{$R *.DFM}

uses
  uVarClass, fMessageDlg, ZSdmdu, _frmuCustomBrowse, ZSfrmuBrowse, appdmduSystem,
  AOPfrmuModule, AOPdmdu, DOCfrmuModule, DOCdmdu, FVdmdu, FVfrmuModule, ZSfrmuKTLUdalosti, ZSfrmuKTLTypPlatby, ZSfrmuKTLAuta, ZSfrauOptions,
  ZSfrmuKTLTypy, jclMapi, ZSfrmuVyberDlg, FDdmdu,
  ZSfrmuKTLPohyby, ZSfrmuVyberPlatceDlg, jclstrings, ZSfrmuKTLPodminky, ZSConstDefUnit, DOCConstDefUnit,
  appGenIdUnit, uAppControler, appReportModule, appIniOptionsUnit, appReportManagerForm,
  fZSEditLayout,
  fZSEdit,
  appfrmuGlobal, fZSSablony, uaopfirmaclass;

const
  rkEn_ZrusitZSFV     = 'Povolit.ruseni.vazby.ZS-FV';
  rkEn_HromadnaFV     = 'Povolit.hromadnou.fakturu';
  rkDispUseLog        = 'Pouzit.LoginUser.jako.Dispecera';
  rkDispOther         = 'Jina.hodnota.pro.Dispecer';
  rkPohybArdesaAsLine = 'Adresa.jako.radek';

function GetZSModul: TZSfrmModule;
begin
  if not Assigned(ZSfrmModule) then
    Application.CreateForm(TZSfrmModule, ZSfrmModule);
  result := ZSfrmModule
end;

constructor TZSNakVykMisto.CreateCustom;
begin
  inherited Create;
  // AOPKOD := EmptyStr;
  // Nazev := EmptyStr;
  // ADRESA1 := EmptyStr;
  // ADRESA2 := EmptyStr;
  AdresaPopis := TStringList.Create;
  ADRESA3     := EmptyStr;
  PSC         := EmptyStr;
  ZEMEKOD     := EmptyStr;
  SPOJENI     := TStringList.Create;

end;

destructor TZSNakVykMisto.Destroy;
begin
  AdresaPopis.free;
  SPOJENI.free;
  inherited Destroy;
end;

{ Tzs_modul }

function TZSfrmModule.GetNewKeyIdValue(ARada: string): string;
begin
  result := ARada;
  if ExistCisRady.IndexOf(ARada) >= 0 then
    result := dmdSystem.GetNewNum(ModuleName, ARada, true);
end;

procedure TZSfrmModule.ShowBrowse(AWhere: string);
begin
  FindShowFormWhereOrder(TZSBrowseFrm, AWhere, '');
end;

function TZSfrmModule.ShowDetail(var AZasilka: string; Mode: TFormShowMode): boolean;
var
  frmDet: TjfsCustomEvidForm;
begin
  case Mode of
    fsmInsert:
      begin
        // AZasilka := GenGUIDID22;
        ZSdmd.mod_OpenRecord(GenGUIDID22);
        ZSdmd.Zasilky.Insert;
      end;
    fsmCopy:
      ZSdmd.ZSZasilkaCopy(AZasilka);
    fsmEdit:
      ZSdmd.mod_OpenRecord(AZasilka);
  end;

  if GetdmdGlobal.UseCustomLayout then
    frmDet := TfrmZSDetailLay.Create(nil)
  else
    frmDet := TfrmZSDetail.Create(nil);

  try
    frmDet.ShowModal;
    result   := frmDet.IsDataChanged;
    AZasilka := ZSdmd.ZasilkySID.AsString;
  finally
    frmDet.free;
  end;
end;

function TZSfrmModule.ShowKTLUdalosti(var ARecUdalost: TRecZSKTLUdalost): boolean;
var
  dlg: TZSfrmKTLUdalosti;
begin
  // Result := false;
  dlg := TZSfrmKTLUdalosti.Create(Application);
  try

    with dlg do
    begin
      if ARecUdalost.FUdalost <> EmptyStr then
        ZSdmd.KTLHistorie.Locate('TYP', ARecUdalost.FUdalost, []);

      ShowModal;
      result := (ModalResult = mrok);
      if result then
      begin
        ARecUdalost.FUdalost   := ZSdmd.KTLHistorie.fieldbyname('TYP').AsString;
        ARecUdalost.FDalsiText := ZSdmd.KTLHistorie.fieldbyname('DEFAULTTEXT').AsString;
      end;
    end;
  finally
    dlg.free;
  end;

end;

procedure TZSfrmModule.CreateDokument(Lines: TStrings; AAopKod: string);
var
  cFirma : TAOPFirmaClass;
  iZnacka: string;
  aNewsId: string;
begin

  cFirma := TAOPFirmaClass.Create(AAopKod, false);
  try

    with ZSdmd do
    begin
      iZnacka := DOCfrmModule.GetNewKeyIdValue(DOCfrmModule.NewNumRadaJmeno);
      aNewsId := GenGUIDID22;
      DOCdmd.mod_OpenRecord(aNewsId);
      DOCdmd.DOC.Insert;
      DOCdmd.DOCSID.AsString    := aNewsId;
      DOCdmd.DOCZNACKA.AsString := iZnacka;
      DOCdmd.DOCOWNER.AsString  := ZasilkySID.AsString;

      DOCdmd.DOCTYP.AsInteger := 1;

      DOCdmd.DOCAOPKOD.AsString  := AAopKod;
      DOCdmd.DOCNAZEV.AsString   := cFirma.Nazev;
      DOCdmd.DOCADRESA1.AsString := cFirma.Adresa1;
      DOCdmd.DOCADRESA2.AsString := cFirma.Adresa2;
      DOCdmd.DOCPSC.AsString     := cFirma.PSC;
      DOCdmd.DOCADRESA3.AsString := cFirma.ADRESA3;
      DOCdmd.DOCZEME.AsString    := cFirma.Zeme;
      DOCdmd.DOCICO.AsString     := cFirma.ICO;
      DOCdmd.DOCDIC.AsString     := cFirma.DIC;
      DOCdmd.DOCDATUM.AsDateTime := date;
      DOCdmd.DOCURCENO.Clear;
      DOCdmd.DOCVASDOPIS.Clear;
      DOCdmd.DOCVEC.AsString      := format(sAvizoNakladky, [ZasilkyZASILKA.AsString]);
      DOCdmd.DOCVYRIZUJE.AsString := jfaUserInfo.UserName;
      DOCdmd.DOCDTEXT.Assign(Lines);
      DOCdmd.DOCDOCEMAILY.AsString := cFirma.Email;

      DOCdmd.DOCCREAID.AsString := jfaUserInfo.UserZnacka;

      try
        DOCdmd.DOC.Post;
        DOCfrmModule.ShowDetail(aNewsId, fsmEdit);
      except
        raise;
      end;
    end;
  finally
    cFirma.free;
  end;
end;

function TZSfrmModule.GetPrepravu(AZasilka: string): string;
var
  dlg: TZSfrmVyberDlg;
begin
  dlg := TZSfrmVyberDlg.Create(Application);
  try
    ZSdmd.ZSVyber.Locate(SZS_F_ZASILKA, AZasilka, []);
    dlg.ShowModal;
    result := ZSdmd.ZSVyber.fieldbyname(SZSKEYFIELDNAME).AsString;
  finally
    dlg.free;
  end;
end;

procedure TZSfrmModule.KTLExecute(Sender: TObject);
var
  intUdalost: TRecZSKTLUdalost;
begin
  ShowKTLUdalosti(intUdalost)
end;

procedure TZSfrmModule.actKTLAutaExecute(Sender: TObject);
var
  dlg: TZSfrmKTLAuta;
begin
  dlg := TZSfrmKTLAuta.Create(Application);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;
end;

procedure TZSfrmModule.actKTLTypyPrepravExecute(Sender: TObject);
var
  dlg: TZSfrmKTLTypy;
begin
  dlg := TZSfrmKTLTypy.Create(Application);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

procedure TZSfrmModule.actKTLCoPlatiExecute(Sender: TObject);
var
  dlg: TZSfrmKTLTypPlatby;
begin
  // Result := false;
  dlg := TZSfrmKTLTypPlatby.Create(Application);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

procedure TZSfrmModule.actKTLSablonyExecute(Sender: TObject);
var
  frm: TfrmZSSablony;
begin
  frm := TfrmZSSablony.Create(nil);
  try
    frm.ShowModal;
  finally
    frm.free;
  end;
end;

procedure TZSfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin

  { Inicialiyace nastaveni }
  rsModule.LoadValues;
  { Registrace a Nastaveni èíslené øady }
  if not GetdmdSystem.CheckRegisteredNumLine(ModuleName, NewNumRadaJmeno) then
    dmdSystem.RegisterNewNumLine(ModuleName, NewNumRadaJmeno, '21', 'ZA', 4);
  if not dmdSystem.CheckRegisteredNumLine('ZSPLATCI', 'Rada1') then
    dmdSystem.RegisterNewNumLine('ZSPLATCI', 'Rada1', 'PL', '', 8);
  dmdSystem.GetAviableNumLines(ModuleName, ExistCisRady);

  { Otevreni prislusnych tabulek }
  GetZSdmd.ZAPlatci.active       := true;
  GetZSdmd.ZAPohyby.active       := true;
  GetZSdmd.ZAPlatciSrazky.active := true;
  GetZSdmd.KTLHistorie.active    := true;
  GetZSdmd.KTLZSSablony.active   := true;
  iMerger.DataSets.Clear;
  iMerger.DataSets.Add(GetZSdmd.Zasilky);
  iMerger.DataSets.Add(ZSdmd.ZasilkySeznam);
  actZSPobExport.Visible := false;
  actZSPobImport.Visible := false;
end;

procedure TZSfrmModule.actBrowseExecute(Sender: TObject);
begin
  ShowBrowse('');
end;

procedure TZSfrmModule.actZSPobExportExecute(Sender: TObject);
begin
  // PrepravyExportujData(dmdSystem.DAOMainDB.DatabaseName);
  // ZSExportujData;
end;

procedure TZSfrmModule.actZSPobImportExecute(Sender: TObject);
begin
  // PrepravyImportujData(dmdSystem.DAOMainDB.DatabaseName);
  // ZSImportujData;
end;

procedure TZSfrmModule.rsModuleAfterLoad(Sender: TObject);
begin
  gbEnPlatceFVStorno     := rsModule.Storage.ReadBoolean('gbEnPlatceFVStorno', gbEnPlatceFVStorno);
  gbEnEditIfFaktura      := rsModule.Storage.ReadBoolean('gbEnEditIfFaktura', gbEnEditIfFaktura);
  gbDispecerIsLoggedUser := rsModule.Storage.ReadBoolean('gbDispecerIsLoggedUser', gbDispecerIsLoggedUser);
  gbDispecerValue        := rsModule.Storage.ReadString('gbDispecerValue', gbDispecerValue);

  if gbDispecerIsLoggedUser then
    gbDispecerValue := jfaUserInfo.UserZnacka;

  gbStrediskoValue       := rsModule.Storage.ReadString('gbStrediskoValue', gbStrediskoValue);
  gbPohybArdesaAsLine    := rsModule.Storage.ReadBoolean('gbPohybArdesaAsLine', gbPohybArdesaAsLine);
  gbZmenaSPZ             := rsModule.Storage.ReadBoolean('gbZmenaSPZ', gbZmenaSPZ);
  gbZmenaDopravce        := rsModule.Storage.ReadBoolean('gbZmenaDopravce', gbZmenaDopravce);
  gbTextPodminky         := rsModule.Storage.ReadInteger('gbTextPodminky', gbTextPodminky);
  gbTextPotvrzeni        := rsModule.Storage.ReadInteger('gbTextPotvrzeni', gbTextPotvrzeni);
  gbAutoFillEmail        := rsModule.Storage.ReadBoolean('gbAutoFillEmail', gbAutoFillEmail);
  gbMinusprovize         := rsModule.Storage.ReadBoolean('gbMinusprovize', gbMinusprovize);
  gbZSCopyListZS         := rsModule.Storage.ReadString('gbZSCopyListZS', gbZSCopyListZS);
  gbZSCopyListPlatce     := rsModule.Storage.ReadString('gbZSCopyListPlatce', gbZSCopyListPlatce);
  gbZSCopyListPlatciSR   := rsModule.Storage.ReadString('gbZSCopyListPlatciSR', gbZSCopyListPlatciSR);
  gbZSCopyListPohyby     := rsModule.Storage.ReadString('gbZSCopyListPohyby', gbZSCopyListPohyby);
  gbZSCopyListOstNakl    := rsModule.Storage.ReadString('gbZSCopyListOstNakl', gbZSCopyListOstNakl);
  gbZSCopyPlatcePrirazky := rsModule.Storage.ReadBoolean('gbZSCopyPlatcePrirazky', gbZSCopyPlatcePrirazky);
  gbZSCopyEnableOstNakl  := rsModule.Storage.ReadBoolean('gbZSCopyEnableOstNakl', gbZSCopyEnableOstNakl);
  gbZSGenFvGetAktualKurz := rsModule.Storage.ReadBoolean('gbZSGenFvGetAktualKurz', gbZSGenFvGetAktualKurz);
  gbGenFvPole.im_spz     := rsModule.Storage.ReadBoolean('im_spz', gbGenFvPole.im_spz);
  gbGenFvPole.im_nakl    := rsModule.Storage.ReadBoolean('im_nakl', gbGenFvPole.im_nakl);
  gbGenFvPole.im_nakld   := rsModule.Storage.ReadBoolean('im_nakld', gbGenFvPole.im_nakld);
  gbGenFvPole.im_vykl    := rsModule.Storage.ReadBoolean('im_vykl', gbGenFvPole.im_vykl);
  gbGenFvPole.im_zasilka := rsModule.Storage.ReadBoolean('im_zasilka', gbGenFvPole.im_zasilka);
  gbGenFvPole.im_sp      := rsModule.Storage.ReadBoolean('im_sp', gbGenFvPole.im_sp);
  gbGenFvPole.im_sh      := rsModule.Storage.ReadBoolean('im_sh', gbGenFvPole.im_sh);
  gbGenFvPole.im_sh      := rsModule.Storage.ReadBoolean('im_sh', gbGenFvPole.im_sh);
  gbGenFvPole.im_codepl  := rsModule.Storage.ReadBoolean('im_codepl', gbGenFvPole.im_codepl);
  gbZSTiskObjednavka     := rsModule.Storage.ReadString('gbZSTiskObjednavka', gbZSTiskObjednavka);
  gbZSTiskPotvrzeni      := rsModule.Storage.ReadString('gbZSTiskPotvrzeni', gbZSTiskPotvrzeni);
  gbZsCreateFVEnable     := rsModule.Storage.ReadBoolean('gbZsCreateFVEnable', gbZsCreateFVEnable);
end;

procedure TZSfrmModule.rsModuleAfterSave(Sender: TObject);
begin
  rsModule.Storage.WriteBoolean('gbEnPlatceFVStorno', gbEnPlatceFVStorno);
  rsModule.Storage.WriteBoolean('gbEnEditIfFaktura', gbEnEditIfFaktura);
  rsModule.Storage.WriteBoolean('gbDispecerIsLoggedUser', gbDispecerIsLoggedUser);
  rsModule.Storage.WriteString('gbDispecerValue', gbDispecerValue);
  rsModule.Storage.WriteString('gbStrediskoValue', gbStrediskoValue);
  rsModule.Storage.WriteBoolean('gbPohybArdesaAsLine', gbPohybArdesaAsLine);
  rsModule.Storage.WriteBoolean('gbZmenaSPZ', gbZmenaSPZ);
  rsModule.Storage.WriteBoolean('gbZmenaDopravce', gbZmenaDopravce);
  rsModule.Storage.WriteInteger('gbTextPodminky', gbTextPodminky);
  rsModule.Storage.WriteInteger('gbTextPotvrzeni', gbTextPotvrzeni);
  rsModule.Storage.WriteBoolean('gbAutoFillEmail', gbAutoFillEmail);
  rsModule.Storage.WriteBoolean('gbMinusprovize', gbMinusprovize);
  rsModule.Storage.WriteString('gbZSCopyListZS', gbZSCopyListZS);
  rsModule.Storage.WriteString('gbZSCopyListPlatce', gbZSCopyListPlatce);
  rsModule.Storage.WriteString('gbZSCopyListPlatciSR', gbZSCopyListPlatciSR);
  rsModule.Storage.WriteString('gbZSCopyListPohyby', gbZSCopyListPohyby);
  rsModule.Storage.WriteString('gbZSCopyListOstNakl', gbZSCopyListOstNakl);
  rsModule.Storage.WriteBoolean('gbZSCopyPlatcePrirazky', gbZSCopyPlatcePrirazky);
  rsModule.Storage.WriteBoolean('gbZSCopyEnableOstNakl', gbZSCopyEnableOstNakl);
  rsModule.Storage.WriteBoolean('gbZSGenFvGetAktualKurz', gbZSGenFvGetAktualKurz);
  rsModule.Storage.WriteString('gbZSTiSkObjednavka', gbZSTiskObjednavka);
  rsModule.Storage.WriteString('gbZSTiskPotvrzeni', gbZSTiskPotvrzeni);
  rsModule.Storage.WriteBoolean('im_spz', gbGenFvPole.im_spz);
  rsModule.Storage.WriteBoolean('im_nakl', gbGenFvPole.im_nakl);
  rsModule.Storage.WriteBoolean('im_nakld', gbGenFvPole.im_nakld);
  rsModule.Storage.WriteBoolean('im_vykl', gbGenFvPole.im_vykl);
  rsModule.Storage.WriteBoolean('im_zasilka', gbGenFvPole.im_zasilka);
  rsModule.Storage.WriteBoolean('im_sp', gbGenFvPole.im_sp);
  rsModule.Storage.WriteBoolean('im_sh', gbGenFvPole.im_sh);
  rsModule.Storage.WriteBoolean('im_codepl', gbGenFvPole.im_codepl);
  rsModule.Storage.WriteBoolean('gbZsCreateFVEnable', gbZsCreateFVEnable);
end;

procedure TZSfrmModule.actKTLPohybyExecute(Sender: TObject);
var
  dlg: TZSfrmKTLPohyby;
begin
  dlg := TZSfrmKTLPohyby.Create(nil);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

function TZSfrmModule.GetPrepravuPlatce(APlatce: string): string;
var
  dlg: TZSfrmVyberPlatceDlg;
begin
  dlg := TZSfrmVyberPlatceDlg.Create(nil);
  try
    ZSdmd.ZSPLAVyber.ParamByName('AOPKOD').AsString := APlatce;
    dlg.SqlControler.ShowAllRecords;

    dlg.ShowModal;
    if dlg.ModalResult = mrok then
      result := ZSdmd.ZSPLAVyberID.AsString
    else
      result := EmptyStr;
  finally
    dlg.free;
  end;

end;

procedure TZSfrmModule.gbEvidenceModuleDestroy(Sender: TObject);
begin
  iMerger.free;
  gbGenFvPole.free;
end;

procedure TZSfrmModule.ShowKTLPodminky;
var
  dlg: TZSfrmKTLPodminky;
begin
  dlg := TZSfrmKTLPodminky.Create(nil);
  try
    dlg.ShowModal;
  finally
    dlg.free;
  end;

end;

procedure TZSfrmModule.actKTLPodminkyExecute(Sender: TObject);
begin
  ShowKTLPodminky;
end;

procedure TZSfrmModule.jfsEvidenceModuleCreate(Sender: TObject);
begin
  // Default hodnoty
  iMerger                := TjfsMerger.Create;
  gbEnPlatceFVStorno     := false;
  gbEnEditIfFaktura      := true;
  gbDispecerIsLoggedUser := true;
  gbDispecerValue        := '@';
  gbStrediskoValue       := EmptyStr;
  gbPohybArdesaAsLine    := true;
  gbZmenaSPZ             := true;
  gbZmenaDopravce        := true;
  gbMinusprovize         := false;
  gbTextPodminky         := -1;
  gbTextPotvrzeni        := -1;
  gbGenFvPole            := TZSGenFvImportFields.MyCreate;
  gbAutoFillEmail        := false;
  gbZSGenFvGetAktualKurz := true;
  gbZSCopyListZS         := 'INTOBJ;TYP;REF_ZSPODMINKY;REF_POTVRZENI;AOPKOD_OBJ;SUBSTRATINFO;SUBSTRAT;HMBRUTTO;HMTEXT;CLO;VOZIDLO;CENASMLUVNI;' +
    'CENAJEDNOTKY;CENAJEDNOTKA;CENAKURS;CENASRAZKY;CENADPHPROC;CENADPH;CENASUMA;CENAMENA;PODMINKY;POZNAMKA';
  gbZSCopyListPlatce     := 'AOPKOD;pla_emails;CO;PODMINKY;CENASMLUVNI;CENAJEDNOTKY;CENAJEDNOTKA;CENASRAZKY;CENADPHPROC;CENASUMA;CENASUMAKC;CENAMENA;CENADPH;CENAKURS;POZICE';
  gbZSCopyPlatcePrirazky := true;

{$IFDEF ORANGE}
  gbZSCopyListPlatciSR := 'cenatext,cenapopis,cenamenazaklad,cenamena,cenakurz,cenazaklad,cenajednotka,cenajednotky,cenasleva,cenasuma,cenasazbadph,cenadphproc,cenadph,isdoprovize';
{$ELSE}
  gbZSCopyListPlatciSR := 'CenaText;CenaZaklad;CenaJednotka;CenaJednotky';
{$ENDIF}
  gbZSCopyListPohyby     := 'TYP;PORADI;PSC;ADRESA3;ZEMEKOD;ADRESAPOPIS;SPOJENI;CAS';
  gbZsTemplSubjektObj    := 'Objednávka pøepravy : {Zasilky.ZASILKA}';
  gbZsTemplSubjektPot    := 'Potvrzení objednávky pøepravy èíslo: {Zasilky.ZASILKA}';
  gbPlatceInfoDetailMode := false;
  gbZsCreateFVEnable     := true;
  gbZSCopyEnableOstNakl  := false;
  dxLayoutZsEdit         := true;

end;

procedure TZSfrmModule.jfsEvidenceModuleFinalModule(Sender: TObject);
begin
  rsModule.SaveValues;
end;

procedure TZSfrmModule.PrintModule(ADefaultReport: boolean; AKeyIdValue: string);
begin
  ZSdmd.mod_OpenRecord(AKeyIdValue);
  if ADefaultReport then
  begin
    PrepareRepObjednavka;
    dmReport.ShowReport(gbZSTiskObjednavka, frrZS);
  end
  else
  begin
    //frrZS.Recipient.Clear;
    dmReport.ShowManager(dmReport.GenEvidenceFolder(ModuleName), frrZS);
  end;
end;

procedure TZSfrmModule.frrZSGetValue(const VarName: String; var Value: Variant);
begin
  if CompareText(VarName, vnOtherRecId) = 0 then
  begin
    Value := ZSdmd.ZasilkySID.AsString;
  end;
  if CompareText(VarName, vnOtherSqlWhere) = 0 then
  begin
    Value := ZSdmd.ZasilkySeznam.SQLWhere.Text;
  end;
end;

function TZSfrmModule.PrepareRepObjednavka: boolean;
begin
  // iMerger.DataSets.Clear;
  // iMerger.DataSets.Add(GetZsdmd.Zasilky);
  // iMerger.DataSets.Add(ZSdmd.ZasilkySeznam);

  if (gbZSTiskObjednavka = '') or (not FileExists(gbZSTiskObjednavka)) then
    gbZSTiskObjednavka := RMselectSestava(dmReport.GenEvidenceFolder(ModuleName), frrZS);

  result := (gbZSTiskObjednavka <> '');
  if result then
  begin
    if gbAutoFillEmail then
      dmReport.frxMailExport.Address := ZSdmd.ZasilkyDOP_EMAILS.AsString
    else
      dmReport.frxMailExport.Address := '';

    iMerger.Lines.Text := gbZsTemplSubjektObj;
    iMerger.Prepare;
    iMerger.Merge;
    dmReport.frxMailExport.Subject := iMerger.MergedLines[0]; // 'Objednávka pøepravy : ' + ZSdmd.ZasilkyZASILKA.AsString;
  end;
end;

function TZSfrmModule.PrepareRepPotvrzeni: boolean;
begin
  if (gbZSTiskPotvrzeni = '') or (not FileExists(gbZSTiskPotvrzeni)) then
    gbZSTiskPotvrzeni := RMselectSestava(dmReport.GenEvidenceFolder(ModuleName), frrZS);

  result := (gbZSTiskPotvrzeni <> '');
  if result then
  begin
    dmReport.frxMailExport.Address    := ZSdmd.ZasilkyOBJ_EMAILS.AsString;
    dmReport.frxMailExport.Subject       := 'Potvrzení objednávky : ' + ZSdmd.ZasilkyZASILKA.AsString;
  end;

end;

end.
