unit Unit4;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel;

type
  TIWForm4 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm4.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWLabel1.Caption := TimeToStr(Now);
end;

initialization
  TIWForm4.SetAsMainForm;

end.
