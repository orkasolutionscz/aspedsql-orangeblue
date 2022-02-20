unit appfrmuGlobal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, uCustomModule, rsStorage, rsPropSaver, cxEdit,
  cxDBEditRepository, cxEditRepositoryItems, cxStyles, cxClasses,
  cxGridTableView, cxLookAndFeels, cxGridBandedTableView,
  cxExtEditRepositoryItems, cxContainer, fStatusLook, ImgList, rsProperties,
  dxLayoutLookAndFeels, dxBar;

type
  TdmdGlobal = class(TjfsDefaultModule)
    ActionList1: TActionList;
    actKTLMeny: TAction;
    actKTLDPH: TAction;
    actKTLJednotky: TAction;
    rsPropUser: TrsPropSaver;
    repFVDStatus: TcxEditRepositoryLookupComboBoxItem;
    dsFVDUS: TDataSource;
    dsZSUS: TDataSource;
    repZSStatus: TcxEditRepositoryLookupComboBoxItem;
    repMena: TcxEditRepositoryLookupComboBoxItem;
    dsMeny: TDataSource;
    repCena: TcxEditRepositoryCurrencyItem;
    dsDphProc: TDataSource;
    repDphSazba: TcxEditRepositoryLookupComboBoxItem;
    dsJednotky: TDataSource;
    repJednotky: TcxEditRepositoryLookupComboBoxItem;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    grdstyZakladni: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    repCN1misto: TcxEditRepositoryCurrencyItem;
    repCN2misto: TcxEditRepositoryCurrencyItem;
    repCN1mistoHiden: TcxEditRepositoryCurrencyItem;
    repCN2MistoHiden: TcxEditRepositoryCurrencyItem;
    repCNKurz: TcxEditRepositoryCurrencyItem;
    repUcet: TcxEditRepositoryLookupComboBoxItem;
    dsUcty: TDataSource;
    repFVTexty: TcxEditRepositoryLookupComboBoxItem;
    dsFVTexty: TDataSource;
    dsFVTyp: TDataSource;
    repFVTyp: TcxEditRepositoryLookupComboBoxItem;
    dsFVUhrada: TDataSource;
    repFVUhrada: TcxEditRepositoryLookupComboBoxItem;
    dsCoPlati: TDataSource;
    dsZSPodminky: TDataSource;
    repZSPodminky: TcxEditRepositoryLookupComboBoxItem;
    repZSCoPlati: TcxEditRepositoryLookupComboBoxItem;
    dsZSAuta: TDataSource;
    repZSAuta: TcxEditRepositoryLookupComboBoxItem;
    dsZSTypy: TDataSource;
    repZSTypy: TcxEditRepositoryLookupComboBoxItem;
    dsZSPohybyTypy: TDataSource;
    repZSPohyby: TcxEditRepositoryLookupComboBoxItem;
    repPOPTypy: TcxEditRepositoryLookupComboBoxItem;
    dsPOPTypy: TDataSource;
    repPrefMail: TcxEditRepositoryComboBoxItem;
    repBoolChar: TcxEditRepositoryCheckBoxItem;
    grdstyBand: TcxGridBandedTableViewStyleSheet;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    actAopPsc: TAction;
    repBool: TcxEditRepositoryCheckBoxItem;
    repColor: TcxEditRepositoryColorComboBox;
    cxRebGlobal: TcxEditRepository;
    repDOCStatus: TcxEditRepositoryLookupComboBoxItem;
    dsDOCStatus: TDataSource;
    cxsRecStorno: TcxStyle;
    cxsRecArchive: TcxStyle;
    cxModulesStyle: TcxStyleRepository;
    cxsZSBezDopravce: TcxStyle;
    cxsZSVydanaFV: TcxStyle;
    cxsZSVydanaBezDosle: TcxStyle;
    cxsZSFD: TcxStyle;
    cxsFVUhrazeno: TcxStyle;
    cxsFVHromadna: TcxStyle;
    cxsFVVolna: TcxStyle;
    cxsFVDluh: TcxStyle;
    cxsFDDluh: TcxStyle;
    cxsFDUhrazeno: TcxStyle;
    imglDefault: TImageList;
    imglModul: TImageList;
    repPOPStatus: TcxEditRepositoryLookupComboBoxItem;
    dsPOPStatus: TDataSource;
    repCenaRO: TcxEditRepositoryCurrencyItem;
    repDatum: TcxEditRepositoryDateItem;
    StyleDefaultController: TcxDefaultEditStyleController;
    repDPHTyp: TcxEditRepositoryImageComboBoxItem;
    dsKTLUsers: TDataSource;
    repUsers: TcxEditRepositoryLookupComboBoxItem;
    repCena0M: TcxEditRepositoryCurrencyItem;
    repAdresaButton: TcxEditRepositoryButtonItem;
    repFaktPolTexty: TcxEditRepositoryButtonItem;
    dsKTLFaktPol: TDataSource;
    strepPredefined: TcxStyleRepository;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxStyle112: TcxStyle;
    cxStyle113: TcxStyle;
    cxStyle114: TcxStyle;
    cxStyle115: TcxStyle;
    cxStyle116: TcxStyle;
    cxStyle117: TcxStyle;
    cxStyle118: TcxStyle;
    cxStyle119: TcxStyle;
    cxStyle120: TcxStyle;
    cxStyle121: TcxStyle;
    cxStyle122: TcxStyle;
    cxStyle123: TcxStyle;
    cxStyle124: TcxStyle;
    cxStyle125: TcxStyle;
    cxStyle126: TcxStyle;
    cxStyle127: TcxStyle;
    cxStyle128: TcxStyle;
    cxStyle129: TcxStyle;
    cxStyle130: TcxStyle;
    cxStyle131: TcxStyle;
    cxStyle132: TcxStyle;
    cxStyle133: TcxStyle;
    cxStyle134: TcxStyle;
    cxStyle135: TcxStyle;
    cxStyle136: TcxStyle;
    cxStyle137: TcxStyle;
    cxStyle138: TcxStyle;
    cxStyle139: TcxStyle;
    cxStyle140: TcxStyle;
    cxStyle141: TcxStyle;
    cxStyle142: TcxStyle;
    cxStyle143: TcxStyle;
    cxStyle144: TcxStyle;
    cxStyle145: TcxStyle;
    cxStyle146: TcxStyle;
    cxStyle147: TcxStyle;
    cxStyle148: TcxStyle;
    cxStyle149: TcxStyle;
    cxStyle150: TcxStyle;
    cxStyle151: TcxStyle;
    cxStyle152: TcxStyle;
    cxStyle153: TcxStyle;
    cxStyle154: TcxStyle;
    cxStyle155: TcxStyle;
    cxStyle156: TcxStyle;
    cxStyle157: TcxStyle;
    cxStyle158: TcxStyle;
    cxStyle159: TcxStyle;
    cxStyle160: TcxStyle;
    cxStyle161: TcxStyle;
    cxStyle162: TcxStyle;
    cxStyle163: TcxStyle;
    cxStyle164: TcxStyle;
    cxStyle165: TcxStyle;
    cxStyle166: TcxStyle;
    cxStyle167: TcxStyle;
    cxStyle168: TcxStyle;
    cxStyle169: TcxStyle;
    cxStyle170: TcxStyle;
    cxStyle171: TcxStyle;
    cxStyle172: TcxStyle;
    cxStyle173: TcxStyle;
    cxStyle174: TcxStyle;
    cxStyle175: TcxStyle;
    cxStyle176: TcxStyle;
    cxStyle177: TcxStyle;
    cxStyle178: TcxStyle;
    cxStyle179: TcxStyle;
    cxStyle180: TcxStyle;
    cxStyle181: TcxStyle;
    cxStyle182: TcxStyle;
    cxStyle183: TcxStyle;
    cxStyle184: TcxStyle;
    cxStyle185: TcxStyle;
    cxStyle186: TcxStyle;
    cxStyle187: TcxStyle;
    cxStyle188: TcxStyle;
    cxStyle189: TcxStyle;
    cxStyle190: TcxStyle;
    cxStyle191: TcxStyle;
    cxStyle192: TcxStyle;
    cxStyle193: TcxStyle;
    cxStyle194: TcxStyle;
    cxStyle195: TcxStyle;
    cxStyle196: TcxStyle;
    cxStyle197: TcxStyle;
    cxStyle198: TcxStyle;
    cxStyle199: TcxStyle;
    cxStyle200: TcxStyle;
    cxStyle201: TcxStyle;
    cxStyle202: TcxStyle;
    cxStyle203: TcxStyle;
    cxStyle204: TcxStyle;
    cxStyle205: TcxStyle;
    cxStyle206: TcxStyle;
    cxStyle207: TcxStyle;
    cxStyle208: TcxStyle;
    cxStyle209: TcxStyle;
    cxStyle210: TcxStyle;
    cxStyle211: TcxStyle;
    cxStyle212: TcxStyle;
    cxStyle213: TcxStyle;
    cxStyle214: TcxStyle;
    cxStyle215: TcxStyle;
    cxStyle216: TcxStyle;
    cxStyle217: TcxStyle;
    cxStyle218: TcxStyle;
    cxStyle219: TcxStyle;
    cxStyle220: TcxStyle;
    cxStyle221: TcxStyle;
    cxStyle222: TcxStyle;
    cxStyle223: TcxStyle;
    cxStyle224: TcxStyle;
    cxStyle225: TcxStyle;
    cxStyle226: TcxStyle;
    cxStyle227: TcxStyle;
    cxStyle228: TcxStyle;
    cxStyle229: TcxStyle;
    cxStyle230: TcxStyle;
    cxStyle231: TcxStyle;
    cxStyle232: TcxStyle;
    cxStyle233: TcxStyle;
    cxStyle234: TcxStyle;
    cxStyle235: TcxStyle;
    cxStyle236: TcxStyle;
    cxStyle237: TcxStyle;
    cxStyle238: TcxStyle;
    cxStyle239: TcxStyle;
    cxStyle240: TcxStyle;
    cxStyle241: TcxStyle;
    cxStyle242: TcxStyle;
    cxStyle243: TcxStyle;
    cxStyle244: TcxStyle;
    cxStyle245: TcxStyle;
    cxStyle246: TcxStyle;
    cxStyle247: TcxStyle;
    cxStyle248: TcxStyle;
    cxStyle249: TcxStyle;
    cxStyle250: TcxStyle;
    cxStyle251: TcxStyle;
    cxStyle252: TcxStyle;
    cxStyle253: TcxStyle;
    cxStyle254: TcxStyle;
    cxStyle255: TcxStyle;
    cxStyle256: TcxStyle;
    cxStyle257: TcxStyle;
    cxStyle258: TcxStyle;
    cxStyle259: TcxStyle;
    cxStyle260: TcxStyle;
    cxStyle261: TcxStyle;
    cxStyle262: TcxStyle;
    cxStyle263: TcxStyle;
    cxStyle264: TcxStyle;
    cxStyle265: TcxStyle;
    cxStyle266: TcxStyle;
    cxStyle267: TcxStyle;
    cxStyle268: TcxStyle;
    cxStyle269: TcxStyle;
    cxStyle270: TcxStyle;
    cxStyle271: TcxStyle;
    cxStyle272: TcxStyle;
    cxStyle273: TcxStyle;
    cxStyle274: TcxStyle;
    cxStyle275: TcxStyle;
    cxStyle276: TcxStyle;
    cxStyle277: TcxStyle;
    cxStyle278: TcxStyle;
    cxStyle279: TcxStyle;
    cxStyle280: TcxStyle;
    cxStyle281: TcxStyle;
    cxStyle282: TcxStyle;
    cxStyle283: TcxStyle;
    cxStyle284: TcxStyle;
    cxStyle285: TcxStyle;
    cxStyle286: TcxStyle;
    cxStyle287: TcxStyle;
    cxStyle288: TcxStyle;
    cxStyle289: TcxStyle;
    cxStyle290: TcxStyle;
    cxStyle291: TcxStyle;
    cxStyle292: TcxStyle;
    cxStyle293: TcxStyle;
    cxStyle294: TcxStyle;
    cxStyle295: TcxStyle;
    cxStyle296: TcxStyle;
    cxStyle297: TcxStyle;
    cxStyle298: TcxStyle;
    cxStyle299: TcxStyle;
    cxStyle300: TcxStyle;
    cxStyle301: TcxStyle;
    cxStyle302: TcxStyle;
    cxStyle303: TcxStyle;
    cxStyle304: TcxStyle;
    cxStyle305: TcxStyle;
    cxStyle306: TcxStyle;
    cxStyle307: TcxStyle;
    cxStyle308: TcxStyle;
    cxStyle309: TcxStyle;
    cxStyle310: TcxStyle;
    cxStyle311: TcxStyle;
    cxStyle312: TcxStyle;
    cxStyle313: TcxStyle;
    cxStyle314: TcxStyle;
    cxStyle315: TcxStyle;
    cxStyle316: TcxStyle;
    cxStyle317: TcxStyle;
    cxStyle318: TcxStyle;
    cxStyle319: TcxStyle;
    cxStyle320: TcxStyle;
    cxStyle321: TcxStyle;
    cxStyle322: TcxStyle;
    cxStyle323: TcxStyle;
    cxStyle324: TcxStyle;
    cxStyle325: TcxStyle;
    cxStyle326: TcxStyle;
    cxStyle327: TcxStyle;
    cxStyle328: TcxStyle;
    cxStyle329: TcxStyle;
    cxStyle330: TcxStyle;
    cxStyle331: TcxStyle;
    cxStyle332: TcxStyle;
    cxStyle333: TcxStyle;
    cxStyle334: TcxStyle;
    cxStyle335: TcxStyle;
    cxStyle336: TcxStyle;
    cxStyle337: TcxStyle;
    cxStyle338: TcxStyle;
    cxStyle339: TcxStyle;
    cxStyle340: TcxStyle;
    cxStyle341: TcxStyle;
    cxStyle342: TcxStyle;
    cxStyle343: TcxStyle;
    cxStyle344: TcxStyle;
    cxStyle345: TcxStyle;
    cxStyle346: TcxStyle;
    cxStyle347: TcxStyle;
    cxStyle348: TcxStyle;
    cxStyle349: TcxStyle;
    cxStyle350: TcxStyle;
    cxStyle351: TcxStyle;
    cxStyle352: TcxStyle;
    cxStyle353: TcxStyle;
    cxStyle354: TcxStyle;
    cxStyle355: TcxStyle;
    cxStyle356: TcxStyle;
    cxStyle357: TcxStyle;
    cxStyle358: TcxStyle;
    cxStyle359: TcxStyle;
    cxStyle360: TcxStyle;
    cxStyle361: TcxStyle;
    cxStyle362: TcxStyle;
    cxStyle363: TcxStyle;
    cxStyle364: TcxStyle;
    cxStyle365: TcxStyle;
    cxStyle366: TcxStyle;
    cxStyle367: TcxStyle;
    cxStyle368: TcxStyle;
    cxStyle369: TcxStyle;
    cxStyle370: TcxStyle;
    cxStyle371: TcxStyle;
    cxStyle372: TcxStyle;
    cxStyle373: TcxStyle;
    cxStyle374: TcxStyle;
    cxStyle375: TcxStyle;
    cxStyle376: TcxStyle;
    cxStyle377: TcxStyle;
    cxStyle378: TcxStyle;
    cxStyle379: TcxStyle;
    cxStyle380: TcxStyle;
    cxStyle381: TcxStyle;
    cxStyle382: TcxStyle;
    cxStyle383: TcxStyle;
    cxStyle384: TcxStyle;
    cxStyle385: TcxStyle;
    cxStyle386: TcxStyle;
    cxStyle387: TcxStyle;
    cxStyle388: TcxStyle;
    cxStyle389: TcxStyle;
    cxStyle390: TcxStyle;
    cxStyle391: TcxStyle;
    cxStyle392: TcxStyle;
    cxStyle393: TcxStyle;
    cxStyle394: TcxStyle;
    cxStyle395: TcxStyle;
    cxStyle396: TcxStyle;
    cxStyle397: TcxStyle;
    cxStyle398: TcxStyle;
    cxStyle399: TcxStyle;
    cxStyle400: TcxStyle;
    cxStyle401: TcxStyle;
    cxStyle402: TcxStyle;
    cxStyle403: TcxStyle;
    cxStyle404: TcxStyle;
    cxStyle405: TcxStyle;
    cxStyle406: TcxStyle;
    cxStyle407: TcxStyle;
    cxStyle408: TcxStyle;
    cxStyle409: TcxStyle;
    cxStyle410: TcxStyle;
    cxStyle411: TcxStyle;
    cxStyle412: TcxStyle;
    cxStyle413: TcxStyle;
    cxStyle414: TcxStyle;
    cxStyle415: TcxStyle;
    cxStyle416: TcxStyle;
    cxStyle417: TcxStyle;
    cxStyle418: TcxStyle;
    cxStyle419: TcxStyle;
    cxStyle420: TcxStyle;
    cxStyle421: TcxStyle;
    cxStyle422: TcxStyle;
    cxStyle423: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat4: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetDesert: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetEggplant: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPlumhighcolor: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRainyDay: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRose: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRoselarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetStormVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetTealVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWheat: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsClassiclarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsStandard: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast1large: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast2large: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastBlack: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastBlacklarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastWhite: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastWhitelarge: TcxGridTableViewStyleSheet;
    strepUserDefined: TcxStyleRepository;
    cxStyle424: TcxStyle;
    cxStyle425: TcxStyle;
    cxStyle426: TcxStyle;
    cxStyle427: TcxStyle;
    cxStyle428: TcxStyle;
    cxStyle429: TcxStyle;
    cxStyle430: TcxStyle;
    cxStyle431: TcxStyle;
    cxStyle432: TcxStyle;
    cxStyle433: TcxStyle;
    cxStyle434: TcxStyle;
    cxStyle435: TcxStyle;
    cxStyle436: TcxStyle;
    cxStyle437: TcxStyle;
    cxStyle438: TcxStyle;
    cxStyle439: TcxStyle;
    cxStyle440: TcxStyle;
    cxStyle441: TcxStyle;
    cxStyle442: TcxStyle;
    cxStyle443: TcxStyle;
    cxStyle444: TcxStyle;
    cxStyle445: TcxStyle;
    cxStyle446: TcxStyle;
    cxStyle447: TcxStyle;
    cxStyle448: TcxStyle;
    cxStyle449: TcxStyle;
    cxStyle450: TcxStyle;
    cxStyle451: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet;
    repFaktPolTextyCombo: TcxEditRepositoryLookupComboBoxItem;
    dsFVTextyHead: TDataSource;
    repFVTextyHead: TcxEditRepositoryLookupComboBoxItem;
    repProcenta: TcxEditRepositoryCurrencyItem;
    repMxPalete: TcxEditRepositoryColorComboBox;
    repColor16: TcxEditRepositoryColorComboBox;
    dxlytlkndflstMain: TdxLayoutLookAndFeelList;
    dxlsStandard: TdxLayoutStandardLookAndFeel;
    dxlsOffice: TdxLayoutOfficeLookAndFeel;
    dxlsWeb: TdxLayoutWebLookAndFeel;
    dxlsFlat: TdxLayoutCxLookAndFeel;
    actUpdateKtl: TAction;
    cxStyle452: TcxStyle;
    cxStyle453: TcxStyle;
    cxStyle454: TcxStyle;
    cxStyle455: TcxStyle;
    cxStyle456: TcxStyle;
    cxStyle457: TcxStyle;
    cxStyle458: TcxStyle;
    cxStyle459: TcxStyle;
    cxStyle460: TcxStyle;
    cxStyle461: TcxStyle;
    cxStyle462: TcxStyle;
    grdstyAspedOld: TcxGridTableViewStyleSheet;
    procedure KTLExecute(Sender: TObject);
    procedure gbDefaultModuleInitModule(Sender: TObject);
    procedure rsPropUserAfterLoad(Sender: TObject);
    procedure rsPropUserAfterSave(Sender: TObject);
    procedure jfsDefaultModuleFinalModule(Sender: TObject);
    procedure repFaktPolTextyPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure StyleDefaultControllerStyleChanged(Sender: TObject);
  private
    FModStyleSheet  : TcxGridTableViewStyleSheet;
    FUseCustomLayout: Boolean;
    { Private declarations }
    procedure repDocStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure repZSStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure repFVDStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure repPOPStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure repFaktPolTextyComboPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure repFVTextyComboPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure repFVTextyHeadComboPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

    procedure SetModStyleSheet(const Value: TcxGridTableViewStyleSheet);
    procedure SetUseCustomLayout(const Value: Boolean);
  public
    { Public declarations }
    gvAOPUseIcoAsID            : Boolean; // Pouyivat jako ID ICO nebo generovanou cis radu
    gvModulAutoFetchAll        : Boolean; // Pokud TRUE, tak budou v seznamech vzdy nacteny pri spusteni vsechny
    gvAOPUseStatusColorOtherEvi: Boolean; // Pokud TRUE bude v evidencich pouzivajicich AOP zobrazena pouzite barevne oznaceni UserStatus
    // odpovidajici podmince vyberu
    constructor Create(AOwner: TComponent); override;
    function GetCurrBarStyle: TdxBarManagerStyle;
    function GetCurrLayoutStyle: TdxCustomLayoutLookAndFeel;

  published
    property ModStyleSheet  : TcxGridTableViewStyleSheet read FModStyleSheet write SetModStyleSheet;
    property UseCustomLayout: Boolean read FUseCustomLayout write SetUseCustomLayout;
    // property BarStyle     : TdxBarManagerStyle read FmxBarStyle write FmxBarStyle;
    // property mxLayoutStyle: TdxCustomLayoutLookAndFeel read FLayoutStyle write SetLayoutStyle;
  end;

  TRecKTLMena = record
    FMena: string;
    FKurs: Double;
  end;

  TRecKTLDph = record
    FDph: string;
    FDphSazba: Integer;
  end;

  TaswCenaObjekt = class
  private
    fCelkem      : real;
    fCelkemZaklad: real;
    fCelkemKc    : real;
    fDphCena     : real;
  public
    Zaklad     : real;
    DphProcento: Integer;
    Kurs       : real;
    constructor CreateAndRecalc(AZaklad: real; AProcDPH: Integer; AKurs: real);
    procedure Prepocitej;
    property CalcDphCena: real read fDphCena;
    property CalcZaklad: real read fCelkemZaklad;
    property CalcCelkem: real read fCelkem;
    property CalcCelkemKc: real read fCelkemKc;
  end;

