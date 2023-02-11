unit Unit6;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TIWForm6 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm6.IWButton1Click(Sender: TObject);
begin
  IWEdit1.Caption := TimeToStr(Now);
end;

initialization
  TIWForm6.SetAsMainForm;

end.
