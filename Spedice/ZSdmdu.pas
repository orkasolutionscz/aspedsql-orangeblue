{ ***************************************************************
  *
  * Unit Name: ZSdmdu
  * Purpose  :
  * Author   :
  * History  :
  24.01.2001  - Build 0.4
  Po kopii zasilky nebyla zobrazena cena platci a provize,
  opraveno volanim funkce UpdatePlaci.

  **************************************************************** }

unit ZSdmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, fMessageDlg, cxEdit, cxDBEditRepository,
  IBODataset, IB_Components, IB_TransactionSource, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, uCustomModule;

type
  TZSdmd = class(TjfsDefaultModule)
    dsZasilky: TDataSource;
    dsZasilkySeznam: TDataSource;
    dsZAPlatci: TDataSource;
    dsZAPohyby: TDataSource;
    ZAPohyby: TIBOQuery;
    Zasilky: TIBOQuery;
    ZasilkyZASILKA: TStringField;
    ZasilkyREF_ZSPODMINKY: TIntegerField;
    ZasilkyREF_POTVRZENI: TIntegerField;
    ZasilkyDATUM: TDateTimeField;
    ZasilkyINTOBJ: TStringField;
    ZasilkyVOZIDLO: TStringField;
    ZasilkyAUTOSPZ: TStringField;
    ZasilkyNSTAT: TStringField;
    ZasilkyNPSC: TStringField;
    ZasilkyNMISTO: TStringField;
    ZasilkyVSTAT: TStringField;
    ZasilkyVPSC: TStringField;
    ZasilkyVMISTO: TStringField;
    ZasilkyVDATUM: TDateTimeField;
    ZasilkyHMBRUTTO: TFloatField;
    ZasilkyHMTEXT: TStringField;
    ZasilkyPRIKAZ: TStringField;
    ZasilkyCENADOPRAVCE: TFloatField;
    ZasilkyCENAPLATCI: TFloatField;
    ZasilkyCENAPROVIZE: TFloatField;
    ZasilkyAOPKOD_DOP: TStringField;
    ZasilkyAOPKOD_OBJ: TStringField;
    ZasilkySUBSTRATINFO: TStringField;
    ZasilkySUBSTRAT: TMemoField;
    ZasilkyCLO: TMemoField;
    ZasilkyCENASMLUVNI: TFloatField;
    ZasilkyCENAJEDNOTKY: TFloatField;
    ZasilkyCENAJEDNOTKA: TStringField;
    ZasilkyCENASRAZKY: TFloatField;
    ZasilkyCENADPHPROC: TFloatField;
    ZasilkyCENADPH: TFloatField;
    ZasilkyCENASUMA: TFloatField;
    ZasilkyCENAMENA: TStringField;
    ZasilkyCENAKURS: TFloatField;
    ZasilkyPODMINKY: TStringField;
    ZasilkyPOZNAMKA: TMemoField;
    ZasilkyCREADATE: TDateTimeField;
    ZasilkyCREAID: TStringField;
    ZasilkyUPDDATE: TDateTimeField;
    ZasilkyUPDID: TStringField;
    ZasilkySTAV: TIntegerField;
    ZasilkyDISPECER: TStringField;
    ZasilkyIntStredisko: TStringField;
    ZasilkyTyp: TStringField;
    ZasilkyIntTypZaznamu: TSmallintField;
    ZasilkyMESIC: TStringField;
    ZasilkyIntPoznamka: TMemoField;
    ZasilkyD_Nazev: TStringField;
    ZasilkyD_ADRESA: TStringField;
    ZasilkyD_MESTO: TStringField;
    ZasilkyD_PSC: TStringField;
    ZasilkyD_KODZEME: TStringField;
    ZasilkyD_ICO: TStringField;
    ZasilkyD_DIC: TStringField;
    ZasilkyD_TELEFON: TStringField;
    ZasilkyD_FAX: TStringField;
    ZasilkyD_GSM: TStringField;
    ZasilkyD_EMAIL: TStringField;
    ZasilkyD_KODSTBS: TStringField;
    ZasilkyD_SPLATNOST: TIntegerField;
    ZasilkyP_Nazev: TStringField;
    ZasilkyP_ADRESA: TStringField;
    ZasilkyP_MESTO: TStringField;
    ZasilkyP_PSC: TStringField;
    ZasilkyP_KODZEME: TStringField;
    ZasilkyP_ICO: TStringField;
    ZasilkyP_DIC: TStringField;
    ZasilkyP_TELEFON: TStringField;
    ZasilkyP_FAX: TStringField;
    ZasilkyP_GSM: TStringField;
    ZasilkyP_EMAIL: TStringField;
    ZasilkyP_KODSTBS: TStringField;
    ZasilkyP_SPLATNOST: TIntegerField;
    ZasilkyD_POBOCKA: TStringField;
    ZasilkyP_POBOCKA: TStringField;
    ZasilkyPODMINKY_DOPRAVCE: TMemoField;
    ZasilkySID: TStringField;
    ZasilkyVYBER: TStringField;
    ZasilkyJEFAKTURA: TStringField;
    ZAPlatci: TIBOQuery;
    ZAPlatciID: TIntegerField;
    ZAPlatciAOPKOD: TStringField;
    ZAPlatciZASILKA: TStringField;
    ZAPlatciREFFV: TStringField;
    ZAPlatciPOZICE: TStringField;
    ZAPlatciPODMINKY: TStringField;
    ZAPlatciCENASUMA: TFloatField;
    ZAPlatciCENAMENA: TStringField;
    ZAPlatciCENAKURS: TFloatField;
    ZAPlatciICO: TStringField;
    ZAPlatciDIC: TStringField;
    ZAPlatciSPLATNOST: TIntegerField;
    ZAPlatciNAZEV: TStringField;
    ZAPlatciADRESA1: TStringField;
    ZAPlatciADRESA3: TStringField;
    ZAPlatciREF_ZASILKA: TStringField;
    ZAPlatciCREAID: TStringField;
    ZAPlatciUPDDATE: TDateTimeField;
    ZAPlatciUPDID: TStringField;
    ZAPlatciCREADATE: TDateTimeField;
    ZAPlatciFAKTURA: TStringField;
    ZAPlatciADRESA2: TStringField;
    ZAPlatciPSC: TStringField;
    ZAPlatciKODZEME: TStringField;
    ZAPohybyID: TIntegerField;
    ZAPohybyTyp: TStringField;
    ZAPohybyPopis: TStringField;
    ZAPohybyporadi: TStringField;
    ZAPohybyZASILKA: TStringField;
    ZAPohybyAdresaPopis: TMemoField;
    ZAPohybyADRESA3: TStringField;
    ZAPohybyPSC: TStringField;
    ZAPohybyZEMEKOD: TStringField;
    ZAPohybySPOJENI: TMemoField;
    ZAPohybyDATUM: TDateTimeField;
    ZAPohybyCAS: TStringField;
    ZAViewHistorie: TIBOQuery;
    ZAViewHistorieID: TIntegerField;
    ZAViewHistorieHisttyp: TStringField;
    ZAViewHistorieHisttext: TStringField;
    ZAViewHistorieCreaid: TStringField;
    ZAViewHistorieCreadate: TDateTimeField;
    ZAViewHistorieUpdid: TStringField;
    ZAViewHistorieUpddate: TDateTimeField;
    ZAViewHistorieStav: TIntegerField;
    KTLHistorie: TIBOQuery;
    KTLHistorieTYP: TStringField;
    KTLHistorieDEFAULTTEXT: TStringField;
    KTLZSSablony: TIBOQuery;
    KTLZSSablonyID: TIntegerField;
    KTLZSSablonyEvidence: TStringField;
    KTLZSSablonyPopis: TStringField;
    KTLZSSablonySablona: TMemoField;
    ZasilkySeznam: TIBOQuery;
    ZasilkySeznamZASILKA: TStringField;
    ZasilkySeznamTYP: TStringField;
    ZasilkySeznamDATUM: TDateTimeField;
    ZasilkySeznamINTOBJ: TStringField;
    ZasilkySeznamDISPECER: TStringField;
    ZasilkySeznamIntStredisko: TStringField;
    ZasilkySeznamMESIC: TStringField;
    ZasilkySeznamPrikazce: TStringField;
    ZasilkySeznamSUBSTRATINFO: TStringField;
    ZasilkySeznamDopravce: TStringField;
    ZasilkySeznamVOZIDLO: TStringField;
    ZasilkySeznamAUTOSPZ: TStringField;
    ZasilkySeznamNSTAT: TStringField;
    ZasilkySeznamNPSC: TStringField;
    ZasilkySeznamNMISTO: TStringField;
    ZasilkySeznamVDATUM: TDateTimeField;
    ZasilkySeznamVSTAT: TStringField;
    ZasilkySeznamVPSC: TStringField;
    ZasilkySeznamVMISTO: TStringField;
    ZasilkySeznamHMBRUTTO: TFloatField;
    ZasilkySeznamHMTEXT: TStringField;
    ZasilkySeznamPRIKAZ: TStringField;
    ZasilkySeznamCENASMLUVNI: TFloatField;
    ZasilkySeznamCENAJEDNOTKA: TStringField;
    ZasilkySeznamCENAJEDNOTKY: TFloatField;
    ZasilkySeznamCENAMENA: TStringField;
    ZasilkySeznamCENADOPRAVCE: TFloatField;
    ZasilkySeznamCENAPLATCI: TFloatField;
    ZasilkySeznamCENAPROVIZE: TFloatField;
    ZasilkySeznamCREADATE: TDateTimeField;
    ZasilkySeznamCREAID: TStringField;
    ZasilkySeznamUPDDATE: TDateTimeField;
    ZasilkySeznamUPDID: TStringField;
    ZasilkySeznamIntPoznamka: TMemoField;
    ZasilkySeznamAOPKOD_OBJ: TStringField;
    ZasilkySeznamAOPKOD_DOP: TStringField;
    ZasilkySeznamSTATEUSER: TIntegerField;
    ZasilkySeznamVYBER: TStringField;
    ZasilkySeznamJEFAKTURA: TStringField;
    ZAPohybyREF_ZASILKA: TStringField;
    ZAPlatciSrazky: TIBOQuery;
    ZAPlatciSrazkyID: TIntegerField;
    ZAPlatciSrazkyRefPlatce: TIntegerField;
    ZAPlatciSrazkyCenaText: TStringField;
    ZAPlatciSrazkyCenaZaklad: TFloatField;
    ZAPlatciSrazkyCenaJednotka: TStringField;
    ZAPlatciSrazkyCenaJednotky: TFloatField;
    ZAPlatciSrazkyCenaSuma: TFloatField;
    ZSVyber: TIBOQuery;
    ZSVyberZASILKA: TStringField;
    ZSVyberAOPKOD_DOP: TStringField;
    ZSVyberDATUM: TDateTimeField;
    ZSVyberDopravce: TStringField;
    ZSVyberPrikazce: TStringField;
    ZSVyberAUTOSPZ: TStringField;
    ZSVyberCENASUMA: TFloatField;
    ZSVyberCENAMENA: TStringField;
    ZSVyberCENADOPRAVCE: TFloatField;
    ZSVyberSID: TStringField;
    ZasilkySeznamSID: TStringField;
    sqPohyby: TIBOQuery;
    sqPohybyTyp: TStringField;
    sqPohybyZEMEKOD: TStringField;
    sqPohybyPSC: TStringField;
    sqPohybyADRESA3: TStringField;
    sqPohybyAdresaPopis: TMemoField;
    sqPohybySPOJENI: TMemoField;
    ZSPLAVyber: TIBOQuery;
    ZSPLAVyberID: TIntegerField;
    ZSPLAVyberAOPKOD: TStringField;
    ZSPLAVyberZASILKA: TStringField;
    ZSPLAVyberCO: TStringField;
    ZSPLAVyberPOZICE: TStringField;
    ZSPLAVyberCENASUMA: TFloatField;
    ZSPLAVyberCENAMENA: TStringField;
    ZSPLAVyberNAZEV: TStringField;
    ZSPLAVyberADRESA3: TStringField;
    ZSPLAVyberDATUM: TDateTimeField;
    ZSPLAVyberNAKLADKA: TStringField;
    ZSPLAVyberVYKLADKA: TStringField;
    ZSPLAVyberAUTOSPZ: TStringField;
    ZSPLAVyberSTAV: TIntegerField;
    ZSPLAVyberCENASMLUVNI: TFloatField;
    ZSPLAVyberCENAJEDNOTKY: TFloatField;
    ZSPLAVyberCENADPHPROC: TBCDField;
    ZSPLAVyberCENAJEDNOTKA: TStringField;
    ZSPLAVyberSUBSTRATINFO: TStringField;
    ZSPLAVyberSUBSTRAT: TMemoField;
    ZSPLAVyberHMBRUTTO: TFloatField;
    ZSPLAVyberHMTEXT: TStringField;
    ZSPLAVyberPRIKAZ: TStringField;
    ZSPLAVyberNSTAT: TStringField;
    ZSPLAVyberNPSC: TStringField;
    ZSPLAVyberNMISTO: TStringField;
    ZSPLAVyberVSTAT: TStringField;
    ZSPLAVyberVPSC: TStringField;
    ZSPLAVyberVMISTO: TStringField;
    ZADopisy: TIBOQuery;
    ZADopisySID: TStringField;
    ZADopisyZNACKA: TStringField;
    ZADopisyAOPKOD: TStringField;
    ZADopisyOWNER: TStringField;
    ZADopisyNAZEV: TStringField;
    ZADopisyDATUM: TDateTimeField;
    ZADopisyVEC: TStringField;
    ZasilkySeznamSTAV: TSmallintField;
    ZasilkyP_POPIS: TStringField;
    ZasilkyD_POPIS: TStringField;
    ZSVyberNAKLADKA: TStringField;
    ZSVyberVYKLADKA: TStringField;
    ZAViewHistorieREF_ZASILKA: TStringField;
    ZasilkySeznamNAKLADKA: TStringField;
    ZasilkySeznamVYKLADKA: TStringField;
    ZAPlatciSrazkyCENAPOPIS: TMemoField;
    ZAPlatciSrazkyCENASLEVA: TBCDField;
    ZAPlatciSrazkyCENASAZBADPH: TSmallintField;
    ZAPlatciSrazkyISDOPROVIZE: TStringField;
    ZAPlatciSrazkyCENADPH: TBCDField;
    ZAPlatciCENADPH: TBCDField;
    ZAPlatciSrazkyCENADPHPROC: TBCDField;
    ZAPlatciCENASUMASDPH: TCurrencyField;
    ZasilkyFDCELKEM: TBCDField;
    ZasilkyFVCELKEM: TBCDField;
    ZasilkySTATEUSER: TIntegerField;
    ZasilkyVYRIZENO: TStringField;
    ZasilkySeznamTYDEN: TStringField;
    ZasilkySeznamFDCELKEM: TBCDField;
    ZasilkySeznamFVCELKEM: TBCDField;
    ZasilkySeznamVYRIZENO: TStringField;
    ZasilkySeznamFVDPROVIZE: TBCDField;
    ZAPlatciCENASUMAKC: TBCDField;
    ZAOstNakl: TIBOQuery;
    ZAOstNaklID: TStringField;
    ZAOstNaklREF_ZASILKY: TStringField;
    ZAOstNaklVN_TYP: TSmallintField;
    ZAOstNaklRADEK: TIntegerField;
    ZAOstNaklPOPIS: TStringField;
    ZAOstNaklCENAPROVIZE: TBCDField;
    ZasilkySeznamONCELKEM: TBCDField;
    ZasilkySeznamOVCELKEM: TBCDField;
    ZasilkySeznamKRATKEINFO: TStringField;
    ZasilkyKRATKEINFO: TStringField;
    cxGridViewRepository1: TcxGridViewRepository;
    tvPlatci: TcxGridDBTableView;
    tvPlatciID: TcxGridDBColumn;
    tvPlatciAOPKOD: TcxGridDBColumn;
    tvPlatciNAZEV: TcxGridDBColumn;
    tvPlatciFAKTURA: TcxGridDBColumn;
    tvPlatciPODMINKY: TcxGridDBColumn;
    tvPlatciCENASUMA: TcxGridDBColumn;
    tvPlatciCENASUMACZK: TcxGridDBColumn;
    tvPlatciCENAMENA: TcxGridDBColumn;
    ZasilkyCENASUMASDPH: TCurrencyField;
    ZasilkySeznamDATPORIZENI: TDateField;
    ZasilkyDATPORIZENI: TDateField;
    ZasilkyCENASAZBADPH: TSmallintField;
    KTLZSSablonyVEC: TStringField;
    ZAOstNaklREF_FAKTURA: TStringField;
    ZAOstNaklFAKTUROVANO: TStringField;
    ZAPlatciPLA_EMAILS: TStringField;
    ZasilkyOBJ_EMAILS: TStringField;
    ZasilkyDOP_EMAILS: TStringField;
    ZAPlatciSrazkyCENAMENA: TStringField;
    ZAPlatciSrazkyCENAKURZ: TBCDField;
    ZAPlatciSrazkyCENAMENAZAKLAD: TBCDField;
    dtsZSProvize: TIBOQuery;
    dtsZSProvizeID: TIntegerField;
    dtsZSProvizeREF_ZASILKA: TStringField;
    dtsZSProvizeDISPECER: TStringField;
    dtsZSProvizePROC_Z_PROV: TIntegerField;
    dtsZSProvizeISMASTER: TStringField;
    dtsZSProvizePROPLACENO: TStringField;
    dtsZSProvizePROPLACENO_DATUM: TDateField;
    dtsZSProvizePROPLACENO_IDSESTAVY: TIntegerField;
    dtsZSProvizeCALC_PROC_PROC: TCurrencyField;
    ZasilkySeznamSTATEUSERCOLOR: TIntegerField;
    tvPlatciDetail: TcxGridDBTableView;
    dsPlatciPol: TDataSource;
    tvPlatciDetailID: TcxGridDBColumn;
    tvPlatciDetailREFPLATCE: TcxGridDBColumn;
    tvPlatciDetailCENATEXT: TcxGridDBColumn;
    tvPlatciDetailCENAMENAZAKLAD: TcxGridDBColumn;
    tvPlatciDetailCENAMENA: TcxGridDBColumn;
    tvPlatciDetailCENAKURZ: TcxGridDBColumn;
    tvPlatciDetailCENAZAKLAD: TcxGridDBColumn;
    tvPlatciDetailCENAJEDNOTKA: TcxGridDBColumn;
    tvPlatciDetailCENAJEDNOTKY: TcxGridDBColumn;
    tvPlatciDetailCENASUMA: TcxGridDBColumn;
    tvPlatciDetailCENAPOPIS: TcxGridDBColumn;
    tvPlatciDetailCENASLEVA: TcxGridDBColumn;
    tvPlatciDetailISDOPROVIZE: TcxGridDBColumn;
    tvPlatciDetailCENASAZBADPH: TcxGridDBColumn;
    tvPlatciDetailCENADPHPROC: TcxGridDBColumn;
    tvPlatciDetailCENADPH: TcxGridDBColumn;
    ZAPlatciCENAPROVIZE: TBCDField;
    dtsZAFd: TIBOQuery;
    dtsZAFdREFFD: TStringField;
    dtsZAFdID: TIntegerField;
    dtsZAFdFakturaDO: TStringField;
    dtsZAFdPOLTEXT: TStringField;
    dtsZAFdVariabilni: TStringField;
    dtsZAFdDATSPLATNOST: TDateTimeField;
    dtsZAFdLIKVOK: TStringField;
    dtsZAFdCENASUMA: TBCDField;
    dtsZAFdISDOPROVIZE: TStringField;
    dtsZAFdCENAMENA: TStringField;
    dtsZAFdCENASUMASDPH: TBCDField;
    ZasilkySeznamTRASYPOCET: TIntegerField;
    ZSVyberDISPECER: TStringField;
    procedure dtsPlatciCENAMENAChange(Sender: TField);
    procedure PlatciCalcCena(Sender: TField);
    procedure SrazkyCalc(Sender: TField);
    procedure ZAPlatciSrazkyNewRecord(DataSet: TDataSet);
    procedure ZAPlatciSrazkyAfterPost(DataSet: TDataSet);
    procedure ZAPlatciNewRecord(DataSet: TDataSet);
    procedure ZasilkyNewRecord(DataSet: TDataSet);
    procedure ZAPohybyNewRecord(DataSet: TDataSet);
    procedure ZAPohybyBeforePost(DataSet: TDataSet);
    procedure ZAViewHistorieNewRecord(DataSet: TDataSet);
    procedure ZasilkySeznamAfterPost(DataSet: TDataSet);
    procedure dsZAPlatciDataChange(Sender: TObject; Field: TField);
    procedure ZAOstNaklNewRecord(DataSet: TDataSet);
    procedure ZAOstNaklAfterPost(DataSet: TDataSet);
    procedure ZAOstNaklAfterDelete(DataSet: TDataSet);
    procedure ZasilkyCalcFields(DataSet: TDataSet);
    procedure ZAPlatciAfterPost(DataSet: TDataSet);
    procedure ZAPlatciSrazkyBeforePost(DataSet: TDataSet);
    procedure ZAViewHistorieBeforeEdit(DataSet: TDataSet);
    procedure ZSKontrolaVyrizeno(DataSet: TDataSet);
    procedure ZAOstNaklBeforePost(DataSet: TDataSet);
    procedure ZasilkyBeforePost(DataSet: TDataSet);
    procedure ZasilkyCENAMENAChange(Sender: TField);
    procedure DopravceCalcCena(Sender: TField);
    procedure CenaZakladMenaCalc(Sender: TField);
    procedure ZAPlatciSrazkyCENAMENAChange(Sender: TField);
    procedure dtsZSProvizeNewRecord(DataSet: TDataSet);
    procedure ProvizeCheckIsMaster(DataSet: TDataSet);
    procedure dtsZSProvizeCalcFields(DataSet: TDataSet);
    procedure dtsZSProvizeAfterPost(DataSet: TDataSet);
    procedure ZAPohybyAfterPost(DataSet: TDataSet);
    procedure ZAPlatciCalcFields(DataSet: TDataSet);
    procedure jfsDefaultModuleInitModule(Sender: TObject);
    procedure ZasilkyAfterPost(DataSet: TDataSet);
    procedure dsZasilkyDataChange(Sender: TObject; Field: TField);
    procedure ZasilkyAfterOpen(DataSet: TDataSet);
    procedure ZAPlatciSrazkyBeforeDelete(DataSet: TDataSet);
    procedure ZAPlatciSrazkyBeforeEdit(DataSet: TDataSet);
    procedure ZAPlatciSrazkyBeforeInsert(DataSet: TDataSet);
    procedure ZAPlatciBeforeDelete(DataSet: TDataSet);
    procedure ZAPlatciBeforeEdit(DataSet: TDataSet);
    procedure ZAPlatciBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    // function   mzFindZasilka(pZasilka:string):boolean;
    procedure KontrolaVyrizeno;
  public
    { Public declarations }
    function ZSZasilkaCopy(AZasilka: string): string;

    // procedure ZSUpdateZasilka(AZasilka: string; UpdNakVyk: boolean = true; UpdPlatci: boolean = true);
    // procedure ZSUpdateCenaPlatci(AZasilka: string);
    // procedure ZSUpdateProvize(AZasilka: string);

    procedure ZSAddHistoryObject(AZasilka, HistObject, HistText: string; HistSystem: boolean);
    function ZSFakturaNova: string;

    function mod_OpenRecord(AKeyIDValue: string): boolean;
    procedure ViewShowZASILKA(AZasilka: string);
  end;

