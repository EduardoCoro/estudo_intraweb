program BS_App1;

uses
  FastMM4,
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Form.Custom in 'Form.Custom.pas' {frmCustomForm: TIWAppForm},
  Frame.Custom in 'Frame.Custom.pas' {frmCustomFrame: TFrame},
  Form.Main in 'Form.Main.pas' {frmMainForm: TIWAppForm},
  Form.Login in 'Form.Login.pas' {frmLoginForm: TIWAppForm},
  Frame.Fish.Data in 'Frame.Fish.Data.pas' {frmFishData: TFrame},
  Frame.Fish.List in 'Frame.Fish.List.pas' {frmFishList: TFrame},
  Frame.Fish.Image in 'Frame.Fish.Image.pas' {frmFishImage: TFrame},
  BSApp.Types in 'BSApp.Types.pas',
  Frame.Fish.ImageList in 'Frame.Fish.ImageList.pas' {frmFishImageList: TFrame};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
