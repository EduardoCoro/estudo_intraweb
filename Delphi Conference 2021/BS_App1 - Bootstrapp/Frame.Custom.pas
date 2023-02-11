unit Frame.Custom;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWHTMLContainer, IWHTML40Container, IWHTMLTag;

type
  TfrmCustomFrame = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWTP: TIWTemplateProcessorHTML;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TfrmCustomFrameClass = class of TfrmCustomFrame;

implementation

{$R *.dfm}

end.
