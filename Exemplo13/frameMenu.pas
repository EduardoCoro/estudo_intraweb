unit FrameMenu;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWHTML40Container, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWApplication, IWAppForm, IWCompLabel;

type
  TfrmMenu = class(TFrame)
    IWFrameRegion: TIWRegion;
    lnkClientes: TIWLink;
    lnkVoltar: TIWLink;
    lnkFuncionarios: TIWLink;
    lnkPedidos: TIWLink;
    lnkLogout: TIWLink;
    lblMensagem: TIWLabel;
    procedure lnkClientesClick(Sender: TObject);
    procedure lnkVoltarClick(Sender: TObject);
    procedure IWFrameRegionRender(Sender: TObject);
    procedure lnkFuncionariosClick(Sender: TObject);
    procedure lnkPedidosClick(Sender: TObject);
    procedure lnkLogoutClick(Sender: TObject);
  private
    { Private declarations }
    function WebApplication: TIWApplication;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses FormClientes, FormFuncionarios, FormPedidos, Principal, FormLogin,
  ServerController;

function TfrmMenu.WebApplication: TIWApplication;
begin
  Result := GGetWebApplicationThreadVar;
end;

procedure TfrmMenu.lnkVoltarClick(Sender: TObject);
//var
//  formAtual: TIWAppForm;
begin
//  formAtual := TIWAppForm(WebApplication.ActiveForm);
//  if formAtual <> Nil then begin
//    formAtual.Release;
//  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmPrincipal.Create(WebApplication).Show;
end;

procedure TfrmMenu.IWFrameRegionRender(Sender: TObject);
begin
  lnkVoltar.Top := Height - 20;
  //
  lnkLogout.Top := Height - 40;
  //
  lblMensagem.Top := Height - 60;
  lblMensagem.Caption := 'Bem-vindo ' + UserSession.Usuario.NomeUsuario;
end;

procedure TfrmMenu.lnkClientesClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmClientes.Create(WebApplication).Show;
end;

procedure TfrmMenu.lnkFuncionariosClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmFuncionarios.Create(WebApplication).Show;
end;

procedure TfrmMenu.lnkLogoutClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  UserSession.Logout;
  TfrmLogin.Create(WebApplication).Show;
end;

procedure TfrmMenu.lnkPedidosClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmPedidos.Create(WebApplication).Show;
end;

end.
