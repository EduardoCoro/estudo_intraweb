program Exemplo16;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit2 in 'Unit2.pas' {IWForm2: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit1 in 'Unit1.pas' {frmAzul: TIWAppForm},
  Unit3 in 'Unit3.pas' {frmVermelho: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
