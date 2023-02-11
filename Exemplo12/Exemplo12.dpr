program Exemplo12;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  frameMenu in 'frameMenu.pas' {frmMenu: TFrame},
  FormClientes in 'FormClientes.pas' {frmClientes: TIWAppForm},
  Principal in 'Principal.pas' {frmPrincipal: TIWAppForm},
  FormFuncionarios in 'FormFuncionarios.pas' {frmFuncionarios: TIWAppForm},
  FormPedidos in 'FormPedidos.pas' {frmPedidos: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
