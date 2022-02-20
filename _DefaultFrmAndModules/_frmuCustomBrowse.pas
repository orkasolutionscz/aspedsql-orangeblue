{ ***************************************************************
  *
  * Unit Name: frmuCustomBrowse
  * Purpose  :
  * Author   :
  * History  :
  05.09.2000
  - doplnena moznost zadat nasobneho trideni pomoci Ctrl + Click na sloupec
  18.03.2001
  - uprava na novy balik komponent
  11.07.2001
  - odstraneni funkci setwhere assigned ()set order, preneseny do frmControls
  06.08.2001
  - odstraneno ModuleQuery, odkaz na Dataset
  13.03.2002
  - pridana komponenta popZaznam, jsou v ni zakladni odkazy na actions pro formular
  v aplikaci se pak pripoji na tlbZaznam
  17.1.2013
  - modifikovana funkce RefreshData

  25.1.2013
  - doplnena funkce Look

  *
  **************************************************************** }

unit _frmuCustomBrowse;

interface

uses
  Windows, SysUtils, Dialogs, Classes, Controls, Forms, Graphics,
  Menus, ImgList, DBActns, ActnList, Db, stdctrls,
  Grids, DBGrids, uCustomForms, uSqlParser, cxGridCustomView, cxGridTableView,
  cxGridDBTableView, cxGridDBBandedTableView, cxGridDBDataDefinitions,
  IBODataset, Vcl.ExtCtrls;

