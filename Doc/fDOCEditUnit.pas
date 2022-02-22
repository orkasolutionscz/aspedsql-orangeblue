unit fDOCEditUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, AOPfrmuModule, ActnList, rsStorage, rsPropSaver, StdCtrls,
  Db, uCustomForms, Menus,
  ComCtrls, IBODataset, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxButtonEdit, dxBar, cxClasses, cxLabel,
  cxGroupBox, cxMemo, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBActns, cxButtons, fCustEdit,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxBarExtItems,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, fCustEditLay,
  cxRichEdit, cxDBRichEdit, uaopfirmaclass;

type
  TDOCfrmEdit = class(TfrmCustEditLay)
    rsPropSaver1: TrsPropSaver;
    dxbPrint: TdxBarButton;
    dxbNahled: TdxBarButton;
    actCreateEmail: TAction;
    dxb1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    edVyrizuje: TcxDBTextEdit;
    edUrceno: TcxDBTextEdit;
    edVasDopis: TcxDBTextEdit;
    edVec: TcxDBTextEdit;
    edDatum: TcxDBDateEdit;
    edZnacka: TcxDBButtonEdit;
    edAdresa1: TcxDBTextEdit;
    edAdresa2: TcxDBTextEdit;
    edPsc: TcxDBTextEdit;
    edAdresa3: TcxDBTextEdit;
    edZeme: TcxDBTextEdit;
    edNazev: TcxDBLookupComboBox;
    edEmaily: TcxDBMemo;
    lcMainItem2: TdxLayoutItem;
    lcMainItem3: TdxLayoutItem;
    lcMainItem4: TdxLayoutItem;
    lcMainItem5: TdxLayoutItem;
    lcMainItem6: TdxLayoutItem;
    lcMainItem7: TdxLayoutItem;
    lcMainItem8: TdxLayoutItem;
    lcMainItem9: TdxLayoutItem;
    lcMainItem10: TdxLayoutItem;
    lcMainItem11: TdxLayoutItem;
    lcMainItem13: TdxLayoutItem;
    lcMainItem14: TdxLayoutItem;
    lcMainItem15: TdxLayoutItem;
    lcMainGroup7: TdxLayoutGroup;
    lcMainGroup9: TdxLayoutGroup;
    lcMainGroup6: TdxLayoutGroup;
    lcMainGroup2: TdxLayoutGroup;
    lcMainGroup3: TdxLayoutGroup;
    lcMainGroup5: TdxLayoutGroup;
    lcMainGroup1: TdxLayoutGroup;
    lcMainGroup4: TdxLayoutGroup;
    edEditor: TcxDBMemo;
    lcMainItem1: TdxLayoutItem;
    dxb2: TdxBarButton;
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure edZnackaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure gbCustomEditFormPrint(Sender: TObject);
    procedure actRecordMove(Sender: TObject);
    procedure dsZaznamDataChange(Sender: TObject; Field: TField);
    procedure jfsCustomEvidFormDestroy(Sender: TObject);
    procedure actCreateEmailExecute(Sender: TObject);
    procedure actSendMailExecute(Sender: TObject);
  private
    { Private declarations }
    OldFirmyPropertiesButtonClick: TcxEditButtonClickEvent;
    procedure repFirmyPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  public
    { Public declarations }
    procedure FillAopAdresa(aFirmaObj: TAOPFirmaClass);
    constructor Create(AOwner: TComponent); override;
  end;

var
  DOCfrmEdit: TDOCfrmEdit;

implementation

uses
  uVarClass, DOCdmdu, DOCfrmuModule, appdmduSystem, fMessageDlg,
  appGenIdUnit, DOCConstDefUnit, appfrmuGlobal, AOPfrmuEdit, AOPdmdu,
  uAOPConstDefUnit, AOPfrmuPickUser, Devexptls, JclMapi, uSendFaxMail,
  appReportModule, appReportUtils;

{$R *.DFM}

const

  DOC_PANELY = '\TDOCfrmEdit\Panely';

  { ****************************************************************
    *
    *  V e r i f y I n p u t D a t a()
    *
    ****************************************************************
    *  Author: Jiri Fait
    *  Date:   23.5.2001
    *
    *  Input:  nic
    *
    *  Return: true pokud probehne kontrola v poradku
    *
    *  Description:
    *
    *****************************************************************
    * Revisions:
    *
    ***************************************************************** }

