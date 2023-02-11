unit Unit6;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompCheckbox,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, Vcl.Imaging.jpeg, IWCompExtCtrls, Vcl.Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion;

type
  TIWForm6 = class(TIWAppForm)
    IWCheckBox1: TIWCheckBox;
    IWImage1: TIWImage;
    IWRegion1: TIWRegion;
    IWImage2: TIWImage;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWCheckBox1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm6.IWAppFormCreate(Sender: TObject);
begin
  IWImage1.Visible := False;
  IWImage2.Visible := False;
end;

procedure TIWForm6.IWCheckBox1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImage1.Visible := IWCheckBox1.Checked;
  IWImage2.Visible := IWCheckBox1.Checked;
end;

initialization
  TIWForm6.SetAsMainForm;

end.
