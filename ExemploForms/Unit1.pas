unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWCompMemo;

type
  TfrmVermelho = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    IWRegion2: TIWRegion;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TfrmVermelho.IWButton1Click(Sender: TObject);
begin
  // Release;
  Hide;
end;

end.
