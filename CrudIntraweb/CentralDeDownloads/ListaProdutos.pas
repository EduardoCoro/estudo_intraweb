unit ListaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrameBaseDBGrid, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids, IWDBGrids,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  Data.DB, IWCompGradButton, FrameBaseDB;

type
  TfrmListaProdutos = class(TfrmBaseDBGrid)
    procedure GridColumns0Click(ASender: TObject; const AValue: string);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(Owner: TComponent; aDataset: TDataset; aOperacao: TOperacao = opVisualizacao); override;
  end;

implementation

{$R *.dfm}

uses ServerController;

{ TfrmListaProdutos }

constructor TfrmListaProdutos.Create(Owner: TComponent; aDataset: TDataset; aOperacao: TOperacao);
begin
  inherited;
  UserSession.ListaProdutos.First;
  UserSession.IdProduto := UserSession.ListaProdutos.FieldByName('id_produto').AsInteger;
end;

procedure TfrmListaProdutos.GridColumns0Click(ASender: TObject; const AValue: string);
begin
  UserSession.ListaProdutos.Locate('id_produto', AValue, []);
  // UserSession.IdProduto := UserSession.ListaProdutos.FieldByName('id_produto').AsInteger;
  UserSession.IdProduto := StrToInt(AValue);
end;

end.
