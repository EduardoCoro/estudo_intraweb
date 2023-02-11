unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Graphics,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompExtCtrls, Vcl.Imaging.jpeg, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWCompButton, IWHTMLControls,
  IWCompText;

type
  TIWForm1 = class(TIWAppForm)
    IWImageFile1: TIWImageFile;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWImageButton1: TIWImageButton;
    IWLink1: TIWLink;
    IWURL1: TIWURL;
    IWButton3: TIWButton;
    IWURLWindow1: TIWURLWindow;
    IWLink2: TIWLink;
    IWText1: TIWText;
    IWButton4: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWImageButton1AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWLink1Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses Unit2;


procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  IWImageFile1.ImageFile.Filename := 'imagens/carrefour.png';
end;

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageFile1.ImageFile.URL := 'http://comunicadores.info/wp-content/uploads/2011/01/nova_marca_logomarca_record_logotipo_.jpg';
end;

procedure TIWForm1.IWButton3Click(Sender: TObject);
begin
  WebApplication.NewWindow('http://www.terra.com.br');
end;

procedure TIWForm1.IWButton4Click(Sender: TObject);
begin
  TIWForm2.Create(WebApplication).Show;
end;

procedure TIWForm1.IWImageButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageFile1.ImageFile.URL := 'http://comunicadores.info/wp-content/uploads/2011/01/nova_marca_logomarca_record_logotipo_.jpg';
end;

procedure TIWForm1.IWLink1Click(Sender: TObject);
begin
//  WebApplication.GoToURL('pdf/arquivo.pdf');
  // procesar relatorio
  WebApplication.NewWindow('pdf/arquivo.pdf');
end;

procedure TIWForm1.IWLink2Click(Sender: TObject);
begin
  IWURLWindow1.URI := 'pdf/arquivo.pdf';
  IWtext1.Text := '<iframe width="560" height="315" src="http://www.youtube.com/embed/y_73WYp978w" frameborder="0" allowfullscreen></iframe>';
end;

initialization
  TIWForm1.SetAsMainForm;

end.