var
  ZSdmd: TZSdmd;

function GetZsdmd: TZSdmd;

implementation

uses
  variants, uVarClass, uAppUtils, JclDateTime, appdmduSystem, AOPfrmuModule, AOPdmdu,
  FVdmdu, ZSConstDefUnit, ZSfrmuModule, FVfrmuModule, appfrmuWaiWindow, ZSGenFVUnit, appGenIdUnit,
  appIniOptionsUnit, appfrmuGlobal, FVConstDefUnit, fKatalogyModul,
  appDPHunit, uAOPConstDefUnit, uaopfirmaclass;

{$R *.DFM}

function GetZsdmd: TZSdmd;
begin
  if not Assigned(ZSdmd) then
    Application.CreateForm(TZSdmd, ZSdmd);
  result := ZSdmd
end;

{ ****************************************************************
  *
  *  m o d _ O p e n R e c o r d()
  *
  ****************************************************************
  *  Author: Jiri Fait
  *  Date:   23.6.2001
  *
  *  Input:  AKeyIdValue - znacka zasilky
  *
  *  Return: true - pokud byl zaznam otevren a neni prazdny
  *
  *  Description: Otevre pomoci SQL zaznam ZS a podrizenych tabulek ZSNaklad,
  *               ZSVyklad, ZSPlatci. Pokud jsou jiz datasety otevreny, provede
  jejich refresh
  *
  *****************************************************************
  * Revisions:
  *
  ***************************************************************** }

