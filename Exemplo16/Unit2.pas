unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls;

type
  TIWForm2 = class(TIWAppForm)
    IWLink1: TIWLink;
    IWLink2: TIWLink;
    procedure IWLink1Click(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses Unit1, Unit3;


procedure TIWForm2.IWLink1Click(Sender: TObject);
begin
  TfrmAzul.Create(WebApplication).Show;
end;

procedure TIWForm2.IWLink2Click(Sender: TObject);
begin
  TfrmVermelho.Create(WebApplication).Show;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
