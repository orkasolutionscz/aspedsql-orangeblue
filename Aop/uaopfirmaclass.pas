unit uaopfirmaclass;

interface

type
  TAOPFirmaCustomClass = class(TObject)
  public
    AopKod        : string;
    Nazev         : string;
    DisplayAdress : string;
    Adresa1       : string;
    Adresa2       : string;
    Adresa3       : string;
    Psc           : string;
    Zeme          : string;
    ZemeKod       : string;
    ICO           : string;
    DIC           : string;
    Ucet_Cislo    : string;
    Ucet_Banka    : string;
    Fax           : string;
    Telefon       : string;
    GSM           : string;
    Email         : string;
    WWW           : string;
    SelecteKontakt: Integer; // Vybraný kontakt
    Splatnost     : Integer;
    Vlastnik      : string;
    NaselAdresu   : Boolean;
    constructor Create;
  end;

  TAOPFirmaClass = class(TAOPFirmaCustomClass)
  private
    procedure intFillValues;
    procedure SelectAndFill;
    procedure GetDefaultKontakt;
  public
    constructor Create(aAopKod: string; aShowDialog: Boolean);

  end;

implementation

uses
  SysUtils, IBODataset, appdmduSystem, AOPdmdu, AOPfrmuPickUser, Controls,
  JclStrings, uAOPConstDefUnit;

{ TAOPFirmaCustomClass }

constructor TAOPFirmaCustomClass.Create;
begin
  AopKod         := EmptyStr;
  Adresa1        := EmptyStr;
  Adresa2        := EmptyStr;
  Adresa3        := EmptyStr;
  DisplayAdress  := EmptyStr;
  Nazev          := EmptyStr;
  Psc            := EmptyStr;
  Zeme           := EmptyStr;
  ZemeKod        := EmptyStr;
  ICO            := EmptyStr;
  DIC            := EmptyStr;
  Ucet_Cislo     := EmptyStr;
  Ucet_Banka     := EmptyStr;
  Fax            := EmptyStr;
  Telefon        := EmptyStr;
  GSM            := EmptyStr;
  Email          := EmptyStr;
  WWW            := EmptyStr;
  Splatnost      := 14;
  SelecteKontakt := 0;
  NaselAdresu    := false;
end;

{ TAOPFirmaNewClass }

constructor TAOPFirmaClass.Create(aAopKod: string; aShowDialog: Boolean);
begin
  inherited Create;
  AopKod := aAopKod;
  if aShowDialog then
    SelectAndFill
  else
    intFillValues;
end;

procedure TAOPFirmaClass.GetDefaultKontakt;
var
  dts: TIBOQuery;
begin
  dts := TIBOQuery.Create(nil);
  try
    dts.IB_Connection := dmdSystem.IBOMainDB;
    dts.SQL.Add('select first 1 aopjmena.id, aopjmena.email,aopjmena.fax,aopjmena.telefon1,aopjmena.mobil ');
    dts.SQL.Add('from aopjmena');
    dts.SQL.Add('where ( (aopjmena.aopkod = ' + StrSingleQuote(Self.AopKod) + ' )');
    dts.SQL.Add(' and (aopjmena.isvychozi = ' + StrSingleQuote('T') + '))');
    try
      dts.Open;
      Self.SelecteKontakt := dts.Fields[0].AsInteger;
      Self.Email          := dts.Fields[1].AsString;
      Self.Fax            := dts.Fields[2].AsString;
      Self.Telefon        := dts.Fields[3].AsString;
      Self.GSM            := dts.Fields[4].AsString;
      dts.Close;
    except
      Self.SelecteKontakt := 0;
      Self.Email          := '';
      Self.Fax            := '';
      Self.Telefon        := '';
      Self.GSM            := '';
    end;
  finally
    dts.Free;
  end;
end;

