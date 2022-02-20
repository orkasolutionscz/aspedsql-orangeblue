unit STfrmuModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uCustomModule, ActnList;

type
  TSTfrmModule = class(TjfsEvidenceModule)
    actlModule: TActionList;
    actStatistika: TAction;
    actlBGModule: TActionList;
    actBGStatistika: TAction;
    actDetailCeny: TAction;
    procedure gbEvidenceModuleInitModule(Sender: TObject);
    procedure ShowBrowse(Sender: TObject);
    procedure actDetailCenyExecute(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      procedure ShowCenyPrehled;
      procedure ShowFirmaPrehled;
  end;

var
  STfrmModule: TSTfrmModule;

implementation

uses
  uVarClass, uAppUtils, fGetDateDlg, _frmuCustomBrowse, fMessageDlg, appdmduSystem, STdmdu, STfrmuCenyView,
  fSTVystupy, appfrmuGlobal;

{$R *.DFM}

const
  AM_STATISTKA = 3;

procedure TSTfrmModule.ShowCenyPrehled;
begin
  FindShowFormWhereOrder(TSTfrmCenyView, '', '');
end;

procedure TSTfrmModule.ShowFirmaPrehled;
begin
  appFindShowForm(TfrmSTVystupy).Show;
end;

procedure TSTfrmModule.gbEvidenceModuleInitModule(Sender: TObject);
begin
  actStatistika.Visible   := GetdmdSystem.gbAktivace.GetModulStatistiky and jfaUserInfo.ShowStatistiky;
  actBGStatistika.Visible := actStatistika.Visible;
end;

procedure TSTfrmModule.ShowBrowse(Sender: TObject);
begin
  ShowFirmaPrehled;
end;

procedure TSTfrmModule.actDetailCenyExecute(Sender: TObject);
begin
  ShowCenyPrehled;
end;

end.
