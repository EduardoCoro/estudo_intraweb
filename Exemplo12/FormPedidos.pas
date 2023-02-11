unit FormPedidos;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, Vcl.Controls, Vcl.Forms, frameMenu;

type
  TfrmPedidos = class(TIWAppForm)
    frmMenu1: TfrmMenu;
    IWRegion1: TIWRegion;
    IWRectangle1: TIWRectangle;
  public
  end;

implementation

{$R *.dfm}


end.