function TZSdmd.mod_OpenRecord(AKeyIDValue: string): boolean;
begin
  if not ZAPlatciSrazky.Active then
    ZAPlatciSrazky.Open;
  if not ZAPlatci.Active then
    ZAPlatci.Open;
  if not ZAPohyby.Active then
    ZAPohyby.Open;
  if not ZAOstNakl.Active then
    ZAOstNakl.Open;
  if not dtsZSProvize.Active then
    dtsZSProvize.Open;
  if not dtsZAFd.Active then
    dtsZAFd.Open;
  try
    Zasilky.close;
    Zasilky.ParamByName(SZSKEYPARAMNAME).AsString := AKeyIDValue;
    Zasilky.Open;

    result := not Zasilky.IsEmpty;
  except
    result := false;
  end;
end;

function TZSdmd.ZSZasilkaCopy(AZasilka: string): string;
var
  NewCislo         : string;
  iRada            : string;
  aWorkDs, aWorkDs2: TIBOQuery;

begin
  result := EmptyStr;

  aWorkDs                             := TIBOQuery.Create(nil);
  aWorkDs.IB_Connection               := dmdSystem.IBOMainDB;
  aWorkDs2                            := TIBOQuery.Create(nil); // Pracovni dataset Srayek
  aWorkDs2.IB_Connection              := dmdSystem.IBOMainDB;
  aWorkDs.SQL.Text                    := 'select * from zs where sid = :sid';
  aWorkDs.ParamByName('SID').AsString := AZasilka;
  aWorkDs.Open;

  if aWorkDs.IsEmpty then
    Exit;

  result := GenGUIDID22;
  Self.mod_OpenRecord(result);

  iRada := zsfrmmodule.NewNumRadaJmeno;
  if zsfrmmodule.NewNumRadaVybrat then
    iRada := dmdSystem.SelectNumLine(zsfrmmodule.ModuleName);

  if iRada = EmptyStr then
    iRada := zsfrmmodule.NewNumRadaJmeno;

  NewCislo := zsfrmmodule.GetNewKeyIdValue(iRada);

  StartWait;
  try
    try
      // Nova zasilka
      Zasilky.Insert;
      Zasilky.FieldValues[zsfrmmodule.gbZSCopyListZS] := aWorkDs.FieldValues[zsfrmmodule.gbZSCopyListZS];
      ZasilkySID.AsString                             := result;
      ZasilkyZASILKA.AsString                         := NewCislo;
      Zasilky.Post;

      // Platci
      aWorkDs.close; // Pracovni dataset platcu
      aWorkDs.SQL.Text                    := 'select * from zsplatci where REF_ZASILKA = :SID';
      aWorkDs.ParamByName('SID').AsString := AZasilka;
      aWorkDs.Open;

      aWorkDs2.SQL.Text := 'SELECT * FROM ZSPLATCIPOL WHERE REFPLATCE = :REFPLATCE ';
      aWorkDs2.Open;

      while not aWorkDs.Eof do
      begin

        ZAPlatci.Insert;
        ZAPlatci.FieldValues[zsfrmmodule.gbZSCopyListPlatce] := aWorkDs.FieldValues[zsfrmmodule.gbZSCopyListPlatce];
        ZAPlatci.Post;

        aWorkDs2.close;
        aWorkDs2.ParamByName('REFPLATCE').AsString := aWorkDs.fieldbyname('ID').AsString;
        aWorkDs2.Open;
        // ******************************************************************
        // Tady bude insert srazek a prirázek
        // ******************************************************************

        while not aWorkDs2.Eof do
        begin
          ZAPlatciSrazky.Insert;
          ZAPlatciSrazky.FieldValues[zsfrmmodule.gbZSCopyListPlatciSR] := aWorkDs2.FieldValues[zsfrmmodule.gbZSCopyListPlatciSR];
          ZAPlatciSrazky.Post;
          aWorkDs2.Next;
        end;

        aWorkDs.Next;
      end;

      // Nakladka
      aWorkDs.close; // Pracovni dataset Pohybu
      aWorkDs.SQL.Text                    := 'select * from ZSNAKVYK where REF_ZASILKA = :SID';
      aWorkDs.ParamByName('SID').AsString := AZasilka;
      aWorkDs.Open;

      // Nakladka
      while not aWorkDs.Eof do
      begin
        ZAPohyby.Insert;
        ZAPohyby.FieldValues[zsfrmmodule.gbZSCopyListPohyby] := aWorkDs.FieldValues[zsfrmmodule.gbZSCopyListPohyby];
        ZAPohyby.Post;
        aWorkDs.Next;
      end;

      if zsfrmmodule.gbZSCopyEnableOstNakl then
      begin
        // Nakladka
        aWorkDs.close; // Pracovni dataset Pohybu
        aWorkDs.SQL.Text                    := 'select * from ZSOSTNV where REF_ZASILKY = :SID';
        aWorkDs.ParamByName('SID').AsString := AZasilka;
        aWorkDs.Open;

        // Nakladka
        while not aWorkDs.Eof do
        begin
          ZAOstNakl.Insert;
          ZAOstNakl.FieldValues[zsfrmmodule.gbZSCopyListOstNakl] := aWorkDs.FieldValues[zsfrmmodule.gbZSCopyListOstNakl];
          ZAOstNakl.Post;
          aWorkDs.Next;
        end;

      end;
    except
      raise;
    end;
  finally
    aWorkDs.Free;
    aWorkDs2.Free;
    StopWait;
  end;
