unit fKatalogyModul;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, uCustomModule,
  Db, IBODataset, cxEditRepositoryItems, cxEdit, cxDBEditRepository,
  IB_Components, IB_Process, IB_Script;

type
  TAppCompsDM = class(TjfsDefaultModule)
    KTLJednotky: TIBOQuery;
    KTLJednotkyJEDNOTKA: TStringField;
    KTLJednotkyPOPIS: TStringField;
    KTLDPH: TIBOQuery;
    KTLDPHDPH_ID: TStringField;
    KTLDPHPROCDPH: TBCDField;
    KTLMeny: TIBOQuery;
    KTLMenyKOD: TStringField;
    KTLMenyPOPIS: TStringField;
    KTLMenyKURS: TFloatField;
    dtsZSUS: TIBOQuery;
    KTLFVTexty: TIBOQuery;
    KTLFVTextyID: TIntegerField;
    KTLFVTextyPOPIS: TStringField;
    KTLFVTextyTEXTCS: TMemoField;
    KTLFVTyp: TIBOQuery;
    KTLFVTypTYPFV: TStringField;
    KTLFVTypPOPIS: TStringField;
    KTLFVUhrada: TIBOQuery;
    KTLFVUhradaUHRADA: TStringField;
    KTLFVUhradaPOPIS: TStringField;
    KTLFVUcty: TIBOQuery;
    KTLFVUctyZKRATKA: TStringField;
    KTLFVUctyUCET: TStringField;
    KTLFVUctyTYP: TStringField;
    KTLFVUctyKODBANKY: TStringField;
    KTLFVUctyBANKA: TStringField;
    KTLFVUctyBANKAWORLD: TStringField;
    KTLFVUctySPECSYMBOL: TStringField;
    KTLFVUctyIBAN: TStringField;
    POPKTLTypy: TIBOQuery;
    POPKTLTypyKOD: TSmallintField;
    POPKTLTypyPOPIS: TStringField;
    KTLAuta: TIBOQuery;
    KTLAutaTYP: TStringField;
    KTLTypy: TIBOQuery;
    KTLTypyTyp: TStringField;
    KTLTypyPopis: TStringField;
    KTLPodminky: TIBOQuery;
    KTLPodminkyID: TIntegerField;
    KTLPodminkyPopis: TStringField;
    KTLPodminkyObsah: TMemoField;
    ZSKTLNakVyk: TIBOQuery;
    ZSKTLNakVykKod: TStringField;
    ZSKTLNakVykPopis: TStringField;
    ZSKTLNakVykNOMODIFY: TStringField;
    KTLDruhPlatby: TIBOQuery;
    KTLDruhPlatbyKOD: TStringField;
    KTLDruhPlatbyPOPIS: TStringField;
    KTLDruhPlatbyTEXTFAKTURA: TStringField;
    dtsDocSU: TIBOQuery;
    dtsDocSUID: TIntegerField;
    dtsDocSUEVIDENCE: TIntegerField;
    dtsDocSUKOD: TStringField;
    dtsDocSUPOPIS: TStringField;
    dtsFVDUs: TIBOQuery;
    dtsPOPUS: TIBOQuery;
    dtsPOPUSID: TIntegerField;
    dtsPOPUSEVIDENCE: TIntegerField;
    dtsPOPUSKOD: TStringField;
    dtsPOPUSPOPIS: TStringField;
    dtsPUUS: TIBOQuery;
    dtsPUUSID: TIntegerField;
    dtsPUUSEVIDENCE: TIntegerField;
    dtsPUUSKOD: TStringField;
    dtsPUUSPOPIS: TStringField;
    dtsFVDUsID: TIntegerField;
    dtsFVDUsEVIDENCE: TIntegerField;
    dtsFVDUsKOD: TStringField;
    dtsFVDUsPOPIS: TStringField;
    dtsZSUSID: TIntegerField;
    dtsZSUSEVIDENCE: TIntegerField;
    dtsZSUSKOD: TStringField;
    dtsZSUSPOPIS: TStringField;
    dtsKTLUsers: TIBOQuery;
    dtsKTLUsersUSERID: TStringField;
    dtsKTLUsersZNACKA: TStringField;
    dtsKTLFaktPol: TIBOQuery;
    dtsKTLFaktPolPLATBA_TEXT: TStringField;
    dtsKTLUsersJMENO: TStringField;
    dtsFVTextyHead: TIBOQuery;
    dtsFVTextyHeadID: TIntegerField;
    dtsFVTextyHeadPOPIS: TStringField;
    dtsFVTextyHeadTEXTCS: TMemoField;
    dtsDocSUCOLOR: TIntegerField;
    dtsZSUSCOLOR: TIntegerField;
    dtsFVDUsCOLOR: TIntegerField;
    dtsPOPUSCOLOR: TIntegerField;
    dtsPUUSCOLOR: TIntegerField;
    dtsKTLUsersBARVA: TIntegerField;
    KTLFVUctyMENA: TStringField;
    KTLDruhPlatbyNOMODIFY: TStringField;
    KTLFVTextyTYP: TSmallintField;
    dtsFVTextyAll: TIBOQuery;
    dtsFVTextyAllID: TIntegerField;
    dtsFVTextyAllTYP: TSmallintField;
    dtsFVTextyAllPOPIS: TStringField;
    dtsFVTextyAllTEXTCS: TMemoField;
    dtsFVTextyHeadTYP: TSmallintField;
    ibsFillFVTexty: TIB_Script;
    ibsFillJednotky: TIB_Script;
    ibsFillMeny: TIB_Script;
    ibsFillFVTyp: TIB_Script;
    ibsFillUhrady: TIB_Script;
    ibsFillUcty: TIB_Script;
    ibsFillLKWTypy: TIB_Script;
    ibsFillNakVykTyp: TIB_Script;
    ibsFillZSTyp: TIB_Script;
    procedure gbDefaultModuleInitModule(Sender: TObject);
    procedure KTLPodminkyAfterOpen(DataSet: TDataSet);
    procedure POPKTLTypyAfterOpen(DataSet: TDataSet);
    procedure POPKTLTypyNewRecord(DataSet: TDataSet);
    procedure ZSKTLNakVykNewRecord(DataSet: TDataSet);
    procedure KTLDruhPlatbyBeforePost(DataSet: TDataSet);
    procedure KTLDruhPlatbyNewRecord(DataSet: TDataSet);
    procedure UpdateOstatniTexty(DataSet: TDataSet);
    procedure dtsFVTextyHeadNewRecord(DataSet: TDataSet);
    procedure KTLFVTextyAfterOpen(DataSet: TDataSet);
    procedure KTLJednotkyAfterOpen(DataSet: TDataSet);
    procedure KTLMenyAfterOpen(DataSet: TDataSet);
    procedure KTLFVTypAfterOpen(DataSet: TDataSet);
    procedure KTLFVUhradaAfterOpen(DataSet: TDataSet);
    procedure KTLFVUctyAfterOpen(DataSet: TDataSet);
    procedure KTLAutaAfterOpen(DataSet: TDataSet);
    procedure ZSKTLNakVykAfterOpen(DataSet: TDataSet);
    procedure KTLTypyAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function GetUserColor(aUserZnacka: string): TColor;
    function GetKoserUcet(aMena: string; aUcet: string): Boolean;
  end;

