unit Unit4;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel, IWHTMLContainer,
  IWHTML40Container;

type
  TframeXE2 = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWLabel1: TIWLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.