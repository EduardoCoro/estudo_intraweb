unit AreaCliente;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWHTMLControls, IWCompGradButton, DadosCliente;

type
  TfrmAreaCliente = class(TIWAppForm)
    IWRegion1: TIWRegion;
    irBarraTopo: TIWRegion;
    btnAlterarDados: TIWGradButton;
    btnSair: TIWGradButton;
    IWHRule1: TIWHRule;
    lblTituloJanela: TIWLabel;
    btnProdutos: TIWGradButton;
    irAreaTrabalho: TIWRegion;
    procedure btnSairClick(Sender: TObject);
  private
  public
  end;

implementation

{$R *.dfm}

uses ServerController;


procedure TfrmAreaCliente.btnSairClick(Sender: TObject);
begin
 Release;
end;

end.
