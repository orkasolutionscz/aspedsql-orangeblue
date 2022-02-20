unit fPOPSablony;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fDOCCustomSablony, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, rsStorage, rsPropSaver, dxBarDBNav,
  dxBar, dxBarExtItems, cxClasses, Vcl.DBActns, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, dxLayoutContainer, cxMemo,
  cxDBEdit, cxTextEdit, dxLayoutControl, Vcl.ExtCtrls;

type
  TfrmPOPSablony = class(TfrmDOCCustomSablony)
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
    procedure GenDokument;
  public
    { Public declarations }
  end;

function POPShowKTLSablony(AShowCreateSablona: boolean = false): boolean;

implementation

uses
  uDbMerger, POPdmdu;

{$R *.dfm}

function POPShowKTLSablony(AShowCreateSablona: boolean = false): boolean;
var
  frm: TfrmPOPSablony;
begin
  frm := TfrmPOPSablony.Create(nil);
  try
    frm.Evidence := 'POP';
    frm.SetLookupMode(AShowCreateSablona);
    Result := frm.ShowModal = mrOk;
  finally
    frm.Free;
  end;
end;

procedure TfrmPOPSablony.actOkExecute(Sender: TObject);
begin
  if IsLookupMode then
    GenDokument;
  inherited;

end;

procedure TfrmPOPSablony.GenDokument;
var
  awStringLines: TStrings;
  awVecLine    : string;
  iMerger      : TjfsMerger;
  aNewDoc      : string;
begin
  awStringLines := TStringList.Create;
  iMerger       := TjfsMerger.Create;
  POPdmd.mod_OpenRecord(POPdmd.POPSeznamSID.AsString);
  try
    iMerger.DataSets.Add(POPdmd.POPSeznam);
    iMerger.DataSets.Add(POPdmd.POPRecord);

    // Pole Vec
    iMerger.Lines.Text := dsZaznam.DataSet.FieldByName('VEC').AsString;
    iMerger.Prepare;
    iMerger.Merge;
    awVecLine := iMerger.MergedLines[0];

    // Text aviza
    iMerger.Lines.Assign(dsZaznam.DataSet.FieldByName('SABLONA'));
    iMerger.Prepare;
    iMerger.Merge;
    awStringLines.Assign(iMerger.MergedLines);


    { DONE -ofait -copravy : Optravit doplnit }
    aNewDoc := VytvorDokument(POPdmd.POPRecordSID.AsString, awVecLine, POPdmd.POPRecordREF_AOPKOD.AsString, awStringLines);

    POPdmd.spInsertPopDop.ParamByName('REF_POP').AsString := POPdmd.POPSeznamSID.AsString;
    POPdmd.spInsertPopDop.ParamByName('REF_DOC').AsString := aNewDoc;
    POPdmd.spInsertPopDop.ExecSQL;

  finally
    awStringLines.Free;
    iMerger.Free;
  end;
end;

end.