end;

procedure TZSdmd.ZSAddHistoryObject(AZasilka, HistObject, HistText: string; HistSystem: boolean);
begin
  { pridani zaznamu historie }
  ZAViewHistorie.Active := True;
  ZAViewHistorie.Insert;
  ZAViewHistorieREF_ZASILKA.AsString := AZasilka;
  ZAViewHistorieHisttyp.AsString     := HistObject;
  ZAViewHistorieHisttext.AsString    := HistText;
  ZAViewHistorieCreaid.AsString      := jfaUserInfo.UserZnacka;

  if HistSystem then
    ZAViewHistorieStav.AsInteger := histStateSystem
  else
    ZAViewHistorieStav.AsInteger := 1;

  try
    ZAViewHistorie.Post;
  except
    raise;
  end;

end;

function TZSdmd.ZSFakturaNova: string;
var
  cFirma            : TAOPFirmaClass;
  iRada             : string;
  iSubstrat, iHmText: string;
  lcZNACKA          : string;
  sIdZasilka        : string;
  sIdPlatce         : Integer;
begin
  iSubstrat  := '';
  iHmText    := '';
  sIdZasilka := ZasilkySID.AsString;
  sIdPlatce  := ZAPlatciID.AsInteger; // Musime si to zapsat, protoze pri Zasilky.Refresh dojde k posunu
  Zasilky.Refresh;                    // Aby se nam projevily zmeny
  if not ZAPlatci.Locate('ID', sIdPlatce, []) then
  begin
    raise Exception.Create('Systemova chyba. Nenalezen zaznam platce s ID:' + IntToStr(sIdPlatce));
    Exit;
  end;
  { Kontrola zda nechce uzivatel vybrat alternativni radu }
  iRada := FVfrmModule.NewNumRadaJmeno;
  if FVfrmModule.NewNumRadaVybrat then
    iRada := dmdSystem.SelectNumLine(FVfrmModule.ModuleName);

  if iRada = EmptyStr then
    iRada := FVfrmModule.NewNumRadaJmeno;

  cFirma := TAOPFirmaClass.Create(ZAPlatciAOPKOD.AsString, false);
  try
    try
      result   := GenGUIDID22;
      lcZNACKA := FVfrmModule.GetNewKeyIdValue(iRada);
      ZAPohyby.Last; // Jdeme na konec aby jsme zjistili datum vykladky
      FVdmd.mod_OpenRecord(result);
      FVdmd.Faktury.Insert;
      FVdmd.FakturySID.AsString            := result;
      FVdmd.FakturyFAKTURA.AsString        := lcZNACKA;
      FVdmd.FakturyFAKTTYP.AsVariant       := dmdSystem.gbTypFaktury;
      FVdmd.FakturyTYP.AsInteger           := fvTypZasilka;
      FVdmd.FakturyREF_ZASILKA.AsString    := ZasilkySID.AsString;
      FVdmd.FakturyREFPLATCE.AsVariant     := ZAPlatciID.AsVariant;
      FVdmd.FakturyAOPKOD.AsString         := cFirma.AOPKod;
      FVdmd.FakturyNAZEV.AsString          := cFirma.Nazev;
      FVdmd.FakturyADRESA1.AsString        := cFirma.Adresa1;
      FVdmd.FakturyADRESA2.AsString        := cFirma.Adresa2;
      FVdmd.FakturyADRESA3.AsString        := cFirma.Adresa3;
      FVdmd.FakturyPSC.AsString            := cFirma.Psc;
      FVdmd.FakturyZEME.AsString           := cFirma.Zeme;
      FVdmd.FakturyICO.AsString            := cFirma.ICO;
      FVdmd.FakturyDIC.AsString            := cFirma.DIC;
      FVdmd.FakturyPLA_EMAILS.AsString     := ZAPlatciPLA_EMAILS.AsString;
      FVdmd.FakturyDATSPLATNOST.AsDateTime := date + cFirma.Splatnost;
      FVdmd.FakturySYMBVARIA.AsString      := lcZNACKA;
      FVdmd.FakturySYMBKONST.AsString      := dmdSystem.gbKonstantni;
      FVdmd.FakturyOBJEDNAVKA.AsString     := ZAPlatciPOZICE.AsString;
      FVdmd.FakturyOBJEDDATUM.Clear;
      FVdmd.FakturyDATVYSTAVENI.AsDateTime := date;
      FVdmd.FakturyMNAKL.AsString          := ZasilkyNSTAT.AsString + '-' + ZasilkyNPSC.AsString + ' ' + ZasilkyNMISTO.AsString;
      if Trim(FVdmd.FakturyMNAKL.AsString) = '-' then
        FVdmd.FakturyMNAKL.AsString := '';
      FVdmd.FakturyMVYKL.AsString   := ZasilkyVSTAT.AsString + '-' + ZasilkyVPSC.AsString + ' ' + ZasilkyVMISTO.AsString;
      if Trim(FVdmd.FakturyMVYKL.AsString) = '-' then
        FVdmd.FakturyMVYKL.AsString := '';

      { TODO : Zkontrolavat jaky datum jde do faktury }

      case dmdSystem.gbGenFVZDP of
        zdpDnes:
          begin
            FVdmd.FakturyDATDANPOV.AsDateTime := date()
          end;
        zdpNakladka:
          begin
            // Pokud neni datum nakladky vyplnen, tak dnesni datum
            if ZasilkyDATUM.AsDateTime > 0 then
              FVdmd.FakturyDATDANPOV.AsDateTime := ZasilkyDATUM.AsDateTime
            else
              FVdmd.FakturyDATDANPOV.AsDateTime := date;
          end;
        zdpVykladka:
          begin
            if ZasilkyVDATUM.AsDateTime > 0 then
              FVdmd.FakturyDATDANPOV.AsDateTime := ZasilkyVDATUM.AsDateTime
            else
              FVdmd.FakturyDATDANPOV.AsDateTime := date;

          end;
      end;

      FVdmd.FakturyFORMUHRADY.AsVariant := dmdSystem.gbUhrada;
      FVdmd.FakturyCENAMENA.AsVariant   := ZAPlatciCENAMENA.AsString;

      if zsfrmmodule.gbZSGenFvGetAktualKurz then
        FVdmd.FakturyCENAKURS.AsCurrency := mgGetActualKurs(ZAPlatciCENAMENA.AsString)
      else
        FVdmd.FakturyCENAKURS.AsCurrency := ZAPlatciCENAKURS.AsCurrency;

      FVdmd.FakturyPRILOHY.Clear;

      FVdmd.FakturyTEXTBEFORE.AsVariant := FVfrmModule.gbFVBefore;
      FVdmd.FakturyTEXTAFTER.AsVariant  := dmdSystem.gbPata;
      FVdmd.FakturyUCETZKR.AsString     := dmdSystem.gbUcet;
      FVdmd.FakturyPOZNAMKA.AsString    := ZAPlatciPODMINKY.AsString;
      FVdmd.FakturyNPOZ.AsString        := ZasilkyZASILKA.AsString;
      FVdmd.FakturyVPOZ.AsString        := ZAPlatciPOZICE.AsString;
      FVdmd.FakturySPZ.AsString         := ZasilkyAUTOSPZ.AsString;
      if ZasilkyDATUM.AsDateTime > 0 then
        FVdmd.FakturyDATNAKL.AsDateTime := ZasilkyDATUM.AsDateTime
      else
        FVdmd.FakturyDATNAKL.Clear;
      if ZasilkyVDATUM.AsDateTime > 0 then
        FVdmd.FakturyDATVYKL.AsDateTime := ZAPohybyDATUM.AsDateTime
      else
        FVdmd.FakturyDATVYKL.Clear;
      if zsfrmmodule.gbGenFvPole.im_sp then
      begin
        if ZasilkySUBSTRATINFO.AsString = '' then
          iSubstrat := Copy(ZasilkySUBSTRAT.AsString, 1, 100)
        else
          iSubstrat := ZasilkySUBSTRATINFO.AsString;

        if zsfrmmodule.gbGenFvPole.im_sh then
        begin
          if ZasilkyHMBRUTTO.AsInteger > 0 then
            iHmText := Trim(ZasilkyHMBRUTTO.AsString + ' kg (' + ZasilkyHMTEXT.AsString + ')')
          else
            iHmText := Trim(ZasilkyHMTEXT.AsString);
        end;

      end;

      FVdmd.FakturySUBSTRAT.AsString := Copy(iSubstrat, 1, 99 - length(iHmText)) + ' ' + iHmText;

      FVdmd.FakturyCREAID.AsString := jfaUserInfo.UserZnacka;
      FVdmd.Faktury.Post;

      // Polozky faktury
      if ZAPlatciSrazky.RecordCount > 0 then
      begin
        ZAPlatciSrazky.First;
        while not ZAPlatciSrazky.Eof do
        begin
          FVdmd.FAPolozky.Insert;
          FVdmd.FAPolozkyREFFV.AsString := result;
          if ZAPlatciSrazkyCENAMENAZAKLAD.AsCurrency > 0 then
            FVdmd.FAPolozkyPOLTEXT.AsString := ZAPlatciSrazkyCenaText.AsString + ' (' + ZAPlatciSrazkyCENAMENAZAKLAD.AsString + ' ' + ZAPlatciSrazkyCENAMENA.AsString + '/' +
              ZAPlatciSrazkyCenaJednotka.AsString + ' kurz ' + ZAPlatciSrazkyCENAKURZ.AsString + ')'
          else
            FVdmd.FAPolozkyPOLTEXT.AsString      := ZAPlatciSrazkyCenaText.AsString;
          FVdmd.FAPolozkyCENASMLUVNI.AsCurrency  := ZAPlatciSrazkyCenaZaklad.AsCurrency;
          FVdmd.FAPolozkyCENAJEDNOTKY.AsCurrency := ZAPlatciSrazkyCenaJednotky.AsCurrency;
          FVdmd.FAPolozkyCENASUMA.AsCurrency     := numRound(ZAPlatciSrazkyCenaZaklad.AsCurrency * ZAPlatciSrazkyCenaJednotky.AsCurrency, dmdSystem.RecDesMista);
          FVdmd.FAPolozkyCENADPHPROC.AsInteger   := ZAPlatciSrazkyCENADPHPROC.AsInteger;
          FVdmd.FAPolozkyCENAJEDNOTKA.AsString   := ZAPlatciSrazkyCenaJednotka.AsString;
          FVdmd.FAPolozkyCENADPH.AsCurrency := numRound((ZAPlatciSrazkyCenaZaklad.AsCurrency * ZAPlatciSrazkyCenaJednotky.AsCurrency) / 100 * ZAPlatciSrazkyCENADPHPROC.AsInteger,
            dmdSystem.RecDesMista);
          FVdmd.FAPolozkyZALOHA.AsBoolean     := false;
          FVdmd.FAPolozkyISDOPROVIZE.AsString := ZAPlatciSrazkyISDOPROVIZE.AsString;
          FVdmd.FAPolozkyREFZASILKA.AsString  := ZAPlatciREF_ZASILKA.AsString;
          FVdmd.FAPolozky.Post;

          ZAPlatciSrazky.Next;
        end;
      end;
      FVdmd.FVCalcDetailCena(result);
      // dmdSystem.DAOMainDB.Commit;
    except
      on E: Exception do
      begin
        // dmdSystem.DAOMainDB.Rollback;
        DisplayError(SERR_INSERT, E.message);
      end;
    end;

  finally
    cFirma.Free;
  end;
