program SegundoExemplo;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit2 in 'Unit2.pas' {IWFrame2: TFrame},
  Unit3 in 'Unit3.pas' {IWFrame3: TFrame};

{$R *.res}

begin
  TIWStart.Execute(False);
end.
