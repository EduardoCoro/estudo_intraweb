unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TfrmAzul = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses Unit1;

procedure TfrmAzul.IWButton1Click(Sender: TObject);
begin
  // Release;
  Hide;
end;

procedure TfrmAzul.IWButton2Click(Sender: TObject);
begin
  TfrmVermelho.Create(WebApplication).Show;
end;

end.