end;

procedure TZSdmd.ViewShowZASILKA(AZasilka: string);
begin
  with ZAViewHistorie do
  begin
    close;
    ParamByName(SZSKEYPARAMNAME).AsString := AZasilka;
    Open;
  end
end;

procedure TZSdmd.dtsPlatciCENAMENAChange(Sender: TField);
begin
  if ZAPlatciCENAKURS.AsCurrency = 0 then
    ZAPlatciCENAKURS.AsCurrency := mgGetActualKurs(ZAPlatciCENAMENA.AsVariant);
  PlatciCalcCena(Sender);
end;

procedure TZSdmd.PlatciCalcCena(Sender: TField);
begin
  ZAPlatciCENASUMAKC.AsCurrency := numRound((ZAPlatciCENAPROVIZE.AsCurrency * ZAPlatciCENAKURS.AsCurrency), 0);
end;

procedure TZSdmd.SrazkyCalc(Sender: TField);
var
  iDphZakladni: Integer;
  iDphSnizena : Integer;
  iDphCalc    : Currency;
  dDatum      : TDateTime;

begin
  iDphCalc := 0;

  // Vypocet castky a sazby DPH
  if ZasilkyDATPORIZENI.AsDateTime >= 0 then
    dDatum := ZasilkyDATPORIZENI.AsDateTime
  else
    dDatum := date;

  appGetDPHSazba(dDatum, iDphZakladni, iDphSnizena);

  case ZAPlatciSrazkyCENASAZBADPH.AsInteger of
    0:
      iDphCalc := 0;
    1:
      iDphCalc := iDphSnizena;
    2:
      iDphCalc := iDphZakladni;
  end;

  ZAPlatciSrazkyCenaSuma.AsCurrency := ZAPlatciSrazkyCenaZaklad.AsCurrency * ZAPlatciSrazkyCenaJednotky.AsCurrency;

  ZAPlatciSrazkyCENADPHPROC.AsCurrency := iDphCalc;
  ZAPlatciSrazkyCENADPH.AsCurrency     := numRound(ZAPlatciSrazkyCenaSuma.AsCurrency * (0.01 * iDphCalc), dmdSystem.RecDesMista);

