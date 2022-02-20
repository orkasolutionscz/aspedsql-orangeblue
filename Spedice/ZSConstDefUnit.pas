unit ZSConstDefUnit;

interface

const
  AM_KOMUNIKACE = 3; // Modul komunikace s pobockou
  histStateSystem = 9;
  HISTZSRemoveFV = 'Faktura [-]';

  { ZS 1100-1199}
  SERR_ZS_PLATCE_EMPTY  = 'Plátce není vybrán. Vyberte plátce z adresáøe firem.';
  SERR_ZS_HI_DELETE     = 'Není povoleno odstranit systémový záznam do historie.';
  SERR_ZS_HI_EDIT       = 'Nelze opravovat systémový záznam do historie.';
  SERR_ZS_CREA_HRFV     = 'Nelze vystavit hromadnou fakturu !!!';
  SERR_ZS_UPDATEPROVIZE = 'Nepodaøilo se aktualizovat výslednou provizi pro tuto pøepravu!';
  SERR_ZS_UPDATENAKVYK  = 'Nepodaøilo se aktualizovat datum a misto nakládky, vykládky!';
  SERR_ZS_UPDATEPLATCI  = 'Nepodaøilo se aktualizovat celkový souèet cen Plátcù pøepravy!';
  SERR_ZS_FAKTURAEXIST  = 'Aktualizace záznamu Pøepravy nelze provést. Je vystavená vydaná faktura.';

  {Informacni hlasky}
  SINF_CREATE_HRFV      = 'Hromadná faktura byla vytoøena.';