var
  AppCompsDM: TAppCompsDM;

function GetAppCompsDM: TAppCompsDM;

implementation

uses appdmduSystem, AOPConstDefUnit, fMessageDlg, cxDBLookupEdit, Devexptls;

{$R *.DFM}

const
  AOPSEZNAMSELECT = 'SELECT AOPKOD,KODZEME,NAZEV,ADRESA3,PSC,SKUPINA,K1,K2,ICO,DIC,EMAIL,STATEUSER, KOD_TIMO, KOD_RAAL, SPLATNOST FROM AOPSEZNAM ORDER BY NAZEV';
  AOPSELECT       = 'SELECT AOPKOD,KODZEME,NAZEV,ADRESA3,PSC,SKUPINA,K1,K2,ICO,DIC,EMAIL,STATEUSER,KOD_TIMO, KOD_RAAL, SPLATNOST FROM AOP ORDER BY NAZEV';

function GetAppCompsDM: TAppCompsDM;
begin
  if AppCompsDM = nil then
    AppCompsDM := TAppCompsDM.Create(Application);
  Result       := AppCompsDM;
end;

procedure TAppCompsDM.gbDefaultModuleInitModule(Sender: TObject);
begin

  KTLMeny.Active        := True;
  KTLJednotky.Active    := True;
  KTLFVTexty.Active     := True;
  KTLFVTexty.Active     := True;
  dtsFVTextyHead.Active := True;
  KTLFVTyp.Active       := True;
  KTLFVUhrada.Active    := True;
  KTLFVUcty.Active      := True;

  KTLDruhPlatby.Active := True;
  KTLPodminky.Active   := True;
  KTLAuta.Active       := True;
  KTLTypy.Active       := True;

  ZSKTLNakVyk.Active := True;

  POPKTLTypy.Active := True;

  dtsFVDUs.Active := True;
  dtsZSUS.Active  := True;
  dtsDocSU.Active := True;
  dtsPOPUS.Active := True;
  dtsPUUS.Active  := True;

  dtsKTLUsers.Active := True;
  dtsFVTextyAll.Open;
  dtsKTLFaktPol.Active := True;

  KTLDPH.Active := True;

  if not KTLDPH.Locate('PROCDPH', 21, []) then
    KTLDPH.InsertRecord(['21%', 21]);