procedure TDOCfrmEdit.FillAopAdresa(aFirmaObj: TAOPFirmaClass);
begin
  if aFirmaObj <> nil then
  begin
    SetEditsState;
    DOCdmd.DOCAOPKOD.AsString    := aFirmaObj.AOPKod;
    DOCdmd.DOCNAZEV.AsString     := aFirmaObj.Nazev;
    DOCdmd.DOCadresa1.AsString   := aFirmaObj.Adresa1;
    DOCdmd.DOCAdresa2.AsString   := aFirmaObj.Adresa2;
    DOCdmd.DOCPsc.AsString       := aFirmaObj.Psc;
    DOCdmd.DOCAdresa3.AsString   := aFirmaObj.Adresa3;
    DOCdmd.DOCZeme.AsString      := aFirmaObj.Zeme;
    DOCdmd.DOCDOCEMAILY.AsString := aFirmaObj.email;
  end;
end;

procedure TDOCfrmEdit.actRecDeleteExecute(Sender: TObject);
begin

  if DisplayConfirm(sMsgConfirmDelete) then
  begin
    try
      DOCdmd.DOC.delete;
      inherited;
    except
      raise;
    end;
  end;

end;

procedure TDOCfrmEdit.actRecCopyExecute(Sender: TObject);
var
  sNewSID: string;
begin
  sNewSID := DOCdmd.CopyRecord(DOCdmd.DOCSID.AsString);
  DOCdmd.mod_OpenRecord(sNewSID);
end;

procedure TDOCfrmEdit.actRecordMove(Sender: TObject);
begin
  inherited;
  if Sender = actRecPrior then
    DOCdmd.DOCSeznam.Prior
  else if Sender = actRecNext then
    DOCdmd.DOCSeznam.Next
  else
    exit;
  DOCdmd.mod_OpenRecord(DOCdmd.DOCSeznamSID.AsString);

end;

procedure TDOCfrmEdit.gbCustomEditFormPrint(Sender: TObject);
begin
  inherited;
  DOCfrmModule.PrintModule(IsDefaultReport, DOCdmd.DOCSID.AsString);
end;

procedure TDOCfrmEdit.edZnackaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
var
  sNewRada   : string;
  sNewFaktura: string;
const
  sOkRenameFaktura = 'Opravdu chcete zmìnit znaèku Dokumentu?';
begin
  case AbsoluteIndex of //
    0:
      begin
        sNewRada := dmdSystem.SelectNumLine(DOCfrmModule.ModuleName);
        if sNewRada <> EmptyStr then
        begin
          SetEditsState;
          DOCdmd.DOCZNACKA.AsString := sNewRada;
          DOCdmd.DOC.Post;
        end;
      end;
    1:
      begin
        if DisplayConfirm(sOkRenameFaktura) then
        begin
          sNewFaktura := DOCdmd.DOCZNACKA.AsString;
          if InputQuery(Application.Title, 'Nové èíslo dokladu', sNewFaktura) then
          begin
            SetEditsState;
            DOCdmd.DOCZNACKA.AsString := sNewFaktura;
            DOCdmd.DOC.Post;
          end;
        end;

      end;
  end; // case

end;

constructor TDOCfrmEdit.Create(AOwner: TComponent);
begin
  inherited;
  LoadToolbars;
  dsZaznam.DataSet                 := GetDOCdmd.DOC;
  OldFirmyPropertiesButtonClick    := GetAopModul.repFirmyFull.Properties.OnButtonClick;
  edNazev.RepositoryItem           := GetAopModul.repFirmyFull;
  edNazev.Properties.OnButtonClick := repFirmyPropertiesButtonClick;
  actRecDelete.Visible             := dmdSystem.gbEnableDelete;
end;

