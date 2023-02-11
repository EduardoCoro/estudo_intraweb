unit AreaAdminClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBase, IWCompGradButton, IWCompLabel,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion;

type
  TfrmAdminClientes = class(TfrmBase)
    btnSair: TIWGradButton;
    IWGradButton1: TIWGradButton;
    IWGradButton2: TIWGradButton;
    IWGradButton4: TIWGradButton;
    IWGradButton3: TIWGradButton;
    procedure IWGradButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmAdminClientes.IWGradButton3Click(Sender: TObject);
begin
  inherited;
  Release;
end;

end.
