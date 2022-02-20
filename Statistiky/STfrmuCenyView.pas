{***************************************************************
 *
 * Unit Name: ST_CenyView
 * Purpose  :
 * Author   :
 * History  :
 *
 ****************************************************************}

unit STfrmuCenyView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ImgList, DBActns, ActnList, Db, Grids, DBGrids,
  ExtCtrls,  rsStorage, rsPropSaver, fModulBrowse, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  uSqlParser, cxStyles,uCustomForms, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData;

type
  TSTfrmCenyView = class(TfrmModulBrowse)
    actExportData: TAction;
    tvViewZASILKA: TcxGridDBColumn;
    tvViewDATUM: TcxGridDBColumn;
    tvViewTyp: TcxGridDBColumn;
    tvViewDopravce: TcxGridDBColumn;
    tvViewPrikazce: TcxGridDBColumn;
    tvViewCO: TcxGridDBColumn;
    tvViewPCena: TcxGridDBColumn;
    tvViewPJednotky: TcxGridDBColumn;
    tvViewPJednotka: TcxGridDBColumn;
    tvViewPMena: TcxGridDBColumn;
    tvViewPCelkem: TcxGridDBColumn;
    tvViewPCelkemKc: TcxGridDBColumn;
    tvViewDCena: TcxGridDBColumn;
    tvViewDJednotky: TcxGridDBColumn;
    tvViewDJednotka: TcxGridDBColumn;
    tvViewDMena: TcxGridDBColumn;
    tvViewDCelkem: TcxGridDBColumn;
    tvViewDCelkemKc: TcxGridDBColumn;
    tvViewstate: TcxGridDBColumn;
    tvViewDISPECER: TcxGridDBColumn;
    tvViewAUTOSPZ: TcxGridDBColumn;
    tvViewCREAID: TcxGridDBColumn;
    tvViewNakladka: TcxGridDBColumn;
    tvViewVykladka: TcxGridDBColumn;
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
    dxbRecDetail: TdxBarButton;
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
    dxpPodm: TdxBarPopupMenu;
    tvViewVDATUM: TcxGridDBColumn;
    rspPropForm: TrsPropSaver;
    rspSQL: TrsPropSaver;
    procedure gbCustomMDIFormPrint(Sender: TObject);
    procedure actRecDetailExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  STfrmCenyView: TSTfrmCenyView;

implementation

uses
  appdmduSystem, appfrmuGlobal, STdmdu, STfrmuModule, ZSfrmuModule;

{$R *.DFM}

constructor TSTfrmCenyView.Create(AOwner: TComponent);
begin
  inherited;
  MasterDs.DataSet := Getstdmd.dtsCenyPrehled;
end;

procedure TSTfrmCenyView.gbCustomMDIFormPrint(Sender: TObject);
begin
  inherited;
  STfrmModule.PrintModule(IsDefaultReport);
end;

procedure TSTfrmCenyView.actRecDetailExecute(Sender: TObject);
var
  iresult: string;
begin
  iresult := STdmd.dtsCenyPrehledSID.AsString;
  ZSfrmModule.ShowDetail(iresult, fsmEdit);
end;

end.

