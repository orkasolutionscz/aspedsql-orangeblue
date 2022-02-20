unit FVConstDefUnit;

interface

const

  { Typy faktur }
  fvTypText = 0;
  fvTypZasilka = 1;
  fvTypHromadna = 2;

  {FV 1300 -1399}
  SERR_FV_INSERTPOLOZKA   = 'Nepodaøilo se založit položku faktury.';
  SERR_FV_UPDATECENA      = 'Nepodaøilo se aktualizovat cenu faktury.';
  SERR_FV_UPDATEPLATCE    = 'Nepodaøilo se aktualizovat výslednou cenu v evidenci Plátci.';
  SERR_FV_LIKVIDACE       = 'Nepodaøilo se zlikvidovat fakturu.';
  SERR_FV_COPY_ZSFAKTURA  = 'Lze kopírovat pouze faktury, které nemají vazbu na evidenci Zásilky. Faktura nebude zkopírována.';

  {Informacni hlasky}
  SINF_FV_OKEXPORT        = 'Export vydaných faktur probìhl úspìšnì.';

resourcestring
  // SFakturujemeVMPEpravn   = 'Fakturujeme vám pøepravné';
  SJeToSprVn              = 'Je to správnì?';
  SNovSloFaktury          = 'Nové èíslo faktury';
  SUhrazenZLohy           = 'Uhrazené zálohy';

  SPoleMNaNesmBTPrZdn     = 'Pole Mìna nesmí být prázdné.';
  SProveTeZruEnVazbyVeFormulIPlTciModuluZSilkyAPakBudeteMociOdstranitFakturu =
    'Proveïte zrušení vazby ve formuláøi Plátci modulu Zásilky a pak budete moci odstranit fakturu.';
  SVPoliFakturaZapiTeNZevSelnAdyAKliknTeNaTlaTkoZapsat =
    'V poli Faktura zapište název èíselné øady a kliknìte na tlaèítko Zapsat.';
  SZapisujeteUhrazenouZLohuKterNemZPornouHodnotu =
    'Zapisujete uhrazenou zálohu která nemá zápornou hodnotu.';
  SOpravduChceteOdstranitVybraneZaznamy =
    'Opravdu chcete odstranit vybrane zaznamy?';

  smfv_OkRenameFaktura       = 'Opravdu chcete zmìnit èíslo faktury?';
  smfv_UpdateCenaFVZasilka   = 'Chcete upravit skuteènì fakturovanou cenu v zásilce?';
  smfv_ErrorRemoveFVHromadna = 'Fakturu nelze odstranit !!!' + #13#10 +
    'Proveïte zrušení vazby v seznamu hromané faktury' + #13#10 +
    'a potom mùžete fakturu zrušit';

  smfv_ErrorCreateFaktura = 'Chyba pøi zakládání nové faktury !!!';
  smfv_ErrorCreatePolozka = 'Chyba pøi zakládání nové položky faktury !!!';
  smfv_ErrorRenameFaktura = 'Chyba pøi zmìnì èísla faktury !!!';
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
