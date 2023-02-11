unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, Datasnap.DBClient;

type
  TIWUserSession = class(TIWUserSessionBase)
    cdsBioLife: TClientDataSet;
    procedure cdsBioLifeBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TIWUserSession.cdsBioLifeBeforeOpen(DataSet: TDataSet);
begin
  cdsBioLife.FileName := WebApplication.ApplicationPath + 'DB\BioLife.XML';
end;

end.