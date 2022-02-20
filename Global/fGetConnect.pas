unit fGetConnect;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  XSpin, StdCtrls, Buttons, cxButtons, ExtCtrls;

type
  TfrmGetConnection = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    lbCharSet: TLabel;
    lbSQLRole: TLabel;
    lbSQLDialect: TLabel;
    edUsername: TEdit;
    edPassword: TEdit;
    cbDatabase: TComboBox;
    cbCharSet: TComboBox;
    edSQLRole: TEdit;
    cbRemember: TCheckBox;
    seSQLDialect: TXSpinEdit;
    pnlButtons: TPanel;
    bvlButton: TBevel;
    btnOk: TcxButton;
    procedure cbDatabaseChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGetConnection: TfrmGetConnection;

implementation

uses appdmduSystem,IBD_USearch;

{$R *.DFM}

procedure TfrmGetConnection.cbDatabaseChange(Sender: TObject);
begin
  if dmdSystem.IBOMainDB.Connected then
    dmdSystem.IBOMainDB.Connected := false;

end;

procedure TfrmGetConnection.SpeedButton1Click(Sender: TObject);
var
  s: TFileName;
begin
  with dmdSystem do
  begin
    IBOMainDB.Connected := false;
    if cbDatabase.Text <> '' then
    begin
      IBOMainDB.Database := cbDatabase.Text;
      odGDB.FileName := IBOMainDB.Path;
    end
    else
      odGDB.FileName := '*.GDB';
    if IBD_USearch.ModalSearchEx( Trim( odGDB.Filename ), s ) then
    begin
      IBOMainDB.Database := s;
      cbDatabase.Text := s;
    end;
  end;
end;

end.
