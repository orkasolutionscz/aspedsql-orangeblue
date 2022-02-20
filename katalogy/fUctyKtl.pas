unit fUctyKtl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, cxClasses, Db, DBActns, ActnList, cxContainer,
  cxEdit, cxLabel, cxGridLevel, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, ExtCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  dxLayoutControl, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, dxLayoutcxEditAdapters, dxLayoutContainer, dxBarDBNav, dxBarExtItems,
  fCustKtlUnit, rsStorage, rsPropSaver;

type
  TfrmUcty = class(TfrmCusKtl)
    tvKatalogZKRATKA: TcxGridDBColumn;
    tvKatalogUCET: TcxGridDBColumn;
    tvKatalogTYP: TcxGridDBColumn;
    tvKatalogKODBANKY: TcxGridDBColumn;
    tvKatalogBANKA: TcxGridDBColumn;
    tvKatalogBANKAWORLD: TcxGridDBColumn;
    tvKatalogSPECSYMBOL: TcxGridDBColumn;
    tvKatalogIBAN: TcxGridDBColumn;
    tvKatalogMENA: TcxGridDBColumn;
    edKodBanky: TcxDBTextEdit;
    edNazevBanky: TcxDBTextEdit;
    edMezbankSpojeni: TcxDBTextEdit;
    edSpcSymbol: TcxDBTextEdit;
    edCislo: TcxDBTextEdit;
    edZkratka: TcxDBTextEdit;
    edIBAN: TcxDBTextEdit;
    cbTypUctu: TcxDBComboBox;
    edMena: TcxDBLookupComboBox;
    Main1Item1: TdxLayoutItem;
    Main1Item2: TdxLayoutItem;
    Main1Item3: TdxLayoutItem;
    Main1Item4: TdxLayoutItem;
    Main1Item5: TdxLayoutItem;
    Main1Item6: TdxLayoutItem;
    Main1Item7: TdxLayoutItem;
    Main1Item8: TdxLayoutItem;
    Main1Item9: TdxLayoutItem;
    dxlgHlavniGroup1: TdxLayoutGroup;
    rsPropSaver1: TrsPropSaver;
    procedure jfsCustomEvidFormCreate(Sender: TObject);
    procedure actRecDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses appdmduSystem, uCustomForms, fMessageDlg, fKatalogyModul, appfrmuGlobal;

{$R *.DFM}

procedure TfrmUcty.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet      := AppCompsDM.KTLFVUcty;
  dsZaznam.DataSet.Open;
  edMena.RepositoryItem := dmdGlobal.repMena;
end;

procedure TfrmUcty.actRecDeleteExecute(Sender: TObject);
begin
  try
    if DisplayConfirm(sMsgConfirmDelete) then
    begin
      AppCompsDM.KTLFVUcty.Delete;
      //inherited;
    end;
  except
    on e: exception do
      DisplayError(SERR_DELETE, e.Message)
  end;

end;

end.
