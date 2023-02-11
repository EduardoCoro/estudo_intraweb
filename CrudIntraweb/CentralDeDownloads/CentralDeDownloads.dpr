program CentralDeDownloads;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  UTF8ContentParser,
  AreaCliente in 'AreaCliente.pas' {frmAreaCliente: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  LoginForm in 'LoginForm.pas' {frmLoginForm: TIWAppForm},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  IWLicenseKey in '..\..\..\Dropbox\Dev\Atozed\IntraWeb\14.0\source\internal\core\IWLicenseKey.pas',
  FormBase in 'FormBase.pas' {frmBase: TIWAppForm},
  AreaAdmin in 'AreaAdmin.pas' {frmAreaAdmin: TIWAppForm},
  AreaAdminProdutos in 'AreaAdminProdutos.pas' {frmAdminProdutos: TIWAppForm},
  AreaAdminClientes in 'AreaAdminClientes.pas' {frmAdminClientes: TIWAppForm},
  ListaLicencas in 'ListaLicencas.pas' {frmListaLicencas: TIWAppForm},
  ListaClientes in 'ListaClientes.pas' {frmListaClientes: TFrame},
  ListaProdutos in 'ListaProdutos.pas' {frmListaProdutos: TFrame},
  FrameBaseDB in 'FrameBaseDB.pas' {frmBaseDB: TFrame},
  FrameBaseDBGrid in 'FrameBaseDBGrid.pas' {frmBaseDBGrid: TFrame},
  DadosCliente in 'DadosCliente.pas' {frmDadosCliente: TFrame},
  UploadRelease in 'UploadRelease.pas' {frmUploadRelease: TIWAppForm},
  DadosProduto in 'DadosProduto.pas' {frmDadosProduto: TFrame};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