function mgGetActualKurs(Mena: string): Double;

{ Novy zpusob volani katalogu }

function mappShowKTLJednotky(var AJednotka: string): Boolean;
function mappShowKTLMeny(var ARecMena: TRecKTLMena): Boolean;
function mappShowKTLDph(var ADph: TRecKTLDph): Boolean;

procedure PopulateStyleSheetsList(const AList: TList);

var
  dmdGlobal: TdmdGlobal;

function GetdmdGlobal: TdmdGlobal;

implementation

uses variants, uAppUtils, fMessageDlg, appdmduSystem, appfrmuKTLJednotky,
  appfrmuKTLMeny, appfrmuKTLDPH, appDPHunit, fKatalogyModul, Devexptls,
  AOPfrmuModule, cxLookupEdit, cxDBLookupComboBox, cxDBLookupEdit,
  AOPConstDefUnit, fKTLFaktPlatbTexty, FVfrmuKTLTexty, ZSdmdu,
  uAppControler, menus, AOPfrmuEdit, fGridOptions, cxColorComboBox, uCustomForms;

{$R *.DFM}
{$R badtotem.res}

function GetdmdGlobal: TdmdGlobal;
begin
  if dmdGlobal = nil then
    Application.CreateForm(TdmdGlobal, dmdGlobal);
  Result := dmdGlobal;
