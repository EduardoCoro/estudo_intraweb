unit AreaAdminProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBase, IWCompGradButton, IWCompLabel,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion;

type
  TfrmAdminProdutos = class(TfrmBase)
    btnSair: TIWGradButton;
    btnNovoProduto: TIWGradButton;
    btnAlterarProduto: TIWGradButton;
    btnUploadRelease: TIWGradButton;
    btnListaReleases: TIWGradButton;
    btnListaProdutos: TIWGradButton;
    procedure btnSairClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnNovoProdutoClick(Sender: TObject);
    procedure btnAlterarProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  ServerController,
  FrameBaseDB,
  ListaProdutos,
  DadosProduto,
  UploadRelease;

procedure TfrmAdminProdutos.btnAlterarProdutoClick(Sender: TObject);
begin
  MostraFrame(TfrmDadosProduto, UserSession.UmProduto, opEdicao);
end;

procedure TfrmAdminProdutos.btnNovoProdutoClick(Sender: TObject);
begin
  MostraFrame(TfrmDadosProduto, UserSession.UmProduto, opInsercao);
end;

procedure TfrmAdminProdutos.btnSairClick(Sender: TObject);
begin
  Release;
end;

procedure TfrmAdminProdutos.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  MostraFrame(TfrmListaProdutos, UserSession.ListaProdutos, opVisualizacao);
end;

end.
