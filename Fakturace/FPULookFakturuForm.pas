unit FPULookFakturuForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _frmuCustomLookup, Db, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxContainer, cxEdit, cxLabel,
  ExtCtrls,  cxGridCustomPopupMenu, cxGridPopupMenu, rsStorage,
  rsPropSaver, cxButtons, ActnList, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData;

type

  TFPULookFakturuFrm = class(TfrmCustomLookup)
    tvLookFakturaDO: TcxGridDBColumn;
    tvLookDATSPLATNOST: TcxGridDBColumn;
    tvLookVariabilni: TcxGridDBColumn;
    tvLookNAZEV: TcxGridDBColumn;
    tvLookCENALIKV: TcxGridDBColumn;
    tvLookUCET_CISLO: TcxGridDBColumn;
    tvLookUCET_BANKA: TcxGridDBColumn;
    tvLookUCET_SPECIF: TcxGridDBColumn;
    rsPropSaver1: TrsPropSaver;
    procedure jfsCustomEvidFormCreate(Sender: TObject);
    procedure jfsCustomEvidFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



implementation

uses appdmduSystem, FPUdmdu;

{$R *.DFM}

procedure TFPULookFakturuFrm.jfsCustomEvidFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // StoreViewSettings(tvLook);
  inherited;
end;

procedure TFPULookFakturuFrm.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  ReStoreViewSettings(tvLook);
end;

end.