end;

function mgGetActualKurs(Mena: string): Double;
var
  OkNext: Boolean;
begin
  { Musime provest refresh ciselniku men. Nekdo z uyzivatelu jej mohl zmenit
  }
  if AppCompsDM.KTLMeny.Active then
    AppCompsDM.KTLMeny.Refresh
  else
    AppCompsDM.KTLMeny.Active := true;

  OkNext := (AppCompsDM.KTLMenyKOD.AsString = Mena) or (AppCompsDM.KTLMeny.Locate('KOD', Mena, []));
  if OkNext then
    Result := AppCompsDM.KTLMenyKURS.AsCurrency
  else
    Result := 1;

  if Result <= 0 then
    Result := 1;
end;

{ ********************************************************* }
{ Globalni katalogy a ciselniky }
{ ********************************************************* }

{ Katalog jednotek }

function mappShowKTLJednotky(var AJednotka: string): Boolean;
var
  dlg: TfrmKTLJednotky;
begin
  dlg := TfrmKTLJednotky.Create(Application);
  try
    with dlg do
    begin
      if AJednotka <> EmptyStr then
        AppCompsDM.KTLJednotky.Locate('JEDNOTKA', AJednotka, []);

      ShowModal;
      Result := (ModalResult = mrok);
      if Result then
        AJednotka := AppCompsDM.KTLJednotkyJEDNOTKA.AsString;
    end;
  finally
    dlg.Free;
  end;
