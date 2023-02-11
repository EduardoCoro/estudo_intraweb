unit AreaAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBase, IWCompGradButton, IWCompLabel,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  IWAppForm;

type
  TfrmAreaAdmin = class(TfrmBase)
    btnProdutos: TIWGradButton;
    btnClientes: TIWGradButton;
    btnLicencas: TIWGradButton;
    btnSair: TIWGradButton;
    procedure btnProdutosClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnLicencasClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses AreaAdminClientes, AreaAdminProdutos, ListaLicencas;

procedure TfrmAreaAdmin.btnClientesClick(Sender: TObject);
begin
  MostraForm(TfrmAdminClientes);
end;

procedure TfrmAreaAdmin.btnLicencasClick(Sender: TObject);
begin
  MostraForm(TfrmListaLicencas);
end;

procedure TfrmAreaAdmin.btnProdutosClick(Sender: TObject);
begin
  MostraForm(TfrmAdminProdutos);
end;

procedure TfrmAreaAdmin.btnSairClick(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('');
end;

end.
