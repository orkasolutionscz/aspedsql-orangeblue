{ -----------------------------------------------------------------------------
  Unit Name: AOPfrmuModule
  Author:    Administrator
  Purpose:
  History:   12.4.2002 prvni revize
  ----------------------------------------------------------------------------- }

unit AOPfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, fMessageDlg, appunConst, rsStorage,
  rsPropSaver, Menus, uCustomModule, uCustomForms,
  cxEditRepositoryItems, cxEdit, cxDBEditRepository, AOPfrauOptions,
  frxClass, frxDBSet, frxExportPDF, frxExportMail, IBODataset;

type
  TAOPMisto = record
    KodZeme: string;
    Psc: string;
    Mesto: string end;

    TAOPfrmModule = class(TjfsEvidenceModule)psAOP: TrsPropSaver;
    ActionList1: TActionList;
    actKTLZeme: TAction;
    actKTLSkupiny: TAction;
    actKTLPSC: TAction;
    actBrowse: TAction;
    actlBGModule: TActionList;
    actBGBrowse: TAction;
    frrAop: TfrxReport;
    frxAopSeznam: TfrxDBDataset;
    frxAOP: TfrxDBDataset;
    dsAopSkupiny: TDataSource;
    dsAOPFirmy: TDataSource;
    dsAopLook: TDataSource;
    dsKTLZeme: TDataSource;
    dsAOPStatus: TDataSource;
    cxRebGlobal: TcxEditRepository;
    repFirmy: TcxEditRepositoryLookupComboBoxItem;
    repStaty: TcxEditRepositoryLookupComboBoxItem;
    repStatyShort: TcxEditRepositoryLookupComboBoxItem;
    repPrefMail: TcxEditRepositoryComboBoxItem;
    repAOPStatus: TcxEditRepositoryLookupComboBoxItem;
    repAdresaButton: TcxEditRepositoryButtonItem;
    repFirmyFull: TcxEditRepositoryLookupComboBoxItem;
    repSkupiny: TcxEditRepositoryLookupComboBoxItem;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure actKTLZemeExecute(Sender: TObject);
    procedure actKTLSkupinyExecute(Sender: TObject);
    procedure actKTLPSCExecute(Sender: TObject);
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure actBrowseExecute(Sender: TObject);
    procedure jfsEvidenceModuleFinalModule(Sender: TObject);
  private
    FgbAOPCopyList: string;
    procedure SetgbAOPCopyList(const Value: string);
    procedure repAopStatyPropertiesButtonClick(Sender: TObject; AButtonIndex: integer);
    procedure repSkupinyButtonClick(Sender: TObject; AButtonIndex: integer);
    procedure repStatusButtonClick(Sender: TObject; AButtonIndex: integer);
    { Private declarations }
  public
    procedure ShowBrowse(AWhere: string);
    // function ShowDetail(AAOPKod: string; Mode: TFormShowMode): string;
    // function ShowJmenoDetail(AID: string; Mode: TFormShowMode): string;
    function GetNewKeyIdValue(ARada: string): string;

    procedure PrintModule(ADefaultReport: boolean = false; AKeyIdValue: string = ''); override;
    function GetDefaultReport: string;

    { Ostatni funkce }
    procedure JMShowViewAOP(AZnacka: string);

    { New Katalogy }
    function ShowKTLPsc(var AKodMista: TAOPMisto): boolean;
    function KTLPscAppend(var AKodMista: TAOPMisto): boolean;
    // function ShowKTLStaty(var AStat: string): boolean;
    function HledejMesto(APSC: string): string;
    { Ostatni }
    function GetKommEmail(aAOPKod: string): string;

    procedure repFirmyPropertiesButtonClick(Sender: TObject; AButtonIndex: integer);
    procedure RefreshKatalogs;
  published
    property gbAOPCopyList: string read FgbAOPCopyList write SetgbAOPCopyList;
  end;