resourcestring
  SSystMovZZnamySlouKEvidenciDLeItChZmNVDatabZi = 'Systémové záznamy slouží k evidenci dùležitých zmìn v databázi.';
  SDoLoKChybPIAktualizaciPEpravyChcetePokraOvat = 'Došlo k chybì pøi aktualizaci pøepravy %s. Chcete pokraèovat?';
  // SFakturujemeVMPEpravn                         = 'Fakturujeme vám pøepravné';
  SSloFakturyJe                                 = 'Èíslo faktury je: %s';
  SZSilkaJeJiFakturovNa                         = 'Zásilka je již fakturována';
  sAvizoNakladky                                = 'Avízo nakládky: %s';
  sZSOkNewHrFaktura                             = 'Opravdu chcete vystavit hromadnou fakturu?';
  sZSWaitUpdateZasilky                          = 'Provádím aktualizaci tabulky pøeprav' + #13#10 +  'Aktuální záznam %d z celového poètu %d';
  sZSOkDeleteHistory                            = 'Chcete odstranit vybraný záznam historie?';
  smsz_ErrorZasilkaNotFound                     = 'Pøeprava %s nebyla nalezena';
  SPEpravaNebylaNalezenaVSeznamuPlatnChZZnam    = 'Pøeprava %s nebyla nalezena v seznamu platných záznamù';


  // TABULKA ZS
  SZS_F_AOPKODDOP = 'AOPKOD_DOP';
  SZS_F_AOPKODOBJ = 'AOPKOD_OBJ';
  SZS_F_JEFAKTURA = 'JEFAKTURA';
  SZS_F_ZASILKA = 'ZASILKA';
  SZS_F_INTPOZNAMKA = 'INTPOZNAMKA';
  SZS_F_PRIKAZ = 'PRIKAZ';
  SZS_F_VOZIDLO = 'VOZIDLO';
  SZS_F_AUTOSPZ = 'AUTOSPZ';
  SZS_F_CENADOPRAVCE = 'CENADOPRAVCE';
  SZS_F_CENADPHPROC = 'CENADPHPROC';
  SZS_F_CENAJEDNOTKA = 'CENAJEDNOTKA';
  SZS_F_CENAJEDNOTKY = 'CENAJEDNOTKY';
  SZS_F_CENAMENA = 'CENAMENA';
  SZS_F_CENAKURS = 'CENAKURS';
  SZS_F_CENASUMA = 'CENASUMA';

  SZS_F_CENAPLATCI = 'CENAPLATCI';
  SZS_F_CENASMLUVNI = 'CENASMLUVNI';
  SZS_F_CENASRAZKY = 'CENASRAZKY';
  SZS_F_CLO = 'CLO';
  SZS_F_DISPECER = 'DISPECER';
  SZS_F_STREDISKO = 'INTSTREDISKO';


  SZS_F_INTOBJ = 'INTOBJ';
  SZS_F_PODMINKY = 'PODMINKY';
  SZS_F_POZNAMKA = 'POZNAMKA';
  SZS_F_SUBSTRAT = 'SUBSTRAT';
  SZS_F_SUBSTRATINFO = 'SUBSTRATINFO';
  SZS_F_HMOTNOST = 'HMBRUTTO';
  SZS_F_HMTEXT = 'HMTEXT';
  SZS_F_TYP = 'TYP';

  //
  // TABULKA ZSPLATCI
  //
  // NAZVY POLI
  SZSP_F_AOPKOD = 'AOPKOD';
  SZSP_F_AOPNAZEV = 'NAZEV';
  SZSP_F_AOPPOBOCKA = 'ADRESA1';
  SZSP_F_AOPMESTO = 'ADRESA3';
  SZSP_F_CENADPHPROC = 'CENADPHPROC';
  SZSP_F_CENAJEDNOTKA = 'CENAJEDNOTKA';
  SZSP_F_CENAJEDNOTKY = 'CENAJEDNOTKY';
  SZSP_F_CENAMENA = 'CENAMENA';
  SZSP_F_CENAKURS = 'CENAKURS';
  SZSP_F_CENASMLUVNI = 'CENASMLUVNI';
  SZSP_F_CENASRAZKY = 'CENASRAZKY';
  SZSP_F_CENASUMA = 'CENASUMA';
  SZSP_F_CENASUMAKC = 'CENASUMAKC';
  SZSP_F_CO = 'CO';
  SZSP_F_FAKTURA = 'REFFV';
  SZSP_F_ID = 'ID';
  SZSP_F_PODMINKY = 'PODMINKY';
  SZSP_F_POZICE = 'POZICE';
  SZSP_F_CENADPH = 'CENADPH';

  //
  // TABULKA ZSNAKVYK
  //

  // ZSNAKVYK POLE
  SZSN_F_ID = 'ID';
  SZSN_F_ADRESAPOPIS = 'ADRESAPOPIS';
  SZSN_F_ADRESA3 = 'ADRESA3';
  SZSN_F_CAS = 'CAS';
  SZSN_F_DATUM = 'DATUM';
  SZSN_F_PORADI = 'PORADI';
  SZSN_F_PSC = 'PSC';
  SZSN_F_SPOJENI = 'SPOJENI';
  SZSN_F_TYP = 'TYP';
  SZSN_F_ZEMEKOD = 'ZEMEKOD';

  // POLE ZSPLATCISRAZKY
  SZSPS_F_ID = 'ID';
  SZSPS_F_REFPLATCE = 'REFPLATCE';
  SZSPS_F_CENATEXT = 'CENATEXT';
  SZSPS_F_CENAZAKLAD = 'CENAZAKLAD';
  SZSPS_F_CENAJEDNOTKA = 'CENAJEDNOTKA';
  SZSPS_F_CENAJEDNOTKY = 'CENAJEDNOTKY';
  SZSPS_F_CENASUMA = 'CENASUMA';




  {$IFDEF ASPEDSQL}
  {******************************************************************************
  *
  * N A Z V Y   P O L I
  *
  ******************************************************************************}

  SZSKEYFIELDNAME = 'SID';
  SZSKEYPARAMNAME = 'SID';

  // NakVyk

  SZSN_F_ZASILKA = 'REF_ZASILKA';
  //ZSPlatci
  SZSP_F_ZASILKA = 'REF_ZASILKA';

