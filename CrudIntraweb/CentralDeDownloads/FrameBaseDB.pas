unit FrameBaseDB;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWHTML40Container, Data.DB, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompGradButton;

type
  TOperacao = (opVisualizacao, opEdicao, opInsercao);

  TfrmBaseDB = class(TFrame)
    IWFrameRegion: TIWRegion;
    DataSource: TDataSource;
    btnSalvar: TIWGradButton;
    btnCancelar: TIWGradButton;
    procedure btnSalvarAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(Owner: TComponent; aDataset: TDataset; aOperacao: TOperacao = opVisualizacao); virtual;
    destructor Destroy; override;
  end;

  TfrmBaseDBClass = class of TfrmBaseDB;

implementation

{$R *.dfm}

{ TfrmBaseDB }

procedure TfrmBaseDB.btnSalvarAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  if DataSource.Dataset.State in [dsInsert, dsEdit] then
    DataSource.Dataset.Post;
end;

constructor TfrmBaseDB.Create(Owner: TComponent; aDataset: TDataset; aOperacao: TOperacao);
begin
  inherited Create(Owner);
  Datasource.Dataset := aDataset;
  //
  if not Datasource.Dataset.Active then
    Datasource.Dataset.Open;
  //
  if aOperacao = opInsercao then
    DataSource.Dataset.Insert
  else if aOperacao = opEdicao then
    DataSource.Dataset.Edit;
end;

destructor TfrmBaseDB.Destroy;
begin
  //
  if Assigned(Datasource.Dataset) then
    Datasource.Dataset.Close;

  Datasource.Dataset := Nil;

  inherited Destroy;
end;

end.