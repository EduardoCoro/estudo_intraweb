unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWDBStdCtrls, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWCompGrids, IWDBGrids;

type
  TfrmClientes = class(TIWAppForm)
    dtsCliente: TDataSource;
    IWRegion1: TIWRegion;
    IWDBLabel1: TIWDBLabel;
    IWDBLabel2: TIWDBLabel;
    IWDBLabel3: TIWDBLabel;
    IWDBLabel4: TIWDBLabel;
    GridPedidos: TIWDBGrid;
    dtsPedidosCliente: TDataSource;
    IWDBGrid1: TIWDBGrid;
    dtsDetalhesPedido: TDataSource;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure GridPedidosColumns0Click(ASender: TObject; const AValue: string);
    procedure IWDBGrid1Columns0Click(ASender: TObject; const AValue: string);
  private
    fIdCliente: Integer;
    procedure AbrirDetalhesPedido(IdPedido: Integer);
  public
  end;

implementation

{$R *.dfm}

uses IWURLMap, ServerController;

procedure TfrmClientes.AbrirDetalhesPedido(IdPedido: Integer);
begin
  UserSession.DM.DetalhesPedido.Close;
  UserSession.DM.DetalhesPedido.Open(IdPedido);
  dtsDetalhesPedido.DataSet := UserSession.DM.DetalhesPedido.Dataset;
end;

procedure TfrmClientes.GridPedidosColumns0Click(ASender: TObject; const AValue: string);
begin
  UserSession.DM.PedidosCliente.Dataset.Locate('OrderNo', aValue, []);
  AbrirDetalhesPedido(UserSession.DM.PedidosCliente.Dataset.FieldByName('OrderNo').AsInteger);
end;

procedure TfrmClientes.IWAppFormCreate(Sender: TObject);
begin
  // verificar se o parametro foi passado na URL
  if WebApplication.RunParams.IndexOfName('IDCliente') = -1 then begin
    WebApplication.Terminate('É necessário o parãmetro IDCliente');
  end else begin
    fIdCliente := StrToInt(WebApplication.RunParams.Values['IDCliente']);
    // leitura dos dados do cliente
    UserSession.DM.Clientes.Close;
    UserSession.DM.Clientes.Open(fIdCliente);
    dtsCliente.DataSet := UserSession.DM.Clientes.Dataset;
    // leitura dos pedidos do cliente
    UserSession.DM.PedidosCliente.Close;
    UserSession.DM.PedidosCliente.Open(fIdCliente);
    dtsPedidosCliente.DataSet := UserSession.DM.PedidosCliente.Dataset;
    // abrir primeiro pedido
    AbrirDetalhesPedido(UserSession.DM.PedidosCliente.Dataset.FieldByName('OrderNo').AsInteger);
  end;
end;

procedure TfrmClientes.IWAppFormDestroy(Sender: TObject);
begin
  UserSession.DM.Clientes.Close;
end;

procedure TfrmClientes.IWDBGrid1Columns0Click(ASender: TObject;
  const AValue: string);
begin
  UserSession.DM.DetalhesPedido.Dataset.Locate('ItemNo', AValue, []);
end;

initialization
  TIWURLMap.Add('/cliente/', '*', TfrmClientes);

end.