//------------------------------------------------------------------------------
// Zasilka parametry
//------------------------------------------------------------------------------

  // SZS_P_CISLODOKLADU  = 'CISLODOKLADU';
  SZS_P_INTPOZNAMKA = 'INTPOZNAMKA';
  SZS_P_ZASILKA = 'ZASILKA';
  SZS_P_NEWZASILKA  = 'ZASILKA';
  SZS_P_CISLODOKLADU =  'ZASILKA';
  SZS_P_INTOBJ = 'INTOBJ';
  // SZS_P_NEWZASILKA = '[NEW_ZASILKA';
  SZS_P_REF_ZSPODMINKY = 'REF_ZSPODMINKY';
  SZS_P_REF_POTVRZENI = 'REF_POTVRZENI';

  SZS_P_AOPKOD_DOP = 'AOPKOD_DOP';
  SZS_P_AOPKOD_OBJ = 'AOPKOD_OBJ';
  SZS_P_AUTOSPZ = 'AUTOSPZ';
  SZS_P_CENADOPRAVCE = 'CENADOPRAVCE';
  SZS_P_CENADPH = 'CENADPH';
  SZS_P_CENADPHPROC = 'CENADPHPROC';
  SZS_P_CENAJEDNOTKA = 'CENAJEDNOTKA';
  SZS_P_CENAJEDNOTKY = 'CENAJEDNOTKY';
  SZS_P_CENAMENA = 'CENAMENA';
  SZS_P_CENAKURS = 'CENAKURS';
  SZS_P_CENASMLUVNI = 'CENASMLUVNI';
  SZS_P_CENASRAZKY = 'CENASRAZKY';
  SZS_P_CENASUMA = 'CENASUMA';
  SZS_P_CLO = 'CLO';
  SZS_P_CREAID = 'CREAID';
  SZS_P_DISPECER = 'DISPECER';
  SZS_P_STREDISKO = 'INTSTREDISKO';

  SZS_P_JEFAKTURA = 'JEFAKTURA';
  SZS_P_PODMINKY = 'PODMINKY';
  SZS_P_POZNAMKA = 'POZNAMKA';
  SZS_P_PRIKAZ = 'PRIKAZ';
  SZS_P_SUBSTRAT = 'SUBSTRAT';
  SZS_P_SUBSTRATINFO = 'SUBSTRATINFO';
  SZS_P_HMOTNOST = 'HMBRUTTO';
  SZS_P_TYP = 'TYP';
  SZS_P_UPDID = 'UPDID';
  SZS_P_VOZIDLO = 'VOZIDLO';
  SZS_P_CENAPLATCI = 'CENAPLATCI';
  SZS_P_DATUM = 'DATUM';
  SZS_P_VDATUM = 'VDATUM';
  //  SZS_P_TYDEN = 'TYDEN';
  SZS_P_MESIC = 'MESIC';
  SZS_P_HMBRUTTO = 'HMBRUTTO';
  SZS_P_HMTEXT = 'HMTEXT';

  SZS_P_NPSC = 'NPSC';
  SZS_P_NSTAT = 'NSTAT';
  SZS_P_NMISTO = 'NMISTO';

  SZS_P_VMISTO = 'VMISTO';
  SZS_P_VPSC = 'VPSC';
  SZS_P_VSTAT = 'VSTAT';

  SZS_P_UPDDATE = 'UPDDATE';
  SZS_P_STATE = 'STATE';
  SZS_P_INTSTREDISKO = 'INTSTREDISKO';
  SZS_P_STATEUSER = 'STATEUSER';

