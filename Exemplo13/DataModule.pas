unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, SimpleDS, Data.DBXMSSQL;

type
  TMeuDataset = class
  private
    fDataset: TSimpleDataset;
    function GetDataset: TSimpleDataset;
  public
    constructor Create(DBConn: TSQLConnection);
    procedure Open(SQL: String);
    procedure Close;
    property Dataset: TSimpleDataset read GetDataset;
  end;

  TDM = class(TDataModule)
    DBConn: TSQLConnection;
    procedure DataModuleDestroy(Sender: TObject);
  private
    fClientes: TMeuDataset;
    fPedidosCliente: TMeuDataset;
    fPaises: TMeuDataset;
    function GetClientes: TMeuDataset;
    function GetPedidosCliente: TMeuDataset;
    function GetPaises: TMeuDataset;
  public
    property Clientes: TMeuDataset read GetClientes;
    property PedidosCliente: TMeuDataset read GetPedidosCliente;
    property Paises: TMeuDataset read GetPaises;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TDM }

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(fClientes);
  FreeAndNil(fPedidosCliente);
  FreeAndNil(fPaises);
end;

function TDM.GetClientes: TMeuDataset;
begin
  if not Assigned(fClientes) then begin
    fClientes := TMeuDataset.Create(DBConn);
  end;
  Result := fClientes;
end;

function TDM.GetPaises: TMeuDataset;
begin
  if not Assigned(fPaises) then begin
    fPaises := TMeuDataset.Create(DBConn);
  end;
  Result := fPaises;
end;

function TDM.GetPedidosCliente: TMeuDataset;
begin
  if not Assigned(fPedidosCliente) then begin
    fPedidosCliente := TMeuDataset.Create(DBConn);
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
  fDataset := TSimpleDataset.Create(Nil);
  fDataset.Dataset.SQLConnection := DBConn;
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

end.
