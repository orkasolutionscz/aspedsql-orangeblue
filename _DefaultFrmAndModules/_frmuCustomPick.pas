unit _frmuCustomPick;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Menus, ImgList, DBActns, ActnList,
  Db, _frmuCustomBrowse, dxBar, cxClasses,
  cxButtons, cxGridLevel, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxStyles, uSqlParser, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxBarExtItems, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, uCustomForms;

type
  TfrmCustomPick = class(TfrmCustomBrowse)
    actVybrat: TAction;
    pnlGrids: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxGrid1: TcxGrid;
    tvView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxsModul: TcxStyleRepository;
    RowStyle: TcxStyle;
    popGrid: TdxBarPopupMenu;
    cxGridPopupMenu1: TcxGridPopupMenu;
    pnlFormButton: TPanel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    actGridStyle: TAction;
    dxbGridStyle: TdxBarButton;
    dxbSubSeznymy: TdxBarSubItem;
    dxbGridReset: TdxBarButton;
    actGridReset: TAction;
    dxbLocate: TdxBarStatic;
    procedure actCloseExecute(Sender: TObject);
    procedure actVybratExecute(Sender: TObject);
    procedure actRecFindExecute(Sender: TObject);
    procedure tvLookupCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tvViewDataControllerSortingChanged(Sender: TObject);
    procedure tvViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvViewKeyPressInc(Sender: TObject; var Key: Char);
    procedure actGridStyleExecute(Sender: TObject);
    procedure actGridResetExecute(Sender: TObject);
    procedure tvViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tvViewKeyPressDlg(Sender: TObject; var Key: Char);
    procedure jfsCustomMDIShow(Sender: TObject);
  private
    FNativeIncSearch: Boolean;
    LocalGridStreem : TMemoryStream;

    procedure SetNativeIncSearch(const Value: Boolean);
    { Private declarations }
  protected
    property NativeIncSearch: Boolean read FNativeIncSearch write SetNativeIncSearch;
    procedure DoGrdFQSSearchTextChange; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetSelectedField: TField; override;
  end;

implementation

{$R *.DFM}

uses
  fMessageDlg, cxGridDBDataDefinitions, appfrmuGlobal,
  fGetGridStyle, fFindOrWhereDlg, uSqlUtils, appdmduSystem;

const
  SLOCATETEXT = '<<Vyhledávání>>';

constructor TfrmCustomPick.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dxBarManager1.Style      := GetdmdGlobal.GetCurrBarStyle;
  LocalGridStreem          := TMemoryStream.Create;
  tvView.Styles.StyleSheet := dmdGlobal.ModStyleSheet;
  tvView.StoreToStream(LocalGridStreem);
  LocalGridStreem.Position := 0;
  NativeIncSearch          := false;
  dxbLocate.Caption        := SLOCATETEXT;
  if dmdSystem.gbGridFilterSearchDialog then
    tvView.OnKeyPress := tvViewKeyPressDlg
  else
    tvView.OnKeyPress := tvViewKeyPressInc;
end;

destructor TfrmCustomPick.Destroy;
begin
  try
    if assigned(LocalGridStreem) then
      FreeAndNil(LocalGridStreem);
  except

  end;
  inherited;
end;

function TfrmCustomPick.GetSelectedField: TField;
begin
  result := TcxGridDBColumn(tvView.Controller.FocusedColumn).DataBinding.Field;
end;

procedure TfrmCustomPick.jfsCustomMDIShow(Sender: TObject);
begin
  inherited;
  SqlControler.ShowAllRecords;

end;

procedure TfrmCustomPick.actCloseExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCustomPick.actVybratExecute(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure TfrmCustomPick.actRecFindExecute(Sender: TObject);
var
  s: string;
begin
  if SQLControler.DataSet <> nil then
    if InputQuery(SRECORD_FIND_CAPTION, GetSelectedField.DisplayLabel, s) then
      if not SQLControler.DataSet.Locate(GetSelectedField.FieldName, s, [loCaseInsensitive, loPartialKey]) then
        ShowMessage(SRECORD_FIND_NOTFOUND);

end;

procedure TfrmCustomPick.tvLookupCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actVybrat.Execute;
end;

procedure TfrmCustomPick.tvViewDataControllerSortingChanged(Sender: TObject);
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

begin
  try
    Screen.Cursor := crHourGlass;
    SortPattern;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmCustomPick.tvViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [0, VK_UP, VK_PRIOR, VK_DOWN, VK_NEXT, VK_HOME, VK_END, VK_LEFT, VK_RIGHT]) then
    QsrchReset
  else if Key = vk_return then
    actVybrat.Execute;
end;

procedure TfrmCustomPick.tvViewKeyPressDlg(Sender: TObject; var Key: Char);
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
                  if SQLControler.DataSet.Locate(GetSelectedField.FieldName, NewText, [loCaseInsensitive, loPartialKey]) then
                  begin
                    GrdFQSSearchText := NewText;
                  end
                  else
                    ShowMessage(SRECORD_FIND_NOTFOUND);
                end;

              1:
                begin
                  // Pokusime se vyfiltrovat dle hledane hodnoty
                  sWhere := SQLControler.AddToActiveWhere(sqlFormatSQLCondition(GetSelectedField.FieldName, { 'LIKE' } '', NewText, GetSelectedField.DataType, false, true));
                  SQLControler.SetWhere(sWhere);
                  // Pokud nebude zadny zaznam tak napiseme ze teda ne a dame filtr zpet
                  if SQLControler.DataSet.IsEmpty then
                  begin
                    DisplayInfo('Podmínce neodpovídá žádný záznam.');
                    SQLControler.SetWhere(sOldWhere);
                  end;
                end;
              2:
                begin
                  // Pokusime se vyfiltrovat dle hledane hodnoty
                  sWhere := sqlFormatSQLCondition(GetSelectedField.FieldName, { 'LIKE' } '', NewText, GetSelectedField.DataType, false, true);
                  SQLControler.SetWhere(sWhere);
                  // Pokud nebude zadny zaznam tak napiseme ze teda ne a dame filtr zpet
                  if SQLControler.DataSet.IsEmpty then
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

procedure TfrmCustomPick.tvViewKeyPressInc(Sender: TObject; var Key: Char);
var
  NewText: string;
begin
  if Key <> #0 then
  begin
    try
      inherited KeyPress(Key);

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

procedure TfrmCustomPick.SetNativeIncSearch(const Value: Boolean);
begin
  FNativeIncSearch := Value;
  if Value then
  begin
    tvView.OnKeyPress                := nil;
    tvView.OptionsBehavior.IncSearch := true;
  end;
end;

procedure TfrmCustomPick.actGridStyleExecute(Sender: TObject);
begin
  tvView.Styles.StyleSheet := GetUsersStyleSheet(tvView.Styles.StyleSheet);
end;

procedure TfrmCustomPick.actGridResetExecute(Sender: TObject);
begin
  LocalGridStreem.Position := 0;
  tvView.RestoreFromStream(LocalGridStreem, true, true);
end;

procedure TfrmCustomPick.tvViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  QsrchReset;
  inherited;

end;

procedure TfrmCustomPick.DoGrdFQSSearchTextChange;
begin
  if GrdFQSSearchText = '' then
    dxbLocate.Caption := SLOCATETEXT
  else
    dxbLocate.Caption := 'Sloupec [ ' + GetSelectedField.DisplayName + ' ] = ' + GrdFQSSearchText;
end;

end.
