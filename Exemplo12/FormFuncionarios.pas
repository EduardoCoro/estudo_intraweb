unit FormFuncionarios;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, Vcl.Controls, Vcl.Forms, frameMenu;

type
  TfrmFuncionarios = class(TIWAppForm)
    frmMenu1: TfrmMenu;
    IWRegion1: TIWRegion;
    IWRectangle1: TIWRectangle;
  public
  end;

implementation

{$R *.dfm}


end.
