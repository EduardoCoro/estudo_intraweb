unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, Data.Win.ADODB, DataModule;

type
  TIWUserSession = class(TIWUserSessionBase)
    procedure IWUserSessionBaseCreate(Sender: TObject);
    procedure IWUserSessionBaseDestroy(Sender: TObject);
  private
    fDM: TDM;
    fIDCliente: Integer;
    fIDProduto: Integer;
    function GetListaClientes: TADOQuery;
    function GetListaProdutos: TADOQuery;
    function GetUmCliente: TADOQuery;
    function GetUmProduto: TADOQuery;
    function GetPastaUpload: string;
    function GetPastaImagemProduto: string;
    { Private declarations }
  public
    { Public declarations }
    // metodos
    function ChecaLogin(aUsuario, aSenha: string; aAdmin: Boolean): boolean;
    procedure AtivaCliente;
    // datasets
    property ListaClientes: TADOQuery read GetListaClientes;
    property ListaProdutos: TADOQuery read GetListaProdutos;
    property UmCliente: TADOQuery read GetUmCliente;
    property UmProduto: TADOQuery read GetUmProduto;
    // diversos
    property PastaUpload: string read GetPastaUpload;
    property PastaImagemProduto: string read GetPastaImagemProduto;
    // Globais
    property IdCliente: Integer read fIDCliente write fIDCliente;
    property IdProduto: Integer read fIDProduto write fIDProduto;
  end;

implementation

{$R *.dfm}

uses
  ServerController;

{ TIWUserSession }

procedure TIWUserSession.AtivaCliente;
begin
  fDM.AtivaCliente(fIdCliente);
end;

function TIWUserSession.ChecaLogin(aUsuario, aSenha: string; aAdmin: Boolean): boolean;
begin
  Result := fDM.ChecaLogin(aUsuario, aSenha, aAdmin, fIDCliente);
end;

function TIWUserSession.GetListaClientes: TADOQuery;
begin
  Result := FDM.qryClientes;
end;

function TIWUserSession.GetListaProdutos: TADOQuery;
begin
  Result := fDM.qryProdutos;
end;

function TIWUserSession.GetPastaImagemProduto: string;
begin
  Result := IWServerController.ContentPath + 'imagens\produtos\';
end;

function TIWUserSession.GetPastaUpload: string;
begin
  Result := WebApplication.ApplicationPath + 'releases\';
end;

function TIWUserSession.GetUmCliente: TADOQuery;
begin
  Result := fDM.qryCliente;
end;

function TIWUserSession.GetUmProduto: TADOQuery;
begin
  Result := fDM.qryProduto;
end;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  fDM := TDM.Create(Nil);
end;

procedure TIWUserSession.IWUserSessionBaseDestroy(Sender: TObject);
begin
  FreeAndNil(fDM);
end;

end.
