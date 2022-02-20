unit ZSGenFVUnit;

interface
uses classes;
type
  TZSGenFvImportFields = class(TObject)
  public
    im_spz: boolean;
    im_nakl: boolean; // Nakladka
    im_nakld: boolean; // Nakladka Datum
    im_vykl: boolean; // Vykladka
    // im_vykld: boolean; // Vykladka Datum

    im_zasilka:boolean; // Nase pozice
    im_sp: boolean; // Popis
    im_sh: boolean; // Hmotnost

    im_codepl: boolean; // CODE platce

    im_plpodminky:Boolean;  // Pole Platce Podminky

    constructor MyCreate;
  end;

implementation

{ TZSGenFvImportFields }

constructor TZSGenFvImportFields.MyCreate;
begin
  inherited Create;
  im_spz := true;
  im_nakl := true;
  im_nakld := true;
  im_vykl := true;
  //im_vykld := false;
  im_zasilka := true;
  im_sp := true;
  im_sh := false;
  im_codepl := true;
  im_plpodminky := false;

end;

end.

