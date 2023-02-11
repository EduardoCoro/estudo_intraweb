unit FrameMenu;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWHTML40Container, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWHTMLControls, IWApplication, IWAppForm;

type
  TfrmMenu = class(TFrame)
    IWFrameRegion: TIWRegion;
    lnkClientes: TIWLink;
    lnkVoltar: TIWLink;
    lnkFuncionarios: TIWLink;
    lnkPedidos: TIWLink;
    procedure lnkClientesClick(Sender: TObject);
    procedure lnkVoltarClick(Sender: TObject);
    procedure IWFrameRegionRender(Sender: TObject);
    procedure lnkFuncionariosClick(Sender: TObject);
    procedure lnkPedidosClick(Sender: TObject);
  private
    { Private declarations }
    function WebApplication: TIWApplication;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses FormClientes, FormFuncionarios, FormPedidos, Principal;

function TfrmMenu.WebApplication: TIWApplication;
begin
  Result := GGetWebApplicationThreadVar;
end;

procedure TfrmMenu.lnkVoltarClick(Sender: TObject);
//var
//  formAtual: TIWAppForm;
begin
//  formAtual := TIWAppForm(WebApplication.ActiveForm);
//  if formAtual <> Nil then begin
//    formAtual.Release;
//  end;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmPrincipal.Create(WebApplication).Show;
end;

procedure TfrmMenu.IWFrameRegionRender(Sender: TObject);
begin
  lnkVoltar.Top := Height - 20;
end;

procedure TfrmMenu.lnkClientesClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmClientes.Create(WebApplication).Show;
end;

procedure TfrmMenu.lnkFuncionariosClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmFuncionarios.Create(WebApplication).Show;
end;

procedure TfrmMenu.lnkPedidosClick(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  TfrmPedidos.Create(WebApplication).Show;
end;

end.
