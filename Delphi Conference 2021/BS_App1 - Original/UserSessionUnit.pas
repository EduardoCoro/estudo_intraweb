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
    cdsCountry: TClientDataSet;
    cdsCountryName: TStringField;
    cdsCountryCapital: TStringField;
    cdsCountryContinent: TStringField;
    cdsCountryArea: TFloatField;
    cdsCountryPopulation: TFloatField;
    cdsCustomer: TClientDataSet;
    cdsCustomerCustNo: TFloatField;
    cdsCustomerCompany: TStringField;
    cdsCustomerAddr1: TStringField;
    cdsCustomerAddr2: TStringField;
    cdsCustomerCity: TStringField;
    cdsCustomerState: TStringField;
    cdsCustomerZip: TStringField;
    cdsCustomerCountry: TStringField;
    cdsCustomerPhone: TStringField;
    cdsCustomerFAX: TStringField;
    cdsCustomerTaxRate: TFloatField;
    cdsCustomerContact: TStringField;
    cdsCustomerLastInvoiceDate: TDateTimeField;
    cdsFish: TClientDataSet;
    cdsFishSpeciesNo: TFloatField;
    cdsFishNotes: TMemoField;
    cdsFishLength_In: TFloatField;
    cdsFishLengthcm: TFloatField;
    cdsFishSpeciesName: TStringField;
    cdsFishCommon_Name: TStringField;
    cdsFishCategory: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckLogin(const aUserName, aPassword: string): Boolean;
    procedure InitializePasswordChangeProcess(const aUserName: string);
    procedure OpenFishListDataset;
    function SelectRandomFish: Integer;
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

function TIWUserSession.CheckLogin(const aUserName, aPassword: string): Boolean;
begin
  // check email/pwd
  Result := (aUserName = aPassword) and (aUserName <> '');
end;

procedure TIWUserSession.InitializePasswordChangeProcess(const aUserName: string);
begin
  //
end;

procedure TIWUserSession.OpenFishListDataset;
begin
  if not cdsFish.Active then
  begin
    cdsFish.LoadFromFile('biolife.cds');
  end;
end;

function TIWUserSession.SelectRandomFish: Integer;
begin
  OpenFishListDataset;
  cdsFish.First;
  cdsFish.MoveBy(Random(cdsFish.RecordCount));
  Result := cdsFishSpeciesNo.AsInteger;
end;

end.