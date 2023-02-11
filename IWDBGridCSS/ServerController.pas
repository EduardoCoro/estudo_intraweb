unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, DataModuleUnit, IWDataModulePool,
  IW.Browser.Browser, IW.HTTP.Request, IW.HTTP.Reply;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure PoolFreeDataModule(var ADataModule: TDataModule);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.PoolFreeDataModule(var ADataModule: TDataModule);
begin
  FreeAndNil(ADataModule);
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

