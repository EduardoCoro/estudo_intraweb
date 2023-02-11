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
    FxStr: string;
    procedure SetxStr(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property xStr: string read FxStr write SetxStr;
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

procedure TIWUserSession.SetxStr(const Value: string);
begin
  FxStr := Value;
end;

end.