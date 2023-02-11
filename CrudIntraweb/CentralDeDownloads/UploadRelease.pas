unit UploadRelease;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBase, IWCompLabel, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  IWCompJQueryWidget, IWCompFileUploader, IWCompEdit, IWCompGradButton;

type
  TfrmUploadRelease = class(TfrmBase)
    IWFileUploader1: TIWFileUploader;
    btnConfirma: TIWGradButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWFileUploader1AsyncUploadSuccess(Sender: TObject; EventParams: TStringList);
    procedure btnConfirmaClick(Sender: TObject);
    procedure IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUploadRelease: TfrmUploadRelease;

implementation

uses ServerController;

{$R *.dfm}

procedure TfrmUploadRelease.btnConfirmaClick(Sender: TObject);
begin
  inherited;
  // salva dados no dataset

  // copia arquivo do cache od  para o diretório correto

  // fecha e volta pra tela anterior
  Release;
end;

procedure TfrmUploadRelease.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  lblTituloJanela.Caption := Format(lblTituloJanela.Caption, [UserSession.ListaProdutos.FieldByName('nome').AsString]);
  btnConfirma.Enabled := False;
end;

procedure TfrmUploadRelease.IWFileUploader1AsyncUploadCompleted(Sender: TObject;
  var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
begin
  inherited;
  DestPath := DestPath + '1';
end;

procedure TfrmUploadRelease.IWFileUploader1AsyncUploadSuccess(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
  btnConfirma.Enabled := True;
end;

end.