end;

{ Katalog men }

function mappShowKTLMeny(var ARecMena: TRecKTLMena): Boolean;
var
  dlg: TfrmKTLMeny;
begin
  dlg := TfrmKTLMeny.Create(Application);
  try
    with dlg do
    begin
      if ARecMena.FMena <> EmptyStr then
        AppCompsDM.KTLMeny.Locate('KOD', ARecMena.FMena, []);

      ShowModal;
      Result := (ModalResult = mrok);
      if Result then
      begin
        ARecMena.FMena := AppCompsDM.KTLMenyKOD.AsString;
        ARecMena.FKurs := AppCompsDM.KTLMenyKURS.AsFloat;
      end;
    end;
  finally
    dlg.Free;
  end;
end;

function mappShowKTLDph(var ADph: TRecKTLDph): Boolean;
var
  dlg: TfrmKTLDPH;
begin
  dlg := TfrmKTLDPH.Create(Application);
  try
    with dlg do
    begin
      if ADph.FDph <> EmptyStr then
        AppCompsDM.KTLDPH.Locate('DPH_ID', ADph.FDph, []);

      ShowModal;
      Result := (ModalResult = mrok);
      if Result then
      begin
        ADph.FDph      := AppCompsDM.KTLDPHDPH_ID.AsString;
        ADph.FDphSazba := AppCompsDM.KTLDPHPROCDPH.AsInteger;
      end;
    end;
  finally
    dlg.Free;
  end;