end;

procedure TZSdmd.ZAPlatciSrazkyNewRecord(DataSet: TDataSet);
begin
  ZAPlatciSrazkyRefPlatce.AsVariant     := ZAPlatciID.AsVariant;
  ZAPlatciSrazkyCenaJednotka.AsVariant  := dmdSystem.gbJednotka;
  ZAPlatciSrazkyCenaJednotky.AsCurrency := 1;
  ZAPlatciSrazkyCENASAZBADPH.AsInteger  := dmdSystem.gbDPHSazba;
  ZAPlatciSrazkyISDOPROVIZE.AsString    := 'T';
end;

procedure TZSdmd.ZAPlatciSrazkyAfterPost(DataSet: TDataSet);
begin
  ZAPlatci.Refresh;
end;

procedure TZSdmd.ZAPlatciNewRecord(DataSet: TDataSet);
begin
  ZAPlatciREF_ZASILKA.AsString := ZasilkySID.AsString;
  ZAPlatciAOPKOD.AsVariant     := ZasilkyAOPKOD_OBJ.AsVariant;
  // ZAPlatciCO.AsVariant := dmdSystem.gbCoPlati;
  ZAPlatciCENAMENA.AsVariant  := dmdSystem.gbMena;
  ZAPlatciCENAKURS.AsCurrency := 1;
  ZAPlatciCREAID.AsString     := jfaUserInfo.UserZnacka;
