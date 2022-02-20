unit fModulBrowse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, ImgList, DBActns, ActnList, Db, _frmuCustomBrowse,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxBar, cxStyles, uSqlParser, cxGridUIHelper, cxTextEdit,
  cxContainer, cxEdit, cxLabel, cxListBox, cxSplitter, cxMaskEdit,
  cxButtonEdit, IBODataset, fSQLModulControler, cxGridDBDataDefinitions, cxCustomData,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData;

type
  TfrmModulBrowse = class(TfrmCustomBrowse)
    pnlBrowse: TPanel;
    actSQLOznacit: TAction;
    actSQLZrusitOznacit: TAction;
    tvView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    actPrintMng: TAction;
    actPrintPrew: TAction;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxsModul: TcxStyleRepository;
    RowStyle: TcxStyle;
    actGridRestore: TAction;
    actSQLStartSave: TAction;
    actSQLStartClear: TAction;
    actSQLStartEdit: TAction;
    actShowSQLPanel: TAction;
    actExportGrid: TAction;
    actFullRefresh: TAction;
    actIncFind: TAction;
    actGridStyle: TAction;
    actPrintToEmail: TAction;
    procedure actRecFindExecute(Sender: TObject);
    procedure actRecUpdateAllExecute(Sender: TObject);
    procedure actSQLOznacitExecute(Sender: TObject);
    procedure actSQLZrusitOznacitExecute(Sender: TObject);
    procedure tvViewDataControllerSortingChanged(Sender: TObject);
    procedure actSQLValueExecute(Sender: TObject);
    procedure actSQLSpeedExecute(Sender: TObject);
    procedure tvViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actPrintPrewExecute(Sender: TObject);
    procedure actPrintMngExecute(Sender: TObject);
    procedure actGridRestoreExecute(Sender: TObject);
    procedure actSQLStartClearExecute(Sender: TObject);
    procedure actSQLStartSaveExecute(Sender: TObject);
    procedure actSQLStartEditExecute(Sender: TObject);
    procedure SQLControlerWhereChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actShowSQLPanelExecute(Sender: TObject);
    procedure actSQLSaveWhereExecute(Sender: TObject);
    procedure actSQLEditWhereExecute(Sender: TObject);
    procedure actExportGridExecute(Sender: TObject);
    procedure actFullRefreshExecute(Sender: TObject);
    procedure actIncFindExecute(Sender: TObject);
    procedure tvViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvViewKeyPress_incsearch(Sender: TObject; var Key: Char);
    procedure tvViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tvViewKeyPress_dialog(Sender: TObject; var Key: Char);
    procedure actGridStyleExecute(Sender: TObject);
    procedure actPrintToEmailExecute(Sender: TObject);
  private
    FIncSearch: Boolean;
    procedure SetIncSearch(const Value: Boolean);
  private
    { Private declarations }
    LocalGridStreem: TMemoryStream;
  protected
    fraSQLCondition: TfraSQLModul;
    function GetSelectedField: TField; override;
    procedure OznacVyber; virtual;
    property IncSearch: Boolean read FIncSearch write SetIncSearch;
    procedure DoGrdFQSSearchTextChange; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure IntRefreshAndFind(AKeyValue: string);
    procedure SetupNewStartFilter;
    procedure ClearStartFilter;
  end;

implementation

{$R *.DFM}

uses
  fMessageDlg, fFindOrWhereDlg, uSqlUtils, uVarClass, appdmduSystem, appfrmuGlobal, appfrmuMain,
  fGridExportDlg, fGetGridStyle, appIniOptionsUnit;

resourcestring
  SAktualizace = 'Aktualizace';
  SZadejteNovouHodnotu = 'Zadejte novou hodnotu';
  sHromadnaOprava = 'Opravdu chcete nahradit u všech vybraných záznamù ' + #10#13 + 'pole [ %s ] hodotou ( %s )?';

constructor TfrmModulBrowse.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fraSQLCondition         := TfraSQLModul.Create(self);
  fraSQLCondition.Parent  := self;
  fraSQLCondition.Align   := alRight;
  fraSQLCondition.Visible := actShowSQLPanel.Checked;

  LocalGridStreem := TMemoryStream.Create;
  tvView.StoreToStream(LocalGridStreem);
  LocalGridStreem.Position := 0;
  actPrintToEmail.Visible  := true;

  Inc(frmMainForm.CreatedMDICount);

  tvView.Styles.StyleSheet := dmdGlobal.ModStyleSheet;

  frmMainForm.dxBarListWindows.Items.AddObject(Caption, self);
  if frmMainForm.MDIChildCount = 1 then
    frmMainForm.ShowItems(true);