end;

procedure PopulateStyleSheetsList(const AList: TList);
var
  I: Integer;
begin
  if AList <> nil then
  begin
    AList.Clear;
    with dmdGlobal.strepUserDefined do
      for I := 0 to StyleSheetCount - 1 do
        AList.Add(StyleSheets[I]);
  end;
end;

{ TaswCenaObjekt }

constructor TaswCenaObjekt.CreateAndRecalc(AZaklad: real; AProcDPH: Integer; AKurs: real);
begin
  inherited Create;
  Kurs        := AKurs;
  Zaklad      := AZaklad;
  DphProcento := AProcDPH;
  Prepocitej; // Prepocet ceny
end;

procedure TaswCenaObjekt.Prepocitej;
begin
  fDphCena  := (Zaklad * 0.01) * DphProcento;
  fCelkem   := Zaklad + fDphCena;
  fCelkemKc := numRound(fCelkem * Kurs, 0);
end;

procedure TdmdGlobal.KTLExecute(Sender: TObject);
var
  intRMena: TRecKTLMena;
  intJedn : string;
  intDPh  : TRecKTLDph;
begin
  if Sender = actKTLMeny then
    mappShowKTLMeny(intRMena)
  else if Sender = actKTLJednotky then
    mappShowKTLJednotky(intJedn)
  else if Sender = actKTLDPH then
    mappShowKTLDph(intDPh);

