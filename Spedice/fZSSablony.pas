{ ***************************************************************
  *
  * Unit Name: DOCfrmuKTLSablony
  * Purpose  :
  * Author   :
  * History  :
  *
  **************************************************************** }

unit fZSSablony;

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
  TfrmZSSablony = class(TfrmCusKtl)
    tvKatalogID: TcxGridDBColumn;
    tvKatalogEvidence: TcxGridDBColumn;
    tvKatalogPopis: TcxGridDBColumn;
    tvKatalogSablona: TcxGridDBColumn;
    actExecuteMerger: TAction;
    actVytvorAvizo: TAction;
    rsPropSaver1: TrsPropSaver;
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
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actExecuteMergerExecute(Sender: TObject);
    procedure actVytvorAvizoExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    private
      { Private declarations }
      procedure VytvorAvizo(aVec: string; Lines: TStrings);
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
      procedure GenAvizo;
  end;

function ZSShowKTLSablony(AKeyIDValue: string; AShowCreateSablona: boolean = false): boolean;

implementation

uses
  appdmduSystem, ZSdmdu, fMessageDlg, ZSfrmuModule, ZSConstDefUnit, uDbMerger,
  fMemoTextDlg, DOCfrmuModule, DOCdmdu, AOPfrmuModule, appGenIdUnit, uVarClass,
  appfrmuGlobal;

{$R *.DFM}

function ZSShowKTLSablony(AKeyIDValue: string; AShowCreateSablona: boolean = false): boolean;
var
  frm: TfrmZSSablony;
begin
  frm := TfrmZSSablony.Create(nil);
  try
    ZSdmd.mod_OpenRecord(AKeyIDValue);
    frm.SetLookupMode(AShowCreateSablona);
    Result := frm.ShowModal = mrOk;
  finally
    frm.Free;
  end;
end;

constructor TfrmZSSablony.Create(AOwner: TComponent);
begin
  inherited;
  dsZaznam.DataSet        := ZSdmd.KTLZSSablony;
  dsZaznam.DataSet.Active := true;
end;

procedure TfrmZSSablony.GenAvizo;
var
  awStringLines: TStrings;
  awVecLine    : string;
  iMerger      : TjfsMerger;
begin
  awStringLines := TStringList.Create;
  iMerger       := TjfsMerger.Create;
  try
    iMerger.DataSets.Add(ZSdmd.Zasilky);
    iMerger.DataSets.Add(ZSdmd.ZasilkySeznam);
    iMerger.DataSets.Add(ZSdmd.ZAPlatci);
    iMerger.DataSets.Add(ZSdmd.ZAPohyby);

    // Pole Vec
    iMerger.Lines.Text := ZSdmd.KTLZSSablonyVEC.AsString;
    iMerger.Prepare;
    iMerger.Merge;
    awVecLine := iMerger.MergedLines[0];

    // Text aviza
    iMerger.Lines.Assign(ZSdmd.KTLZSSablonySABLONA);
    iMerger.Prepare;
    iMerger.Merge;
    awStringLines.Assign(iMerger.MergedLines);

    ZSdmd.mod_OpenRecord(ZSdmd.ZasilkySeznamSID.AsString);
    ZSdmd.ZAPohyby.First;
    ZSdmd.ZAPlatci.First;

    { DONE -ofait -copravy : Optravit doplnit }
    VytvorAvizo(awVecLine, awStringLines);

  finally
    awStringLines.Free;
    iMerger.Free;
  end;

end;

procedure TfrmZSSablony.actOkExecute(Sender: TObject);
begin
  if IsLookupMode then
    GenAvizo;
  inherited;

end;

procedure TfrmZSSablony.actRecCopyExecute(Sender: TObject);
begin
  dmdSystem.CopyRecord('DOCSABLONY', 'ID', 'EVIDENCE;POPIS;SABLONA;VEC', dsZaznam.DataSet);
end;

procedure TfrmZSSablony.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm('Opravdu chcete odstranit tuto šablonu?') then
    try
      ZSdmd.KTLZSSablony.Delete;
      // inherited;
    except
      on e: exception do
        DisplayError(SERR_DELETE, e.Message);
    end;
end;

procedure TfrmZSSablony.actExecuteMergerExecute(Sender: TObject);
var
  iMerger: TjfsMerger;
  iDlg   : TfrmMemoTextDlg;

begin
  iMerger := TjfsMerger.Create;
  iDlg    := TfrmMemoTextDlg.Create(nil);
  // iMerger := TQRMerger.Create;
  try
    iMerger.Lines.Assign(meTextCs.Lines);
    iMerger.DataSets.Add(ZSdmd.Zasilky);
    iMerger.DataSets.Add(ZSdmd.ZasilkySeznam);
    iMerger.DataSets.Add(ZSdmd.ZAPlatci);
    iMerger.DataSets.Add(ZSdmd.ZAPohyby);
    iMerger.Prepare;
    iMerger.Merge;

    iDlg.edMemo.Lines.Assign(iMerger.MergedLines);
    iDlg.edMemo.Style.Font := meTextCs.Style.Font;
    iDlg.ShowModal;
  finally
    iMerger.Free;
    iDlg.Free;
  end;

end;

procedure TfrmZSSablony.actVytvorAvizoExecute(Sender: TObject);
begin
  GenAvizo;
end;

procedure TfrmZSSablony.VytvorAvizo(aVec: string; Lines: TStrings);
var
  cFirma : TAOPFirmaClass;
  iZnacka: string;
  aNewsId: string;
begin
  cFirma := TAOPFirmaClass.CreateCustom(ZSdmd.ZasilkyAOPKOD_OBJ.AsString, false);
  try

    iZnacka := DOCfrmModule.GetNewKeyIdValue(DOCfrmModule.NewNumRadaJmeno);
    aNewsId := GenGUIDID22;
    DOCdmd.mod_OpenRecord(aNewsId);
    DOCdmd.DOC.Insert;
    DOCdmd.DOCSID.AsString    := aNewsId;
    DOCdmd.DOCZNACKA.AsString := iZnacka;
    DOCdmd.DOCOWNER.AsString  := ZSdmd.ZasilkySID.AsString;

    DOCdmd.DOCTYP.AsInteger := 1;

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
    DOCdmd.DOCDOCEMAILY.AsString := cFirma.SendingAdress;

    DOCdmd.DOCCREAID.AsString := jfaUserInfo.UserZnacka;

    try
      DOCdmd.DOC.Post;
      DOCfrmModule.ShowDetail(aNewsId, fsmEdit);
    except
      raise;
    end;
  finally
    cFirma.Free;
  end;
end;

end.
