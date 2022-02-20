unit fPUDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fCustEdit, dxBar, cxClasses, Db, DBActns, ActnList, StdCtrls, cxButtons,
  ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxTextEdit, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxMaskEdit, cxCalendar, cxContainer, cxEdit,
  cxGroupBox, cxDBEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, dxBarExtItems;

type
  TfrmPUDetail = class(TfrmCustEdit)
    cxGroupBox1: TcxGroupBox;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    btnPolAdd: TcxButton;
    btnPolDel: TcxButton;
    cxGrid1: TcxGrid;
    tvPolozky: TcxGridDBTableView;
    tvPolozkyID: TcxGridDBColumn;
    tvPolozkyCISLO_DOKL: TcxGridDBColumn;
    tvPolozkyREF_FUHR: TcxGridDBColumn;
    tvPolozkyPRIJEMCE: TcxGridDBColumn;
    tvPolozkyREF_DOKLAD: TcxGridDBColumn;
    tvPolozkyUCET_CISLO: TcxGridDBColumn;
    tvPolozkyUCET_BANKA: TcxGridDBColumn;
    tvPolozkyVARIABILNI: TcxGridDBColumn;
    tvPolozkyUCET_KONST: TcxGridDBColumn;
    tvPolozkyUCET_SPECIF: TcxGridDBColumn;
    tvPolozkyCASTKA: TcxGridDBColumn;
    tvPolozkyVRACENO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dsPolozky: TDataSource;
    edTextPrikazu: TcxDBTextEdit;
    edUdaj: TcxDBTextEdit;
    edDatZalozeni: TcxDBDateEdit;
    edDatPlatby: TcxDBDateEdit;
    edCelkem: TcxDBCurrencyEdit;
    mePoznamka: TcxDBMemo;
    edUcet: TcxDBLookupComboBox;
    actPolNew: TAction;
    actPolDelete: TAction;
    actExport: TAction;
    dxb1: TdxBarLargeButton;
    dxb2: TdxBarButton;
    procedure jfsCustomEvidFormCreate(Sender: TObject);
    procedure actPolNewExecute(Sender: TObject);
    procedure actPolDeleteExecute(Sender: TObject);
    procedure actRecordMove(Sender: TObject);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
  private
    { Private declarations }
    function KontrolujPrikaz: boolean;
    function ExportABO: boolean;
    function ExportMTC: boolean;
  public
    { Public declarations }
  end;

var
  frmPUDetail: TfrmPUDetail;

implementation

uses variants, uCustomForms, JclStrings, FPUdmdu, appfrmuGlobal, appdmduSystem, FPUfrmuModule, FDfrmuModule, fMessageDlg,
  FPUExpClassUnit, uAppUtils;

{$R *.DFM}

function MyDateToStringEx(ADate: TDateTime): string;
var
  lcRok, lcMesic, lcDen: word;
begin
  DecodeDate(ADate, lcRok, lcMesic, lcDen);
  Result := StrRight(IntToStr(lcRok), 2) + StrPadLeft(IntToStr(lcMesic), 2, '0') + StrPadLeft(IntToStr(lcDen), 2, '0');
end;

procedure TfrmPUDetail.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  edUcet.RepositoryItem := dmdGlobal.repUcet;
  actRecDelete.Visible  := dmdSystem.gbEnableDelete;

end;

procedure TfrmPUDetail.actPolNewExecute(Sender: TObject);
begin
  if FPUdmd.PridejPolozku then
  begin
    tvPolozky.DataController.RefreshExternalData;
    IsDataChanged := true;
  end;
end;

procedure TfrmPUDetail.actPolDeleteExecute(Sender: TObject);
var
  afaktura: string;
begin
  if DisplayConfirm('Chcete odstranit øádek pøíkazu: ' + tvPolozkyVARIABILNI.Caption + ' na èástku: ' + tvPolozkyCASTKA.Caption + ' ?') then
  begin

    afaktura := FPUdmd.FPUPolozkyREF_DOKLAD.AsString;

    FDfrmModule.FDLikvidace(false, afaktura, date());

    tvPolozky.DataController.DeleteSelection;

    IsDataChanged := true;
  end;
end;

