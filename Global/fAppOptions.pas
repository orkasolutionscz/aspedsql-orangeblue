{-----------------------------------------------------------------------------
 Unit Name: appOptionsForm
 Author:    fait
 Purpose:   Hlavni okno nastaveni aplikace
 History:
-----------------------------------------------------------------------------}

unit fAppOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ImgList, dxNavBar, dxNavBarCollns, dxNavBarBase,
  StdCtrls, ActnList, cxClasses, cxControls, cxPC, cxButtons, uAppControler,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  Vcl.Menus, uCustomForms;

type
  TGlobalOptionsFrm = class(TjfsDefaultForm)
    NavBar: TdxNavBar;
    igmNavBarGroups: TImageList;
    imgNavBarItems: TImageList;
    pnlGlobal: TPanel;
    pnlWorkingArea: TPanel;
    pnlTlacitka: TPanel;
    ActionList1: TActionList;
    actSave: TAction;
    actCancel: TAction;
    actKonec: TAction;
    TitlePanel: TPanel;
    pgcOptions: TcxPageControl;
    nvgSystem: TdxNavBarGroup;
    Button1: TcxButton;
    Button2: TcxButton;
    nvgModuly: TdxNavBarGroup;
    nvgOther: TdxNavBarGroup;
    nvgKomunikace: TdxNavBarGroup;
    procedure NavBarLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCancelExecute(Sender: TObject);
    procedure actKonecExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    // Zobrazi prislusnou stranku nastaveni
    procedure SaveSettings;
    procedure RegisterOptions(AOptionsFrame: TjfsCustomSettingFrame);
    procedure ShowSection(aTag:integer);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

function appShowOptions: Boolean;

implementation


{$R *.DFM}

var
  ASections: array[TjfsOptionsSection] of string = ('Systém', 'Moduly', 'Ostatní', 'Exporty');

function appShowOptions: Boolean;
var
  dlg: TGlobalOptionsFrm;
begin
  dlg := TGlobalOptionsFrm.Create(nil);
  try
    Result := (dlg.ShowModal = mrOk);
  finally
    dlg.Free;
  end;

end;

{ TOptionInfo }

{ TGlobalOptionsFrm }
constructor TGlobalOptionsFrm.Create(AOwner: TComponent);
var
  I: Integer;
begin
  inherited;
  for I := 0 to jfsAppManager.OptionsFrames.Count - 1 do
  begin
    TjfsCustomSettingFrame(jfsAppManager.OptionsFrames[I]).Tag := I;
    try
      RegisterOptions(TjfsCustomSettingFrame(jfsAppManager.OptionsFrames[I]));
    except
      MessageDlg('Chyba pøi naètení stránky nastevení modulu:' + TjfsCustomSettingFrame(jfsAppManager.OptionsFrames[I]).Caption, mtError, [mbOK], 0); ;
    end;
  end;
  ShowSection(0);
end;

procedure TGlobalOptionsFrm.NavBarLinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
  // Show to the Option
  ShowSection(ALink.Item.Tag);
end;


procedure TGlobalOptionsFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TGlobalOptionsFrm.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TGlobalOptionsFrm.actKonecExecute(Sender: TObject);
begin
  SaveSettings;
  ModalResult := mrOk;
end;

procedure TGlobalOptionsFrm.RegisterOptions(AOptionsFrame: TjfsCustomSettingFrame);
var
  aNewTab: TcxTabSheet;
  ANavBarItem: TdxNavBarItem;
begin

  aNewTab := TcxTabSheet.Create(nil);
  try
    aNewTab.PageControl := pgcOptions;
    aNewTab.Caption := AOptionsFrame.Caption;
    aNewTab.Tag := AOptionsFrame.Tag;
    aNewTab.TabVisible := false;
    AOptionsFrame.Parent := aNewTab;
    AOptionsFrame.Align := alClient;
    AOptionsFrame.ReadSettings;

    ANavBarItem := NavBar.Items.Add;
    ANavBarItem.Caption := AOptionsFrame.Caption;
    ANavBarItem.SmallImageIndex := 0;
    ANavBarItem.Tag := AOptionsFrame.Tag;
    case AOptionsFrame.Section of
      opgSystem:
      begin
        nvgSystem.Visible := True;
        nvgSystem.CreateLink(ANavBarItem);
      end;
      opgModuly:
      begin
        nvgModuly.Visible := True;
        nvgModuly.CreateLink(ANavBarItem);
      end;
      opgOstatni:
      begin
        nvgOther.Visible := True;
        nvgOther.CreateLink(ANavBarItem);
      end;
      opgExporty:
      begin
        nvgKomunikace.Visible := True;
        nvgKomunikace.CreateLink(ANavBarItem);
      end;
    end;
  except
    MessageDlg('Chyba pøi naètení stránky nastevení modulu:' + AOptionsFrame.Caption, mtError, [mbOK], 0); ;
  end;
end;

procedure TGlobalOptionsFrm.ShowSection(aTag: integer);
var
  I: Integer;
begin
  LockWindowUpdate(Handle);
  try
      for I := 0 to pgcOptions.PageCount - 1 do
      begin
        if pgcOptions.Pages[i].tag  = aTag then
        begin
          pgcOptions.ActivePageIndex := i;
          TitlePanel.Caption := 'Nastavení modulu ' + pgcOptions.ActivePage.Caption;
        end;
      end;
  finally
    LockWindowUpdate(0);
    RedrawWindow(Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE
      or RDW_ALLCHILDREN);
  end;
end;

procedure TGlobalOptionsFrm.FormDestroy(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to jfsAppManager.OptionsFrames.Count - 1 do
    TjfsCustomSettingFrame(jfsAppManager.OptionsFrames[I]).Parent := nil;
end;

procedure TGlobalOptionsFrm.SaveSettings;
var
  I: Integer;
begin
  for I := 0 to jfsAppManager.OptionsFrames.Count - 1 do
    TjfsCustomSettingFrame(jfsAppManager.OptionsFrames[I]).WriteSettings;
end;

end.

