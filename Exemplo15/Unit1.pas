unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompFile, IWCompListbox;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWButton2: TIWButton;
    IWFile1: TIWFile;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWListbox1: TIWListbox;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton5Click(Sender: TObject);
  public
  end;

implementation

uses IWGlobal;

{$R *.dfm}

procedure TIWForm1.IWButton1Click(Sender: TObject);
var
  xURL: string;
begin
  xURL := IWEdit1.Caption;
  if (Pos('http://', xURL) = 0) and (Pos('www.', xURL) <> 0) then begin
    xURL := 'http://' + xURL;
  end;
  // WebApplication.GoToURL(xURL);
  // WebApplication.NewWindow(xURL);
  AddToInitProc('NewWindow(''' + Trim(xURL) + ''', ''MyWindow'', '''');');
end;

procedure TIWForm1.IWButton2Click(Sender: TObject);
var
  xStr: TStringStream;
begin
  // download de arquivo/enviando arquivo para o usuario
  // WebApplication.SendFile(gSC.ContentPath + 'arquivo.pdf');
  // WebApplication.SendFile(gSC.ContentPath + 'arquivo.pdf', True);
  // WebApplication.SendFile(gSC.ContentPath + 'planilha.xls', True);

  xStr := TStringStream.Create;
  try
    xStr.LoadFromFile(gSC.ContentPath + 'planilha.xls');
    WebApplication.SendStream(xStr, False, '', 'arquivo.xls');
  finally
    xStr.Free;
  end;
end;

procedure TIWForm1.IWButton3Click(Sender: TObject);
begin
  ForceDirectories(gSC.AppPath + 'Pasta\');
  IWFIle1.SaveToFile(gSC.AppPath + 'Pasta\' + IWFile1.Filename);
  WebApplication.ShowMessage('Arquivo recebido.');
end;

procedure TIWForm1.IWButton4Click(Sender: TObject);
begin
//  WebApplication.Terminate('Obrigado por utilizar nosso website');
//  WebApplication.TerminateAndRedirect('http://www.terra.com.br');
  WebApplication.TerminateAndRedirect('/$/start');
end;

procedure TIWForm1.IWButton5Click(Sender: TObject);
var
  i: integer;
begin
  IWListBox1.Items.Clear;
  if WebApplication.RunParams.Count > 0 then begin
    for i := 0 to WebApplication.RunParams.Count - 1 do begin
      IWListBox1.Items.Add('Parametro ' + WebApplication.RunParams.Names[i] + ' tem o valor de ' +
        WebApplication.RunParams.ValueFromIndex[i]);
    end;
  end;
  if WebApplication.RunParams.IndexOfName('IdCliente') = -1 then begin
    IWListBox1.Items.Add('O parametro IDCliente está faltando');
  end;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
