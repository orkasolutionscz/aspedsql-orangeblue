{ ***************************************************************
  *
  * Unit Name: FVBrowse
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit FVfrmuBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ImgList, DBActns, ActnList, Db, Grids, DBGrids,
  ExtCtrls, rsStorage, rsPropSaver, uCustomForms,
  fModulBrowse, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, cxStyles, uSqlParser,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TFVfrmBrowse = class(TfrmModulBrowse)
    ActionListFv: TActionList;
    actFVLikvidace: TAction;
    actFVRemoveAll: TAction;
    actFVShowZS: TAction;
    rspForm: TrsPropSaver;
    actFVExportUcto: TAction;
    actSetUS: TAction;
    actFVExportStorno: TAction;
    tvViewSID: TcxGridDBColumn;
    tvViewVYBER: TcxGridDBColumn;
    tvViewFAKTURA: TcxGridDBColumn;
    tvViewSYMBVARIA: TcxGridDBColumn;
    tvViewZASILKA: TcxGridDBColumn;
    tvViewREF_ZASILKA: TcxGridDBColumn;
    tvViewNAZEV: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    tvViewZEME: TcxGridDBColumn;
    tvViewICO: TcxGridDBColumn;
    tvViewDIC: TcxGridDBColumn;
    tvViewDATVYSTAVENI: TcxGridDBColumn;
    tvViewDATDANPOV: TcxGridDBColumn;
    tvViewDATSPLATNOST: TcxGridDBColumn;
    tvViewCENALIKV: TcxGridDBColumn;
    tvViewCENAMENA: TcxGridDBColumn;
    tvViewDATUHRAZENO: TcxGridDBColumn;
    tvViewSTAV: TcxGridDBColumn;
    tvViewSTATEUSER: TcxGridDBColumn;
    tvViewUPDID: TcxGridDBColumn;
    tvViewUPDDATE: TcxGridDBColumn;
    tvViewCREAID: TcxGridDBColumn;
    tvViewCREADATE: TcxGridDBColumn;
    tvViewLIKVOK: TcxGridDBColumn;
    tvViewTYP: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxbrMain: TdxBar;
    dxbModulZavrit: TdxBarButton;
    dxbGrdFirst: TdxBarButton;
    dxbGrdLast: TdxBarButton;
    dxbGrdNext: TdxBarButton;
    dxbGrdPrior: TdxBarButton;
    dxbGrdHledej: TdxBarButton;
    dxbGrdRefresh: TdxBarButton;
    dxbGrdOznacit: TdxBarButton;
    dxbGrdOznacitZrusit: TdxBarButton;
    dxbGrdSaveSetting: TdxBarButton;
    dxbRecCopy: TdxBarButton;
    dxbRecNew: TdxBarButton;
    dxbRecDetail: TdxBarButton;
    dxbAdmUpravitVse: TdxBarButton;
    dxbAdministrator: TdxBarSubItem;
    dxbFltDnesOpravene: TdxBarButton;
    dxbFltDnesNove: TdxBarButton;
    dxbFltClear: TdxBarButton;
    dxbFltHistory: TdxBarButton;
    dxbFltDialog: TdxBarButton;
    dxbFltSave: TdxBarButton;
    dxbFltManager: TdxBarButton;
    dxbFltHodnota: TdxBarButton;
    dxbFltStored: TdxBarButton;
    dxbFltSpeed: TdxBarButton;
    dxbFltGenerator: TdxBarButton;
    dxiZaznam: TdxBarSubItem;
    dxiVybery: TdxBarSubItem;
    dxpSeznam: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxbPrintMng: TdxBarButton;
    dxbPrintPreview: TdxBarButton;
    tvViewSTATEUSERCOLOR: TcxGridDBColumn;
    dxbGrdRestore: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    dxBarButton7: TdxBarButton;
    tvViewSUMAZAKLAD: TcxGridDBColumn;
    tvViewSUMADPH: TcxGridDBColumn;
    tvViewCELKEM: TcxGridDBColumn;
    tvViewCENASUMAKC: TcxGridDBColumn;
    tvViewCENAKURS: TcxGridDBColumn;
    tvViewCENAZALOHY: TcxGridDBColumn;
    tvViewUCTODATUM: TcxGridDBColumn;
    tvViewDOKLAD: TcxGridDBColumn;
    dxb3: TdxBarButton;
    actSetUSClear: TAction;
    dxbExportGrid: TdxBarButton;
    dxbFullRefresh: TdxBarButton;
    dxbIncFind: TdxBarButton;
    rspSQL: TrsPropSaver;
    dxb4: TdxBarButton;
    tvViewVYBER2: TcxGridDBColumn;
    tvViewVPOZ: TcxGridDBColumn;
    tvViewAOPKOD: TcxGridDBColumn;
    procedure actFVLikvidaceExecute(Sender: TObject);
    procedure actRecKopieExecute(Sender: TObject);
    procedure actFVRemoveAllExecute(Sender: TObject);
    procedure actRecDetailExecute(Sender: TObject);
    procedure actFVShowZSExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure actFVExportUctoExecute(Sender: TObject);
    procedure gbCustomMDIFormPrint(Sender: TObject);
    procedure actSetUSExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rspFormAfterLoad(Sender: TObject);
    procedure actShowSQLPanelExecute(Sender: TObject);
    procedure actSetUSClearExecute(Sender: TObject);
    procedure actPrintToEmailExecute(Sender: TObject);
    procedure tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tvViewDATSPLATNOSTStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tvViewFAKTURAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tvViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tvViewNAZEVStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
    // procedure DoDataExportPohoda;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  FVfrmBrowse: TFVfrmBrowse;

implementation

uses
  variants, uVarClass, fMessageDlg, appdmduSystem, FVdmdu, FVfrmuModule, ZSfrmuModule,
  appfrmuGlobal, FVConstDefUnit, fKatalogyModul,
  fStatusLook, fGetDateDlg, appReportModule, JclMapi, appReportUtils, AOPConstDefUnit,
  AOPdmdu;

{$R *.DFM}

constructor TFVfrmBrowse.Create(AOwner: TComponent);
begin
  inherited;
  SqlControler.DataSet := FVdmd.FakturySeznam;
  MasterDs.DataSet     := SqlControler.DataSet;
  fraSQLCondition.Initialize;
  tvView.DataController.KeyFieldNames := 'SID';
  tvViewVYBER.RepositoryItem          := dmdGlobal.repBoolChar;
  tvViewVYBER2.RepositoryItem         := dmdGlobal.repBoolChar;
  tvViewSTATEUSER.RepositoryItem      := dmdGlobal.repFVDStatus;
  tvViewSTATEUSERCOLOR.RepositoryItem := dmdGlobal.repColor;
  tvViewLIKVOK.RepositoryItem         := dmdGlobal.repBoolChar;
  ReStoreViewSettings(tvView);
  dxBarManager1.Style := GetdmdGlobal.GetCurrBarStyle;;
  rspSQL.Active       := True;
  rspSQL.LoadValues;
end;


// procedure TFVfrmBrowse.DoDataExportPohoda;
// const
// // SDEFAULT_WHERE   = 'WHERE fvp.ref_typ = 0 and ISEXPORTED <> -1';
// SOKEXPORT_DIALOG = 'Export faktur vydaných probìhl úspìšnì.' + #13 + #10 + 'Bylo exportováno celkem %d faktur, které jsou uloženy v souboru %s';
// var
// I, CNT        : integer;
// ResultMsg     : WideString;
// ExportFileName: String;
// begin
// ExportFileName := FVfrmModule.gbExportFolder + FVXMLPOHODAFILENAME;
//
// { Pracovni dataset pro provedeni update }
// if FVPExportImportModule = nil then
// FVPExportImportModule := TFVPExportImportModule.Create(Application);
//
// try
// tvView.DataController.DataSet.First;
// FVPExportImportModule.EVF_PohodaData.Active := True;
//
// with tvView.DataController do
// begin
//
// CNT := 0;
//
// for I := 0 to FilteredRecordCount - 1 do // Iterate
// begin
// FocusedRecordIndex := FilteredRecordIndex[I];
//
// { Pokud neni zaznam exportovan, provedeme export }
//
// if DataSet.FieldValues['STAV'] = 1 then
// begin
// { Otevreme data detailu }
// FVPExportImportModule.AddFVPRecord(DataSet.FieldValues['SID']);
//
// Inc(CNT);
//
// end;
//
// DataSet.Next;
// end; // while
// { Vlastni export }
// // Nejprve upravime nayev souboru
// if CNT > 0 then
// begin
// try
//
// if FileExists(ExportFileName) then
// DeleteFile(ExportFileName);
// except
// raise;
// end;
//
// { Pro jistotu kontrola adresare }
// if not DirectoryExists(ExtractFileDir(ExportFileName)) then
// ForceDirectories(ExtractFileDir(ExportFileName));
//
// // FVPExportImportModule.VDBFExport1.FileName := ExportFileName;
// // FVPExportImportModule.VDBFExport1.Execute;
// // XML
// FVPExportImportModule.ExportToXml;
//
// { Obcerstveni seynamu }
//
// RefreshExternalData;
//
// // Result := True;
//
// ResultMsg := Format(SOKEXPORT_DIALOG, [CNT, ExportFileName]);
// DisplayInfo(ResultMsg);
// end
// else
// begin
// DisplayInfo('Žádná z vybraných faktur nebyla vhodná k exportu.');
// // Result := False;
// end;
// end;
//
// except
// raise Exception.Create('Export faktur se nezdaøil');
// end;
//
// end;

procedure TFVfrmBrowse.actFVLikvidaceExecute(Sender: TObject);
// var
// adate: TDateTime;
// aLikvidace:Boolean;
begin
  // adate := FVdmd.LastDatLikvidace;
  // aLikvidace := not  FVdmd.FakturySeznamLIKVOK.AsBoolean;
  //
  // if ALikvidace then
  // begin
  // if not dateGetMaxDate(adate) then
  // exit
  // else
  // FVdmd.LastDatLikvidace := adate;
  //
  // FVdmd.FakturySeznam.Edit;
  // FVdmd.FakturySeznamLIKVOK.AsString := 'T';
  // FVdmd.FakturySeznamCENALIKV.AsCurrency := 0;
  // FVdmd.FakturySeznamDatUhrazeno.AsDateTime := adate;
  // FVdmd.FakturySeznamUCTODATUM.AsDateTime := adate;;
  // FVdmd.FakturySeznamDOKLAD.AsString := 'Ruèní';
  // FVdmd.FakturySeznam.Post;
  // // 'UPDATE FV SET LIKVOK = :LIKVOK, CENALIKV = 0, DATUHRAZENO = :DATUMLIKV, DOKLAD = :DOKLAD, UCTODATUM = :DATUMLIKV WHERE SID = :SID';
  //
  // end
  // else
  // begin
  // // 'UPDATE FV SET LIKVOK = :LIKVOK, CENALIKV = CELKEM + CENAZALOHY, DATUHRAZENO = NULL, DOKLAD = NULL, UCTODATUM = NULL WHERE SID = :SID';
  // FVdmd.FakturySeznam.Edit;
  // FVdmd.FakturySeznamLIKVOK.AsString := 'F';
  // FVdmd.FakturySeznamCENALIKV.AsCurrency := FVdmd.FakturySeznamCELKEM.AsCurrency + FVdmd.FakturySeznamCENAZALOHY.AsCurrency;
  // FVdmd.FakturySeznamUCTODATUM.Clear;
  // FVdmd.FakturySeznamDOKLAD.Clear;
  // FVdmd.FakturySeznamDatUhrazeno.clear;
  // FVdmd.FakturySeznam.Post;
  //
  // end;
  // // FVdmd.FakturySeznam.Refresh;

  FVdmd.FVLikvidace(FVdmd.FakturySeznamSID.AsString, not FVdmd.FakturySeznamLIKVOK.AsBoolean);
  actRecRefresh.Execute;
end;

procedure TFVfrmBrowse.actRecKopieExecute(Sender: TObject);
var
  NewFaktura: string;
const
  smsgOKCopyRecord = 'Opravdu chcete kopírovat aktuální záznam?' + #10#13 + 'Pokud ne stisknìte Storno';

begin
  if FVdmd.FakturySeznamTYP.AsInteger <> fvTypText then
    DisplayError(SERR_FV_COPY_ZSFAKTURA, '')
  else if DisplayConfirm(smsgOKCopyRecord) then
  begin
    NewFaktura := FVdmd.FVCopyFaktura(FVdmd.FakturySeznamSID.AsString);
    IntRefreshAndFind(NewFaktura);
    actRecDetail.Execute;
  end;
end;

procedure TFVfrmBrowse.actFVRemoveAllExecute(Sender: TObject);
begin
  if DisplayConfirm(SOpravduChceteOdstranitVybraneZaznamy) then
  begin
    MasterDs.DataSet.First;

    while not MasterDs.DataSet.Eof do
    begin
      FVdmd.FVRemoveFaktura(FVdmd.FakturySeznamSID.AsString);
      MasterDs.DataSet.Next;
    end;
  end;
  SqlControler.ShowAllRecords;
end;

procedure TFVfrmBrowse.actRecDetailExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := FVdmd.FakturySeznamSID.AsString;
  if FVfrmModule.ShowDetail(iresult, fsmEdit) then
    IntRefreshAndFind(iresult);
end;

procedure TFVfrmBrowse.actFVShowZSExecute(Sender: TObject);
var
  iZS: string;
begin
  { DONE : Doplnit o zobrazeni zasilky }
  iZS := FVdmd.FakturySeznamREF_ZASILKA.AsString;
  if iZS <> EmptyStr then
    ZSfrmModule.ShowDetail(iZS, fsmEdit);

end;

procedure TFVfrmBrowse.actRecNewExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := FVdmd.FakturySeznamSID.AsString;
  if FVfrmModule.ShowDetail(iresult, fsmInsert) then
    IntRefreshAndFind(iresult);
end;

procedure TFVfrmBrowse.actFVExportUctoExecute(Sender: TObject);
begin
  // if (FVfrmModule.gbUseExportPodminka) or (SqlControler.ActiveWhere = SqlControler.AllRecord) then
  // SqlControler.SetWhere(FVfrmModule.gbExportPodminka);
  //
  // if DisplayConfirm('Chcete spustit dávku pro export vydaných faktur?') then
  // begin
  // if FVfrmModule.gbTypExportu = etPohoda then
  // DoDataExportPohoda
  // else if FVExportFaktury(SqlControler.ActiveWhere, FVfrmModule.gbTypExportu) then
  // IntRefreshAndFind(FVdmd.FakturySeznamSID.AsString);
  // end;
end;

procedure TFVfrmBrowse.gbCustomMDIFormPrint(Sender: TObject);
begin
  inherited;
  FVfrmModule.PrintModule(IsDefaultReport, FVdmd.FakturySeznamSID.AsString);

end;

procedure TFVfrmBrowse.actSetUSExecute(Sender: TObject);
var
  lcKeyValue: variant;
  dlg       : TfrmAppStausLook;
begin
  dlg := appGetStatusUserLook(AppCompsDM.dtsFVDUs, 'Faktury');
  try
    if dlg.Look(lcKeyValue) then
    begin
      FVdmd.FakturySeznam.Edit;
      FVdmd.FakturySeznamSTATEUSER.AsVariant := lcKeyValue;
      FVdmd.FakturySeznam.Post;
    end;
  finally
    dlg.Free;
  end;
end;

procedure TFVfrmBrowse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;
end;

procedure TFVfrmBrowse.tvViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  aname: string;
const
  usercheck = 'VYBER2';
  procedure LocalOznacVyber;
  begin
    MasterDs.DataSet.Edit;
    MasterDs.DataSet.FieldByName(usercheck).AsBoolean := not MasterDs.DataSet.FieldByName(usercheck).AsBoolean;
    MasterDs.DataSet.Post;
    if not MasterDs.DataSet.Eof then
      MasterDs.DataSet.Next;
    if SqlControler.FilterActive then
      actRecRefresh.Execute;
  end;

begin
  aname := UpperCase(GetSelectedField.FieldName);
  if aname = usercheck then
    LocalOznacVyber
  else
    inherited;

end;

procedure TFVfrmBrowse.tvViewDATSPLATNOSTStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridDataRow then
  begin
    if ARecord.Values[tvViewLIKVOK.Index] = 'T' then
    begin
      AStyle := dmdGlobal.cxsFVUhrazeno;
    end
    else
    begin
      if ARecord.Values[tvViewDATSPLATNOST.Index] < date then
        AStyle := dmdGlobal.cxsFVDluh;
    end;
  end;

end;

procedure TFVfrmBrowse.tvViewFAKTURAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridDataRow then
  begin
    if ARecord.Values[tvViewTYP.Index] = fvTypHromadna then
      AStyle := dmdGlobal.cxsFVHromadna
    else if ARecord.Values[tvViewTYP.Index] = fvTypText then
      AStyle := dmdGlobal.cxsFVVolna;
  end;
end;

procedure TFVfrmBrowse.tvViewNAZEVStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColor : Integer;
  aAopKod: string;
begin
  if dmdGlobal.gvAOPUseStatusColorOtherEvi then
  begin
    aAopKod := '';

    if ARecord is TcxGridDataRow then
    begin
      aAopKod := VarToStr(ARecord.Values[tvViewAOPKOD.Index]);
      if aAopKod <> '' then
      begin
        aColor := AOPdmd.GetAopColor(aAopKod);
        if aColor >= 0 then
        begin
          RowStyle.Color := aColor;
          AStyle         := RowStyle;
        end;
      end;
    end;
  end;

end;

procedure TFVfrmBrowse.tvViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridDataRow then
  begin
    if VarToStr(ARecord.Values[tvViewSTATEUSERCOLOR.Index]) <> '' then
    begin
      RowStyle.Color := ARecord.Values[tvViewSTATEUSERCOLOR.Index];
      AStyle         := RowStyle;
    end
    else if ARecord.Values[tvViewSTAV.Index] = 2 then
      AStyle := dmdGlobal.cxsRecStorno
    else if ARecord.Values[tvViewSTAV.Index] = 3 then
      AStyle := dmdGlobal.cxsRecArchive
  end;
end;

procedure TFVfrmBrowse.rspFormAfterLoad(Sender: TObject);
begin
  inherited;
  if Assigned(fraSQLCondition) then
    fraSQLCondition.Visible := actShowSQLPanel.Checked;
  IncSearch                 := actIncFind.Checked;

end;

procedure TFVfrmBrowse.actShowSQLPanelExecute(Sender: TObject);
begin
  inherited;
  if Assigned(fraSQLCondition) then
    fraSQLCondition.Visible := actShowSQLPanel.Checked;

end;

procedure TFVfrmBrowse.actSetUSClearExecute(Sender: TObject);
begin
  FVdmd.FakturySeznam.Edit;
  FVdmd.FakturySeznamSTATEUSER.Clear;
  FVdmd.FakturySeznam.Post;
end;

procedure TFVfrmBrowse.actPrintToEmailExecute(Sender: TObject);
var
  aReportFile: string;
  aPdfFile   : string;
begin
  FVdmd.mod_OpenRecord(FVdmd.FakturySeznamSID.AsString);
  AOPdmd.mod_OpenRecord(FVdmd.FakturyAOPKOD.AsString);
  FVfrmModule.frrFV.Recipient.RecipientName := AOPdmd.dtsAOPNAZEV.AsString;
  FVfrmModule.frrFV.Recipient.SendAdress    := AOPdmd.dtsAOPEMAIL.AsString;
  FVfrmModule.frrFV.Recipient.Subject       := 'Faktura: ' + FVdmd.FakturySeznamFAKTURA.AsString;
  aReportFile                               := FVfrmModule.GetDefaultReport;
  dmReport.ExportAndSendEmail(aReportFile, FVfrmModule.frrFV, aPdfFile);
end;

end.
