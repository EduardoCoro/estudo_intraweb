unit DadosProduto;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrameBaseDB, IWCompFileUploader,
  IWCompGradButton, IWCompExtCtrls, IWCompMemo, IWDBStdCtrls, IWCompEdit,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  Data.DB, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion;
type
  TfrmDadosProduto = class(TfrmBaseDB)
    IWLabel1: TIWLabel;
    IWDBEdit1: TIWDBEdit;
    IWLabel2: TIWLabel;
    IWDBEdit2: TIWDBEdit;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWDBEdit4: TIWDBEdit;
    IWLabel5: TIWLabel;
    IWDBEdit5: TIWDBEdit;
    IWDBMemo1: TIWDBMemo;
    IWFileUploader1: TIWFileUploader;
    IWImageFile1: TIWImageFile;
    procedure IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWFileUploader1AsyncUploadSuccess(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
    fArquivo: string;
  public
    { Public declarations }
    constructor Create(Owner: TComponent; aDataset: TDataset; aOperacao: TOperacao); override;
  end;
implementation
uses
  ServerController;
{$R *.dfm}
{ TfrmDadosProduto }
constructor TfrmDadosProduto.Create(Owner: TComponent; aDataset: TDataset; aOperacao: TOperacao);
begin
  if aOperacao = opInsercao then
  begin
    UserSession.UmProduto.Parameters.ParamByName('id_produto').Value := -1;
  end
  else
  if aOperacao = opEdicao then
  begin
    UserSession.UmProduto.Parameters.ParamByName('id_produto').Value := UserSession.IdProduto;
  end;
  // sempre necess�rio
  inherited;
  // se est� editando, mostro a imagem que est� em um arquivo
  if aOperacao = opEdicao then
  begin
    if FileExists(UserSession.PastaImagemProduto + DataSource.Dataset.FieldByName('imagem').AsString) then
    begin
      IWImageFile1.ImageFile.Filename := UserSession.PastaImagemProduto + DataSource.Dataset.FieldByName('imagem').AsString;
    end;
  end;
end;

procedure TfrmDadosProduto.IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
begin
  // salva o nome do arquivo numa variavel local tempor�ria, ser� usada no evento OnAsyncUploadSuccess
  fArquivo := FileName;
  DestPath := UserSession.PastaImagemProduto;
  SaveFile := True;
  Overwrite := True;
end;
procedure TfrmDadosProduto.IWFileUploader1AsyncUploadSuccess(Sender: TObject; EventParams: TStringList);
begin
  inherited;
  // nome do arquivo salvo anteriormente
  IWDBEdit5.Text := fArquivo;
  DataSource.Dataset.FieldByName('imagem').AsString := fArquivo;
  IWImageFile1.ImageFile.Filename := UserSession.PastaImagemProduto + fArquivo;
end;
end.
