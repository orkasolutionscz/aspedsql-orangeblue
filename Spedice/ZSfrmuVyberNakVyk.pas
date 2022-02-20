 unit ZSfrmuVyberNakVyk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, DBCtrls, ExtCtrls, Menus,  DBActns, ActnList, Buttons,
  zsfrmumodule, rsStorage, rsPropSaver,  _frmuCustomPick, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, dxBar,
  cxClasses, cxButtons, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  uSqlParser, cxStyles, cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, dxBarExtItems;

type
  TZSfrmVyberNakVyk = class(TfrmCustomPick)
    Splitter1: TSplitter;
    pnlDetaily: TPanel;
    pnlAdresaPopis: TPanel;
    Label1: TLabel;
    pnlSpojeni: TPanel;
    Label2: TLabel;
    Splitter2: TSplitter;
    rsPropSaver1: TrsPropSaver;
    meAdresaPopis: TcxDBMemo;
    DBMemo1: TcxDBMemo;
    tvViewTyp: TcxGridDBColumn;
    tvViewZEMEKOD: TcxGridDBColumn;
    tvViewPSC: TcxGridDBColumn;
    tvViewADRESA3: TcxGridDBColumn;
    dxBarManager1Bar1: TdxBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  end;


implementation

uses
  uSqlUtils, appdmduSystem, ZSdmdu;

{$R *.DFM}


constructor TZSfrmVyberNakVyk.Create(AOwner: TComponent);
begin
  inherited;
  // SqlControler.SetWhereOrder(TrueExpr, SqlControler.Options.StartingOrder);
  MasterDs.DataSet := SqlControler.DataSet;

  ReStoreViewSettings(tvView);

  MasterDs.DataSet.Open;

end;


procedure TZSfrmVyberNakVyk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  StoreViewSettings(tvView);
  inherited;

end;

end.
