unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component,
  IWCompExtCtrls, IWCompLabel, Data.DB, Vcl.ImgList;

type
  TIWForm1 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWTimer1: TIWTimer;
    ImageList1: TImageList;
    DataSource1: TDataSource;
    procedure IWButton1Click(Sender: TObject);
    procedure IWTimer1AsyncTimer(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  IWEdit1.Caption := TimeToStr(Now);
end;

procedure TIWForm1.IWTimer1AsyncTimer(Sender: TObject;
  EventParams: TStringList);
begin
  IWLabel1.Caption := TimeToStr(Now);
end;

initialization
  TIWForm1.SetAsMainForm;

end.