end;

destructor TfrmModulBrowse.Destroy;
begin
  try
    if assigned(LocalGridStreem) then
      FreeAndNil(LocalGridStreem);

    with frmMainForm.dxBarListWindows.Items do
      Delete(IndexOfObject(self));
    if frmMainForm.MDIChildCount = 1 then
      frmMainForm.ShowItems(False);
  except

  end;
  inherited;
end;

procedure TfrmModulBrowse.actRecFindExecute(Sender: TObject);
var
  s      : string;
  lcField: TField;
begin
  lcField := MasterDs.Dataset.FindField(SQLControler.ZnackaFindPole);

  if lcField <> nil then
    if InputQuery(SRECORD_FIND_CAPTION, lcField.DisplayLabel, s) then
      if not SQLControler.Dataset.Locate(lcField.FieldName, s, [loCaseInsensitive]) then
        ShowMessage(SRECORD_FIND_NOTFOUND)
      else
        actRecDetail.Execute;
end;

procedure TfrmModulBrowse.actRecUpdateAllExecute(Sender: TObject);
var
  sValue: string;
  intSQL: TStringList;
begin
  if InputQuery(SAktualizace, SZadejteNovouHodnotu, sValue) then
    if DisplayConfirm(Format(sHromadnaOprava, [GetSelectedField.DisplayLabel, sValue])) then
    begin
      intSQL := TStringList.Create;
      try
        intSQL.Add('update ' + SQLControler.UpdateTableName);
        case GetSelectedField.DataType of
          ftString:
            intSQL.Add('set ' + GetSelectedField.FieldName + '=''' + sValue + '''');

          ftInteger, ftSmallint, ftFloat, ftCurrency:
            intSQL.Add('set ' + GetSelectedField.FieldName + '=' + sValue);

          ftDate, ftDateTime:
            intSQL.Add('set ' + GetSelectedField.FieldName + '=' + sqlDateToSQL(StrToDate(sValue)));
          else
            exit;
        end;

        intSQL.Add('where ' + SQLControler.ActiveWhere);
        dmdSystem.spProc.sql.Assign(intSQL);
        try
          dmdSystem.spProc.ExecSQL;
          DisplayInfo('Aktualizace záznamù probìhla úspìšnì.');
          actRecRefresh.Execute;
        except
          DisplayError('Chyba pøi pokusu o aktualizaci záznamù!');
        end;
      finally
        intSQL.free;
      end;
    end;
end;

procedure TfrmModulBrowse.actSQLOznacitExecute(Sender: TObject);
begin
  if MasterDs.Dataset.FindField(FLD_VYBEROVEPOLE) <> nil then
    OznacVyber;
end;

procedure TfrmModulBrowse.actSQLZrusitOznacitExecute(Sender: TObject);
const
  pCommand = 'update %s set vyber = ' + '''F''' + ' where vyber = ' + '''T''';
var
  LocSQLString: string;
begin
  { Aspone neco }
  if MasterDs.Dataset.FindField(FLD_VYBEROVEPOLE) <> nil then
  begin
    LocSQLString := Format(pCommand, [SQLControler.UpdateTableName]);
    try
      dmdSystem.ExecuteSql(LocSQLString);
      actRecRefresh.Execute;
    except
      raise;
    end;
  end;

end;

procedure TfrmModulBrowse.tvViewDataControllerSortingChanged(Sender: TObject);

  procedure SortClone;
  var
    AColumn   : TcxGridDBColumn;
    AFieldName: string;
    I         : Integer;
  begin
    with TcxGridDBDataController(Sender).GridView do
    begin
      if not PatternGridView.IsPattern then
        exit;
      try
        BeginUpdate;
        TcxGridDBTableView(PatternGridView).BeginUpdate;
        TcxGridDBTableView(PatternGridView).DataController.ClearSorting(False);
        for I := 0 to SortedItemCount - 1 do
        begin
          AFieldName := TcxGridDBColumn(SortedItems[I]).DataBinding.FieldName;
          AColumn    := TcxGridDBTableView(PatternGridView).GetColumnByFieldName(AFieldName);
          if AColumn.SortOrder <> SortedItems[I].SortOrder then
            AColumn.SortOrder := SortedItems[I].SortOrder;
        end;
      finally
        TcxGridDBTableView(PatternGridView).EndUpdate;
        EndUpdate;
      end;
    end;

  end;

  procedure ApplySortToQuery(ASortArray: array of string);
  var
    I          : Integer;
    ASortString: string;
  begin
    ASortString   := '';
    for I         := 0 to High(ASortArray) do
      ASortString := ASortString + ASortArray[I];
    Delete(ASortString, Length(ASortString) - 1, 2);
    try
      SQLControler.setOrder(ASortString);
    except
    end;
  end;

  procedure SortPattern;
  var
    I                 : Integer;
    AOrder, AFieldName: string;
    ASortArray        : array of string;
  begin
    with TcxGridDBDataController(Sender).GridView do
      try
        BeginUpdate;
        SetLength(ASortArray, SortedItemCount);
        for I := 0 to SortedItemCount - 1 do
        begin
          AFieldName := TcxGridDBColumn(SortedItems[I]).DataBinding.FieldName;
          if SortedItems[I].SortOrder = soAscending then
            AOrder := ' ASC, '
          else
            AOrder                             := ' DESC, ';
          ASortArray[SortedItems[I].SortIndex] := AFieldName + AOrder;
        end;
        ApplySortToQuery(ASortArray);
      finally
        EndUpdate;
      end;
  end;

// var
// AGridView: TcxCustomGridTableView;
begin
  try
    Screen.Cursor := crHourGlass;
    // AGridView := TcxGridDBDataController(Sender).GridView;
    // if AGridView.IsMaster or AGridView.IsPattern then
    SortPattern;
    QsrchReset;
    // else
    // SortClone;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmModulBrowse.actSQLValueExecute(Sender: TObject);
var
  iWhere: string;
begin
  if SQLControler = nil then
    exit;
  iWhere := SQLControler.GetSQLOnCurrentField(GetSelectedField);
  if iWhere <> trueexpr then
    SQLControler.SetWhere(iWhere);
end;

procedure TfrmModulBrowse.actSQLSpeedExecute(Sender: TObject);
var
  iWhere: string;
begin
  if SQLControler = nil then
    exit;
  iWhere := SQLControler.GetSQLOnFiledsValues(GetSelectedField);
  if (iWhere <> trueexpr) and (iWhere <> EmptyStr) then
    SQLControler.SetWhere(iWhere);
end;

function TfrmModulBrowse.GetSelectedField: TField;
begin
  result := TcxGridDBColumn(tvView.Controller.FocusedColumn).DataBinding.Field;
end;

procedure TfrmModulBrowse.tvViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  sname: string;
begin
  sname := UpperCase(GetSelectedField.FieldName);
  if sname = FLD_VYBEROVEPOLE then
    OznacVyber
  else
    actRecDetail.Execute;
end;

procedure TfrmModulBrowse.IntRefreshAndFind(AKeyValue: string);
begin
  IntRefresh(AKeyValue, true { actFullRefresh.Checked } );
  if MasterDs.Dataset.FieldByName(SQLControler.KeyField).AsString <> AKeyValue then
    if MasterDs.Dataset.Locate(SQLControler.KeyField, AKeyValue, []) = False then
      if SQLControler.FilterActive then
      begin
        SQLControler.ShowAllRecords;
        MasterDs.Dataset.Locate(SQLControler.KeyField, AKeyValue, [])
      end;
end;

procedure TfrmModulBrowse.actPrintPrewExecute(Sender: TObject);
begin
  PrintDefReport;
end;

procedure TfrmModulBrowse.actPrintMngExecute(Sender: TObject);
begin
  PrintModule;
end;

procedure TfrmModulBrowse.OznacVyber;
begin
  MasterDs.Dataset.Edit;
  MasterDs.Dataset.FieldByName(FLD_VYBEROVEPOLE).AsBoolean := not MasterDs.Dataset.FieldByName(FLD_VYBEROVEPOLE).AsBoolean;
  MasterDs.Dataset.Post;

  if not MasterDs.Dataset.Eof then
    MasterDs.Dataset.Next;
  if SQLControler.FilterActive then
    actRecRefresh.Execute;
end;

procedure TfrmModulBrowse.actGridRestoreExecute(Sender: TObject);
begin
  LocalGridStreem.Position := 0;
  tvView.RestoreFromStream(LocalGridStreem, true, true);

end;

procedure TfrmModulBrowse.actSQLStartClearExecute(Sender: TObject);
begin
  ClearStartFilter;
end;

procedure TfrmModulBrowse.actSQLStartSaveExecute(Sender: TObject);
begin
  if SQLControler.FilterActive then
  begin
    SQLControler.Options.StartingWhere := SQLControler.ActiveWhere;
    SQLControler.AllRecord             := SQLControler.ActiveWhere;
  end;
end;

procedure TfrmModulBrowse.actSQLStartEditExecute(Sender: TObject);
var
  sNewFilter: string;
begin
  sNewFilter := InputBox('Zadejete SQL podmínku', 'Podmínka', SQLControler.AllRecord);
  if sNewFilter <> SQLControler.AllRecord then
  begin
    SQLControler.AllRecord             := sNewFilter;
    SQLControler.Options.StartingWhere := sNewFilter;
    fraSQLCondition.Refresh;
  end;
end;

procedure TfrmModulBrowse.SQLControlerWhereChange(Sender: TObject);
begin
  inherited;
  actSQLStartSave.Enabled  := SQLControler.FilterActive;
  actSQLStartEdit.Enabled  := SQLControler.AllRecord <> trueexpr;
  actSQLStartClear.Enabled := actSQLStartEdit.Enabled;

  if actShowSQLPanel.Checked then
    fraSQLCondition.Refresh;
  if SQLControler.FilterActive then
    frmMainForm.StatusBar.Panels[2].Text := IntToStr(TIBOQuery(SQLControler.Dataset).RecordCountAll)
  else
    frmMainForm.StatusBar.Panels[2].Text := '<<>>';
end;

procedure TfrmModulBrowse.FormActivate(Sender: TObject);
begin
  inherited;
  if dmdSystem.gbAktivace.getDemo then
    if (MasterDs.Dataset <> nil) and (MasterDs.Dataset.active = true) and (MasterDs.Dataset.RecordCount > 10) then
    begin
      DisplayError(SERR_DEMO_MAXRECORD, 'Máte nainstalovanou pouze demonstraèní verzi programu.');
      MasterDs.Dataset.active := False;
      Close;
    end;
  if (dmdSystem.gbAktivace.Docasnost > 0) and (dmdSystem.gbAktivace.StopDatum < Now) then
  begin
    DisplayError(SERR_DEMO_DOCASNOST, '');
    MasterDs.Dataset.active := False;
    Close;
  end;
  //
  ResetRefreshTimer;
  //
end;

procedure TfrmModulBrowse.actShowSQLPanelExecute(Sender: TObject);
begin
  actShowSQLPanel.Checked := not actShowSQLPanel.Checked;
  fraSQLCondition.Visible := actShowSQLPanel.Checked;
  if actShowSQLPanel.Checked then
    fraSQLCondition.Refresh;
end;

procedure TfrmModulBrowse.SetupNewStartFilter;
var
  sNewFilter: string;
begin
  sNewFilter := InputBox('Zadejete SQL podmínku', 'Podmínka', SQLControler.AllRecord);
  if sNewFilter <> SQLControler.AllRecord then
  begin
    SQLControler.AllRecord             := sNewFilter;
    SQLControler.Options.StartingWhere := sNewFilter;
    SQLControler.SetWhere(sNewFilter);
  end;

end;

procedure TfrmModulBrowse.ClearStartFilter;
begin
  if DisplayConfirm('Chcete zrušit omezení pro výbìr záznamù?') then
  begin
    SQLControler.AllRecord := trueexpr;
    SQLControler.SetWhere(trueexpr);
  end;
end;

procedure TfrmModulBrowse.actSQLSaveWhereExecute(Sender: TObject);
begin
  inherited;
  fraSQLCondition.Refresh;
end;

procedure TfrmModulBrowse.actSQLEditWhereExecute(Sender: TObject);
begin
  inherited;
  fraSQLCondition.Refresh;
end;

procedure TfrmModulBrowse.actExportGridExecute(Sender: TObject);
begin
  appGrifExport(cxGrid1);
end;

procedure TfrmModulBrowse.actFullRefreshExecute(Sender: TObject);
begin
  // actFullRefresh.Checked := not actFullRefresh.Checked;
end;

procedure TfrmModulBrowse.actIncFindExecute(Sender: TObject);
begin
  actIncFind.Checked := not actIncFind.Checked;
  IncSearch          := actIncFind.Checked;
end;

procedure TfrmModulBrowse.SetIncSearch(const Value: Boolean);
begin
  FIncSearch := Value;
  if Value then
  begin
    tvView.OnKeyPress := tvViewKeyPress_incsearch;
  end
  else
  begin
    tvView.OnKeyPress := tvViewKeyPress_dialog;
  end;
end;

procedure TfrmModulBrowse.tvViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  ResetRefreshTimer;
  if (Key in [0, VK_UP, VK_PRIOR, VK_DOWN, VK_NEXT, VK_HOME, VK_END, VK_LEFT, VK_RIGHT]) then
    QsrchReset;

end;

procedure TfrmModulBrowse.tvViewKeyPress_incsearch(Sender: TObject; var Key: Char);
var
  NewText: string;
begin
  if Key <> #0 then
  begin
    try
      inherited KeyPress(Key);
      //
      ResetRefreshTimer;
      //
      begin
        NewText := GrdFQSSearchText;
        case Key of
          #8:
            if Length(NewText) > 0 then
              Delete(NewText, Length(NewText), 1);
          #32 .. #255:
            begin
              NewText := NewText + Key;
            end;
        end;
        if (NewText <> '') and Locate(NewText) then
          Key := #0;
      end;

    finally
      inherited OnKeyPress := nil;
    end;
  end;

end;

procedure TfrmModulBrowse.tvViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  QsrchReset;
  ResetRefreshTimer;
end;


procedure TfrmModulBrowse.tvViewKeyPress_dialog(Sender: TObject; var Key: Char);
var
  NewText  : string;
  fRes     : Integer;
  sOldWhere: string;
  sWhere   : string;
begin

  if Key <> #0 then
  begin
    //
    ResetRefreshTimer;
    //

    if GetSelectedField.DataType in [ftDate, ftTime, ftDateTime] then
      exit;
    case Key of
      #32 .. #255:
        begin
          NewText   := Key;
          sOldWhere := SQLControler.ActiveWhere;
          // fRes      := appHledej(SRECORD_FIND_CAPTION, GetSelectedField.DisplayLabel, NewText);
          fRes := appHledejEx(SRECORD_FIND_CAPTION, GetSelectedField, NewText);

          if fRes >= 0 then
          begin
            case fRes of
              0:
                begin
                  if SQLControler.Dataset.Locate(GetSelectedField.FieldName, NewText, [loCaseInsensitive, loPartialKey]) then
                  begin
                    GrdFQSSearchText := NewText;
                  end
                  else
                    ShowMessage(SRECORD_FIND_NOTFOUND);
                end;

              1:
                begin
                  // Pokusime se vyfiltrovat dle hledane hodnoty
                  sWhere := SQLControler.AddToActiveWhere(sqlFormatSQLCondition(GetSelectedField.FieldName, { 'LIKE' } '', NewText, GetSelectedField.DataType, False, true));
                  SQLControler.SetWhere(sWhere);
                  // Pokud nebude zadny zaznam tak napiseme ze teda ne a dame filtr zpet
                  if SQLControler.Dataset.IsEmpty then
                  begin
                    DisplayInfo('Podmínce neodpovídá žádný záznam.');
                    SQLControler.SetWhere(sOldWhere);
                  end;
                end;
              2:
                begin
                  // Pokusime se vyfiltrovat dle hledane hodnoty
                  sWhere := sqlFormatSQLCondition(GetSelectedField.FieldName, { 'LIKE' } '', NewText, GetSelectedField.DataType, False, true);
                  SQLControler.SetWhere(sWhere);
                  // Pokud nebude zadny zaznam tak napiseme ze teda ne a dame filtr zpet
                  if SQLControler.Dataset.IsEmpty then
                  begin
                    DisplayInfo('Podmínce neodpovídá žádný záznam.');
                    SQLControler.SetWhere(sOldWhere);
                  end;

                end;
            end;

          end;
        end;
    end;
  end;

end;

procedure TfrmModulBrowse.DoGrdFQSSearchTextChange;
begin
  if GrdFQSSearchText = '' then
    frmMainForm.StatusBar.Panels[1].Text := 'Rychlé hledání'
  else
    frmMainForm.StatusBar.Panels[1].Text := GetSelectedField.DisplayName + ' = ' + GrdFQSSearchText;
end;

procedure TfrmModulBrowse.actGridStyleExecute(Sender: TObject);
begin
  tvView.Styles.StyleSheet := GetUsersStyleSheet(tvView.Styles.StyleSheet);
end;

procedure TfrmModulBrowse.actPrintToEmailExecute(Sender: TObject);
begin
  //

end;

end.