procedure TfrmPUDetail.actRecordMove(Sender: TObject);
begin
  if Sender = actRecPrior then
    FPUdmd.FPUSeznam.prior
  else if Sender = actRecNext then
    FPUdmd.FPUSeznam.next;

  FPUdmd.mod_OpenRecord(FPUdmd.FPUSeznamID.AsString);
end;

procedure TfrmPUDetail.actRecDeleteExecute(Sender: TObject);
begin
  try
    if DisplayConfirm(sMsgConfirmDelete) then
    begin
      FPUdmd.FPURecord.Delete;
      if FPUdmd.FPUSeznam.Active then
        FPUdmd.FPUSeznam.RefreshKeys;
      Self.close;
    end;
  except
    on e: exception do
      DisplayError(SERR_DELETE, e.Message)
  end;
end;

procedure TfrmPUDetail.actExportExecute(Sender: TObject);
begin
  if FPUfrmModule.gbAxportType = 'ABO' then
    ExportABO
  else if FPUfrmModule.gbAxportType = 'MTC' then
    ExportMTC;
end;

function TfrmPUDetail.ExportABO: boolean;
var
  lcABO       : TCustomABOExportObject;
  lcExportFile: string;
  i           : integer;
begin
  Result := false;
  if KontrolujPrikaz then
  begin
    lcExportFile := FPUfrmModule.gbABOExportPath + FPUfrmModule.gbABOFileName;

    lcABO := TCustomABOExportObject.Create(lcExportFile, edDatZalozeni.date, edDatPlatby.date, dmdSystem.gbAktivace.Nazev1, '0000000000', FPUdmd.FPURecordUCET.AsString,
      FPUdmd.FPURecordKODBANKY.AsString);

    lcABO.DoplNulyVariabilni := FPUfrmModule.gbABODoplnNulVar;

    try
      tvPolozky.Controller.GotoFirst;
      // FPUdmd.FPUPolozky.First;
      for i := 0 to tvPolozky.DataController.RecordCount - 1 do
      // while not tvPolozky.Controller.IsFinish {FPUdmd.FPUPolozky.eof} do
      begin

        lcABO.AddPolozka(VarToStr(tvPolozkyUCET_CISLO.EditValue) { fpudmd.FPUPolozkyUCET_CISLO.asstring } , VarToStr(tvPolozkyUCET_BANKA.EditValue) { fpudmd.FPUPolozkyUCET_BANKA.asstring } ,
          tvPolozkyCASTKA.EditValue { fpudmd.FPUPolozkyCASTKA.AsCurrency } , VarToStr(tvPolozkyVARIABILNI.EditValue) { fpudmd.FPUPolozkyVARIABILNI.AsString } ,
          VarToStr(tvPolozkyUCET_KONST.EditValue) { fpudmd.FPUPolozkyUCET_KONST.AsString } , VarToStr(tvPolozkyUCET_SPECIF.EditValue) { fpudmd.FPUPolozkyUCET_SPECIF.AsString }
          );
        tvPolozky.Controller.GoToNext(true);
        { FPUdmd.FPUPolozky.Next };
      end; // while

      Result := lcABO.ExportToFile;
      if Result then
        DisplayInfo('Byla úspìšnì vytvoøena exportní dávka: ' + lcExportFile)
      else
        DisplayError('Exportní dávka nebyla vytvoøena.');

    finally
      lcABO.free;
    end;

  end;
end;

function TfrmPUDetail.ExportMTC: boolean;
var
  i                         : integer;
  lcWorkString, lcExportFile: string;
  FOutputList               : TStrings;

  function MyPrepareLine(AText: string): string;
  begin
    Result := UpperCase(strTranslateStr(AText));
  end;

const
  lSep: char = ' ';
