program Exemplo17;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit4 in 'Unit4.pas' {IWForm4: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit1 in 'Unit1.pas' {frmClientes: TIWAppForm},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  SQLs in 'SQLs.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