end;

constructor TdmdGlobal.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  gvAOPUseIcoAsID       := true;
  dsJednotky.DataSet    := GetAppCompsDM.KTLJednotky;
  dsUcty.DataSet        := AppCompsDM.KTLFVUcty;
  dsDphProc.DataSet     := AppCompsDM.KTLDPH;
  dsFVDUS.DataSet       := AppCompsDM.dtsFVDUS;
  dsZSUS.DataSet        := AppCompsDM.dtsZSUS;
  dsDOCStatus.DataSet   := AppCompsDM.dtsDocSU;
  dsPOPStatus.DataSet   := AppCompsDM.dtsPOPUS;
  dsMeny.DataSet        := AppCompsDM.KTLMeny;
  dsDphProc.DataSet     := AppCompsDM.KTLDPH;
  dsFVTextyHead.DataSet := AppCompsDM.dtsFVTextyHead;

  Jf_SetLook2butons(repZSStatus.Properties, repZSStatusPropertiesButtonClick);
  Jf_SetLook2butons(repDOCStatus.Properties, repDocStatusPropertiesButtonClick);
  Jf_SetLook2butons(repFVDStatus.Properties, repFVDStatusPropertiesButtonClick);
  Jf_SetLook2butons(repPOPStatus.Properties, repPOPStatusPropertiesButtonClick);
  Jf_SetLook2butons(repFaktPolTextyCombo.Properties, repFaktPolTextyComboPropertiesButtonClick);
  Jf_SetLook2butons(repFVTexty.Properties, repFVTextyComboPropertiesButtonClick);
  Jf_SetLook2butons(repFVTextyHead.Properties, repFVTextyHeadComboPropertiesButtonClick);

  repPrefMail.Properties.Items.Clear;
  repPrefMail.Properties.Items.Add(SAT_NONE);
  repPrefMail.Properties.Items.Add(SAT_FAX);
  repPrefMail.Properties.Items.Add(SAT_EMAIL);

  repColor16.Properties.PrepareDelphiColorList(False, False);
  repColor16.Properties.NamingConvention := cxncDelphi;
  cxsFVHromadna.Color                    := clBlue;
  cxsFVHromadna.TextColor                := clWhite;
  cxsFVVolna.Color                       := clGreen;
  cxsFVVolna.TextColor                   := clYellow;
  cxsFVDluh.Color                        := clRed;
  cxsFVDluh.TextColor                    := clWhite;
  cxsFVUhrazeno.Color                    := clYellow;
  cxsFVUhrazeno.TextColor                := clBlack;
  cxsZSVydanaFV.Color                    := clNavy;
  cxsZSVydanaFV.TextColor                := clYellow;
  cxsZSBezDopravce.Color                 := clAqua;
  cxsZSBezDopravce.TextColor             := clBlack;
  cxsZSFD.Color                          := clGreen;
  cxsZSFD.TextColor                      := clWhite;
  cxsZSVydanaBezDosle.Color              := clRed;
  cxsZSVydanaBezDosle.TextColor          := clBlack;
  cxsFDDluh.Color                        := clRed;
  cxsFDDluh.TextColor                    := clWindowText;
  cxsFDUhrazeno.Color                    := clYellow;
  cxsFDUhrazeno.TextColor                := clWindowText;
  ModStyleSheet                          := grdstyAspedOld; // nil; // GridTableViewStyleSheetDevExpress;
  UseCustomLayout                        := False;
  // BarStyle                               := bmsFlat;
