unit fSQLModulControler;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxSplitter, cxListBox,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxContainer, cxEdit, cxLabel,
  ExtCtrls, uSqlParser, Db, IBODataset, ActnList, StdCtrls, cxButtons,
  Menus, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData;

type
  TfraSQLModul = class(TFrame)
    pnlStartup: TPanel;
    cxLabel1: TcxLabel;
    edWHAllRecord: TcxButtonEdit;
    pnlHistory: TPanel;
    lstWHHistory: TcxListBox;
    cxLabel2: TcxLabel;
    cxsWH2: TcxSplitter;
    pnlStored: TPanel;
    cxLabel3: TcxLabel;
    cxGrid2: TcxGrid;
    tvLook: TcxGridDBTableView;
    tvLookNAME: TcxGridDBColumn;
    tvLookISSYSTEM: TcxGridDBColumn;
    tvLookVLASTNIK: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    LocalSQLCond: TIBOQuery;
    LocalSQLCondID: TIntegerField;
    LocalSQLCondMODULENAME: TStringField;
    LocalSQLCondNAME: TStringField;
    LocalSQLCondPODMINKA: TMemoField;
    LocalSQLCondISSYSTEM: TStringField;
    LocalSQLCondVLASTNIK: TStringField;
    dsSQLCond: TDataSource;
    acl1: TActionList;
    actSQLEdit: TAction;
    pmHistory: TPopupMenu;
    actSQLAdd: TAction;
    Uloitpodmnku1: TMenuItem;
    pnlTool: TPanel;
    btnSQLEdit: TcxButton;
    btnAdd: TcxButton;
    actSQLStart: TAction;
    Nastavitjakovchozfiltrmodulu1: TMenuItem;
    actSQLDnesNove: TAction;
    actSQLDnesOpravene: TAction;
    pnlDefFilter: TPanel;
    btnSQLDNew: TcxButton;
    btnSQLDEdit: TcxButton;
    actSQLSetStart: TAction;
    actSQLAll: TAction;
    procedure lstWHHistoryDblClick(Sender: TObject);
    procedure edWHAllRecordPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvLookDblClick(Sender: TObject);
    procedure tvLookNAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actSQLEditExecute(Sender: TObject);
    procedure actSQLAddExecute(Sender: TObject);
    procedure actSQLStartExecute(Sender: TObject);
    procedure actSQLDnesNoveExecute(Sender: TObject);
    procedure actSQLDnesOpraveneExecute(Sender: TObject);
    procedure lstWHHistoryClick(Sender: TObject);
  private
    { Private declarations }
    function GetSQLControler: TjfsSQLContr;
    procedure LoadSQLConditions;
  public
    { Public declarations }
    constructor Create(AOWner:TComponent);override;
    procedure Refresh; virtual;
    procedure Initialize;
  end;

implementation

uses fModulBrowse, appdmduSystem, uVarClass, appfrmuGlobal, appunConst, uSqlUtils;

{$R *.DFM}

{ TfraSQLModul }
constructor TfraSQLModul.Create(AOWner: TComponent);
begin
  inherited;
  edWHAllRecord.Text := '';
  LoadSQLConditions;

end;

procedure TfraSQLModul.Refresh;
begin
  LoadSQLConditions;

  edWHAllRecord.Text := GetSQLControler.AllRecord;

  lstWHHistory.Items.Assign(GetSQLControler.GetSQLHistory);

  lstWHHistory.ItemIndex := lstWHHistory.Items.IndexOf(GetSQLControler.ActiveWhere);
end;

procedure TfraSQLModul.lstWHHistoryDblClick(Sender: TObject);
var
  aWh:string;
begin
  aWh := lstWHHistory.items[lstWHHistory.itemindex];
  if aWh <> '' then
    try
      GetSQLControler.SetWhere(aWh);
    except
      GetSQLControler.SetWhere(edWHAllRecord.Text);
    end;
end;

function TfraSQLModul.GetSQLControler: TjfsSQLContr;
begin
  if Owner is TfrmModulBrowse then
    Result := TfrmModulBrowse(Owner).SQLControler
  else
    Result := nil;
end;

procedure TfraSQLModul.edWHAllRecordPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    0:  TfrmModulBrowse(Owner).SetupNewStartFilter;
    1:  TfrmModulBrowse(Owner).ClearStartFilter;
  end;
end;

procedure TfraSQLModul.LoadSQLConditions;
begin
  if LocalSQLCond.Active then
    LocalSQLCond.Refresh
  else
  begin
    if assigned( dmdSystem ) then
    begin
      LocalSQLCond.IB_Connection := dmdSystem.IBOMainDB;

      LocalSQLCond.ParamByName('MODULENAME').AsString := GetSQLControler.TableName;
      LocalSQLCond.ParamByName('USERNAME').AsString := jfaUserInfo.UserId;
      LocalSQLCond.Active := true;
    end;
  end;
end;


procedure TfraSQLModul.tvLookDblClick(Sender: TObject);
var
  aPodminka:string;
begin
  aPodminka :=  LocalSQLCondPODMINKA.AsString;
  if aPodminka <> '' then
    GetSQLControler.SetWhere(aPodminka);

end;

procedure TfraSQLModul.tvLookNAMEPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  // 
end;

procedure TfraSQLModul.actSQLEditExecute(Sender: TObject);
begin
  GetSQLControler.GetSQLCondition;
  LocalSQLCond.Refresh;
end;

procedure TfraSQLModul.actSQLAddExecute(Sender: TObject);
var
  aWh : string;
begin
  aWh := lstWHHistory.items[lstWHHistory.itemindex];
  if aWh <> '' then
  begin
    GetSQLControler.AddSQLCondition(aWh);
    LocalSQLCond.Refresh;
  end;

end;

procedure TfraSQLModul.actSQLStartExecute(Sender: TObject);
begin
  if lstWHHistory.itemindex >= 0 then
  begin
     edWHAllRecord.Text := lstWHHistory.items[lstWHHistory.itemindex];
     GetSQLControler.Options.StartingWhere := edWHAllRecord.Text;
     GetSQLControler.AllRecord := edWHAllRecord.Text;
     GetSQLControler.SetWhere(edWHAllRecord.Text);
  end;

end;

procedure TfraSQLModul.Initialize;
begin
  actSQLDnesNove.Visible := (GetSQLControler.DataSet.FindField(SYS_F_CREADATE) <> nil);
  actSQLDnesOpravene.Visible := (GetSQLControler.DataSet.FindField(SYS_F_UPDDATE) <> nil);

end;

procedure TfraSQLModul.actSQLDnesNoveExecute(Sender: TObject);
begin
    GetSQLControler.SetWhere(sqlFormatSQLCondition(SYS_F_CREADATE, '=',
      datetimetostr(sysutils.date), ftDateTime, True));

end;

procedure TfraSQLModul.actSQLDnesOpraveneExecute(Sender: TObject);
begin
    GetSQLControler.SetWhere(sqlFormatSQLCondition(SYS_F_UPDDATE, '=',
      datetimetostr(sysutils.date), ftDateTime, True));

end;

procedure TfraSQLModul.lstWHHistoryClick(Sender: TObject);
begin
  // Doplneno pro zobrazeni cele podminky, pokud byla delsi, nebyla
  // zobrazena celá. Tímto se po kliknutí na pøíslušný øádek s podmínkou
  // pøenese do valstnosti hint ListBoxu
  lstWHHistory.Hint := lstWHHistory.Items[lstWHHistory.ItemIndex];
end;

end.
