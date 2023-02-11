unit UserSessionUnit;

interface

uses
  IWUserSessionBase, SysUtils, Classes, DataModule;

type
  TIWUserSession = class(TIWUserSessionBase)
    procedure IWUserSessionBaseDestroy(Sender: TObject);
  private
    FDM: TDM;
    function GetDM: TDM;
  public
    property DM: TDM read GetDM;
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

function TIWUserSession.GetDM: TDM;
begin
  if not Assigned(fDM) then begin
    fDM := TDM.Create(Nil);
  end;
  Result := fDM;
end;

procedure TIWUserSession.IWUserSessionBaseDestroy(Sender: TObject);
begin
  if Assigned(fDM) then begin
    FreeAndNil(fDM);
  end;
end;

end.
