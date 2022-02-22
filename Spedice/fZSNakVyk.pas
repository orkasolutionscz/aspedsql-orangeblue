unit fZSNakVyk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fCustEdit, dxBar, cxClasses, Db, DBActns, ActnList, StdCtrls, cxButtons,
  ExtCtrls, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxControls, cxContainer,
  cxEdit, cxTextEdit, IBODataset, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxBarExtItems, uEnterTab, fCustEditLay,
  dxLayoutContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutControl, rsStorage, rsPropSaver;

type
  TfrmZSNakVyk = class(TfrmCustEditLay)
    edPSC: TcxDBTextEdit;
    edCas: TcxDBTextEdit;
    edAdresa3: TcxDBTextEdit;
    edPoradi: TcxDBTextEdit;
    meSpojeni: TcxDBMemo;
    meAdresaPopis: TcxDBMemo;
    cbZeme: TcxDBLookupComboBox;
    cbPohybTyp: TcxDBLookupComboBox;
    edDatum: TcxDBDateEdit;
    actVybratMisto: TAction;
    actVybratAOP: TAction;
    actVybratSmerovku: TAction;
    actUlozitSmer: TAction;
    btnFTxSpeedButton2: TcxButton;
    btnFTxSpeedButton1: TcxButton;
    btnSpeedButton1: TcxButton;
    btnSpeedButton2: TcxButton;
    jfEnterAsTab1: TjfEnterAsTab;
    dxlgMainGroup3: TdxLayoutGroup;
    dliMainItem2: TdxLayoutItem;
    dliMainItem3: TdxLayoutItem;
    dliMainItem4: TdxLayoutItem;
    dliMainItem5: TdxLayoutItem;
    dxlgMainGroup5: TdxLayoutGroup;
    dxlgMainGroup6: TdxLayoutGroup;
    dliMainItem6: TdxLayoutItem;
    dliMainItem7: TdxLayoutItem;
    dliMainItem8: TdxLayoutItem;
    dxlgMainGroup7: TdxLayoutGroup;
    dliMainItem9: TdxLayoutItem;
    dliMainItem10: TdxLayoutItem;
    dliMainItem11: TdxLayoutItem;
    dliMainItem12: TdxLayoutItem;
    dxlgMainGroup8: TdxLayoutGroup;
    dliMainItem13: TdxLayoutItem;
    dliMainItem14: TdxLayoutItem;
    btnClose: TcxButton;
    dliMainItem1: TdxLayoutItem;
    dxlytmptyspctmMainSpaceItem1: TdxLayoutEmptySpaceItem;
    dxlytsprtrtmMainSeparatorItem1: TdxLayoutSeparatorItem;
    rsPropSaver1: TrsPropSaver;
    procedure actVybratMistoExecute(Sender: TObject);
    procedure actUlozitSmerExecute(Sender: TObject);
    procedure actVybratAOPExecute(Sender: TObject);
    procedure actVybratSmerovkuExecute(Sender: TObject);
    procedure actRecDeleteExecute(Sender: TObject);
    procedure actRecCopyExecute(Sender: TObject);
    procedure actRecordMove(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses ZSdmdu, ZSfrmuModule, appfrmuGlobal, appdmduSystem, ZSfrmuVyberNakVyk,
  AOPfrmuModule, fMessageDlg, uAOPConstDefUnit, AOPfrmuPickUser, uAppUtils,
   uCustomForms, uaopfirmaclass;

{$R *.DFM}

procedure TfrmZSNakVyk.actVybratMistoExecute(Sender: TObject);
var
  // dt: TZSNakVykMisto;
  dlg: TZSfrmVyberNakVyk;
begin
  dlg := TZSfrmVyberNakVyk.Create(nil);
  try
    dlg.MasterDs.DataSet := ZSdmd.sqPohyby;
    if dlg.ShowModal = mrOk then
    begin
      SetEditsState;
      ZSdmd.ZAPohybyADRESA3.AsString  := ZSdmd.sqPohybyADRESA3.AsString;
      ZSdmd.ZAPohybyPSC.AsString      := ZSdmd.sqPohybyPSC.AsString;
      ZSdmd.ZAPohybyZEMEKOD.AsVariant := ZSdmd.sqPohybyZEMEKOD.AsVariant;
      ZSdmd.ZAPohybyAdresaPopis.Assign(ZSdmd.sqPohybyAdresaPopis);
      ZSdmd.ZAPohybySPOJENI.Assign(ZSdmd.sqPohybySPOJENI);
    end;
  finally
    dlg.free;
  end;

end;

constructor TfrmZSNakVyk.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // LoadToolbars;

  dsZaznam.DataSet          := ZSdmd.ZAPohyby;
  cbZeme.RepositoryItem     := AOPfrmModule.repStatyShort;
  cbPohybTyp.RepositoryItem := dmdGlobal.repZSPohyby;

  if dmdSystem.gbAdresa3UpperCase then
    edAdresa3.Properties.CharCase := ecUpperCase
  else
    edAdresa3.Properties.CharCase := ecNormal;

end;

procedure TfrmZSNakVyk.actUlozitSmerExecute(Sender: TObject);
var
  tmpMisto: TAOPMisto;
begin
  tmpMisto.KodZeme := ZSdmd.ZAPohybyZEMEKOD.AsString;
  tmpMisto.Psc     := ZSdmd.ZAPohybyPSC.AsString;
  tmpMisto.Mesto   := ZSdmd.ZAPohybyADRESA3.AsString;

  if (trim(tmpMisto.KodZeme) = '') or (trim(tmpMisto.Psc) = '') or (trim(tmpMisto.Mesto) = '') then
    DisplayError(SERR_AOP_SMER_NOTCOMPLETE)
  else if AOPfrmModule.KTLPscAppend(tmpMisto) then
    DisplayInfo(SINF_AOP_SMER_INSERTED)
  else
    DisplayError(SERR_AOP_SMER_EXIST);

end;

procedure TfrmZSNakVyk.actVybratAOPExecute(Sender: TObject);
var
  cFirma           : TAOPFirmaClass;
  tmpAdr, lc_aopkod: string;
  tmpAdrList       : TStringList;
begin
  lc_aopkod  := '';
  cFirma     := TAOPFirmaClass.Create(lc_aopkod, True);
  tmpAdrList := TStringList.Create;

  try
    if cFirma.NaselAdresu then
    begin
      tmpAdrList.clear;
      if ZSfrmModule.gbPohybArdesaAsLine then
      begin
        if trim(cFirma.Nazev) <> emptystr then
          tmpAdr := cFirma.Nazev;
        if trim(cFirma.Adresa1) <> emptystr then
          strAddDelimeted(tmpAdr, cFirma.Adresa1, ', ');
        if trim(cFirma.Adresa2) <> emptystr then
          strAddDelimeted(tmpAdr, cFirma.Adresa2, ', ');

        tmpAdrList.add(tmpAdr);
      end
      else
      begin
        if trim(cFirma.Nazev) <> emptystr then
          tmpAdrList.add(cFirma.Nazev);
        if trim(cFirma.Adresa1) <> emptystr then
          tmpAdrList.add(cFirma.Adresa1);
        if trim(cFirma.Adresa2) <> emptystr then
          tmpAdrList.add(cFirma.Adresa2);
      end;

      SetEditsState;
      ZSdmd.ZAPohybyAdresaPopis.Assign(tmpAdrList);

      ZSdmd.ZAPohybyPSC.AsString      := cFirma.Psc;
      ZSdmd.ZAPohybyADRESA3.AsString  := cFirma.Adresa3;
      ZSdmd.ZAPohybyZEMEKOD.AsVariant := cFirma.ZemeKod;
    end;

  finally
    tmpAdrList.free;
    cFirma.free;
  end;
end;

procedure TfrmZSNakVyk.actVybratSmerovkuExecute(Sender: TObject);
var
  tmpMisto: TAOPMisto;
begin
  tmpMisto.KodZeme := ZSdmd.ZAPohybyZEMEKOD.AsVariant;
  tmpMisto.Psc     := ZSdmd.ZAPohybyPSC.AsString;
  tmpMisto.Mesto   := ZSdmd.ZAPohybyADRESA3.AsString;
  if AOPfrmModule.ShowKTLPsc(tmpMisto) then
  begin
    SetEditsState;
    ZSdmd.ZAPohybyZEMEKOD.AsVariant := tmpMisto.KodZeme;
    ZSdmd.ZAPohybyPSC.AsString      := tmpMisto.Psc;
    ZSdmd.ZAPohybyADRESA3.AsString  := tmpMisto.Mesto;
  end;
end;

procedure TfrmZSNakVyk.actRecDeleteExecute(Sender: TObject);
begin
  if DisplayConfirm(sMsgConfirmDelete) then
    ZSdmd.ZAPohyby.Delete;

end;

procedure TfrmZSNakVyk.actRecCopyExecute(Sender: TObject);
var
  lcData: TIBOQuery;
begin
  // pripravime si kopii datasetu
  lcData := dmdSystem.CreateWorkDataSet;
  try
    lcData.SQL.Text                    := 'SELECT * FROM ZSNAKVYK WHERE ID = :ID';
    lcData.ParamByName('ID').AsInteger := ZSdmd.ZAPohybyID.AsInteger;
    lcData.Open;

    ZSdmd.ZAPohyby.Insert;
    ZSdmd.ZAPohyby.FieldValues[ZSfrmModule.gbZSCopyListPohyby] := lcData.FieldValues[ZSfrmModule.gbZSCopyListPohyby];

  finally
    lcData.free;
  end;

end;

procedure TfrmZSNakVyk.actRecordMove(Sender: TObject);
begin
  inherited;
  if Sender = actRecPrior then
    ZSdmd.ZAPohyby.prior
  else if Sender = actRecNext then
    ZSdmd.ZAPohyby.next;
end;

end.