procedure TDOCfrmEdit.repFirmyPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  lFirma: TAOPFirmaCustomClass;
begin
  case AButtonIndex of (* *)
    1:
      begin
        lFirma := TAOPFirmaClass.Create(DOCdmd.DOCAOPKOD.AsString, True);

        try
          if lFirma.naseladresu then
          begin
            self.SetEditsState;
            DOCdmd.DOCAOPKOD.AsString    := lFirma.AOPKod;
            DOCdmd.DOCNAZEV.AsString     := lFirma.Nazev;
            DOCdmd.DOCadresa1.AsString   := lFirma.Adresa1;
            DOCdmd.DOCAdresa2.AsString   := lFirma.Adresa2;
            DOCdmd.DOCPsc.AsString       := lFirma.Psc;
            DOCdmd.DOCAdresa3.AsString   := lFirma.Adresa3;
            DOCdmd.DOCZeme.AsString      := lFirma.Zeme;
            DOCdmd.DOCDOCEMAILY.AsString := lFirma.email;
          end;

        finally
          lFirma.Free;
        end;
      end;
    2:
      begin
        lFirma := TAOPFirmaCustomClass.Create;
        try
          lFirma.AOPKod := DOCdmd.DOCAOPKOD.AsString;
          if lFirma.AOPKod <> '' then
          begin
            if AopGetDetailSendAdres(lFirma) then
            begin
              self.SetEditsState;
              DOCdmd.DOCAOPKOD.AsString    := lFirma.AOPKod;
              DOCdmd.DOCNAZEV.AsString     := lFirma.Nazev;
              DOCdmd.DOCadresa1.AsString   := lFirma.Adresa1;
              DOCdmd.DOCAdresa2.AsString   := lFirma.Adresa2;
              DOCdmd.DOCPsc.AsString       := lFirma.Psc;
              DOCdmd.DOCAdresa3.AsString   := lFirma.Adresa3;
              DOCdmd.DOCZeme.AsString      := lFirma.Zeme;
              DOCdmd.DOCDOCEMAILY.AsString := lFirma.email;
            end;
          end;
        finally
          lFirma.Free;
        end;
      end;
    3:
      begin
        SetEditsState;
        DOCdmd.DOCAOPKOD.Clear;
        DOCdmd.DOCNAZEV.AsString     := '';
        DOCdmd.DOCadresa1.AsString   := '';
        DOCdmd.DOCAdresa2.AsString   := '';
        DOCdmd.DOCPsc.AsString       := '';
        DOCdmd.DOCAdresa3.AsString   := '';
        DOCdmd.DOCZeme.AsString      := '';
        DOCdmd.DOCDOCEMAILY.AsString := '';
      end;
  end; (* case *)

end;

procedure TDOCfrmEdit.dsZaznamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  edZnacka.Properties.ReadOnly           := not(dsZaznam.State in [dsInsert]);
  edZnacka.Properties.Buttons[0].Visible := not edZnacka.Properties.ReadOnly;
  edZnacka.Properties.Buttons[1].Visible := edZnacka.Properties.ReadOnly;

end;

procedure TDOCfrmEdit.jfsCustomEvidFormDestroy(Sender: TObject);
begin
  GetAopModul.repFirmyFull.Properties.OnButtonClick := OldFirmyPropertiesButtonClick;
  inherited;
end;

procedure TDOCfrmEdit.actCreateEmailExecute(Sender: TObject);
var
  JclEmailW: TJclEmail;
  aSubject : AnsiString;
begin
  if DOCdmd.DOCDOCEMAILY.AsString = '' then
  begin
    DisplayError('Nemáte vyplnìnou komunikaèní adressu!');
    edEmaily.SetFocus;
    exit;
  end;

  if pos(sfFaxCzServer, DOCdmd.DOCDOCEMAILY.AsString) > 0 then
    aSubject := AnsiString('s=' + DOCdmd.DOCVEC.AsString + ' p=' + sfFaxCzRegEmailPasswd)
  else
    aSubject := AnsiString(DOCdmd.DOCVEC.AsString);

  JclEmailW := TJclEmail.Create;
  try
    try

      JclEmailW.Recipients.Add(AnsiString(DOCdmd.DOCDOCEMAILY.AsString), AnsiString(DOCdmd.DOCNAZEV.AsString));
      JclEmailW.ClientConnectKind   := sfMAPIClientConnect;
      JclEmailW.SelectedClientIndex := sfMAPISelectedClientIndex;

      // if FileExists(RepAttachFile) then
      if sfMailCCAdress <> '' then
        JclEmailW.Recipients.Add(AnsiString(sfMailCCAdress), AnsiString(sfMailCCAdress));

      // JclEmailW.Attachments.Assign(FileNames);
      // rec
      JclEmailW.Subject := aSubject;
      // JclEmailW.Body.Font := edEditor.Style.Font;
      JclEmailW.HtmlBody := false; // true;
      JclEmailW.Body     := AnsiString(DOCdmd.DOCDTEXT.AsString);

      Application.ProcessMessages;
      // Tady votrebujeme vzdy zobrazit okno nove zpravy
      JclEmailW.Send(True);
      //
      Application.ProcessMessages;

    except
      Application.MessageBox('Neznámá chyba , zkuste jiný zpusob odeslání', 'Odeslání dat', MB_ICONEXCLAMATION or MB_OK);
    end;
  finally
    JclEmailW.Free;
  end;

end;

procedure TDOCfrmEdit.actSendMailExecute(Sender: TObject);
var
  aPdfFile: string;
begin
  dmReport.frxMailExport.Address := DOCdmd.DOCDOCEMAILY.AsString;
  dmReport.frxMailExport.Subject := DOCdmd.DOCVEC.AsString;

  // aReportFile :=  repGetDefaultReport(dmReport.GenEvidenceFolder(DOCfrmModule.ModuleName));
  dmReport.ExportAndSendEmail(DOCfrmModule.DefaultReport, DOCfrmModule.frrDoc, aPdfFile);
end;

end.
