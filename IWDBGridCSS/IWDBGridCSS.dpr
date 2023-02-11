program IWDBGridCSS;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  MidasLib,
  Forms,
  IWStart,
  MainForm in 'MainForm.pas' {frmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
