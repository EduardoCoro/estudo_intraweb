program Exemplo4;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit2 in 'Unit2.pas' {IWForm2: TIWAppForm},
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