procedure TAOPFirmaClass.intFillValues;
begin
  if Self.AopKod <> '' then
    AOPdmd.mod_OpenRecord(Self.AopKod);

  if AOPdmd.dtsAOP.RecordCount > 0 then
  begin
    NaselAdresu := true;
    // AopKod      := AOPdmd.dtsAOPAOPKOD.AsVariant;
    Nazev         := AOPdmd.dtsAOPNAZEV.AsString;
    Adresa1       := AOPdmd.dtsAOPADRESA1.AsString;
    Adresa2       := AOPdmd.dtsAOPADRESA2.AsString;
    Adresa3       := AOPdmd.dtsAOPADRESA3.AsString;
    DisplayAdress := Nazev;
    if Adresa1 <> EmptyStr then
      DisplayAdress := DisplayAdress + ',  ' + Adresa1;

    if Adresa3 <> EmptyStr then
      DisplayAdress := DisplayAdress + ',  ' + Adresa3;
    Zeme            := AOPdmd.dtsAOPPOPISZEME.AsString;
    ZemeKod         := AOPdmd.dtsAOPKODZEME.AsString;
    Psc             := AOPdmd.dtsAOPPSC.AsString;
    ICO             := AOPdmd.dtsAOPICO.AsString;
    DIC             := AOPdmd.dtsAOPDIC.AsString;
    Ucet_Cislo      := AOPdmd.dtsAOPUCET.AsString;
    Ucet_Banka      := AOPdmd.dtsAOPBANKAKOD.AsString;
    Splatnost       := AOPdmd.dtsAOPSPLATNOST.AsInteger;
    WWW             := AOPdmd.dtsAOPWWW.AsString;
    Vlastnik        := AOPdmd.dtsAOPVLASTNIK.AsString;
    GetDefaultKontakt;
  end;

end;

procedure TAOPFirmaClass.SelectAndFill;
var
  frmTemp: TfrmAOPSelectUser;
begin
  frmTemp := TfrmAOPSelectUser.Create(nil);
  try
    try
      if AopKod <> EmptyStr then
        frmTemp.MasterDs.DataSet.Locate(SAOPKEYFIELDNAME, AopKod, []);
      if frmTemp.ShowModal = mrok then
      begin
        Self.NaselAdresu   := true;
        Self.AopKod        := frmTemp.dtsAOPLookAOPKOD.AsString;
        Self.Nazev         := frmTemp.dtsAOPLookNAZEV.AsString;
        Self.Adresa1       := frmTemp.dtsAOPLookADRESA1.AsString;
        Self.Adresa2       := frmTemp.dtsAOPLookADRESA2.AsString;
        Self.Adresa3       := frmTemp.dtsAOPLookADRESA3.AsString;
        Self.DisplayAdress := Nazev;
        if Self.Adresa1 <> EmptyStr then
          Self.DisplayAdress := Self.DisplayAdress + ',  ' + Self.Adresa1;

        if Self.Adresa3 <> EmptyStr then
          Self.DisplayAdress := Self.DisplayAdress + ',  ' + Self.Adresa3;
        Zeme                 := frmTemp.dtsAOPLookZEME_POPIS.AsString;

        Self.ZemeKod        := frmTemp.dtsAOPLookKODZEME.AsString;
        Self.Psc            := frmTemp.dtsAOPLookPSC.AsString;
        Self.ICO            := frmTemp.dtsAOPLookICO.AsString;
        Self.DIC            := frmTemp.dtsAOPLookDIC.AsString;
        Self.Ucet_Cislo     := frmTemp.dtsAOPLookUCET.AsString;
        Self.Ucet_Banka     := frmTemp.dtsAOPLookBANKAKOD.AsString;
        Self.Splatnost      := frmTemp.dtsAOPLookSPLATNOST.AsInteger;
        Self.SelecteKontakt := frmTemp.dtsKontaktyID.AsInteger;
        Self.Email          := frmTemp.dtsKontaktyEmail.AsString;
        Self.WWW            := frmTemp.dtsAOPLookWWW.AsString;
        Self.Fax            := frmTemp.dtsKontaktyFAX.AsString;
        Self.Telefon        := frmTemp.dtsKontaktyTELEFON1.AsString;
        Self.GSM            := frmTemp.dtsKontaktyMOBIL.AsString;
      end;
    except
      raise;
    end;

  finally
    frmTemp.Free;
  end;
end;

end.
