{***************************************************************
 *
 * Unit Name: FVfrmuKTLTexty
 * Purpose  :
 * Author   :  Jiri Fait
 * History  :
 *
 ****************************************************************}

unit FVfrmuKTLTexty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Db,  ActnList,
  StdCtrls, Grids, ExtCtrls, rsStorage, rsPropSaver, uCustomForms, cxMemo,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxButtons, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu,  DBActns, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, Vcl.Menus,  dxBarExtItems,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxDBEdit,
  cxMaskEdit, cxSpinEdit, dxBarDBNav, fCustKtlUnit, cxDropDownEdit,
  cxImageComboBox, cxEditRepositoryItems;

type
  TFVfrmKTLTexty = class(TfrmCusKtl)
    rsPropSaver1: TrsPropSaver;
    tvKatalogID: TcxGridDBColumn;
    tvKatalogPOPIS: TcxGridDBColumn;
    tvKatalogTEXTCS: TcxGridDBColumn;
    edPopis: TcxDBTextEdit;
    dliHlavniItem2: TdxLayoutItem;
    edSablona: TcxDBMemo;
    dliHlavniItem3: TdxLayoutItem;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    edTypTextu: TcxDBImageComboBox;
    dliHlavniItem1: TdxLayoutItem;
    tvKatalogTYP: TcxGridDBColumn;
    repFVtextTyp: TcxEditRepositoryImageComboBoxItem;
    cx: TcxEditRepository;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure jfsCustomEvidFormCreate(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses
   FVdmdu, fMessageDlg, FVfrmuModule, appdmduSystem,
  FVConstDefUnit, fKatalogyModul, appfrmuGlobal;

{$R *.DFM}


procedure TFVfrmKTLTexty.actRecCopyExecute(Sender: TObject);
begin
  dmdSystem.CopyRecord('FVTEXTY','ID','TYP;POPIS;TEXTCS',dsZaznam.DataSet);
end;

procedure TFVfrmKTLTexty.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    try
      dsZaznam.DataSet.Delete;
    except
      on e: exception do
        DisplayError(SERR_UPDATE, e.Message);
    end;
end;

procedure TFVfrmKTLTexty.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  dsZaznam.DataSet        := AppCompsDM.dtsFVTextyAll;
  dsZaznam.DataSet.Active := true;
end;

end.



