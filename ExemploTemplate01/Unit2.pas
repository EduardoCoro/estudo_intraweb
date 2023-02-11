unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML;

type
  TIWForm2 = class(TIWAppForm)
    btnHoraAtual: TIWButton;
    lblHoraAtual: TIWLabel;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    lblAlerta: TIWLabel;
    procedure btnHoraAtualAsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm2.btnHoraAtualAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  lblHoraAtual.Caption := TimeToStr(Now);
end;

initialization
  TIWForm2.SetAsMainForm;

end.
