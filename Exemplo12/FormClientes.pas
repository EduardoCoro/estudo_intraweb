unit FormClientes;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  Vcl.Forms, frameMenu, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion;

type
  TfrmClientes = class(TIWAppForm)
    frmMenu1: TfrmMenu;
    IWRegion1: TIWRegion;
    IWRectangle1: TIWRectangle;
  public
  end;

implementation

{$R *.dfm}

end.