type
  TfrmCustomBrowse = class(TjfsCustomMDI)
    MasterDs: TDataSource;
    ActionList1: TActionList;
    actClose: TAction;
    actRecDetail: TAction;
    actSQLOne: TAction;
    actSQLSpeed: TAction;
    actSQLStored: TAction;
    actSQLCancel: TAction;
    actRecRefresh: TAction;
    actRecNew: TAction;
    actSQLSaveWhere: TAction;
    actSQLEditWhere: TAction;
    actSQLValue: TAction;
    actRecFirst: TDataSetFirst;
    actRecLast: TDataSetLast;
    actRecNext: TDataSetNext;
    actRecPrior: TDataSetPrior;
    actRecKopie: TAction;
    actSQLDayNew: TAction;
    actSQLDayChange: TAction;
    actRecFind: TAction;
    actSQLUserWhere: TAction;
    actRecUpdateAll: TAction;
    actSQLHistory: TAction;
    actSQLSaveCurSetting: TAction;
    SQLControler: TjfsSQLContr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCloseExecute(Sender: TObject);
    procedure actRecRefreshExecute(Sender: TObject);
    procedure actRecDetailExecute(Sender: TObject);
    procedure actRecNewExecute(Sender: TObject);
    procedure actSQLOneExecute(Sender: TObject);
    procedure actSQLValueExecute(Sender: TObject);
    procedure actSQLSpeedExecute(Sender: TObject);
    procedure actSQLStoredExecute(Sender: TObject);
    procedure actSQLSaveWhereExecute(Sender: TObject);
    procedure actSQLEditWhereExecute(Sender: TObject);
    procedure actSQLCancelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSQLDayNewExecute(Sender: TObject);
    procedure actSQLDayChangeExecute(Sender: TObject);
    procedure actRecKopieExecute(Sender: TObject);
    procedure actRecFindExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actSQLUserWhereExecute(Sender: TObject);
    procedure actRecUpdateAllExecute(Sender: TObject);
    procedure actSQLHistoryExecute(Sender: TObject);
    procedure actSQLSaveCurSettingExecute(Sender: TObject);
    procedure SQLControlerWhereChange(Sender: TObject);
    procedure jfsCustomMDIMouseActivate(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    private
      FGrdFQSSearchText: string;
      FRefreshTimer    : TTimer;
      procedure SetGrdFQSSearchText(const Value: string);
      procedure OnRefreshTimer(Sender: TObject);
    protected

      property GrdFQSSearchText: string read FGrdFQSSearchText write SetGrdFQSSearchText;

      procedure DoGrdFQSSearchTextChange; virtual;

      function IntRefresh(AKeyValue: string; aFullRefresh: Boolean = False): Boolean;

      function GetSelectedField: TField; virtual;

      function Locate(NewText: string): Boolean;

      procedure QsrchReset;
    public
      { Procedura pro zadani hodnoty trideni }
      constructor Create(AOwner: TComponent); override;
      procedure UpdateFieldValue(DataSet: TDataSet; FieldName: string; Value: Variant; RecordCount: Integer);
      // Nacteni a ulozeni tvGridu do registru, ini....
      procedure StoreViewSettings(AView: TcxCustomGridView);
      procedure ReStoreViewSettings(AView: TcxCustomGridView);
      function GetRefreshTimer: TTimer;
      procedure ResetRefreshTimer;
  end;

function FindShowFormWhereOrder(FindForm: TFormClass; SQLWhere, SQLOrder: string): TForm;

resourcestring
  SPlatnPodmNceNeodpovDAdnZZnam = 'Platné podmínce neodpovídá žadný záznam!';
  SRECORD_FIND_CAPTION = 'Hledání...';
  SRECORD_FIND_NOTFOUND = 'Hledaný záznam nebyl nalezen.';

implementation

{$R *.DFM}

uses
  fMessageDlg, appfrmuGlobal, uSqlUtils, uAppUtils, uVarClass, messages,
  appdmduSystem, appunConst, cxGridCustomTableView;

function FindShowFormWhereOrder(FindForm: TFormClass; SQLWhere, SQLOrder: string): TForm;
begin
  // Defer updates
  // SendMessage( Application.MainForm.Handle, WM_SETREDRAW, WPARAM(False), 0);
  LockWindowUpdate(Application.MainForm.Handle);
  try

    StartWait;

    result := AppFindShowForm(FindForm, '');
    if result <> nil then
    begin
      if (result is TfrmCustomBrowse) then
      begin
        TfrmCustomBrowse(result).SQLControler.DataSet.Close;
        if SQLWhere = '' then
          SQLWhere := TfrmCustomBrowse(result).SQLControler.Options.StartingWhere;
        if SQLOrder = '' then
          SQLOrder := TfrmCustomBrowse(result).SQLControler.Options.StartingOrder;
        if SQLOrder = EmptyStr then
          SQLOrder := TfrmCustomBrowse(result).SQLControler.KeyField;

        // TfrmCustomBrowse(result).WindowState := wsMaximized;

        // TfrmCustomBrowse(result).Invalidate;

        // TfrmCustomBrowse(result).FormStyle := fsMDIChild; //  show;

        TfrmCustomBrowse(result).Show;

        try
          TfrmCustomBrowse(result).SQLControler.SetWhere(SQLWhere);
          TfrmCustomBrowse(result).SQLControler.DataSet.Active := true;

        except
          TfrmCustomBrowse(result).SQLControler.SetWhere(TrueExpr);
          TfrmCustomBrowse(result).SQLControler.DataSet.Active := true;
        end;

      end;
    end;
  finally
    // Make sure updates are re-enabled
    // SendMessage(Application.MainForm.Handle, WM_SETREDRAW, WPARAM(True), 0);
    // Application.MainForm.Repaint;  // Might be required to reflect the changes
    LockWindowUpdate(0);
    StopWait;
  end;
end;

{ TfrmCustomBrowse }

{ ********************************************************* }
{ Interni pomocne funkce a procedury }
{ ********************************************************* }

{ ********************************************************* }
{ Obsluha vlastnosti }
{ ********************************************************* }

{ ********************************************************* }
{ Vykoneve funkce }
{ ********************************************************* }

procedure TfrmCustomBrowse.UpdateFieldValue(DataSet: TDataSet; FieldName: string; Value: Variant; RecordCount: Integer);

  procedure UpdateValue(Value: Variant);
  begin
    DataSet.Edit;
    DataSet.FieldByName(FieldName).Value := Value;
    DataSet.Post;
  end;

begin
  DataSet.DisableControls;
  try
    if RecordCount = 0 then
      while not DataSet.Eof do
      begin
        UpdateValue(Value);
        DataSet.Next;
      end
    else
      UpdateValue(Value);
  finally
    DataSet.EnableControls;
  end;

end;

{ ********************************************************* }
{ Udalosti formulare a komponent }
{ ********************************************************* }
{ TaFrmModulBrowse }

procedure TfrmCustomBrowse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCustomBrowse.FormDestroy(Sender: TObject);
begin
  FRefreshTimer.OnTimer := nil;
  FRefreshTimer.Enabled := False;
  FRefreshTimer.Free;
end;

{ ********************************************************* }
{ Vykonove procedury Action }
{ ********************************************************* }
{ Action: Formular }

procedure TfrmCustomBrowse.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCustomBrowse.actRecRefreshExecute(Sender: TObject);
var
  intKeyValue: string;
begin
  intKeyValue := MasterDs.DataSet.FieldByName(SQLControler.KeyField).AsString;
  IntRefresh(intKeyValue, true);
end;

procedure TfrmCustomBrowse.actRecDetailExecute(Sender: TObject);
begin
  { Aspon neco }
  FRefreshTimer.Enabled := False;
end;

procedure TfrmCustomBrowse.actRecNewExecute(Sender: TObject);
begin
  { Aspon neco }
  FRefreshTimer.Enabled := False;
end;

{ Action: SQL }

procedure TfrmCustomBrowse.actSQLOneExecute(Sender: TObject);
var
  pResult: string;
begin
  pResult := SQLGetWhere(SQLControler.DataSet, 0);
  if pResult <> EmptyStr then
    SQLControler.SetWhere(pResult);
end;

procedure TfrmCustomBrowse.actSQLValueExecute(Sender: TObject);
var
  iWhere: string;
begin
  if SQLControler = nil then
    exit;
  iWhere := SQLControler.GetSQLOnCurrentField(GetSelectedField);
  if iWhere <> TrueExpr then
    SQLControler.SetWhere(iWhere);
end;

procedure TfrmCustomBrowse.actSQLSpeedExecute(Sender: TObject);
var
  iWhere: string;
begin
  if SQLControler = nil then
    exit;
  iWhere := SQLControler.GetSQLOnFiledsValues(GetSelectedField);
  if (iWhere <> TrueExpr) and (iWhere <> EmptyStr) then
    SQLControler.SetWhere(iWhere);
end;

procedure TfrmCustomBrowse.actSQLStoredExecute(Sender: TObject);
var
  iWhere: string;
begin
  if SQLControler = nil then
    exit;
  iWhere := SQLControler.GetSQLCondition;
  if (iWhere <> SQLControler.AllRecord) then
    SQLControler.SetWhere(iWhere);
end;

procedure TfrmCustomBrowse.actSQLSaveWhereExecute(Sender: TObject);
begin
  { Aspon neco }
  SQLControler.AddSQLCondition(SQLControler.ActiveWhere);
end;

procedure TfrmCustomBrowse.actSQLEditWhereExecute(Sender: TObject);
begin
  { Aspon neco }
  SQLControler.GetSQLCondition;
end;

procedure TfrmCustomBrowse.actSQLCancelExecute(Sender: TObject);
begin
  { Refresh, zobrazeni vsech zaznamu }
  SQLControler.ShowAllRecords;
end;

procedure TfrmCustomBrowse.actSQLDayNewExecute(Sender: TObject);
begin
  { Aspon neco }
  if (SQLControler.DataSet <> nil) and (SQLControler.DataSet.FindField(SYS_F_CREADATE) <> nil) then
    SQLControler.SetWhere(sqlFormatSQLCondition(SYS_F_CREADATE, '=', datetimetostr(SysUtils.date), ftDateTime, true));
end;

procedure TfrmCustomBrowse.actSQLDayChangeExecute(Sender: TObject);
begin
  { Aspon neco }
  if (SQLControler.DataSet <> nil) and (SQLControler.DataSet.FindField(SYS_F_UPDDATE) <> nil) then
    SQLControler.SetWhere(sqlFormatSQLCondition(SYS_F_UPDDATE, '=', datetimetostr(SysUtils.date), ftDateTime, true));
end;

procedure TfrmCustomBrowse.actRecKopieExecute(Sender: TObject);
begin
  { Aspon neco }
  FRefreshTimer.Enabled := False;
end;

procedure TfrmCustomBrowse.actRecFindExecute(Sender: TObject);
begin
  { Aspon neco }
end;

procedure TfrmCustomBrowse.FormActivate(Sender: TObject);
begin
  // perform(WM_SIZE, SIZE_RESTORED, 0);
  ResetRefreshTimer;
end;

procedure TfrmCustomBrowse.actSQLUserWhereExecute(Sender: TObject);
var
  iWhere: string;
begin
  iWhere := SQLControler.GetSQLUserWhere;
  if iWhere <> SQLControler.ActiveWhere then
    SQLControler.SetWhere(iWhere);
end;

procedure TfrmCustomBrowse.actRecUpdateAllExecute(Sender: TObject);
begin
  { Aspon neco }
end;

procedure TfrmCustomBrowse.actSQLHistoryExecute(Sender: TObject);
var
  iWhere: string;
begin
  iWhere := SQLControler.GetSQLOnHistory;
  if iWhere <> SQLControler.ActiveWhere then
    SQLControler.SetWhere(iWhere);

end;

procedure TfrmCustomBrowse.actSQLSaveCurSettingExecute(Sender: TObject);
begin
  SQLControler.Options.StartingOrder := SQLControler.ActiveOrder;
  SQLControler.Options.StartingWhere := SQLControler.ActiveWhere;
end;

function TfrmCustomBrowse.IntRefresh(AKeyValue: string; aFullRefresh: Boolean): Boolean;
begin
  result := False;
  with SQLControler do
  begin
    if (DataSet = nil) or (DataSet.Active = False) then
      exit;

    begin
      DataSet.DisableControls;
      try
        // Pokud jsme na zaznamu s keyjako
        if (aFullRefresh = False) and (KeyField <> EmptyStr) and (AKeyValue <> EmptyStr) and (DataSet.FieldByName(KeyField).AsString = AKeyValue) then
        begin
          TIBOQuery(DataSet).Refreshrows;
        end
        else
        begin
          DataSet.Refresh;
          if (KeyField <> EmptyStr) and (AKeyValue <> EmptyStr) { and (DataSet.FieldByName(KeyField).AsString <> AKeyValue) } then
            FindKeyValue(AKeyValue);
        end;
      finally
        DataSet.EnableControls;
      end;
    end
  end;
end;

procedure TfrmCustomBrowse.jfsCustomMDIMouseActivate(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  ResetRefreshTimer;
end;

constructor TfrmCustomBrowse.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ActionList1.Images := GetdmdGlobal.imglDefault;
  { List pro automaticke ukladani nastaveni GridViews }
  actSQLCancel.Enabled    := False;
  actSQLSaveWhere.Enabled := False;
  actRecUpdateAll.Visible := jfaUserInfo.AdminsUser;
  FRefreshTimer           := TTimer.Create(nil);
  FRefreshTimer.Interval  := dmdSystem.gbAutoRefreshInterval;
  FRefreshTimer.Enabled   := False;
  FRefreshTimer.OnTimer   := OnRefreshTimer;
end;

procedure TfrmCustomBrowse.ResetRefreshTimer;
begin
  if FRefreshTimer <> nil then
  begin
    FRefreshTimer.Enabled  := False;
    FRefreshTimer.Interval := dmdSystem.gbAutoRefreshInterval;
    FRefreshTimer.Enabled  := dmdSystem.gbAutoRefresh;
  end;
end;

procedure TfrmCustomBrowse.ReStoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewRestoreFromDB(AView);
  // TcxCustomGridView(aView).RestoreFromRegistry(RegistryKeyGridsName + aView.Name);
  // TcxCustomGridView(aView).RestoreFromStorage(RegistryKeyGridsName + aView.Name);
end;

procedure TfrmCustomBrowse.StoreViewSettings(AView: TcxCustomGridView);
begin
  dmdSystem.AppViewStoreToDb(AView);
  // TcxCustomGridView(aView).StoreToRegistry(RegistryKeyGridsName + aView.Name);
end;

function TfrmCustomBrowse.GetRefreshTimer: TTimer;
begin
  result := FRefreshTimer;
end;

function TfrmCustomBrowse.GetSelectedField: TField;
begin
  result := nil;
end;

procedure TfrmCustomBrowse.SQLControlerWhereChange(Sender: TObject);
begin
  actSQLCancel.Enabled    := SQLControler.FilterActive;
  actSQLSaveWhere.Enabled := SQLControler.FilterActive;
  QsrchReset;
end;

function TfrmCustomBrowse.Locate(NewText: string): Boolean;
var
  Field: TField;
begin
  result := False;
  if MasterDs.DataSet.State = dsBrowse then
  begin
    Field := GetSelectedField;
    if Assigned(Field) and not Field.Calculated and not Field.Lookup and ((Field.DataType = ftString) or (Field.DataType = ftWideString)) then
    begin
      MasterDs.DataSet.DisableControls;
      try
        try
          result := MasterDs.DataSet.Locate(Field.FieldName, NewText, [loCaseInsensitive, loPartialKey]);
          if result then
          begin
            GrdFQSSearchText := NewText;
          end;
        except
        end;
      finally
        MasterDs.DataSet.EnableControls;
      end;
    end;
  end;
end;

procedure TfrmCustomBrowse.OnRefreshTimer(Sender: TObject);
begin
  try
    actRecRefresh.Execute;
    ResetRefreshTimer;
  except
  end;
end;

procedure TfrmCustomBrowse.QsrchReset;
begin
  GrdFQSSearchText := '';
end;

procedure TfrmCustomBrowse.SetGrdFQSSearchText(const Value: string);
begin
  FGrdFQSSearchText := Value;
  DoGrdFQSSearchTextChange;
end;

procedure TfrmCustomBrowse.DoGrdFQSSearchTextChange;
begin
  //
end;

end.
