unit DataModule;

interface

uses
  MIDASLib, System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, SimpleDS;

type
  TMeuDataset = class
  private
    fDataset: TSimpleDataset;
    function GetDataset: TSimpleDataset;
  public
    constructor Create(DBConn: TSQLConnection);
    destructor Destroy;
    procedure Open(SQL: String);
    procedure Close;
    property Dataset: TSimpleDataset read GetDataset;
  end;

  TCliente = class(TMeuDataset)
  public
    procedure Open(IdCliente: Integer);
  end;

  TPedidosCliente = class(TMeuDataset)
  public
    procedure Open(IdCliente: Integer);
  end;

  TDetalhesPedido = class(TMeuDataset)
  public
    procedure Open(IdPedido: Integer);
  end;

  TDM = class(TDataModule)
    DBConn: TSQLConnection;
    procedure DataModuleDestroy(Sender: TObject);
  private
    fClientes: TCliente;
    fPedidosCliente: TPedidosCliente;
    fDetalhesPedido: TDetalhesPedido;
    fPaises: TMeuDataset;
    function GetClientes: TCliente;
    function GetPedidosCliente: TPedidosCliente;
    function GetPaises: TMeuDataset;
    function GetDetalhesPedido: TDetalhesPedido;
  public
    property Clientes: TCliente read GetClientes;
    property PedidosCliente: TPedidosCliente read GetPedidosCliente;
    property Paises: TMeuDataset read GetPaises;
    property DetalhesPedido: TDetalhesPedido read GetDetalhesPedido;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

uses SQLs;

{ TDM }

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(fClientes);
  FreeAndNil(fPedidosCliente);
  FreeAndNil(fPaises);
end;

function TDM.GetClientes: TCliente;
begin
  if not Assigned(fClientes) then begin
    fClientes := TCliente.Create(DBConn);
  end;
  Result := fClientes;
end;

function TDM.GetDetalhesPedido: TDetalhesPedido;
begin
  if not Assigned(fDetalhesPedido) then begin
    fDetalhesPedido := TDetalhesPedido.Create(DBConn);
  end;
  Result := fDetalhesPedido;
end;

function TDM.GetPaises: TMeuDataset;
begin
  if not Assigned(fPaises) then begin
    fPaises := TMeuDataset.Create(DBConn);
  end;
  Result := fPaises;
end;

function TDM.GetPedidosCliente: TPedidosCliente;
begin
  if not Assigned(fPedidosCliente) then begin
    fPedidosCliente := TPedidosCliente.Create(DBConn);
  end;
  Result := fPedidosCliente;
end;

{ TMeuDataset }

procedure TMeuDataset.Close;
begin
  fDataset.Close;
end;

constructor TMeuDataset.Create(DBConn: TSQLConnection);
begin
  inherited Create;
  fDataset := TSimpleDataset.Create(Nil);
  fDataset.Dataset.SQLConnection := DBConn;
end;

destructor TMeuDataset.Destroy;
begin
  fDataset.Close;
  fDataset.Dataset.Close;
  FreeAndNil(fDataset);
  inherited Destroy;
end;

function TMeuDataset.GetDataset: TSimpleDataset;
begin
  Result := fDataset;
end;

procedure TMeuDataset.Open(SQL: String);
begin
  fDataset.Close;
  fDataset.Dataset.CommandText := SQL;
  fDataset.Open;
end;

{ TCliente }

procedure TCliente.Open(IdCliente: Integer);
begin
  inherited Open(SQLCliente + ' ' + Format(SQLWhereIDCliente, [IdCliente]));
end;

{ TPedidosCliente }

procedure TPedidosCliente.Open(IdCliente: Integer);
begin
  fDataset.IndexFieldNames := 'OrderNo';
  inherited Open(SQLPedidosCliente + ' ' + Format(SQLWhereIDCliente, [IdCliente]));
  //
  TCurrencyField(Dataset.FieldByName('AmountPaid')).Currency := True;
end;

{ TDetalhesPedido }

procedure TDetalhesPedido.Open(IdPedido: Integer);
begin
  fDataset.IndexFieldNames := 'ItemNo';
  inherited Open(Format(SQLDetalhesPedido, [IdPedido]));
  //
  TCurrencyField(Dataset.FieldByName('Total')).Currency := True;
  TCurrencyField(Dataset.FieldByName('ListPrice')).Currency := True;
  TIntegerField(Dataset.FieldByName('ItemNo')).DisplayFormat := '000';
  TIntegerField(Dataset.FieldByName('Qty')).DisplayFormat := '000';
end;

end.