begin
  FOutputList := TStringList.Create;
  try
    FOutputList.Clear;

    tvPolozky.DataController.GotoFirst;

    for i := 0 to tvPolozky.DataController.RecordCount - 1 do
    // while not tvPolozky.Controller.IsFinish {FPUdmd.FPUPolozky.eof} do
    begin

      { HD }
      lcWorkString := 'HD:11' + lSep + MyDateToStringEx(edDatPlatby.date) + lSep + FPUdmd.FPURecordKODBANKY.AsString + lSep + IntToStr(i + 1) + lSep + VarToStr(tvPolozkyUCET_BANKA.EditValue);

      FOutputList.Add(MyPrepareLine(lcWorkString));

      { KC }
      lcWorkString := 'KC:' + ConvertCastka(tvPolozkyCASTKA.EditValue, 0) + lSep + '000000' + lSep + 'CZK';

      FOutputList.Add(MyPrepareLine(lcWorkString));

      { UD ucet platce }
      lcWorkString := 'UD:' + ConvertUcetMTC(FPUdmd.FPURecordUCET.AsString);

      FOutputList.Add(MyPrepareLine(lcWorkString));

      { DI }
      lcWorkString := 'DI:' + dmdSystem.gbAktivace.Nazev1;

      FOutputList.Add(MyPrepareLine(lcWorkString));

      { UK Ucet prijemce }
      lcWorkString := 'UK:' + ConvertUcetMTC(VarToStr(tvPolozkyUCET_CISLO.EditValue));

      FOutputList.Add(MyPrepareLine(lcWorkString));

      { AK specificky }
      if VarToStr(tvPolozkyUCET_SPECIF.EditValue) <> '' then
      begin
        lcWorkString := 'AK:' + VarToStr(tvPolozkyUCET_SPECIF.EditValue);

        FOutputList.Add(MyPrepareLine(lcWorkString));

      end;

      { KI Jmeno prijemce }
      lcWorkString := 'KI:' + VarToStr(tvPolozkyPRIJEMCE.EditValue);

      FOutputList.Add(MyPrepareLine(lcWorkString));

      { EC konstantni symbol }
      lcWorkString := 'EC:' + VarToStr(tvPolozkyUCET_KONST.EditValue);

      FOutputList.Add(MyPrepareLine(lcWorkString));

      { ZK variabilni symbol }
      lcWorkString := 'ZK:' + VarToStr(tvPolozkyVARIABILNI.EditValue);

      FOutputList.Add(MyPrepareLine(lcWorkString));

      {
        lcABO.AddPolozka(
        VarToStr(tvPolozkyUCET_CISLO.EditValue) ,
        VarToStr(tvPolozkyUCET_BANKA.EditValue) ,
        tvPolozkyCASTKA.EditValue,
        VarToStr(tvPolozkyVARIABILNI.EditValue),
        VarToStr(tvPolozkyUCET_KONST.EditValue),
        VarToStr(tvPolozkyUCET_SPECIF.EditValue)
        );
      }

      tvPolozky.Controller.GoToNext(true);
    end; // while

    lcExportFile := FPUfrmModule.gbMTCExportPath + FPUfrmModule.gbMTCFileName;
    FOutputList.SaveToFile(lcExportFile);

    Result := true;
    if Result then
      DisplayInfo('Byla úspìšnì vytvoøena exportní dávka: ' + lcExportFile)
    else
      DisplayError('Exportní dávka nebyla vytvoøena.');

    FOutputList.free;

  except
    raise;
  end;
end;

function TfrmPUDetail.KontrolujPrikaz: boolean;
begin
  { Kontrola jednotlivych polozek prikazu }
  FPUdmd.FPUPolozky.First;
  Result := true;
  while not FPUdmd.FPUPolozky.eof do
  begin

    if FPUdmd.FPUPolozkyUCET_CISLO.AsString = EmptyStr then
    begin
      DisplayError('Chybí èíslo úètu');
      Result := false;
      exit;
    end;
    if FPUdmd.FPUPolozkyUCET_BANKA.AsString = EmptyStr then
    begin
      DisplayError('Chybí kód banky');
      Result := false;
      exit;
    end;
    if FPUdmd.FPUPolozkyVARIABILNI.AsString = EmptyStr then
    begin
      DisplayError('Chybí variabilní symbol');
      Result := false;
      exit;
    end;
    if FPUdmd.FPUPolozkyUCET_KONST.AsString = EmptyStr then
    begin
      DisplayError('Chybí konstantní symbol');
      Result := false;
      exit;
    end;
    if FPUdmd.FPUPolozkyCASTKA.AsCurrency <= 0 then
    begin
      DisplayError('Èástka k úhradì musí být vìtší než 0');
      Result := false;
      exit;
    end;
    FPUdmd.FPUPolozky.next;
  end; // while
end;

end.
