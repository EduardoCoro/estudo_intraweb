object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  ComInitialization = ciNormal
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  HTMLHeaders.Strings = (
    '<link href="cd.css" rel="stylesheet" type="text/css" />')
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersions = []
  Version = '14.0.45'
  AllowMultipleSessionsPerUser = False
  OnNewSession = IWServerControllerBaseNewSession
  Height = 406
  Width = 559
end
