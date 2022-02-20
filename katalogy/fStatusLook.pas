unit fStatusLook;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _frmuCustomLookup, cxGridCustomPopupMenu, cxGridPopupMenu, Db,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxContainer, cxEdit, cxLabel, ExtCtrls, ActnList,
  DBActns, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData;

type
  TfrmAppStausLook = class(TfrmCustomLookup)
    tvLookID: TcxGridDBColumn;
    tvLookKOD: TcxGridDBColumn;
    tvLookPOPIS: TcxGridDBColumn;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    DataSetDelete1: TDataSetDelete;
    tvLookCOLOR: TcxGridDBColumn;
    procedure dsLookStateChange(Sender: TObject);
    procedure jfsCustomEvidFormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  end;

function appGetStatusUserLook(aDataset:TDataset; aNadpis:string): TfrmAppStausLook;

implementation

{$R *.DFM}

uses appdmduSystem , appfrmuGlobal, fKatalogyModul;

function appGetStatusUserLook(aDataset:TDataset; aNadpis:string): TfrmAppStausLook;
begin
  result := TfrmAppStausLook.Create(nil);
  result.dsLook.DataSet := aDataset;
  result.lbCaption.Caption := aNadpis;
end;

constructor TfrmAppStausLook.Create(AOwner: TComponent);
begin
  inherited;
  tvLookCOLOR.RepositoryItem := dmdGlobal.repColor;
end;


procedure TfrmAppStausLook.dsLookStateChange(Sender: TObject);
begin
  if Assigned(dsLook.dataset) then
  begin
    if dsLook.DataSet.State in [dsEdit, dsInsert] then
    begin
      tvLook.OptionsData.Editing := True;
      cxGrid1.SetFocus;
    end;
  end;

end;

procedure TfrmAppStausLook.jfsCustomEvidFormDestroy(Sender: TObject);
begin
  tvLookCOLOR.RepositoryItem := nil;
  inherited;
end;

end.
