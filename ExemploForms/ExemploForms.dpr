program ExemploForms;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit3 in 'Unit3.pas' {IWForm3: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit1 in 'Unit1.pas' {frmVermelho: TIWAppForm},
  Unit2 in 'Unit2.pas' {frmAzul: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
