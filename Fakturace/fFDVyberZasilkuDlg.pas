unit fFDVyberZasilkuDlg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.DBActns, Vcl.ActnList, IBODataset,
  rsStorage, rsPropSaver, cxContainer, cxCheckBox;

type
  TfrmFDSelectZasilka = class(TForm)
    dsMasterDs: TDataSource;
    acl1: TActionList;
    actClose: TAction;
    actVybrat: TAction;
    pnlGrids: TPanel;
    cxGrid1: TcxGrid;
    tvView: TcxGridDBTableView;
    glGrid1Level1: TcxGridLevel;
    pnlFormButton: TPanel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    cxsModul: TcxStyleRepository;
    csRowStyle: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dtsZSVyber: TIBOQuery;
    dtsZSVyberSID: TStringField;
    dtsZSVyberZASILKA: TStringField;
    dtsZSVyberAOPKOD_DOP: TStringField;
    dtsZSVyberDATUM: TDateTimeField;
    dtsZSVyberDopravce: TStringField;
    dtsZSVyberPrikazce: TStringField;
    dtsZSVyberNAKLADKA: TStringField;
    dtsZSVyberAUTOSPZ: TStringField;
    dtsZSVyberCENASUMA: TFloatField;
    dtsZSVyberCENAMENA: TStringField;
    dtsZSVyberCENADOPRAVCE: TFloatField;
    dtsZSVyberVYKLADKA: TStringField;
    tvViewSID: TcxGridDBColumn;
    tvViewZASILKA: TcxGridDBColumn;
    tvViewDATUM: TcxGridDBColumn;
    tvViewDOPRAVCE: TcxGridDBColumn;
    tvViewPRIKAZCE: TcxGridDBColumn;
    tvViewNAKLADKA: TcxGridDBColumn;
    tvViewAUTOSPZ: TcxGridDBColumn;
    tvViewCENAMENA: TcxGridDBColumn;
    tvViewVYKLADKA: TcxGridDBColumn;
    dtsZSVyberFDCELKEM: TBCDField;
    rsPropSaver1: TrsPropSaver;
    tvViewCENASUMA: TcxGridDBColumn;
    actShowFakturovane: TAction;
    tvViewFDCELKEM: TcxGridDBColumn;
    chkSaveFilter: TcxCheckBox;
    chkNoVyrizene: TcxCheckBox;
    dtsZSVyberDISPECER: TStringField;
    tvViewAOPKOD_DOP: TcxGridDBColumn;
    tvViewCENADOPRAVCE: TcxGridDBColumn;
    tvViewDISPECER: TcxGridDBColumn;
    chkFakturovano: TcxCheckBox;
    procedure actVybratExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowFakturovaneExecute(Sender: TObject);
    procedure tvViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvViewKeyPress(Sender: TObject; var Key: Char);
    procedure chkNoVyrizeneClick(Sender: TObject);
  private
    { Private declarations }
    fSQLWhere          : string;
    procedure setSQLWhere(const Value: string);
  public
    { Public declarations }
    property SQLWhere: string read fSQLWhere write setSQLWhere;
    procedure ShowZaznamy;
  end;

implementation

uses
  appdmduSystem, JclStrings;

{$R *.dfm}

procedure TfrmFDSelectZasilka.actCloseExecute(Sender: TObject);
begin
  // Nic jsme nevybrali, jdeme pryc
  ModalResult := mrCancel;
end;

procedure TfrmFDSelectZasilka.actShowFakturovaneExecute(Sender: TObject);
begin
  // Obcerstvime zobrazene zaznamy
  ShowZaznamy;
end;

procedure TfrmFDSelectZasilka.actVybratExecute(Sender: TObject);
begin
  // Vybrali jsem OK
  ModalResult := mrOk;
end;

procedure TfrmFDSelectZasilka.chkNoVyrizeneClick(Sender: TObject);
begin
  if dtsZSVyber.Active then
    ShowZaznamy;
end;

procedure TfrmFDSelectZasilka.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmdSystem.AppViewStoreToDb(tvView, '', chkSaveFilter.Checked);
end;

procedure TfrmFDSelectZasilka.FormCreate(Sender: TObject);
begin
  // Zrusili jsme formular
  dmdSystem.AppViewRestoreFromDB(tvView, '', True);
  fSQLWhere := 'WHERE 0=0';
end;

procedure TfrmFDSelectZasilka.setSQLWhere(const Value: string);
begin
  fSQLWhere := Value;
end;

procedure TfrmFDSelectZasilka.ShowZaznamy;
begin
  // Procedura pro zobrazeni vhodnych zaznamu ze ZS. Vybirame jen prepravy s dopravcem dle AOPKodDopravce
  dtsZSVyber.Close;
  dtsZSVyber.SQLWhere.Clear;
  // Tohle tam je vzdy
  dtsZSVyber.SQLWhere.Add(SQLWhere);
  if not chkFakturovano.Checked then
    dtsZSVyber.SQLWhere.Add(' AND ((ZSSEZNAM.FDCELKEM = 0) OR (ZSSEZNAM.FDCELKEM IS NULL))');
  if chkNoVyrizene.Visible and chkNoVyrizene.Checked then
    dtsZSVyber.SQLWhere.Add(' AND (ZSSEZNAM.VYRIZENO = ' + StrSingleQuote('F')+')');

  dtsZSVyber.Open;
end;

procedure TfrmFDSelectZasilka.tvViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  // Dvojklik na radek, uzavirame s priznekme Vybrali jsme
  ModalResult := mrOk;
end;

procedure TfrmFDSelectZasilka.tvViewKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ModalResult := mrOk;

end;

end.