//------------------------------------------------------------------------------
// ZSPLATCI parametrz
//------------------------------------------------------------------------------

  SZSP_P_AOPKOD = 'AOPKOD';
  SZSP_P_CENADPH = 'CENADPH';
  SZSP_P_CENADPHPROC = 'CENADPHPROC';
  SZSP_P_CENAJEDNOTKA = 'CENAJEDNOTKA';
  SZSP_P_CENAJEDNOTKY = 'CENAJEDNOTKY';
  SZSP_P_CENAKURS = 'CENAKURS';
  SZSP_P_CENAMENA = 'CENAMENA';
  SZSP_P_CENASMLUVNI = 'CENASMLUVNI';
  SZSP_P_CENASRAZKY = 'CENASRAZKY';
  SZSP_P_CENASUMA = 'CENASUMA';
  SZSP_P_CENASUMAKC = 'CENASUMAKC';
  SZSP_P_CO = 'CO';
  SZSP_P_CREAID = 'CREAID';
  SZSP_P_FAKTURA = 'REFFV';
  SZSP_P_ID = 'ID';
  SZSP_P_PODMINKY = 'PODMINKY';
  SZSP_P_POZICE = 'POZICE';
  SZSP_P_UPDID = 'UPDID';
  SZSP_P_ZASILKA = 'REF_ZASILKA';


  //
  // TABULKA ZSNAKVYK
  //
  // ZSNAKVYK PARAMETRY
  SZSN_P_ADRESAPOPIS = 'ADRESAPOPIS';
  SZSN_P_ADRESA3 = 'ADRESA3';
  SZSN_P_CAS = 'CAS';
  SZSN_P_DATUM = 'DATUM';
  SZSN_P_ID = 'ID';
  SZSN_P_PORADI = 'PORADI';
  SZSN_P_PSC = 'PSC';
  SZSN_P_SPOJENI = 'SPOJENI';
  SZSN_P_SPOJENIINFO = 'SPOJENIINFO';
  SZSN_P_TYP = 'TYP';
  SZSN_P_ZASILKA = 'ZASILKA';
  SZSN_P_ZEMEKOD = 'ZEMEKOD';

  // PARAMETRY ZSPLATCISRAZKY
  SZSPS_P_ID = 'ID';
  SZSPS_P_REFPLATCE = 'REFPLATCE';
  SZSPS_P_CENATEXT = 'CENATEXT';
  SZSPS_P_CENAZAKLAD = 'CENAZAKLAD';
  SZSPS_P_CENAJEDNOTKA = 'CENAJEDNOTKA';
  SZSPS_P_CENAJEDNOTKY = 'CENAJEDNOTKY';
  SZSPS_P_CENASUMA = 'CENASUMA';

  // TABULKA ZAHISTORIE
  SZSH_P_ID = 'ID';
  SZSH_P_ZASILKA = 'REF_ZASILKA';
  SZSH_P_HISTTEXT = 'HISTTEXT';
  SZSH_P_HISTTYP = 'HISTTYP';
  SZSH_P_CREAID = 'CREAID';
  SZSH_P_UPDID = 'UPDID';
  SZSH_P_STATE = 'STATE';




  {****************************************************************************}
  { SQL Procedury }
  {****************************************************************************}
  ZS_DEL_SQL = 'DELETE FROM ZS WHERE ZS.SID = :ZASILKA';
  ZSPOHYBY_DEL_SQL = 'DELETE FROM ZSNAKVYK WHERE ID = :ID';
  ZSPLATCI_DEL_SQL = 'DELETE FROM ZSPLATCI WHERE ID = :ID';
  ZS_INTPOZUPDATE_SQL ='UPDATE ZS SET INTPOZNAMKA = :INTPOZNAMKA WHERE SID = :SID';
  // ZS_USERSTATEUPDATE_SQL = 'UPDATE ZS SET STATEUSER = :STATEUSER WHERE SID = :SID';
  SZS_CHANGE_POZICE = 'UPDATE ZS SET ZASILKA = :ZASILKA WHERE SID = :SID';
  ZSPL_PLTACIFV_UPDATE = 'UPDATE ZSPLATCI SET REFFV = :REFFV WHERE ID = :ID';
  //ZSPL_PLTACIFV_CLEAR = 'UPDATE FV SET REFPLATCE = NULL WHERE SID = :SID'

   // ZSPLATZISRAZKY
  SQL_ZSPS_UPDATE = 'UPDATE ZSPLATSR SET CENAZAKLAD = :CENAZAKLAD, CENATEXT = :CENATEXT WHERE ID = :ID';
  SQL_ZSPS_INSERT = 'INSERT INTO ZSPLATSR (REFPLATCE, CENAZAKLAD, CENATEXT) VALUES (:REFPLATCE, :CENAZAKLAD, :CENATEXT)';
  SQL_ZSPS_DELETE = 'DELETE FROM ZSPLATSR WHERE ID = :ID';

  // KTL AUTA
  ZSAUTASQLUPDATE = 'UPDATE LKW_TYPY SET TYP = :TYP WHERE TYP = :TYP';
  ZSAUTASQLINSERT = 'INSERT INTO LKW_TYPY (TYP) VALUES (:TYP)';
  ZSAUTASQLDELETE = 'DELETE FROM LKW_TYPY WHERE TYP = :TYP';
  // KTL PODMINKY
  ZSPODMSQLUPDATE = 'UPDATE ZSPODMINKY SET POPIS = :POPIS, OBSAH = :OBSAH WHERE ID = :ID';
  ZSPODMSQLINSERT = 'INSERT INTO ZSPODMINKY (POPIS, OBSAH ) VALUES (:POPIS,:OBSAH)';
  ZSPODMSQLDELETE = 'DELETE FROM ZSPODMINKY WHERE ID = :ID';

  // KTL POHYBZ
  ZSPOHSQLUPDATE = 'UPDATE ZSKTLNAKVYK SET KOD = :KOD, POPIS = :POPIS WHERE KOD = :KOD';
  ZSPOHSQLINSERT = 'INSERT INTO ZSKTLNAKVYK (KOD, POPIS) VALUES (:KOD,:POPIS)';
  ZSPOHSQLDELETE = 'DELETE FROM ZSKTLNAKVYK WHERE KOD = :KOD';
  // KTL SABLOBY
  ZSSABLSQLUPDATE = 'UPDATE DOCSABLONY SET EVIDENCE = :EVIDENCE, POPIS = :POPIS, SABLONA = :SABLONA WHERE ID = :ID';
  ZSSABLSQLINSERT = 'INSERT INTO DOCSABLONY (EVIDENCE, POPIS, SABLONA ) VALUES (:EVIDENCE, :POPIS,:SABLONA)';
  ZSSABLSQLDELETE = 'DELETE FROM DOCSABLONY WHERE ID = :ID';

  // ---------------------------------------------------------------------------
  // KTL Zasilky typ plateb
  // ---------------------------------------------------------------------------
  ZSPLATBYSQLUPDATE = 'UPDATE ZSPLATCO SET KOD = :KOD, POPIS = :POPIS, TEXTFAKTURA = :TEXTFAKTURA WHERE KOD = :KOD';
  ZSPLATBYSQLINSERT = 'INSERT INTO ZSPLATCO (KOD, POPIS, TEXTFAKTURA) VALUES (:KOD, :POPIS, :TEXTFAKTURA)';
  ZSPLATBYSQLDELETE = 'DELETE FROM ZSPLATCO WHERE KOD = :KOD';

  ZSHIST_SQL_UPDATE = 'UPDATE ZSHIST SET HISTTEXT = :HISTTEXT, UPDID = :UPDID, UPDDATE= current_timestamp WHERE ID = :ID';
  ZSHIST_SQL_DELETE = 'DELETE FROM ZSHIST WHERE ID = :ID';


  {$ELSE}
  //***************************************************************************
  // D A O
  //***************************************************************************

  // Tabulka ZS
  SZSKEYFIELDNAME = 'ZASILKA';
  SZSN_F_ZASILKA  = 'ZASILKA';
  SZSP_F_ZASILKA  = 'ZASILKA';

  SZSKEYPARAMNAME = '[P_ZASILKA]';

  // Paramettry
  SZS_P_IntPoznamka = '[P_IntPoznamka]';
  SZS_P_ZASILKA = '[P_ZASILKA]';
  SZS_P_NEWZASILKA  = '[NEW_ZASILKA]';
  SZS_P_INTOBJ = '[P_INTOBJ]';
  SZS_P_REF_ZSPODMINKY = '[P_REF_ZSPODMINKY]';
  SZS_P_REF_POTVRZENI = '[P_REF_POTVRZENI]';

  SZS_P_AOPKOD_DOP = '[P_AOPKOD_DOP]';
  SZS_P_AOPKOD_OBJ = '[P_AOPKOD_OBJ]';
  SZS_P_AUTOSPZ = '[P_AUTOSPZ]';
  SZS_P_CENADOPRAVCE = '[P_CENADOPRAVCE]';
  SZS_P_CENADPH = '[P_CENADPH]';
  SZS_P_CENADPHPROC = '[P_CENADPHPROC]';
  SZS_P_CENAJEDNOTKA = '[P_CENAJEDNOTKA]';
  SZS_P_CENAJEDNOTKY = '[P_CENAJEDNOTKY]';
  SZS_P_CENAMENA = '[P_CENAMENA]';
  SZS_P_CENAKURS = '[P_CENAKURS]';
  SZS_P_CENASMLUVNI = '[P_CENASMLUVNI]';
  SZS_P_CENASRAZKY = '[P_CENASRAZKY]';
  SZS_P_CENASUMA = '[P_CENASUMA]';
  SZS_P_CLO = '[P_CLO]';
  SZS_P_CREAID = '[P_CREAID]';
  SZS_P_DISPECER = '[P_DISPECER]';
  SZS_P_STREDISKO = '[P_intstredisko]';

  SZS_P_JEFAKTURA = '[P_JEFAKTURA]';
  SZS_P_PODMINKY = '[P_PODMINKY]';
  SZS_P_POZNAMKA = '[P_POZNAMKA]';
  SZS_P_PRIKAZ = '[P_PRIKAZ]';
  SZS_P_SUBSTRAT = '[P_SUBSTRAT]';
  SZS_P_SUBSTRATINFO = '[P_SUBSTRATINFO]';
  SZS_P_HMOTNOST = '[P_HMBRUTTO]';
  SZS_P_TYP = '[P_TYP]';
  SZS_P_UPDID = '[P_UPDID]';
  SZS_P_VOZIDLO = '[P_VOZIDLO]';
  SZS_P_CENAPLATCI = '[P_CENAPLATCI]';
  SZS_P_DATUM = '[P_DATUM]';
  SZS_P_VDATUM = '[P_VDATUM]';
  //  SZS_P_TYDEN = '[P_TYDEN]';
  SZS_P_MESIC = '[P_MESIC]';
  SZS_P_HMBRUTTO = '[P_HMBRUTTO]';
  SZS_P_HMTEXT = '[P_HMTEXT]';

  //SZS_P_NAKLADKA = '[P_NAKLADKA]'; // Vyrazeno ve verzi 5.0
  SZS_P_NPSC = '[P_NPSC]';
  SZS_P_NSTAT = '[P_NSTAT]';
  SZS_P_NMISTO = '[P_NMISTO]';

  //SZS_P_VYKLADKA = '[P_VYKLADKA]'; // Vyrazeno ve verzi 5.0
  SZS_P_VMISTO = '[P_VMISTO]';
  SZS_P_VPSC = '[P_VPSC]';
  SZS_P_VSTAT = '[P_VSTAT]';

  SZS_P_UPDDATE = '[P_UPDDATE]';
  SZS_P_STATE = '[P_STATE]';
  SZS_P_INTSTREDISKO = '[P_INTSTREDISKO]';
  SZS_P_STATEUSER = '[P_STATEUSER]';

  //
  // Tabulka ZSPLATCI
  //
  // Parametry
  SZSP_P_AOPKOD = '[P_AOPKOD]';
  SZSP_P_CENADPH = '[P_CENADPH]';
  SZSP_P_CENADPHPROC = '[P_CENADPHPROC]';
  SZSP_P_CENAJEDNOTKA = '[P_CENAJEDNOTKA]';
  SZSP_P_CENAJEDNOTKY = '[P_CENAJEDNOTKY]';
  SZSP_P_CENAKURS = '[P_CENAKURS]';
  SZSP_P_CENAMENA = '[P_CENAMENA]';
  SZSP_P_CENASMLUVNI = '[P_CENASMLUVNI]';
  SZSP_P_CENASRAZKY = '[P_CENASRAZKY]';
  SZSP_P_CENASUMA = '[P_CENASUMA]';
  SZSP_P_CENASUMAKC = '[P_CENASUMAKC]';
  SZSP_P_CO = '[P_CO]';
  SZSP_P_CREAID = '[P_CREAID]';
  SZSP_P_FAKTURA = '[P_FAKTURA]';
  SZSP_P_ID = '[P_ID]';
  SZSP_P_PODMINKY = '[P_PODMINKY]';
  SZSP_P_POZICE = '[P_POZICE]';
  SZSP_P_REFPLATCE = '[P_REFPLATCE]';
  SZSP_P_UPDID = '[P_UPDID]';
  SZSP_P_ZASILKA = '[P_ZASILKA]';


  //
  // Tabulka ZSNAKVYK
  //


  // ZSNakVyk Parametry
  SZSN_P_ADRESAPOPIS = '[P_ADRESAPOPIS]';
  SZSN_P_ADRESA3 = '[P_ADRESA3]';
  SZSN_P_CAS = '[P_CAS]';
  SZSN_P_DATUM = '[P_DATUM]';
  SZSN_P_ID = '[P_ID]';
  SZSN_P_PORADI = '[P_PORADI]';
  SZSN_P_PSC = '[P_PSC]';
  SZSN_P_SPOJENI = '[P_SPOJENI]';
  SZSN_P_SPOJENIINFO = '[P_SPOJENIINFO]';
  SZSN_P_TYP = '[P_TYP]';
  SZSN_P_ZASILKA = '[P_ZASILKA]';
  SZSN_P_ZEMEKOD = '[P_ZEMEKOD]';


  // Parametry ZSPlatciSrazky
  SZSPS_P_ID = '[P_ID]';
  SZSPS_P_REFPLATCE = '[P_REFPLATCE]';
  SZSPS_P_CENATEXT = '[P_CENATEXT]';
  SZSPS_P_CENAZAKLAD = '[P_CENAZAKLAD]';
  SZSPS_P_CENAJEDNOTKA = '[P_CENAJEDNOTKA]';
  SZSPS_P_CENAJEDNOTKY = '[P_CENAJEDNOTKY]';
  SZSPS_P_CENASUMA = '[P_CENASUMA]';

  // Tabulka ZAHistorie
  SZSH_P_ID = '[P_ID]';
  SZSH_P_ZASILKA = '[P_ZASILKA]';
  SZSH_P_HISTTEXT = '[P_HISTTEXT]';
  SZSH_P_HISTTYP = '[P_HISTTYP]';
  SZSH_P_CREAID = '[P_CREAID]';
  SZSH_P_UPDID = '[P_UPDID]';
  SZSH_P_STATE = '[P_STATE]';


  {****************************************************************************}
  {****************************************************************************}
  { SQL Procedury }
  {****************************************************************************}
  {****************************************************************************}

  ZS_DEL_SQL = 'DELETE * FROM Zs WHERE Zs.ZASILKA = [P_ZASILKA]';
  ZSPOHYBY_DEL_SQL = 'DELETE * FROM ZSNAKVYK WHERE ID=[P_ID]';
  ZSPLATCI_DEL_SQL = 'DELETE * FROM ZSPlatci WHERE ID=[P_ID]';
  ZS_INTPOZUPDATE_SQL = 'update zs set IntPoznamka = [P_IntPoznamka] where zasilka = [P_ZASILKA]';
  ZS_USERSTATEUPDATE_SQL = 'UPDATE ZS SET STATEUSER = [P_STATEUSER] WHERE ZASILKA = [P_ZASILKA]';
  SZS_CHANGE_POZICE = 'UPDATE ZS SET ZASILKA = [NEW_ZASILKA] WHERE ZASILKA = [P_ZASILKA]';

  // ZSPL_PLTACIFV_CLEAR = 'UPDATE FV SET REFPLATCE = NULL WHERE SID = [P_SID]';


  // ZSPlatziSrazky
  SQL_ZSPS_Update =  'update ZSPlatSr set cenazaklad = [p_cenazaklad], cenatext = [p_cenatext] where id = [p_id]';
  SQL_ZSPS_Insert =  'insert into ZSPlatSr (refplatce, cenazaklad, cenatext) values ([p_refplatce], [p_cenazaklad], [p_cenatext])';
  SQL_ZSPS_Delete =  'delete from ZSPlatSr where id = [p_id]';

  ZSPL_PLTACIFV_UPDATE = 'UPDATE ZSPLATCI SET REFFV = [P_FAKTURA] WHERE ID = [P_ID]';

  // KTL Auta
  ZSAUTASQLUpdate = 'update LKW_TYPY set TYP = [NEW_TYP] where TYP = [P_TYP]';
  ZSAUTASQLInsert = 'insert into LKW_TYPY (TYP) values ([P_TYP])';
  ZSAUTASQLDelete = 'DELETE * from LKW_TYPY where TYP = [P_TYP]';

  // KTL Podminky
  ZSPODMSQLUpdate = 'PARAMETERS [P_Obsah] Binary; Update zspodminky set popis = [P_POPIS], Obsah = [P_Obsah] WHERE ID = [P_ID]';
  ZSPODMSQLInsert = 'PARAMETERS [P_Obsah] Binary; insert into zspodminky (popis, Obsah ) values ([P_POPIS],[P_Obsah])';
  ZSPODMSQLDelete = 'DELETE * from zspodminky where ID = [P_ID]';

  // KTL POHYBZ
  ZSPOHSQLUpdate =  'update ZSKTLNakVyk set KOD = [NEW_KOD], Popis = [P_Popis] where Kod = [P_KOD]';
  ZSPOHSQLInsert =  'insert into ZSKTLNakVyk (KOD, Popis) values ([P_KOD],[P_POPIS])';
  ZSPOHSQLDelete =  'DELETE from ZSKTLNakVyk where KOD = [P_KOD]';

  // KTL SABLOBY
  ZSSABLSQLUpdate = 'PARAMETERS [P_SABLONA] Binary; Update DOCSablony set evidence = [P_EVIDENCE], popis = [P_POPIS], SABLONA = [P_SABLONA] WHERE ID = [P_ID]';
  ZSSABLSQLInsert = 'PARAMETERS [P_SABLONA] Binary; insert into DOCSablony (evidence, popis, sablona ) values ([P_EVIDENCE], [P_POPIS],[P_SABLONA])';
  ZSSABLSQLDelete = 'DELETE from DOCSablony where ID = [P_ID]';

  // ---------------------------------------------------------------------------
  // KTL Zasilkz typ plateb
  // ---------------------------------------------------------------------------
  ZSPLATBYSQLUpdate = 'update ZSPlatCo set KOD = [NEW_KOD], POPIS = [P_POPIS], TEXTFAKTURA = [P_TEXTFAKTURA] where KOD = [P_KOD]';
  ZSPLATBYSQLInsert = 'insert into ZSPlatCo (KOD, POPIS, TEXTFAKTURA) values ([P_KOD], [P_POPIS], [P_TEXTFAKTURA])';
  ZSPLATBYSQLDelete = 'DELETE from ZSPlatCo where KOD = [P_KOD]';

  ZSHIST_SQL_UPDATE = 'UPDATE ZSHIST SET HISTTEXT = [P_HISTTEXT], UPDID=[P_USER], UPDDATE=NOW() WHERE ID = [P_ID]';
  ZSHIST_SQL_DELETE = 'DELETE FROM ZSHIST WHERE ID = [P_ID]';

  {$ENDIF}

implementation

end.
