unit dConnectUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IB_Components, IB_Access, IBODataset, Db, rsStorage, rsIniData, rsPropSaver;

type
  TdmdConnect = class(TDataModule)
    IBOMainDB: TIBODatabase;
    dtsFV: TIBOQuery;
    dtsFVSID: TStringField;
    dtsFVTYP: TSmallintField;
    dtsFVFAKTURA: TStringField;
    dtsFVSYMBVARIA: TStringField;
    dtsFVZASILKA: TStringField;
    dtsFVREF_ZASILKA: TStringField;
    dtsFVNAZEV: TStringField;
    dtsFVADRESA3: TStringField;
    dtsFVZEME: TStringField;
    dtsFVICO: TStringField;
    dtsFVDIC: TStringField;
    dtsFVDATVYSTAVENI: TDateTimeField;
    dtsFVDATDANPOV: TDateTimeField;
    dtsFVDATSPLATNOST: TDateTimeField;
    dtsFVSUMAZAKLAD: TBCDField;
    dtsFVSUMADPH: TBCDField;
    dtsFVCELKEM: TBCDField;
    dtsFVCENASUMAKC: TBCDField;
    dtsFVCENAKURS: TBCDField;
    dtsFVCENALIKV: TFloatField;
    dtsFVCENAMENA: TStringField;
    dtsFVCENAZALOHY: TBCDField;
    dtsFVDatUhrazeno: TDateTimeField;
    dtsFVSTAV: TIntegerField;
    dtsFVUCTODATUM: TDateField;
    dtsFVDOKLAD: TStringField;
    rstrg1: TrsStorage;
    rsIniData1: TrsIniData;
    dtsFD: TIBOQuery;
    dtsFDSID: TStringField;
    dtsFDFakturaDO: TStringField;
    dtsFDVariabilni: TStringField;
    dtsFDZASILKA: TStringField;
    dtsFDDATSPLATNOST: TDateTimeField;
    dtsFDDATDANPOV: TDateTimeField;
    dtsFDNAZEV: TStringField;
    dtsFDICO: TStringField;
    dtsFDDIC: TStringField;
    dtsFDADRESA3: TStringField;
    dtsFDZEME: TStringField;
    dtsFDCELKEM: TFloatField;
    dtsFDCENAMENA: TStringField;
    dtsFDSTAV: TIntegerField;
    rsPropSaver1: TrsPropSaver;
    dtsFVCisla: TIBOQuery;
    dtsFVCislaFAKTURA: TStringField;
    dtsFDCisla: TIBOQuery;
    dtsFDCislaFAKTURA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure rsPropSaver1AfterLoad(Sender: TObject);
    procedure rsPropSaver1AfterSave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdConnect           : TdmdConnect;
  gbExportFolder       : string;
  gbDefFVWhere         : string;
  gbDefFDWhere         : string;
  gbXMLIc              : string;
  gbXMLPredkontace     : string; // Predkonatace tuzemsky klient
  gbXMLEUPredkontace   : string; // Predkonatace EU klient
  gbXMLDPHPredkontace  : string; // Predkonatace DPH tuzemsky klient
  gbXMLDPHEUPredkontace: string; // Predkonatace DPH EU klient
  gbXMLNahrText        : string; // Nahradni text pro text vydane faktury, pokud je prazdny, tak se prenese text z faktury
  gbXMLroundingDocument: string;
  gbXMLroundingVAT     : string;
  gbXMLFiltrovatVS     : Boolean; // Pokud TRUE tak bude z VS u faktury vydane odfiltrovano vse co neni cislo
  gbXMLFDPredkontace   : string;
  gbXMLFDDPHPredkontace: string;
  gbXMLFDNahrText      : string;  // Nahradni text pro text dosle faktury, pokud je prazdny, tak se prenese text z faktury
  gbXMLFDNacitatKurs   : Boolean; // Ma se nacitat kurz z POHODA pro cizi menu
  gbXMLShowNonExist    : Boolean; // Pokud TRUE bude v XML v pripade ze neni nalezena
  gbXMLCoDoObjednavky  : Integer;
  gbXMLFullAdresExport: Boolean;
  MsSQLServerName     : string;
  MsSQLDBName         : string;
  MsSQLUserName       : string;
  MsSQLPasswd         : string;

const
  lsCoDoObjednavky = 'Èíslo objednávky;Èíslo pøepravy';

implementation

uses appIniOptionsUnit;

{$R *.DFM}

procedure TdmdConnect.DataModuleCreate(Sender: TObject);
begin
  IBOMainDB.Database := IniOptions.SetWorkData;

end;

