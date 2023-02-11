unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  Unit1, Unit2, IWCompLabel, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, Unit4, IWCompListbox;

type
  TIWForm3 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWLabel1: TIWLabel;
    IWButton3: TIWButton;
    IWRegion1: TIWRegion;
    IWButton4: TIWButton;
    IWLabel2: TIWLabel;
    IWRegion2: TIWRegion;
    IWComboBox1: TIWComboBox;
    IWButton5: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  private
    frmAzul: TfrmAzul;
    frmVermelho: TfrmVermelho;
  public

  end;

implementation

{$R *.dfm}

procedure TIWForm3.IWAppFormRender(Sender: TObject);
begin
  IWLabel1.Caption := TimeToStr(Now);
end;

procedure TIWForm3.IWButton1Click(Sender: TObject);
var
  i: Integer;
begin
  if frmAzul = nil then begin
    frmAzul :=  TfrmAzul.Create(WebApplication)
  end;
  frmAzul.Show;
  i := 0;
  while i < 50 do begin
    Sleep(100);
    i := i + 1;
  end;
end;

procedure TIWForm3.IWButton2Click(Sender: TObject);
begin
  if frmVermelho = nil then begin
    frmVermelho := TfrmVermelho.Create(WebApplication);
  end;
  frmVermelho.Show;
end;

initialization
  TIWForm3.SetAsMainForm;

end.