function telNormPhone(AVolZeme: string; AVolUto: string; ATelCislo: string): string;

var
  AOPfrmModule: TAOPfrmModule;

function GetAOPmodul: TAOPfrmModule;

implementation

uses
  variants, JclStrings, appdmduSystem, _frmuCustomBrowse, AOPdmdu, AOPfrmuBrowse, AOPfrmuPickUser,
  AOPfrmuEdit, fAOPSkupinyUnit, fAOPStatyUnit, appfrmuGlobal,
  fAOPscUnit, jclMapi, uAOPConstDefUnit, Devexptls,
  fKatalogyModul, uAppControler, uSendFaxMail, appReportModule, frxPreview, appIniOptionsUnit,
  cxDBLookupEdit, cxLookupEdit, fStatusLook, appReportManagerForm, uaopfirmaclass;

{$R *.DFM}
{ Communications Functions }

function telNormPhone(AVolZeme: string; AVolUto: string; ATelCislo: string): string;
var
  iCountry: string;
  iPrefix : string;
  iPhone  : string;
begin
  iCountry := trim(AVolZeme);
  if iCountry = '' then
    iCountry := '+420';

  iPrefix := trim(AVolUto);

  if strLeft(iPrefix, 1) = '0' then
    iPrefix := strRight(iPrefix, length(iPrefix) - 1);
  iPhone    := trim(ATelCislo);
  Result    := iCountry + '-' + iPrefix + '-' + iPhone;

end;

function GetAOPmodul: TAOPfrmModule;
begin
  if not Assigned(AOPfrmModule) then
    Application.CreateForm(TAOPfrmModule, AOPfrmModule);
  Result := AOPfrmModule;

end;

