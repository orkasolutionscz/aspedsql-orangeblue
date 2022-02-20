unit fOptionsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxLabel, cxGroupBox,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxButtonEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, Vcl.ExtCtrls, cxCheckBox, rsStorage, rsPropSaver,
  cxDropDownEdit;

type
  TfrmOptions = class(TForm)
    edFVDefPodminka: TcxTextEdit;
    edDavkaFolder: TcxButtonEdit;
    edIc: TcxTextEdit;
    edFVPrekontace: TcxTextEdit;
    edFVDPHPredkontace: TcxTextEdit;
    edFVNahrText: TcxTextEdit;
    edFVZaokrDoklad: TcxTextEdit;
    edFVZaokrDPH: TcxTextEdit;
    dxlMainGroup_Root: TdxLayoutGroup;
    dxlMain: TdxLayoutControl;
    dxlMainGroup4: TdxLayoutGroup;
    dxlMainItem3: TdxLayoutItem;
    dxlMainItem4: TdxLayoutItem;
    dxlMainGroup8: TdxLayoutGroup;
    dxlMainItem6: TdxLayoutItem;
    dxlMainItem7: TdxLayoutItem;
    dxlMainItem8: TdxLayoutItem;
    dxlMainItem9: TdxLayoutItem;
    dxlMainItem10: TdxLayoutItem;
    dxlMainItem11: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dliMainItem1: TdxLayoutItem;
    edFDDefWhere: TcxTextEdit;
    pnlBottom: TPanel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    edFDPredkontace: TcxTextEdit;
    edFDDPHPredkontace: TcxTextEdit;
    dliMainItem2: TdxLayoutItem;
    dliMainItem3: TdxLayoutItem;
    dxlgMainGroup1: TdxLayoutGroup;
    dxlgMainGroup4: TdxLayoutGroup;
    dxlgMainGroup2: TdxLayoutGroup;
    edFVEUPredkontace: TcxTextEdit;
    dliMainItem5: TdxLayoutItem;
    dxlgMainGroup3: TdxLayoutGroup;
    dxlgMainGroup5: TdxLayoutGroup;
    edFVDPHEUPredkontace: TcxTextEdit;
    dliMainItem6: TdxLayoutItem;
    dxlgMainGroup6: TdxLayoutGroup;
    dxlgMainGroup7: TdxLayoutGroup;
    dxlgMainGroup8: TdxLayoutGroup;
    dxlgMainGroup9: TdxLayoutGroup;
    dxlgMainGroup10: TdxLayoutGroup;
    dxlgMainGroup11: TdxLayoutGroup;
    dxlgMainGroup12: TdxLayoutGroup;
    edDBPassword: TcxTextEdit;
    edDBServer: TcxTextEdit;
    edDBUser: TcxTextEdit;
    edDBName: TcxTextEdit;
    dliMainItem4: TdxLayoutItem;
    dliMainItem7: TdxLayoutItem;
    dliMainItem8: TdxLayoutItem;
    dliMainItem9: TdxLayoutItem;
    dxlgMainGroup14: TdxLayoutGroup;
    chkXmlFullAdress: TcxCheckBox;
    dliMainItem10: TdxLayoutItem;
    dxlgMainGroup13: TdxLayoutGroup;
    dxlgMainGroup15: TdxLayoutGroup;
    chkShowNonExist: TcxCheckBox;
    dliMainItem11: TdxLayoutItem;
    chkFiltrovatVS: TcxCheckBox;
    dliMainItem12: TdxLayoutItem;
    chkFDNacitatKurs: TcxCheckBox;
    dliMainItem13: TdxLayoutItem;
    dxlgMainGroup16: TdxLayoutGroup;
    dxlytsprtrtmMainSeparatorItem1: TdxLayoutSeparatorItem;
    dxlgMainGroup18: TdxLayoutGroup;
    edCoDoObjednavky: TcxComboBox;
    dxlMainItem1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOptions: TfrmOptions;

implementation

{$R *.dfm}

uses dConnectUnit, JclFileUtils, uFileUtils, dSQLPohodaConnect;

procedure TfrmOptions.btnOkClick(Sender: TObject);
begin
  gbDefFVWhere          := edFVDefPodminka.Text;
  gbDefFDWhere          := edFDDefWhere.Text;
  gbExportFolder        := edDavkaFolder.Text;
  gbXMLIc               := edIc.Text;
  gbXMLPredkontace      := edFVPrekontace.Text;
  gbXMLEUPredkontace    := edFVEUPredkontace.Text;
  gbXMLDPHPredkontace   := edFVDPHPredkontace.Text;
  gbXMLDPHEUPredkontace := edFVDPHEUPredkontace.Text;
  gbXMLNahrText         := edFVNahrText.Text;
  gbXMLroundingDocument := edFVZaokrDoklad.Text;
  gbXMLroundingVAT      := edFVZaokrDPH.Text;
  gbXMLFDPredkontace    := edFDPredkontace.Text;
  gbXMLFDDPHPredkontace := edFDDPHPredkontace.Text;
  gbXMLFDNacitatKurs    := chkFDNacitatKurs.Checked;
  MsSQLServerName       := edDBServer.Text;
  MsSQLDBName           := edDBName.Text;
  MsSQLUserName         := edDBUser.Text;
  MsSQLPasswd           := edDBPassword.Text;
  gbXMLFullAdresExport  := chkXmlFullAdress.Checked;
  gbXMLShowNonExist     := chkShowNonExist.Checked;
  gbXMLFiltrovatVS      := chkFiltrovatVS.Checked;
  gbXMLCoDoObjednavky   := edCoDoObjednavky.ItemIndex;
end;

procedure TfrmOptions.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  tmpFolder: string;
begin
  tmpFolder := edDavkaFolder.Text;
  if BrowseDirectory(tmpFolder, 'Složka pro dávky') then
    edDavkaFolder.Text := PathAddSeparator(tmpFolder);

end;

procedure TfrmOptions.FormCreate(Sender: TObject);
begin
  edFVDefPodminka.Text      := gbDefFVWhere;
  edFDDefWhere.Text         := gbDefFDWhere;
  edDavkaFolder.Text        := gbExportFolder;
  edIc.Text                 := gbXMLIc;
  edFVPrekontace.Text       := gbXMLPredkontace;
  edFVEUPredkontace.Text    := gbXMLEUPredkontace;
  edFVDPHPredkontace.Text   := gbXMLDPHPredkontace;
  edFVDPHEUPredkontace.Text := gbXMLDPHEUPredkontace;
  edFVNahrText.Text         := gbXMLNahrText;
  edFVZaokrDoklad.Text      := gbXMLroundingDocument;
  edFVZaokrDPH.Text         := gbXMLroundingVAT;
  edFDPredkontace.Text      := gbXMLFDPredkontace;
  edFDDPHPredkontace.Text   := gbXMLFDDPHPredkontace;
  chkFDNacitatKurs.Checked  := gbXMLFDNacitatKurs;
  edDBServer.Text           := MsSQLServerName;
  edDBName.Text             := MsSQLDBName;
  edDBUser.Text             := MsSQLUserName;
  edDBPassword.Text         := MsSQLPasswd;
  chkXmlFullAdress.Checked  := gbXMLFullAdresExport;
  chkShowNonExist.Checked   := gbXMLShowNonExist;
  chkFiltrovatVS.Checked    := gbXMLFiltrovatVS;
  edCoDoObjednavky.ItemIndex := gbXMLCoDoObjednavky;
end;

end.
