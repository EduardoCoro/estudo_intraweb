unit FormPedidosCliente;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids,
  IWDBGrids, ServerController, SQLs, Data.DB, IWCompButton, IWCompRectangle,
  Vcl.Forms, FrameDadosPedido;

type
  TfrmPedidosCliente = class(TIWAppForm)
    Grid: TIWDBGrid;
    DataSource1: TDataSource;
    btnVoltar: TIWButton;
    IWRectangle1: TIWRectangle;
    frmDadosPedido: TfrmDadosPedido;
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure GridColumns0Click(ASender: TObject; const AValue: string);
    procedure GridRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
  public
  end;

implementation

{$R *.dfm}

procedure TfrmPedidosCliente.btnVoltarClick(Sender: TObject);
begin
  Release;
end;

procedure TfrmPedidosCliente.GridColumns0Click(ASender: TObject; const AValue: string);
begin
  UserSession.DM.PedidosCliente.Dataset.Locate('OrderNo', AValue, []);
end;

procedure TfrmPedidosCliente.GridRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  if Grid.RowIsCurrent then begin
    ACell.BGColor := clWebYELLOW;
    ACell.Font.Color := clWebBLACK;
  end;
end;

procedure TfrmPedidosCliente.IWAppFormCreate(Sender: TObject);
var
  xCustNo: String;
begin
  xCustNo := UserSession.DM.Clientes.Dataset.FieldByName('CustNo').AsString;
  UserSession.DM.PedidosCliente.Open(Format(SQLPedidosCliente, [xCustNo]));
  //
  UserSession.DM.PedidosCliente.Dataset.IndexFieldNames := 'OrderNo';
  //
  DataSource1.DataSet := UserSession.DM.PedidosCliente.Dataset;
  IWRectangle1.Text := 'Pedidos do cliente ' + UserSession.DM.Clientes.Dataset.FieldByName('Company').AsString;
end;

end.
