unit FVConstDefUnit;

interface

const

  { Typy faktur }
  fvTypText = 0;
  fvTypZasilka = 1;
  fvTypHromadna = 2;

  {FV 1300 -1399}
  SERR_FV_INSERTPOLOZKA   = 'Nepoda�ilo se zalo�it polo�ku faktury.';
  SERR_FV_UPDATECENA      = 'Nepoda�ilo se aktualizovat cenu faktury.';
  SERR_FV_UPDATEPLATCE    = 'Nepoda�ilo se aktualizovat v�slednou cenu v evidenci Pl�tci.';
  SERR_FV_LIKVIDACE       = 'Nepoda�ilo se zlikvidovat fakturu.';
  SERR_FV_COPY_ZSFAKTURA  = 'Lze kop�rovat pouze faktury, kter� nemaj� vazbu na evidenci Z�silky. Faktura nebude zkop�rov�na.';

  {Informacni hlasky}
  SINF_FV_OKEXPORT        = 'Export vydan�ch faktur prob�hl �sp�n�.';

resourcestring
  // SFakturujemeVMPEpravn   = 'Fakturujeme v�m p�epravn�';
  SJeToSprVn              = 'Je to spr�vn�?';
  SNovSloFaktury          = 'Nov� ��slo faktury';
  SUhrazenZLohy           = 'Uhrazen� z�lohy';

  SPoleMNaNesmBTPrZdn     = 'Pole M�na nesm� b�t pr�zdn�.';
  SProveTeZruEnVazbyVeFormulIPlTciModuluZSilkyAPakBudeteMociOdstranitFakturu =
    'Prove�te zru�en� vazby ve formul��i Pl�tci modulu Z�silky a pak budete moci odstranit fakturu.';
  SVPoliFakturaZapiTeNZevSelnAdyAKliknTeNaTlaTkoZapsat =
    'V poli Faktura zapi�te n�zev ��seln� �ady a klikn�te na tla��tko Zapsat.';
  SZapisujeteUhrazenouZLohuKterNemZPornouHodnotu =
    'Zapisujete uhrazenou z�lohu kter� nem� z�pornou hodnotu.';
  SOpravduChceteOdstranitVybraneZaznamy =
    'Opravdu chcete odstranit vybrane zaznamy?';

  smfv_OkRenameFaktura       = 'Opravdu chcete zm�nit ��slo faktury?';
  smfv_UpdateCenaFVZasilka   = 'Chcete upravit skute�n� fakturovanou cenu v z�silce?';
  smfv_ErrorRemoveFVHromadna = 'Fakturu nelze odstranit !!!' + #13#10 +
    'Prove�te zru�en� vazby v seznamu hroman� faktury' + #13#10 +
    'a potom m��ete fakturu zru�it';

  smfv_ErrorCreateFaktura = 'Chyba p�i zakl�d�n� nov� faktury !!!';
  smfv_ErrorCreatePolozka = 'Chyba p�i zakl�d�n� nov� polo�ky faktury !!!';
  smfv_ErrorRenameFaktura = 'Chyba p�i zm�n� ��sla faktury !!!';
  smfv_ErrorFakturaNotFound = 'Faktura %s nebyla nalezena.';


  FV_DEL_SQL = 'DELETE FROM FV WHERE SID = :SID';
  FVPOL_DEL_SQL = 'DELETE FROM FVPOL WHERE ID = :ID';
  FVSQL_UpdateFaktura = 'update FV set Faktura = :FAKTURA where SID = :SID';

  FVSQL_UPDATEUSERSTATE = 'update FV set STATEUSER = :STATEUSER where SID = :SID';
  FVSQL_FREE_ZS = 'UPDATE FV SET REF_ZASILKA = NULL, REFPLATCE = NULL, TYP = 0 WHERE SID = :SID';
  FVSQL_FREE_PLATCE = 'UPDATE ZSPLATCI SET REFFV = NULL WHERE REFFV = :SID';
  FVSQL_UPDATE_PLATCE = 'UPDATE ZSPLATCI SET CENASUMAKC = :CENASUMAKC WHERE ID = :ID';
  FVSQL_PRIPOJ_PLATCE = 'UPDATE ZSPLATCI SET REFFV = :REFFV WHERE ID = :ID';

  FVTEXTYSQLUPDATE = 'UPDATE FVTEXTY SET POPIS = :POPIS, TEXTCS = :TEXTCS WHERE ID = :ID';
  FVTEXTYSQLINSERT = 'INSERT INTO FVTEXTY (POPIS, TEXTCS ) VALUES (:POPIS,:TEXTCS)';
  FVTEXTYSQLDELETE = 'DELETE FROM FVTEXTY WHERE ID = :ID';

implementation

end.
