unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    DB: TADOConnection;
    qryClientes: TADOQuery;
    qryProdutos: TADOQuery;
    qryChecaLogin: TADOQuery;
    qryCliente: TADOQuery;
    qryProdutosid_produto: TAutoIncField;
    qryProdutosnome: TStringField;
    qryProdutospasta: TStringField;
    qryProdutosdescricao: TMemoField;
    qryProdutosimagem: TStringField;
    qryProduto: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    MemoField1: TMemoField;
    StringField3: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    // login
    function ChecaLogin(aUsuario, aSenha: string; aAdmin: Boolean; var aIdCliente: Integer): boolean;
    // Um Cliente
    procedure AtivaCliente(aIdCliente: Integer);
    // Clientes
    // Um Produto
    procedure AtivaProduto(aIdProduto: Integer);
    // Produtos
    procedure InsereProduto;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.AtivaCliente(aIdCliente: Integer);
begin
  qryCliente.Close;
  qryCliente.Parameters.ParamByName('id_cliente').Value := aIdCliente;
  qryCliente.Open;
end;

procedure TDM.AtivaProduto(aIdProduto: Integer);
begin

end;

function TDM.ChecaLogin(aUsuario, aSenha: string; aAdmin: Boolean; var aIdCliente: Integer): boolean;
begin
  if aAdmin then
  begin
    Result := (aUsuario = 'admin') and (aSenha = 'admin');
    aIdCliente := -1;
  end
  else
  begin
    qryChecaLogin.Close;
    qryChecaLogin.Parameters.ParamByName('email').Value := aUsuario;
    qryChecaLogin.Parameters.ParamByName('senha').Value := aSenha;
    qryChecaLogin.Open;
    Result := qryChecaLogin.RecordCount > 0;
    aIdCliente := qryChecaLogin.FieldByName('id_cliente').AsInteger;
    qryChecaLogin.Close;
  end;
end;

procedure TDM.InsereProduto;
begin

end;

end.
