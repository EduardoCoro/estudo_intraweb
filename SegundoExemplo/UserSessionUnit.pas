unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes;

type
  TIWUserSession = class(TIWUserSessionBase)
  private
    FNomeUsuario: string;
    procedure SetNomeUsuario(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property NomeUsuario: string read FNomeUsuario write SetNomeUsuario;
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

procedure TIWUserSession.SetNomeUsuario(const Value: string);
begin
  FNomeUsuario := Value;
end;

end.