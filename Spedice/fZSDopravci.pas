unit fZSDopravci;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fCustEdit, dxBar, cxClasses, Db, DBActns, ActnList, StdCtrls, cxButtons,
  ExtCtrls;

type
  TfrmZSDopravce = class(TfrmCustEdit)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmZSDopravce: TfrmZSDopravce;

implementation

uses ZSdmdu;

{$R *.DFM}

end.