procedure TdmdConnect.rsPropSaver1AfterLoad(Sender: TObject);
begin
  gbExportFolder        := rsPropSaver1.Storage.ReadString('gbExportFolder', gbExportFolder);
  gbDefFVWhere          := rsPropSaver1.Storage.ReadString('gbDefFVWhere', gbDefFVWhere);
  gbDefFDWhere          := rsPropSaver1.Storage.ReadString('gbDefFDWhere', gbDefFDWhere);
  gbXMLIc               := rsPropSaver1.Storage.ReadString('gbXMLIc', gbXMLIc);
  gbXMLPredkontace      := rsPropSaver1.Storage.ReadString('gbXMLPredkontace', gbXMLPredkontace);
  gbXMLEUPredkontace    := rsPropSaver1.Storage.ReadString('gbXMLEUPredkontace', gbXMLEUPredkontace);
  gbXMLDPHPredkontace   := rsPropSaver1.Storage.ReadString('gbXMLDPHPredkontace', gbXMLDPHPredkontace);
  gbXMLDPHEUPredkontace := rsPropSaver1.Storage.ReadString('gbXMLDPHEUPredkontace', gbXMLDPHEUPredkontace);
  gbXMLNahrText         := rsPropSaver1.Storage.ReadString('gbXMLNahrText', gbXMLNahrText);
  gbXMLroundingDocument := rsPropSaver1.Storage.ReadString('gbXMLroundingDocument', gbXMLroundingDocument);
  gbXMLroundingVAT      := rsPropSaver1.Storage.ReadString('gbXMLroundingVAT', gbXMLroundingVAT);
  gbXMLFDPredkontace    := rsPropSaver1.Storage.ReadString('gbXMLFDPredkontace', gbXMLFDPredkontace);
  gbXMLFDDPHPredkontace := rsPropSaver1.Storage.ReadString('gbXMLFDDPHPredkontace', gbXMLFDDPHPredkontace);
  gbXMLFullAdresExport  := rsPropSaver1.Storage.ReadBoolean('gbXMLFullAdresExport', gbXMLFullAdresExport);
  gbXMLFDNacitatKurs    := rsPropSaver1.Storage.ReadBoolean('gbXMLFDNacitatKurs', gbXMLFDNacitatKurs);
  MsSQLServerName       := rsPropSaver1.Storage.ReadString('MsSQLServerName', MsSQLServerName);
  MsSQLDBName           := rsPropSaver1.Storage.ReadString('MsSQLDBName', MsSQLDBName);
  MsSQLUserName         := rsPropSaver1.Storage.ReadString('MsSQLUserName', MsSQLUserName);
  MsSQLPasswd           := rsPropSaver1.Storage.ReadString('MsSQLPasswd', MsSQLPasswd);
  gbXMLFiltrovatVS      := rsPropSaver1.Storage.ReadBoolean('gbXMLFiltrovatVS', gbXMLFiltrovatVS);
  gbXMLShowNonExist     := rsPropSaver1.Storage.ReadBoolean('gbXMLShowNonExist', gbXMLShowNonExist);
  gbXMLCoDoObjednavky   := rsPropSaver1.Storage.ReadInteger('gbXMLCoDoObjednavky', gbXMLCoDoObjednavky);

end;

procedure TdmdConnect.rsPropSaver1AfterSave(Sender: TObject);
begin
  rsPropSaver1.Storage.WriteString('gbExportFolder', gbExportFolder);
  rsPropSaver1.Storage.WriteString('gbDefFVWhere', gbDefFVWhere);
  rsPropSaver1.Storage.WriteString('gbDefFDWhere', gbDefFDWhere);
  rsPropSaver1.Storage.WriteString('gbXMLIc', gbXMLIc);
  rsPropSaver1.Storage.WriteString('gbXMLPredkontace', gbXMLPredkontace);
  rsPropSaver1.Storage.WriteString('gbXMLEUPredkontace', gbXMLEUPredkontace);
  rsPropSaver1.Storage.WriteString('gbXMLDPHPredkontace', gbXMLDPHPredkontace);
  rsPropSaver1.Storage.WriteString('gbXMLDPHEUPredkontace', gbXMLDPHEUPredkontace);
  rsPropSaver1.Storage.WriteString('gbXMLNahrText', gbXMLNahrText);
  rsPropSaver1.Storage.WriteString('gbXMLroundingDocument', gbXMLroundingDocument);
  rsPropSaver1.Storage.WriteString('gbXMLroundingVAT', gbXMLroundingVAT);
  rsPropSaver1.Storage.WriteString('gbXMLFDPredkontace', gbXMLFDPredkontace);
  rsPropSaver1.Storage.WriteString('gbXMLFDDPHPredkontace', gbXMLFDDPHPredkontace);
  rsPropSaver1.Storage.WriteBoolean('gbXMLFullAdresExport', gbXMLFullAdresExport);
  rsPropSaver1.Storage.WriteBoolean('gbXMLFDNacitatKurs', gbXMLFDNacitatKurs);
  rsPropSaver1.Storage.WriteString('MsSQLServerName', MsSQLServerName);
  rsPropSaver1.Storage.WriteString('MsSQLDBName', MsSQLDBName);
  rsPropSaver1.Storage.WriteString('MsSQLUserName', MsSQLUserName);
  rsPropSaver1.Storage.WriteString('MsSQLPasswd', MsSQLPasswd);
  rsPropSaver1.Storage.WriteBoolean('gbXMLFiltrovatVS', gbXMLFiltrovatVS);
  rsPropSaver1.Storage.WriteBoolean('gbXMLShowNonExist', gbXMLShowNonExist);
  rsPropSaver1.Storage.WriteInteger('gbXMLCoDoObjednavky', gbXMLCoDoObjednavky);
end;

initialization

gbExportFolder        := 'C:\lmss_exp\';
gbDefFVWhere          := 'STAV = 1';
gbDefFDWhere          := 'STAV = 1';
gbXMLIc               := '';
gbXMLPredkontace      := '1FV';
gbXMLEUPredkontace    := '1FV';
gbXMLDPHPredkontace   := 'PD';
gbXMLDPHEUPredkontace := 'PD';
gbXMLNahrText         := 'Pøepravné';
gbXMLroundingDocument := 'math2one';
gbXMLroundingVAT      := 'noneEveryRate';
gbXMLFDPredkontace    := '1FD';
gbXMLFDDPHPredkontace := 'PD';
gbXMLFullAdresExport  := false;
MsSQLServerName       := 'VMW-DXE\POHODASQLE';
MsSQLDBName           := 'StwPh_25439375_2015';
MsSQLUserName         := 'asped';
MsSQLPasswd           := 'faitKUA';
gbXMLCoDoObjednavky   := 0;
gbXMLFiltrovatVS      := false;
gbXMLShowNonExist     := false;
gbXMLFDNacitatKurs    := false;

end.