end;

procedure TAppCompsDM.KTLAutaAfterOpen(DataSet: TDataSet);
begin
  if KTLAuta.IsEmpty then
  begin
    ibsFillLKWTypy.Execute;
    KTLAuta.Refresh;
  end;
end;

procedure TAppCompsDM.KTLDruhPlatbyBeforePost(DataSet: TDataSet);
begin
  if KTLDruhPlatbyKOD.AsString = emptystr then
  begin
    DisplayError(SERR_REQUIED, 'Pole Kód musí obsahovat zkratku pro platbu.');
    SysUtils.Abort;
  end;
end;

procedure TAppCompsDM.KTLDruhPlatbyNewRecord(DataSet: TDataSet);
begin
  KTLDruhPlatbyNOMODIFY.AsString := 'F';
end;

procedure TAppCompsDM.KTLFVTextyAfterOpen(DataSet: TDataSet);
begin
  if KTLFVTexty.IsEmpty then
  begin
    ibsFillFVTexty.Execute;
    KTLFVTexty.Refresh;
  end;
end;

procedure TAppCompsDM.KTLFVTypAfterOpen(DataSet: TDataSet);
begin
  if KTLFVTyp.IsEmpty then
  begin
    ibsFillFVTyp.Execute;
    KTLFVTyp.Refresh;
  end;
end;

procedure TAppCompsDM.KTLFVUctyAfterOpen(DataSet: TDataSet);
begin
  if KTLFVUcty.IsEmpty then
  begin
    ibsFillUcty.Execute;
    KTLFVUcty.Refresh;

  end;
end;

procedure TAppCompsDM.KTLFVUhradaAfterOpen(DataSet: TDataSet);
begin
  if KTLFVUhrada.IsEmpty then
  begin
    ibsFillUhrady.Execute;
    KTLFVUhrada.Refresh;
  end;
end;

procedure TAppCompsDM.KTLJednotkyAfterOpen(DataSet: TDataSet);
begin
  if KTLJednotky.IsEmpty then
  begin
    ibsFillJednotky.Execute;
    KTLJednotky.Refresh;
  end;
