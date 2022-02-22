{ ***************************************************************
  *
  * Unit Name: DOCfrmuKTLSablony
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit fDOCCustomSablony;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Menus, Db, ActnList, cxButtons, cxControls,
  cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, cxContainer, cxEdit, cxTextEdit, cxMemo, dxBar,
  cxLabel, uCustomForms, DBActns, cxDBEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, rsStorage, rsPropSaver, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, dxBarExtItems,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxMaskEdit,
  cxSpinEdit, dxBarDBNav, fCustKtlUnit;

type
  TfrmDOCCustomSablony = class(TfrmCusKtl)
    tvKatalogID: TcxGridDBColumn;
    tvKatalogEvidence: TcxGridDBColumn;
    tvKatalogPopis: TcxGridDBColumn;
    tvKatalogSablona: TcxGridDBColumn;
    actExecuteMerger: TAction;
    actVytvorAvizo: TAction;
    cxDBTextEdit2: TcxDBTextEdit;
    dliHlavniItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dliHlavniItem4: TdxLayoutItem;
    meTextCs: TcxDBMemo;
    dliHlavniItem5: TdxLayoutItem;
    dxb1: TdxBarButton;
    dxb2: TdxBarButton;
    dxlgHlavniGroup4: TdxLayoutGroup;
    cxGridPopupMenu1: TcxGridPopupMenu;
    rsPropSaver1: TrsPropSaver;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
  private
    FEvidence: string;
    procedure SetEvidence(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property Evidence: string read FEvidence write SetEvidence;
    function VytvorDokument(AOwner: string; aVec: string; aAopKod: string; Lines: TStrings):string;
  end;

function DOCShowKTLSablony(AShowCreateSablona: boolean = false): boolean;

implementation

uses
  appdmduSystem, fMessageDlg, uVarClass, appGenIdUnit, DOCdmdu, appfrmuGlobal, AOPfrmuModule,
  DOCfrmuModule, uaopfirmaclass;

{$R *.DFM}

function DOCShowKTLSablony(AShowCreateSablona: boolean = false): boolean;
var
  frm: TfrmDOCCustomSablony;
begin
  frm := TfrmDOCCustomSablony.Create(nil);
  try
    frm.SetLookupMode(AShowCreateSablona);
    Result := frm.ShowModal = mrOk;
  finally
    frm.Free;
  end;
end;

constructor TfrmDOCCustomSablony.Create(AOwner: TComponent);
begin
  inherited;
  dsZaznam.DataSet        := DOCdmd.DOCSablony;
  dsZaznam.DataSet.Active := true;
end;

procedure TfrmDOCCustomSablony.SetEvidence(const Value: string);
begin
  FEvidence := Value;
  DOCdmd.DOCSablony.Close;
  DOCdmd.DOCSablony.Params[0].AsString := FEvidence;
  DOCdmd.DOCSablony.Open;
end;

function TfrmDOCCustomSablony.VytvorDokument(AOwner, aVec, aAopKod: string; Lines: TStrings):string;
var
  cFirma : TAOPFirmaClass;
  iZnacka: string;
begin
  cFirma := TAOPFirmaClass.Create(aAopKod, false);
  try
    iZnacka := DOCfrmModule.GetNewKeyIdValue(DOCfrmModule.NewNumRadaJmeno);
    result := GenGUIDID22;
    DOCdmd.mod_OpenRecord(result);
    DOCdmd.DOC.Insert;
    DOCdmd.DOCSID.AsString     := result;
    DOCdmd.DOCZNACKA.AsString  := iZnacka;
    DOCdmd.DOCOWNER.AsString   := AOwner;
    DOCdmd.DOCTYP.AsInteger    := 1;
    DOCdmd.DOCAOPKOD.AsString  := cFirma.aopkod;
    DOCdmd.DOCNAZEV.AsString   := cFirma.Nazev;
    DOCdmd.DOCADRESA1.AsString := cFirma.Adresa1;
    DOCdmd.DOCADRESA2.AsString := cFirma.Adresa2;
    DOCdmd.DOCPSC.AsString     := cFirma.Psc;
    DOCdmd.DOCADRESA3.AsString := cFirma.Adresa3;
    DOCdmd.DOCZEME.AsString    := cFirma.Zeme;
    DOCdmd.DOCICO.AsString     := cFirma.ICO;
    DOCdmd.DOCDIC.AsString     := cFirma.DIC;
    DOCdmd.DOCDATUM.AsDateTime := date;
    DOCdmd.DOCURCENO.Clear;
    DOCdmd.DOCVASDOPIS.Clear;
    DOCdmd.DOCVEC.AsString      := aVec;
    DOCdmd.DOCVYRIZUJE.AsString := jfaUserInfo.UserName;
    DOCdmd.DOCDTEXT.Assign(Lines);
    DOCdmd.DOCDOCEMAILY.AsString := cFirma.Email;
    DOCdmd.DOCCREAID.AsString    := jfaUserInfo.UserZnacka;

    try
      DOCdmd.DOC.Post;
      DOCfrmModule.ShowDetail(result, fsmEdit);
    except
      raise;
    end;
  finally
    cFirma.Free;
  end;
end;

procedure TfrmDOCCustomSablony.actRecCopyExecute(Sender: TObject);
begin
  dmdSystem.CopyRecord('DOCSABLONY', 'ID', 'EVIDENCE;POPIS;SABLONA;VEC', dsZaznam.DataSet);
end;

procedure TfrmDOCCustomSablony.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm('Opravdu chcete odstranit tuto šablonu?') then
    try
      DOCdmd.DOCSablony.Delete;
      // inherited;
    except
      on e: exception do
        DisplayError(SERR_DELETE, e.Message);
    end;
end;

end.
