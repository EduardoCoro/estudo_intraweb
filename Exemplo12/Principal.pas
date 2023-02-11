unit Principal;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  Vcl.Forms, frameMenu;

type
  TfrmPrincipal = class(TIWAppForm)
    frmMenu1: TfrmMenu;
    procedure IWAppFormRender(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TfrmPrincipal.IWAppFormRender(Sender: TObject);
begin
  frmMenu1.lnkVoltar.Visible := False;
end;

initialization
  TfrmPrincipal.SetAsMainForm;

end.