{ ****************************************************************
  *
  *  F i l l V a l u e s()
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:
  *
  *  Input:  AZnackaAOP - znacka adresy
  *
  *  Return:
  *          TRUE - pokud je v tabulce, zaroven naplneni vlastnosti objektu
  *          FALSE - neni v tabulce, zaroven vynulovani vlastnosti
  *
  *  Description:
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

function TAOPfrmModule.GetNewKeyIdValue(ARada: string): string;
begin
  Result := ARada;
  if ExistCisRady.IndexOf(ARada) >= 0 then
    Result := dmdSystem.GetNewNum(ModuleName, ARada, true);
end;

procedure TAOPfrmModule.ShowBrowse(AWhere: string);
begin
  FindShowFormWhereOrder(TAOPBrowseFrm, AWhere, '');
end;

// function TAOPfrmModule.ShowDetail(AAOPKod: string; Mode: TFormShowMode): string;
// var
// frm: TAOPfrmEdit;
// begin
// frm := TAOPfrmEdit.CreateInKeyIdValue(Application, AAOPKod);
// try
// with frm do
// begin
// case mode of
// fsmCopy: actRecCopy.Execute;
// fsmInsert: actRecNew.Execute;
// end;
// ShowModal;
// Result := KeyIDValue;
// end;
// finally
// frm.free;
// end;
// end;

// function TAOPfrmModule.ShowJmenoDetail(AID: string; Mode: TFormShowMode):
// string;
// var
// frm: TAOPfrmJmena;
// begin
// frm := TAOPfrmJmena.CreateInKeyIdValue(Application, AID);
// try
// with frm do
// begin
// case mode of
// fsmCopy:  actRecCopy.Execute;
// fsmInsert: actRecNew.Execute;
// end;
// ShowModal;
// Result := KeyIDValue;
// end;
// finally
// frm.free;
// end;
// end;
//
{ ********************************************************* }
{ Katalogy evidence AOP }
{ ********************************************************* }
{ ****************************************************************
  *
  *  S h o w K T L P s c ()
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:   7.6.2001
  *
  *  Input:  AkodMista - record
  *
  *  Return: TRUE - pokud bylo vybramo misto ze seznamu, zaroven
  *                 je naplnen record AKodMista
  *
  *  Description:
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

function TAOPfrmModule.ShowKTLPsc(var AKodMista: TAOPMisto): boolean;
var
  dlg: TfrmAopPsc; // TAOPfrmKTLPsc;
begin
  // Pokus o nalezeni prislusneho zaznamu

  dlg := TfrmAopPsc.Create(nil);
  try
    dlg.SetLookupMode(true);
    if AKodMista.Psc <> '' then
    begin
      if AKodMista.KodZeme <> EmptyStr then
        AOPdmd.KTLPSC.Locate('KODZEME;PSC', VarArrayOf([AKodMista.KodZeme, AKodMista.Psc]), [])
      else
        AOPdmd.KTLPSC.Locate('PSC', AKodMista.Psc, []);
    end;
    dlg.ShowModal;
    Result := (dlg.ModalResult = mrok);
    if Result then
      with AKodMista do
      begin
        Psc     := AOPdmd.KTLPSCPSC.AsString;
        KodZeme := AOPdmd.KTLPSCKODZEME.AsString;
        Mesto   := AOPdmd.KTLPSCMESTO.AsString;
      end;
  finally
    dlg.Free;
  end;
end;

{ ****************************************************************
  *
  *  K T L P s c A p p e n d ()
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:   1.9.2001
  *
  *  Input:  AKodMista - Naplneny record udaji o mistu
  *
  *  Return: TRUE - Pokud byl zaznam uspesne pridan do tabulky.
  *          FALSE - nemohl byt pridan uz tam je.
  *
  *  Description:
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

function TAOPfrmModule.KTLPscAppend(var AKodMista: TAOPMisto): boolean;
begin
  // result := false;
  // Kontrola zda tam je

  // Pridani zaznamu
  AOPdmd.KTLPSC.Insert;
  AOPdmd.KTLPSCKODZEME.AsString := AKodMista.KodZeme;
  AOPdmd.KTLPSCPSC.AsString     := AKodMista.Psc;
  AOPdmd.KTLPSCMESTO.AsString   := AKodMista.Mesto;
  try
    AOPdmd.KTLPSC.Post;
    Result := true;
  except
    Result := false;
  end;

end;

procedure TAOPfrmModule.DataModuleCreate(Sender: TObject);
begin
  dsKTLZeme.DataSet    := GetAOPdmd.KTLZeme;
  dsAopLook.DataSet    := AOPdmd.dtsAOPLook;
  dsAopSkupiny.DataSet := AOPdmd.KTLSkupiny;
  dsAOPFirmy.DataSet   := AOPdmd.dtsAOPFirmy;
  dsAOPStatus.DataSet  := AOPdmd.dtsAopSU;
  gbAOPCopyList        := 'NAZEV;ADRESA1;ADRESA2;ADRESA3;PSC';
  Jf_SetLook2butons(repFirmy.Properties, repFirmyPropertiesButtonClick);
  Jf_SetLook2butons(repStaty.Properties, repAopStatyPropertiesButtonClick);
  Jf_SetLook2butons(repSkupiny.Properties, repSkupinyButtonClick);
  Jf_SetLook2butons(repAOPStatus.Properties, repStatusButtonClick);

  with TcxCustomEditPropertiesAccess(repFirmyFull.Properties) do
  begin
    Buttons.Items[0].Width := 10;
    with Buttons.Add as TcxEditButton do
    begin
      Default := false;
      Kind    := BkEllipsis;
    end;
    with Buttons.Add as TcxEditButton do
    begin
      Default := false;
      Kind    := bkGlyph;
      Glyph.LoadFromResourceName(0, 'B_DETAIL1');
    end;
    with Buttons.Add as TcxEditButton do
    begin
      Default := false;
      Kind    := bkGlyph;
      Glyph.LoadFromResourceName(0, 'B_ERASE1');
    end;
    // OnButtonClick := repFirmyPropertiesButtonClick;
    ClearKey := TextToShortCut('Ctrl+X');
  end;

end;

procedure TAOPfrmModule.DataModuleDestroy(Sender: TObject);
begin
  psAOP.SaveValues;
end;

function TAOPfrmModule.GetDefaultReport: string;
begin
  if Self.DefaultReport = '' then
    Self.DefaultReport := RMselectSestava(dmReport.GenEvidenceFolder(ModuleName), frrAop);
  Result               := Self.DefaultReport;

end;

function TAOPfrmModule.GetKommEmail(aAOPKod: string): string;
begin
  if AOPdmd.mod_OpenRecord(aAOPKod) then
    Result := AOPdmd.dtsAOPEMAIL.AsString
  else
    Result := '';

end;

procedure TAOPfrmModule.actKTLZemeExecute(Sender: TObject);
begin
  repAopStatyPropertiesButtonClick(nil, 1);
end;

procedure TAOPfrmModule.actKTLSkupinyExecute(Sender: TObject);
begin
  repSkupinyButtonClick(nil, 1);
end;

procedure TAOPfrmModule.actKTLPSCExecute(Sender: TObject);
var
  sMisto: TAOPMisto;
begin
  with sMisto do
  begin
    Psc     := '';
    KodZeme := '';
    Mesto   := '';
  end;
  ShowKTLPsc(sMisto)

end;

procedure TAOPfrmModule.JMShowViewAOP(AZnacka: string);
var
  IsDataActive: boolean;
begin
  with AOPdmd.ViewAOPJmena do
  begin
    IsDataActive := active;
    DisableControls;
    try
      Close;
      ParamByName(SAOPKEYPARAMNAME).AsString := AZnacka;
      if IsDataActive then
        open;
    finally
      EnableControls;
    end;
  end
end;

procedure TAOPfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin
  psAOP.LoadValues;
  if not GetdmdSystem.CheckRegisteredNumLine(ModuleName, NewNumRadaJmeno) then
    dmdSystem.RegisterNewNumLine(ModuleName, NewNumRadaJmeno, 'A', 'OP', 5);
  dmdSystem.GetAviableNumLines(ModuleName, ExistCisRady);
end;

procedure TAOPfrmModule.actBrowseExecute(Sender: TObject);
begin
  ShowBrowse('');
end;

function TAOPfrmModule.HledejMesto(APSC: string): string;
var
  tmpFindString: string;
begin
  tmpFindString := 'KodZeme = "CZ" AND psc like ''' + APSC + '*' + '''';
  if AOPdmd.KTLPSC.Locate('KODZEME;PSC', VarArrayOf(['CZ', APSC]), []) then
    Result := AOPdmd.KTLPSCMESTO.AsString
  else
    Result := EmptyStr;
end;

procedure TAOPfrmModule.jfsEvidenceModuleFinalModule(Sender: TObject);
begin
  psAOP.SaveValues;
end;

procedure TAOPfrmModule.PrintModule(ADefaultReport: boolean; AKeyIdValue: string);
begin
  AOPdmd.mod_OpenRecord(AKeyIdValue);
  AOPdmd.ViewAOPJmena.active := true;
  if ADefaultReport then
    dmReport.ShowReport(DefaultReport, AOPfrmModule.frrAop)
  else
    dmReport.ShowManager(dmReport.GenEvidenceFolder('Adresy'), AOPfrmModule.frrAop);
end;

procedure TAOPfrmModule.RefreshKatalogs;
begin
  if GetAOPdmd.dtsAOPFirmy.active then
    GetAOPdmd.dtsAOPFirmy.Refresh;

end;

procedure TAOPfrmModule.repAopStatyPropertiesButtonClick(Sender: TObject; AButtonIndex: integer);
var
  lcDlg: TAOPfrmKTLZeme;
begin
  case AButtonIndex of (* *)
    1:
      begin
        lcDlg := TAOPfrmKTLZeme.Create(Self);
        if Assigned(Sender) and (TcxCustomDBLookupEdit(Sender).EditValue <> null) then
        begin

          lcDlg.SetLookupMode;                                                               // Nastaveni formulare do Hledaciho modu
          lcDlg.dsZaznam.DataSet.Locate('KOD', TcxCustomDBLookupEdit(Sender).EditValue, []); // Pokus o dohledani hodnoty
          if lcDlg.ShowModal = mrok then
          begin
            TcxCustomDBLookupEdit(Sender).EditValue := lcDlg.dsZaznam.DataSet.FieldByName('KOD').AsVariant;
            TcxCustomDBLookupEdit(Sender).PostEditValue;
          end;
        end
        else
          lcDlg.ShowModal;
      end;
  end; (* case *)
end;

procedure TAOPfrmModule.repFirmyPropertiesButtonClick(Sender: TObject; AButtonIndex: integer);
var
  aKeyValue  : string;
  IntDopravce: TAOPFirmaClass;
begin
  case AButtonIndex of (* *)
    1:
      begin
        IntDopravce := TAOPFirmaClass.Create(vartostr(TcxCustomLookupEdit(Sender).EditValue), true);
        try
          if IntDopravce.NaselAdresu then
          begin
            TcxCustomDBLookupEdit(Sender).EditValue := IntDopravce.AOPKod;
            TcxCustomDBLookupEdit(Sender).PostEditValue;
          end;

        finally
          IntDopravce.Free;
        end;
      end;
    2:
      begin
        if Assigned(Sender) then
          if Sender is TcxCustomLookupEdit then
            aKeyValue := TcxCustomLookupEdit(Sender).EditValue;
        if aKeyValue <> null then
        begin
          AopGetDetail(aKeyValue);
        end;
      end;
    3:
      begin
        if Assigned(Sender) then
          if Sender is TcxCustomLookupEdit then
          begin
            TcxCustomLookupEdit(Sender).EditValue := null;
            TcxCustomLookupEdit(Sender).PostEditValue;
          end;
      end;
  end; (* case *)

end;

procedure TAOPfrmModule.repSkupinyButtonClick(Sender: TObject; AButtonIndex: integer);
var
  lcDlg: TAOPfrmKTLSkupiny;
begin
  case AButtonIndex of (* *)
    1:
      begin
        lcDlg := TAOPfrmKTLSkupiny.Create(Self);
        if Assigned(Sender) and (TcxCustomDBLookupEdit(Sender).EditValue <> null) then
        begin

          lcDlg.SetLookupMode;                                                                 // Nastaveni formulare do Hledaciho modu
          lcDlg.dsZaznam.DataSet.Locate('POPIS', TcxCustomDBLookupEdit(Sender).EditValue, []); // Pokus o dohledani hodnoty
          if lcDlg.ShowModal = mrok then
          begin
            TcxCustomDBLookupEdit(Sender).EditValue := lcDlg.dsZaznam.DataSet.FieldByName('POPIS').AsVariant;
            TcxCustomDBLookupEdit(Sender).PostEditValue;
          end;
        end
        else
          lcDlg.ShowModal;
      end;
  end; (* case *)
end;

procedure TAOPfrmModule.repStatusButtonClick(Sender: TObject; AButtonIndex: integer);
var
  dlg: TfrmAppStausLook;
begin
  case AButtonIndex of (* *)
    1:
      begin
        dlg := appGetStatusUserLook(AOPdmd.dtsAopSU, 'Adresáø');
        try
          dlg.intLookupFnc(Sender);
        finally
          dlg.Free;
        end;
      end;
  end; (* case *)
end;

procedure TAOPfrmModule.SetgbAOPCopyList(const Value: string);
begin
  FgbAOPCopyList := Value;
end;

end.