end;

procedure TAppCompsDM.KTLMenyAfterOpen(DataSet: TDataSet);
begin
  if KTLMeny.IsEmpty then
  begin
    ibsFillMeny.Execute;
    KTLMeny.Refresh;
  end;
end;

procedure TAppCompsDM.KTLPodminkyAfterOpen(DataSet: TDataSet);
begin
  if KTLPodminky.IsEmpty then
  begin
    KTLPodminky.insert;
    KTLPodminkyPopis.AsString := 'Dohodnuté podmínky';
    KTLPodminkyObsah.Assign(dmdSystem.FirmaUTextPrikaz);
    KTLPodminky.post;

    KTLPodminky.insert;
    KTLPodminkyPopis.AsString := 'Potvrzení objednávky';
    KTLPodminkyObsah.Assign(dmdSystem.FirmaUTextPotvrzeni);
    KTLPodminky.post;

    KTLPodminky.insert;
    KTLPodminkyPopis.AsString := 'Platební podmínky';
    KTLPodminkyObsah.Assign(dmdSystem.FirmaUTextPrikaz2);
    KTLPodminky.post;
  end;

end;

procedure TAppCompsDM.KTLTypyAfterOpen(DataSet: TDataSet);
begin
  if KTLTypy.IsEmpty then
  begin
    ibsFillZSTyp.Execute;
    KTLTypy.Refresh;
  end;
end;

procedure TAppCompsDM.POPKTLTypyAfterOpen(DataSet: TDataSet);
begin
  if POPKTLTypy.IsEmpty then
  begin
    POPKTLTypy.InsertRecord(['1', 'Poptávka']);
    POPKTLTypy.InsertRecord(['2', 'Nabídka']);
  end;

end;

procedure TAppCompsDM.POPKTLTypyNewRecord(DataSet: TDataSet);
begin
  POPKTLTypyKOD.AsInteger := POPKTLTypy.RecordCount;
end;

procedure TAppCompsDM.UpdateOstatniTexty(DataSet: TDataSet);
begin
  if dtsFVTextyHead.Active then
    dtsFVTextyHead.Refresh;
  if KTLFVTexty.Active then
    KTLFVTexty.Refresh;
end;

procedure TAppCompsDM.ZSKTLNakVykAfterOpen(DataSet: TDataSet);
begin
  if ZSKTLNakVyk.IsEmpty then
  begin
    ibsFillNakVykTyp.Execute;
    ZSKTLNakVyk.Refresh;
  end;
end;

procedure TAppCompsDM.ZSKTLNakVykNewRecord(DataSet: TDataSet);
begin
  ZSKTLNakVykNOMODIFY.AsString := 'F';
end;

constructor TAppCompsDM.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Kontrola existence dmdSystem
  if not Assigned(dmdSystem) then
    Application.CreateForm(TdmdSystem, dmdSystem);

end;

procedure TAppCompsDM.dtsFVTextyHeadNewRecord(DataSet: TDataSet);
begin
  dtsFVTextyHeadTYP.AsInteger := 1;
end;

function TAppCompsDM.GetKoserUcet(aMena, aUcet: string): Boolean;
begin
  Result := True;
  if (aMena <> '') then
    if KTLFVUcty.Locate('ZKRATKA', aUcet, []) then
    begin
      if KTLFVUctyMENA.AsString = aMena then
        Result := True
      else
        Result := False;
    end;
end;

function TAppCompsDM.GetUserColor(aUserZnacka: string): TColor;
var
  aColor: Integer;
begin
  dtsKTLUsers.Active := True;

  if dtsKTLUsers.Locate('ZNACKA', aUserZnacka, []) then
    aColor := dtsKTLUsersBARVA.AsInteger
  else
    aColor := -1;
  Result   := ColorToRGB(aColor);
end;

end.