end;

procedure TZSdmd.ZasilkyNewRecord(DataSet: TDataSet);
begin
  if ZasilkySID.AsString = '' then
    ZasilkySID.AsString           := GenGUIDID22;
  ZasilkyCREAID.AsString          := jfaUserInfo.UserZnacka;
  ZasilkyDISPECER.AsVariant       := zsfrmmodule.gbDispecerValue;
  ZasilkyIntStredisko.AsVariant   := dmdSystem.gbStredisko;
  ZasilkyDATPORIZENI.AsDateTime   := date;
  ZasilkyZASILKA.AsString         := zsfrmmodule.NewNumRadaJmeno;
  ZasilkyCENAMENA.AsString        := dmdSystem.gbMena;
  ZasilkyCENAJEDNOTKA.AsVariant   := dmdSystem.gbJednotka;
  ZasilkyCENADPHPROC.AsCurrency   := 0;
  ZasilkyCENAJEDNOTKY.AsCurrency  := 0;
  ZasilkyCENAKURS.AsCurrency      := 1;
  ZasilkyREF_ZSPODMINKY.AsVariant := zsfrmmodule.gbTextPodminky;
  ZasilkyREF_POTVRZENI.AsVariant  := zsfrmmodule.gbTextPotvrzeni;
  ZasilkyVYRIZENO.AsString        := 'F';
end;

procedure TZSdmd.ZAPohybyNewRecord(DataSet: TDataSet);
begin
  ZAPohybyREF_ZASILKA.AsString := ZasilkySID.AsString;
  ZAPohybyporadi.AsString      := IntToStr(ZAPohyby.RecordCountAll);
  ZAPohybyTyp.AsVariant        := GetAppCompsDM.ZSKTLNakVykKod.AsVariant;
end;

procedure TZSdmd.ZAPohybyBeforePost(DataSet: TDataSet);
begin
  if ZAPohybyporadi.AsString = EmptyStr then
    ZAPohybyporadi.AsString := IntToStr(ZAPohyby.RecNo);
  if ZAPohybyDATUM.AsDateTime <= 0 then
    ZAPohybyDATUM.Clear;
end;

procedure TZSdmd.ZAViewHistorieNewRecord(DataSet: TDataSet);
begin
  ZAViewHistorieREF_ZASILKA.AsString := ZasilkySeznamSID.AsString;
end;

procedure TZSdmd.ZasilkySeznamAfterPost(DataSet: TDataSet);
begin
  ZasilkySeznam.RefreshRows;
end;

procedure TZSdmd.dsZAPlatciDataChange(Sender: TObject; Field: TField);
begin
  {
    ZAPlatciSrazky.close;
    ZAPlatciSrazky.ParamByName('REFPLATCE').AsString := ZAPlatciID.AsString;
    ZAPlatciSrazky.Open;
  }
end;

procedure TZSdmd.dsZasilkyDataChange(Sender: TObject; Field: TField);
begin
  // if Field <> nil then
  // Exit;

  // if ZAPohyby.ParamByName('SID').AsString <> ZasilkySID.AsString then
  // begin
  // ZAPohyby.close;
  // ZAPohyby.ParamByName('SID').AsString := ZasilkySID.AsString;
  // ZAPohyby.Open;
  // end;

  // if ZAPlatci.ParamByName('SID').AsString <> ZasilkySID.AsString then
  // begin
  // ZAPlatci.close;
  // ZAPlatci.ParamByName('SID').AsString := ZasilkySID.AsString;
  // ZAPlatci.Open;
  // end;

  // if ZAOstNakl.ParamByName('SID').AsString <> ZasilkySID.AsString then
  // begin
  // ZAOstNakl.close;
  // ZAOstNakl.ParamByName('SID').AsString := ZasilkySID.AsString;
  // ZAOstNakl.Open;
  // end;

  // if dtsZSProvize.ParamByName('SID').AsString <> ZasilkySID.AsString then
  // begin
  // dtsZSProvize.close;
  // dtsZSProvize.ParamByName('SID').AsString := ZasilkySID.AsString;
  // dtsZSProvize.Open;
  // end;
  // if dtsZAFd.ParamByName('SID').AsString <> ZasilkySID.AsString then
  // begin
  // dtsZAFd.close;
  // dtsZAFd.ParamByName('SID').AsString := ZasilkySID.AsString;
  // dtsZAFd.Open;
  // end;
end;

procedure TZSdmd.ZAOstNaklNewRecord(DataSet: TDataSet);
begin
  ZAOstNaklID.AsString          := GenGUIDID22;
  ZAOstNaklREF_ZASILKY.AsString := ZasilkySID.AsString;
  ZAOstNaklVN_TYP.AsInteger     := 0;
  ZAOstNaklRADEK.AsInteger      := ZAOstNakl.RecordCount;
  ZAOstNaklFAKTUROVANO.AsString := 'F';
end;

procedure TZSdmd.ZAOstNaklAfterPost(DataSet: TDataSet);
begin
  ZasilkySeznam.RefreshRows;
end;

procedure TZSdmd.ZAOstNaklAfterDelete(DataSet: TDataSet);
begin
  ZasilkySeznam.RefreshRows;
end;

procedure TZSdmd.ZasilkyCalcFields(DataSet: TDataSet);
begin
  ZasilkyCENASUMASDPH.AsCurrency := ZasilkyCENASUMA.AsCurrency + ZasilkyCENADPH.AsCurrency;
end;

procedure TZSdmd.ZAPlatciAfterPost(DataSet: TDataSet);
begin
  ZAPlatci.RefreshRows;
end;

procedure TZSdmd.ZAPlatciBeforeDelete(DataSet: TDataSet);
begin
  KontrolaVyrizeno;
end;

procedure TZSdmd.ZAPlatciBeforeEdit(DataSet: TDataSet);
begin
  KontrolaVyrizeno;

end;

procedure TZSdmd.ZAPlatciBeforeInsert(DataSet: TDataSet);
begin
  KontrolaVyrizeno;

end;

procedure TZSdmd.ZAPlatciCalcFields(DataSet: TDataSet);
begin
  ZAPlatciCENASUMASDPH.AsCurrency := ZAPlatciCENASUMA.AsCurrency + ZAPlatciCENADPH.AsCurrency;
end;

procedure TZSdmd.ZAPlatciSrazkyBeforeDelete(DataSet: TDataSet);
begin
  if ZAPlatci.State in [dsEdit, dsInsert] then
    ZAPlatci.Post;
  KontrolaVyrizeno;

end;

procedure TZSdmd.ZAPlatciSrazkyBeforeEdit(DataSet: TDataSet);
begin
  if ZAPlatci.State in [dsEdit, dsInsert] then
    ZAPlatci.Post;
  KontrolaVyrizeno;

end;

procedure TZSdmd.ZAPlatciSrazkyBeforeInsert(DataSet: TDataSet);
begin
  if ZAPlatci.State in [dsEdit, dsInsert] then
    ZAPlatci.Post;
  KontrolaVyrizeno;
end;

