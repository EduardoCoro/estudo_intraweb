unit FormLogin;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  IWCompEdit, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompLabel;

type
  TfrmLogin = class(TIWAppForm)
    IWLabel1: TIWLabel;
    edtUsuario: TIWEdit;
    IWLabel2: TIWLabel;
    edtSenha: TIWEdit;
    btnLogin: TIWButton;
    lblMensagem: TIWLabel;
    procedure btnLoginClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses ServerController, Principal;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  xNomeUsuario, xSenha: string;
begin
  xNomeUsuario := edtUsuario.Text;
  xSenha := edtSenha.Text;
  //
  if UserSession.ValidaUsuario(xNomeUsuario, xSenha) then begin
    // carrega usuario
    UserSession.CarregaUsuario(xNomeUsuario);
    // destroi a tela de login
    Release;
    // ir para o form principal
    TfrmPrincipal.Create(WebApplication).Show;
  end else begin
    // mensagem de erro
    lblMensagem.Visible := True;
    lblMensagem.Caption := 'Usuário e/ou senha inválidos.';
  end;
end;

initialization
  TfrmLogin.SetAsMainForm;

end.