end;

procedure TdmdGlobal.gbDefaultModuleInitModule(Sender: TObject);
begin
  rsPropUser.LoadValues;
end;

function TdmdGlobal.GetCurrBarStyle: TdxBarManagerStyle;
begin
  Result := bmsStandard;
  case StyleDefaultController.Style.LookAndFeel.Kind of
    lfFlat:
      Result := bmsEnhanced;
    lfStandard:
      Result := bmsStandard;
    lfUltraFlat:
      Result := bmsFlat;
    lfOffice11:
      Result := bmsOffice11;
  end;
end;

function TdmdGlobal.GetCurrLayoutStyle: TdxCustomLayoutLookAndFeel;
begin
  Result := dxlsStandard;
  case StyleDefaultController.Style.LookAndFeel.Kind of
    lfFlat:
      Result := dxlsFlat;
    lfStandard:
      Result := dxlsStandard;
    lfUltraFlat:
      Result := dxlsFlat;
    lfOffice11:
      Result := dxlsOffice;
  end;
end;

procedure TdmdGlobal.repFaktPolTextyComboPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  lcDlg: TfrmKTLPlatbyTypy;
begin
  case AButtonIndex of (* *)
    1:
      begin
        lcDlg := TfrmKTLPlatbyTypy.Create(self);
        if lcDlg.ShowModal = mrok then
        begin
          TcxCustomDBLookupEdit(Sender).EditValue := lcDlg.Value;
          TcxCustomDBLookupEdit(Sender).PostEditValue;
        end;
      end;
  end; (* case *)

end;

procedure TdmdGlobal.repDocStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  dlg: TfrmAppStausLook;
begin
  case AButtonIndex of (* *)
    1:
      begin
        dlg := appGetStatusUserLook(AppCompsDM.dtsDocSU, 'Korespondece');
        try
          dlg.intLookupFnc(Sender);
        finally
          dlg.Free;
        end;
      end;
  end; (* case *)
end;

procedure TdmdGlobal.repZSStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  dlg: TfrmAppStausLook;
begin
  case AButtonIndex of (* *)
    1:
      begin
        dlg := appGetStatusUserLook(AppCompsDM.dtsZSUS, 'Zásilky');
        try
          dlg.intLookupFnc(Sender);
        finally
          dlg.Free;
        end;
      end;
  end; (* case *)
end;

procedure TdmdGlobal.repFVDStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  dlg: TfrmAppStausLook;
begin
  case AButtonIndex of (* *)
    1:
      begin
        dlg := appGetStatusUserLook(AppCompsDM.dtsFVDUS, 'Faktury (Došlé a vydané)');
        try
          dlg.intLookupFnc(Sender);
        finally
          dlg.Free;
        end;
      end;
  end; (* case *)
end;