procedure TZSdmd.ZAPlatciSrazkyBeforePost(DataSet: TDataSet);
begin
  if ZAPlatciSrazkyCenaSuma.AsCurrency <= 0 then
    if not DisplayConfirm('Celková èástka na øádku je nulová, Chcete pøesto uložit tento øádek?') then
      SysUtils.Abort;
end;

procedure TZSdmd.ZAViewHistorieBeforeEdit(DataSet: TDataSet);
begin
  if ZAViewHistorieStav.AsInteger = histStateSystem then
  begin
    DisplayError(SERR_ZS_HI_EDIT, SSystMovZZnamySlouKEvidenciDLeItChZmNVDatabZi);
    SysUtils.Abort;
  end;
end;

procedure TZSdmd.ZSKontrolaVyrizeno(DataSet: TDataSet);
begin
  KontrolaVyrizeno;
end;

procedure TZSdmd.ZAOstNaklBeforePost(DataSet: TDataSet);
begin
  if ZAOstNaklCENAPROVIZE.AsCurrency <= 0 then
    if not DisplayConfirm('Celková èástka na øádku je nulová, Chcete pøesto uložit tento øádek?') then
      SysUtils.Abort;

end;

procedure TZSdmd.ZasilkyAfterOpen(DataSet: TDataSet);
begin
  dtsZAFd.Open;
end;

procedure TZSdmd.ZasilkyAfterPost(DataSet: TDataSet);
begin
  // Pokud do3lo k nov0mu zaznamu, potrebujeme aktualiyovat paramater SID dle skutecnosti
  Zasilky.ParamByName('SID').AsString := ZasilkySID.AsString;
  // Pokus o reseni chyby Invalid Blob ID
  Zasilky.Refresh;
end;

procedure TZSdmd.ZasilkyBeforePost(DataSet: TDataSet);
var
   lAopInfo: TAOPFirmaClass;
begin
  ZasilkyZASILKA.AsString := zsfrmmodule.GetNewKeyIdValue(ZasilkyZASILKA.AsString);

  if Zasilky.State = dsEdit then
    ZasilkyUPDID.AsString := jfaUserInfo.UserZnacka;

  // Kontrola zmeny RY
  if (Zasilky.State = dsEdit) and zsfrmmodule.gbZmenaSPZ and (ZasilkyAUTOSPZ.AsVariant <> ZasilkyAUTOSPZ.OldValue) then
    ZSAddHistoryObject(ZasilkySID.AsString, 'Zmìna RZ', 'na ' + ZasilkyAUTOSPZ.AsString, True);

  // Kontrola zmeny Dopravce
  if (Zasilky.State = dsEdit) and zsfrmmodule.gbZmenaDopravce and (ZasilkyAOPKOD_DOP.AsVariant <> ZasilkyAOPKOD_DOP.OldValue) then
  begin
    // Dopravce jsme vymzali
    if ZasilkyAOPKOD_DOP.AsVariant = null then
    begin
      ZSAddHistoryObject(ZasilkySID.AsString, 'Zmìna Dopravce', 'dopravce vymazán', True);
    end
    else
    begin
      lAopInfo := TAOPFirmaClass.Create(ZasilkyAOPKOD_DOP.AsVariant, false);
      try
        ZSAddHistoryObject(ZasilkySID.AsString, 'Zmìna Dopravce', 'na ' + lAopInfo.Nazev, True);
      finally
        FreeAndNil(lAopInfo);
      end;
    end;

  end;
end;

procedure TZSdmd.ZasilkyCENAMENAChange(Sender: TField);
begin
  IF Zasilky.State in [dsEdit, dsInsert] then
    ZasilkyCENAKURS.AsCurrency := mgGetActualKurs(ZasilkyCENAMENA.AsString);

end;

procedure TZSdmd.DopravceCalcCena(Sender: TField);
begin
  ZasilkyCENASUMA.AsCurrency     := numRound((ZasilkyCENASMLUVNI.AsCurrency * ZasilkyCENAJEDNOTKY.AsCurrency) + ZasilkyCENASRAZKY.AsCurrency, dmdSystem.RecDesMista);
  ZasilkyCENADPH.AsCurrency      := numRound(ZasilkyCENASUMA.AsCurrency * (ZasilkyCENADPHPROC.AsCurrency * 0.01), dmdSystem.RecDesMista);
  ZasilkyCENASUMASDPH.AsCurrency := ZasilkyCENASUMA.AsCurrency + ZasilkyCENADPH.AsCurrency;
  ZasilkyCENADOPRAVCE.AsCurrency := numRound(ZasilkyCENASUMA.AsCurrency * ZasilkyCENAKURS.AsCurrency, 0);
end;

procedure TZSdmd.CenaZakladMenaCalc(Sender: TField);
begin
  ZAPlatciSrazkyCenaZaklad.AsCurrency := ZAPlatciSrazkyCENAMENAZAKLAD.AsCurrency * ZAPlatciSrazkyCENAKURZ.AsCurrency;

end;

procedure TZSdmd.ZAPlatciSrazkyCENAMENAChange(Sender: TField);
begin
  IF ZAPlatciSrazky.State in [dsEdit, dsInsert] then
    ZAPlatciSrazkyCENAKURZ.AsCurrency := mgGetActualKurs(ZAPlatciSrazkyCENAMENA.AsString);
end;

procedure TZSdmd.dtsZSProvizeNewRecord(DataSet: TDataSet);
begin
  dtsZSProvizeREF_ZASILKA.AsString := ZasilkySID.AsString;
  dtsZSProvizeISMASTER.AsString    := 'F';
  dtsZSProvizePROPLACENO.AsString  := 'F';
end;

procedure TZSdmd.jfsDefaultModuleInitModule(Sender: TObject);
begin
  ZAPlatci.Open;
  tvPlatci.Styles.StyleSheet := dmdGlobal.ModStyleSheet;
end;

procedure TZSdmd.KontrolaVyrizeno;
begin
  if (ZasilkyVYRIZENO.AsString = 'T') then
  begin
    DisplayError('Pøeprava má nasteven pøíznak Vyøízeno, nelze ji tedy upravovat.', 'Pokud chcete pøepravu upravovat, vypnìte nejprve pøíznak Vyøízeno.');
    SysUtils.Abort;
  end;
end;

procedure TZSdmd.ProvizeCheckIsMaster(DataSet: TDataSet);
begin
  {
    if dtsZSProvizeISMASTER.AsString = 'T' then
    begin
    // Hlaska ye se nesmi opravovat radek s hlavni provizi
    DisplayError('Nelze odstranit hlavní øádek provize');
    // Stop akce
    SysUtils.Abort;
    end;
  }
end;

procedure TZSdmd.dtsZSProvizeCalcFields(DataSet: TDataSet);
begin
  dtsZSProvizeCALC_PROC_PROC.AsCurrency := (ZasilkyCENAPROVIZE.AsCurrency / 100) * dtsZSProvizePROC_Z_PROV.AsInteger;
end;

procedure TZSdmd.dtsZSProvizeAfterPost(DataSet: TDataSet);
begin
  dtsZSProvize.RefreshRows;
end;

procedure TZSdmd.ZAPohybyAfterPost(DataSet: TDataSet);
var
  lcId: Integer;
begin
  // Poznamename si ID zaznamu
  lcId := ZAPohybyID.AsInteger;
  // Udelame refresh...chceme tim resit INVALID ID chzbu
  ZAPohyby.Refresh;
  // Pokud jsme odskocili jinam, tak dohledame dle ID
  if ZAPohybyID.AsInteger <> lcId then
    ZAPohyby.Locate('ID', lcId, []);
end;

end.
