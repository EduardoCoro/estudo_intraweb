unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  Data.FMTBcd, DataModule;

type
  TUsuario = class
  private
    FNomeUsuario: string;
    procedure SetNomeUsuario(const Value: string);
  public
    constructor Create(aNomeUsuario: string);
    property NomeUsuario: string read FNomeUsuario write SetNomeUsuario;
  end;

  TIWUserSession = class(TIWUserSessionBase)
    procedure IWUserSessionBaseCreate(Sender: TObject);
    procedure IWUserSessionBaseDestroy(Sender: TObject);
  private
    FUsuario: TUsuario;
    FDM: TDM;
    procedure SetUsuario(const Value: TUsuario);
    function GetDM: TDM;
  public
    function ValidaUsuario(const NomeUsuario, Senha: string): boolean;
    procedure CarregaUsuario(const NomeUsuario: string);
    procedure Logout;
    property Usuario: TUsuario read FUsuario write SetUsuario;
    property DM: TDM read GetDM;
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

procedure TIWUserSession.CarregaUsuario(const NomeUsuario: string);
begin
  Logout;
  Usuario := TUsuario.Create(NomeUsuario);
end;

function TIWUserSession.GetDM: TDM;
begin
  if fDM = Nil then begin
    fDM := TDM.Create(Nil);
  end;
  Result := fDM;
end;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
//  fDM := TDM.Create(Nil);
end;

procedure TIWUserSession.IWUserSessionBaseDestroy(Sender: TObject);
begin
  FreeAndNil(fDM);
end;

procedure TIWUserSession.Logout;
begin
  if Usuario <> Nil then begin
    FreeAndNil(FUsuario);
  end;
end;

procedure TIWUserSession.SetUsuario(const Value: TUsuario);
begin
  FUsuario := Value;
end;

function TIWUserSession.ValidaUsuario(const NomeUsuario, Senha: string): boolean;
begin
  if (NomeUsuario = '') or (Senha = '') then begin
    Result := False;
  end else begin
    Result := NomeUsuario = Senha;
  end;
end;

{ TUsuario }

constructor TUsuario.Create(aNomeUsuario: string);
begin
  FNomeUsuario := aNomeUsuario;
end;

procedure TUsuario.SetNomeUsuario(const Value: string);
begin
  FNomeUsuario := Value;
end;

end.

end;