procedure TdmdGlobal.repPOPStatusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  dlg: TfrmAppStausLook;
begin
  case AButtonIndex of (* *)
    1:
      begin
        dlg := appGetStatusUserLook(AppCompsDM.dtsPOPUS, 'Poptávky');
        try
          dlg.intLookupFnc(Sender);
        finally
          dlg.Free;
        end;
      end;
  end; (* case *)
end;

procedure TdmdGlobal.rsPropUserAfterLoad(Sender: TObject);
begin
  gvModulAutoFetchAll         := rsPropUser.Storage.ReadBoolean('gvModulAutoFetchAll', gvModulAutoFetchAll);
  gvAOPUseIcoAsID             := rsPropUser.Storage.ReadBoolean('gvAOPUseIcoAsID', gvAOPUseIcoAsID);
  gvAOPUseStatusColorOtherEvi := rsPropUser.Storage.ReadBoolean('gvAOPUseStatusColorOtherEvi', gvAOPUseStatusColorOtherEvi);
  StyleDefaultControllerStyleChanged(Sender);
end;

procedure TdmdGlobal.rsPropUserAfterSave(Sender: TObject);
begin
  rsPropUser.Storage.WriteBoolean('gvModulAutoFetchAll', gvModulAutoFetchAll);
  rsPropUser.Storage.WriteBoolean('gvAOPUseIcoAsID', gvAOPUseIcoAsID);
  rsPropUser.Storage.WriteBoolean('gvAOPUseStatusColorOtherEvi', gvAOPUseStatusColorOtherEvi);
end;

procedure TdmdGlobal.jfsDefaultModuleFinalModule(Sender: TObject);
begin
  rsPropUser.SaveValues;
end;

procedure TdmdGlobal.repFaktPolTextyPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  lcDlg: TfrmKTLPlatbyTypy;
begin
  case AButtonIndex of
    0:
      begin
        lcDlg := TfrmKTLPlatbyTypy.Create(self);
        if lcDlg.ShowModal = mrok then
        begin
          TcxCustomDBLookupEdit(Sender).EditValue := lcDlg.Value;
          TcxCustomDBLookupEdit(Sender).PostEditValue;
        end;
      end;
  end;
end;

procedure TdmdGlobal.SetModStyleSheet(const Value: TcxGridTableViewStyleSheet);
begin
  FModStyleSheet := Value;
end;

procedure TdmdGlobal.SetUseCustomLayout(const Value: Boolean);
begin
  FUseCustomLayout := Value;
end;

procedure TdmdGlobal.StyleDefaultControllerStyleChanged(Sender: TObject);
var
  I: Integer;
begin
  if not(csDestroying in ComponentState) then
  begin
    cxLookAndFeelController1.NativeStyle := StyleDefaultController.Style.LookAndFeel.NativeStyle;
    cxLookAndFeelController1.Kind        := StyleDefaultController.Style.LookAndFeel.Kind;
    // nataveni velikosti pisma u vsech cxstyles
    for I := 0 to cxStyleRepository1.Count -1 do
    begin
     if cxStyleRepository1.Items[i] is TcxStyle then
     begin
       TcxStyle(cxStyleRepository1.Items[i]).Font.Size := StyleDefaultController.Style.Font.Size;
       TcxStyle(cxStyleRepository1.Items[i]).Font.Name := StyleDefaultController.Style.Font.Name;
     end;
    end;
    // nataveni velikosti pisma u vsech cxstyles
    for I := 0 to cxModulesStyle.Count -1 do
    begin
     if cxModulesStyle.Items[i] is TcxStyle then
     begin
       TcxStyle(cxModulesStyle.Items[i]).Font.Size := StyleDefaultController.Style.Font.Size;
       TcxStyle(cxStyleRepository1.Items[i]).Font.Name := StyleDefaultController.Style.Font.Name;
     end;
    end;
  end;
end;

procedure TdmdGlobal.repFVTextyComboPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  lcDlg: TFVfrmKTLTexty;
begin
  case AButtonIndex of
    1:
      begin
        lcDlg := TFVfrmKTLTexty.Create(nil);
        try
          lcDlg.dsZaznam.DataSet := AppCompsDM.KTLFVTexty;

          if lcDlg.ShowModal = mrok then
          begin
            TcxCustomDBLookupEdit(Sender).EditValue := lcDlg.tvKatalogID.EditValue;
            TcxCustomDBLookupEdit(Sender).PostEditValue;
          end;
        finally
          lcDlg.Free;
        end;

      end;
  end;

end;

procedure TdmdGlobal.repFVTextyHeadComboPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  lcDlg: TFVfrmKTLTexty;
begin
  case AButtonIndex of
    1:
      begin
        lcDlg := TFVfrmKTLTexty.Create(nil);
        try

          lcDlg.dsZaznam.DataSet := AppCompsDM.dtsFVTextyHead;
          if lcDlg.ShowModal = mrok then
          begin
            TcxCustomDBLookupEdit(Sender).EditValue := lcDlg.tvKatalogID.EditValue;
            TcxCustomDBLookupEdit(Sender).PostEditValue;
          end;
        finally
          lcDlg.Free;
        end;

      end;
  end;
end;

end.
