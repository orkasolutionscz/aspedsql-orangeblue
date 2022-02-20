unit fAopPohodaParUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBODataset, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.Menus,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, rsStorage, rsPropSaver;

type
  TfrmAopParovani = class(TForm)
    dsAopAsped: TDataSource;
    dtsAopUpdate: TIBOQuery;
    dtsAopUpdateAOPKOD: TStringField;
    dtsAopUpdateKOD_ADPOHODA: TIntegerField;
    dtsAopUpdateNAZEV: TStringField;
    glvGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    grpm1: TcxGridPopupMenu;
    pnlBoorom: TPanel;
    btn1: TcxButton;
    dsdsAopPohoda: TDataSource;
    tvAspedPohoda: TcxGridDBBandedTableView;
    dtsAopUpdateDIC: TStringField;
    dtsAopUpdateICO: TStringField;
    tvAspedPohodaAOPKOD: TcxGridDBBandedColumn;
    tvAspedPohodaKOD_ADPOHODA: TcxGridDBBandedColumn;
    tvAspedPohodaNAZEV: TcxGridDBBandedColumn;
    tvAspedPohodaDIC: TcxGridDBBandedColumn;
    tvAspedPohodaICO: TcxGridDBBandedColumn;
    tvAspedPohodaKOD_ADPOHODAEdit: TcxGridDBBandedColumn;
    rsPropSaver1: TrsPropSaver;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAopParovani: TfrmAopParovani;

implementation

{$R *.dfm}

uses dConnectUnit, dSQLPohodaConnect;

procedure TfrmAopParovani.btn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmAopParovani.FormCreate(Sender: TObject);
begin
  if dmdSqlPohoda.DBConnect then
  begin
    dtsAopUpdate.Open;
    dmdSqlPohoda.dtsADLocate.Open;
  end
  else
    close;
end;

end.
