{ -----------------------------------------------------------------------------
  Unit Name: STfrmuVystupy
  Author:    Administrator
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit fSTVystupy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ImgList, DBActns, ActnList, Db, Grids,
  DBGrids, ExtCtrls, ComCtrls, StdCtrls,
  Buttons, rsStorage, rsPropSaver, _frmuCustomBrowse, cxStyles,
  cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu, cxButtons, fModulBrowse,
  uSqlParser, cxDropDownEdit,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxGridChartView,
  cxGridDBChartView, cxEditRepositoryItems, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, VCLTee.Series, VCLTee.Chart,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.DBChart;

type
  TfrmSTVystupy = class(TfrmCustomBrowse)
    ActionListProvize: TActionList;
    actZobrazit: TAction;
    actSave: TAction;
    actPrikazciShow: TAction;
    actPrikazciTisk: TAction;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    pgcMain: TPageControl;
    TabSheet2: TTabSheet;
    Splitter2: TSplitter;
    chrtProvize: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Panel3: TPanel;
    Splitter1: TSplitter;
    pnlProviyeTab1: TPanel;
    DBGrid1: TDBGrid;
    StaticText2: TPanel;
    pnlProviyeTab2: TPanel;
    DBGrid2: TDBGrid;
    StaticText1: TPanel;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    TabSheet1: TTabSheet;
    pnlPrikazciTitle: TPanel;
    SaveDialog1: TSaveDialog;
    rsPropSaver1: TrsPropSaver;
    actPrikazciExport: TAction;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    actDoprShow: TAction;
    actDoprTisk: TAction;
    actDoprExport: TAction;
    grdDopr: TcxGrid;
    lv1: TcxGridLevel;
    tvDopravce: TcxGridDBTableView;
    tvDopravceDopravce1: TcxGridDBColumn;
    tvDopravcePocet1: TcxGridDBColumn;
    tvDopravcecnPlatci1: TcxGridDBColumn;
    tvDopravcecnDopravce1: TcxGridDBColumn;
    tvDopravceprovize1: TcxGridDBColumn;
    tvDopravceprovizeavg1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    actionExportToXML: TAction;
    actionExportToXLS: TAction;
    actionExportToText: TAction;
    actionExportToHTML: TAction;
    btnPrikShow: TcxButton;
    btnDopShow: TcxButton;
    SpeedButton3: TcxButton;
    grdPrik: TcxGrid;
    grdPrikLevel1: TcxGridLevel;
    tvDop: TcxGridDBTableView;
    tvDopPrikazce1: TcxGridDBColumn;
    tvDopPocet1: TcxGridDBColumn;
    tvDopcnPlatci1: TcxGridDBColumn;
    tvDopcnDopravce1: TcxGridDBColumn;
    tvDopprovize1: TcxGridDBColumn;
    tvDopprovizeavg1: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxButton1: TcxButton;
    cxGridPopupMenu2: TcxGridPopupMenu;
    tsPriPla: TTabSheet;
    Panel6: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    grdPriDisp: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridPopupMenu3: TcxGridPopupMenu;
    dpStart: TcxDateEdit;
    dpStop: TcxDateEdit;
    SpeedButton1: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxButton4: TcxButton;
    chtProvDisp: TChart;
    Series4: TPieSeries;
    tsDispFirma: TTabSheet;
    Panel7: TPanel;
    cxButton6: TcxButton;
    cxgAopDisp: TcxGrid;
    tvAopDisp: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsAopDisp: TDataSource;
    tvAopDispDISPECER: TcxGridDBColumn;
    tvAopDispAOP_NAZEV: TcxGridDBColumn;
    tvAopDispCENAPROVIZE: TcxGridDBColumn;
    tvAopDispAOP_DSTART: TcxGridDBColumn;
    tvAopDispAOP_CNSTART: TcxGridDBColumn;
    tvAopDispAOP_CNCONT: TcxGridDBColumn;
    tvAopDispPROCCALCUSED: TcxGridDBColumn;
    tvAopDispCALCPROVIZE: TcxGridDBColumn;
    tvAopDispAOPKOD_OBJ: TcxGridDBColumn;
    cxGridPopupMenu4: TcxGridPopupMenu;
    tvAopDispIDPOZICE: TcxGridDBColumn;
    tvAopDispPOZICE: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    repBtnFirmaDetail: TcxEditRepositoryButtonItem;
    cxgAopDispDBChartView1: TcxGridDBChartView;
    ts1: TTabSheet;
    Grid: TcxGrid;
    tvChartView: TcxGridDBChartView;
    tvChartViewDataGroupCustomer: TcxGridDBChartDataGroup;
    tvChartViewDataGroupProduct: TcxGridDBChartDataGroup;
    tvChartViewSeriesPaymentAmount: TcxGridDBChartSeries;
    tvChartViewSeriesCount: TcxGridDBChartSeries;
    tvTableView: TcxGridDBTableView;
    tvTableViewSID: TcxGridDBColumn;
    tvTableViewDISPECER: TcxGridDBColumn;
    tvTableViewPRIKAZCE: TcxGridDBColumn;
    tvTableViewZASILKA: TcxGridDBColumn;
    tvTableViewSUMPROVIZE: TcxGridDBColumn;
    GridLevelChart: TcxGridLevel;
    GridLevelTable: TcxGridLevel;
    dsDispAll: TDataSource;
    tvChartViewDataGroup1: TcxGridDBChartDataGroup;
    tvTableViewMESIC: TcxGridDBColumn;
    tvChartViewSeries1: TcxGridDBChartSeries;
    dsPriDis: TDataSource;
    dsPrikazciPrehled: TDataSource;
    dsDopravciPrehled: TDataSource;
    dsProvizeDispecer: TDataSource;
    procedure actPrikazciShowExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actZobrazitExecute(Sender: TObject);
    procedure jfsCustomMDICreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure repBtnFirmaDetailPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actCloseExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ZobrazPrikazce;
    procedure ZobrazDopravce;

    procedure ZobrazProvizy;
    procedure ShowProvDisp;
    procedure ShowProvDisp2;
    function GetDatumPodminka: string;
    // Vraci Where podminku z datumstart a datumstrop
  public
    { Public declarations }
  end;

var
  frmSTVystupy: TfrmSTVystupy;

implementation

uses
  variants, fMessageDlg, JclStrings, uSqlUtils, uVarClass, shellapi,
  appdmduSystem, STdmdu, ZSfrmuModule,
  STfrmuModule, cxGridExportLink, appfrmuGlobal, fGridExportDlg,
  fKatalogyModul, AOPConstDefUnit, AOPfrmuEdit, appIniOptionsUnit;

{$R *.DFM}

function TfrmSTVystupy.GetDatumPodminka: string;
begin
  // if edTypData.ItemIndex = 0 then
  // Result := '(DATUM >= :' + SPARNAME_DSTART + ' and  DATUM <= :' + SPARNAME_DSTOP + ' )'
  // else if edTypData.ItemIndex = 1 then
  // Result := '(VDATUM >= :' + SPARNAME_DSTART + ' and  VDATUM <= :' + SPARNAME_DSTOP + ' )'
  // else if edTypData.ItemIndex = 2 then
  // Result := '(DATPORIZENI >= :' + SPARNAME_DSTART + ' and  DATPORIZENI <= :' + SPARNAME_DSTOP + ' )'
end;

procedure TfrmSTVystupy.ZobrazPrikazce;
begin
  STdmd.dtsPrikaciPrehled.DisableControls;
  try
    STdmd.dtsPrikaciPrehled.close;
    STdmd.dtsPrikaciPrehled.ParamByName('DSTART').AsDate := dpStart.Date;
    STdmd.dtsPrikaciPrehled.ParamByName('DSTOP').AsDate  := dpStop.Date;
    STdmd.dtsPrikaciPrehled.open;
  finally
    STdmd.dtsPrikaciPrehled.EnableControls;
  end;

  STdmd.dtsPriDis.DisableControls;
  try
    STdmd.dtsPriDis.close;
    STdmd.dtsPriDis.ParamByName('DSTART').AsDate := dpStart.Date;
    STdmd.dtsPriDis.ParamByName('DSTOP').AsDate  := dpStop.Date;
    STdmd.dtsPriDis.open;
  finally
    STdmd.dtsPriDis.EnableControls;
  end;

end;

procedure TfrmSTVystupy.ZobrazProvizy;
begin
  STdmd.dtsProvizeFaktura.DisableControls;
  STdmd.dtsProvize.DisableControls;
  try
    STdmd.dtsProvize.close;
    STdmd.dtsProvize.ParamByName('DSTART').AsDate := dpStart.Date;
    STdmd.dtsProvize.ParamByName('DSTOP').AsDate  := dpStop.Date;
    STdmd.dtsProvize.open;

    STdmd.dtsProvizeFaktura.close;
    STdmd.dtsProvizeFaktura.ParamByName('JEFAKTURA').AsString := 'T';
    STdmd.dtsProvizeFaktura.ParamByName('DSTART').AsDate := dpStart.Date;
    STdmd.dtsProvizeFaktura.ParamByName('DSTOP').AsDate := dpStop.Date;
    STdmd.dtsProvizeFaktura.open;

    STdmd.dtsProvizeDispecer.close;
    STdmd.dtsProvizeDispecer.ParamByName('DSTART').AsDate := dpStart.Date;
    STdmd.dtsProvizeDispecer.ParamByName('DSTOP').AsDate  := dpStop.Date;
    STdmd.dtsProvizeDispecer.open;

  finally
    STdmd.dtsProvizeFaktura.EnableControls;
    STdmd.dtsProvize.EnableControls;
    chrtProvize.RefreshData;
  end;
end;

procedure TfrmSTVystupy.actCloseExecute(Sender: TObject);
begin
  STdmd.CloseAll;
  inherited;

end;

procedure TfrmSTVystupy.actPrikazciShowExecute(Sender: TObject);
var
  intZSWhere: string;
begin
  if Sender = btnPrikShow then
    intZSWhere := GetDatumPodminka + ' AND STAV < 2 AND AOPKOD_OBJ = ''' + STdmd.dtsPrikaciPrehled.FieldByName('AOPKOD_OBJ').AsString + ''''
  else if Sender = btnDopShow then
    intZSWhere := GetDatumPodminka + ' AND STAV < 2 AND AOPKOD_DOP = ''' + STdmd.dtsDopravciPrehledAOPKOD_DOP.AsString + '''';

  ZSfrmModule.ShowBrowse(intZSWhere);
end;

procedure TfrmSTVystupy.actSaveExecute(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if SaveDialog1.FilterIndex = 0 then
      chrtProvize.SaveToMetafile(SaveDialog1.FileName)
    else
      chrtProvize.SaveToBitmapFile(SaveDialog1.FileName);
  end;
end;

procedure TfrmSTVystupy.actZobrazitExecute(Sender: TObject);
begin
  ZobrazProvizy;
  // Test
  ShowProvDisp;

  ZobrazPrikazce;
  ZobrazDopravce;

  ShowProvDisp2;

end;

procedure TfrmSTVystupy.ZobrazDopravce;
begin
  STdmd.dtsDopravciPrehled.DisableControls;
  try
    STdmd.dtsDopravciPrehled.close;

    STdmd.dtsDopravciPrehled.ParamByName('DSTART').AsDate := dpStart.Date;
    STdmd.dtsDopravciPrehled.ParamByName('DSTOP').AsDate  := dpStop.Date;
    STdmd.dtsDopravciPrehled.open;
  finally
    STdmd.dtsDopravciPrehled.EnableControls;
  end;

end;

procedure TfrmSTVystupy.jfsCustomMDICreate(Sender: TObject);
begin
  inherited;
  // edTypData.ItemIndex := 0;
  // chtProvDisp.Visible := dmdSystem.gbUserUsePrivateColor then
  tsDispFirma.TabVisible := false;
{$IFDEF ORANGE}
  tsDispFirma.TabVisible := True;
{$ENDIF}
  ReStoreViewSettings(tvAopDisp);
  ReStoreViewSettings(tvChartView);
  ReStoreViewSettings(tvTableView);
  tvAopDispAOP_NAZEV.RepositoryItem := repBtnFirmaDetail;

  // nastaveni datasetu dle typu data pro vyber
    dsDispAll.DataSet                 := GetSTdmd.dtsDispAll;
    dsAopDisp.DataSet                 := STdmd.dtsDispAop;
    dsPriDis.DataSet                  := STdmd.dtsPriDis;
    dsPrikazciPrehled.DataSet         := STdmd.dtsPrikaciPrehled;
    dsDopravciPrehled.DataSet         := STdmd.dtsDopravciPrehled;

end;

procedure TfrmSTVystupy.cxButton1Click(Sender: TObject);
begin
  appGrifExport(grdPrik);
end;

procedure TfrmSTVystupy.cxButton3Click(Sender: TObject);
begin
  appGrifExport(grdPriDisp);
end;

procedure TfrmSTVystupy.SpeedButton3Click(Sender: TObject);
begin
  appGrifExport(grdDopr);
end;

procedure TfrmSTVystupy.ShowProvDisp;
var
  aColor: TColor;
begin
  STdmd.dtsProvizeDispecer.first;

  Series4.Clear;

  while not STdmd.dtsProvizeDispecer.eof do
  begin
    if dmdSystem.gbUserUsePrivateColor then
      aColor := GetAppCompsDM.GetUserColor(STdmd.dtsProvizeDispecerDISPECER.AsString)
    else
      aColor := ColorPalette[STdmd.dtsProvizeDispecer.RecNo];

    Series4.Add(STdmd.dtsProvizeDispecerPROVIZE.AsCurrency, STdmd.dtsProvizeDispecerDISPECER.AsString, aColor);

    STdmd.dtsProvizeDispecer.Next;
  end;
end;

procedure TfrmSTVystupy.ShowProvDisp2;
begin
  STdmd.dtsDispAop.close;
  STdmd.dtsDispAop.ParamByName('DSTART').AsDate := dpStart.Date;
  STdmd.dtsDispAop.ParamByName('DSTOP').AsDate  := dpStop.Date;
  STdmd.dtsDispAop.open;

  STdmd.dtsDispAll.close;
  STdmd.dtsDispAll.ParamByName('DSTART').AsDate := dpStart.Date;
  STdmd.dtsDispAll.ParamByName('DSTOP').AsDate  := dpStop.Date;
  STdmd.dtsDispAll.open;
end;

procedure TfrmSTVystupy.cxButton6Click(Sender: TObject);
begin
  appGrifExport(cxgAopDisp);
end;

procedure TfrmSTVystupy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreViewSettings(tvAopDisp);
  StoreViewSettings(tvChartView);
  StoreViewSettings(tvTableView);
  inherited;

end;

procedure TfrmSTVystupy.repBtnFirmaDetailPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  lFirma: TFirmaObject;
begin
  lFirma        := TFirmaObject.Create;
  lFirma.AopKod := VarToStr(tvAopDispAOPKOD_OBJ.EditValue);

  try
    if lFirma.AopKod <> '' then
      AopGetDetailSendAdres(lFirma);
  finally
    lFirma.Free;
  end;
end;

end.
