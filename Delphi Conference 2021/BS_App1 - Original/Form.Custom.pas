unit Form.Custom;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, Frame.Custom, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion;

type
  TfrmCustomForm = class(TIWAppForm)
    IWTP: TIWTemplateProcessorHTML;
  protected
    fFrame: TfrmCustomFrame;
    procedure FreeFrame;
    procedure ShowFrame(aFrameClass: TfrmCustomFrameClass; aParent: TIWRegion);
  public
  end;

implementation

{$R *.dfm}

procedure TfrmCustomForm.FreeFrame;
begin
  if Assigned(fFrame) then
  begin
    FreeAndNil(fFrame);
  end;
end;

procedure TfrmCustomForm.ShowFrame(aFrameClass: TfrmCustomFrameClass; aParent: TIWRegion);
begin
  fFrame := aFrameClass.Create(Self);
  fFrame.Parent := aParent;
  fFrame.Align := alClient;
end;

end.
