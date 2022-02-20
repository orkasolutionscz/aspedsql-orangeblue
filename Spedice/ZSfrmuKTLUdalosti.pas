{ -----------------------------------------------------------------------------
  Unit Name: ZSfrmuKTLUdalosti
  Author:    Administrator
  Purpose:
  History:
  10.5.2002 - zakladni verze
  ----------------------------------------------------------------------------- }

unit ZSfrmuKTLUdalosti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Db, Buttons,
  rsStorage, rsPropSaver, uCustomForms,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBar, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData,  dxLayoutcxEditAdapters,
  dxLayoutContainer, cxDBEdit, dxBarDBNav, dxBarExtItems, Vcl.DBActns,
  dxLayoutControl, fCustKtlUnit;

type
  TZSfrmKTLUdalosti = class(TfrmCusKtl)
    tvKatalogTYP: TcxGridDBColumn;
    tvKatalogDEFAULTTEXT: TcxGridDBColumn;
    edDefaultText: TcxDBTextEdit;
    edZkratka: TcxDBTextEdit;
    dxlgHlavniGroup1: TdxLayoutGroup;
    dliHlavniItem1: TdxLayoutItem;
    dliHlavniItem2: TdxLayoutItem;
    dxlytmptyspctmHlavniSpaceItem1: TdxLayoutEmptySpaceItem;
    dxlgHlavniGroup2: TdxLayoutGroup;
    rsPropSaver1: TrsPropSaver;
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
  ZSdmdu, fMessageDlg, ZSfrmuModule, appdmduSystem, ZSConstDefUnit;

{$R *.DFM}


procedure TZSfrmKTLUdalosti.actRecCopyExecute(Sender: TObject);
const
  DataCopyList = 'TYP;DEFAULTTEXT';
begin
  dmdSystem.spProc.Close;
  dmdSystem.spProc.SQL.Text := 'select * from HIST_TYP WHERE TYP = :TYP';
  dmdSystem.spProc.ParamByName('TYP').AsString    := ZSdmd.KTLHistorieTYP.AsString;
  dmdSystem.spProc.Open;

  ZSdmd.KTLHistorie.Insert;
  ZSdmd.KTLHistorie.FieldValues[DataCopyList] := dmdSystem.spProc.FieldValues[DataCopyList];
end;

procedure TZSfrmKTLUdalosti.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
  begin
    try
      ZSdmd.KTLHistorie.Delete;
      // inherited;
    except
      raise;
    end;
  end;
end;

procedure TZSfrmKTLUdalosti.jfsCustomEvidFormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(ZSdmd) then
    Application.CreateForm(TZSdmd, ZSdmd);

  dsZaznam.DataSet        := ZSdmd.KTLHistorie;
  dsZaznam.DataSet.Active := true;

end;

end.
