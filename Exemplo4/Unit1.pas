unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit, IWCompMemo, IWCompLabel;

type
  TIWForm1 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWEdit2: TIWEdit;
    IWButton2: TIWButton;
    IWButton1: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWButton6: TIWButton;
    IWLabel1: TIWLabel;
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton5Click(Sender: TObject);
    procedure IWButton6Click(Sender: TObject);
  private
    xStr: string;
    IWMemo1: TIWMemo;
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  IWMemo1 := TIWMemo.Create(Self);
  IWMemo1.Parent := Self;
  IWMemo1.Top := IWEdit1.Top;
  IWMemo1.Left := IWEdit1.Left + IWEdit1.Width + 10;
  IWMemo1.Height := 200;
  IWMemo1.Width := 200;
end;

procedure TIWForm1.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  v1, v2, v3: Integer;
begin
  v1 := StrToInt(IWEdit1.Caption);
  v2 := StrToInt(IWEdit2.Caption);
  v3 := v1 - v2;
  IWMemo1.Lines.Add(IWEdit1.Caption + ' - ' + IWEdit2.Caption);
  IWMemo1.Lines.Add('Resultado: ' + IntToStr(v3));
end;

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;  EventParams: TStringList);
var
  v1, v2, v3: Integer;
begin
  v1 := StrToInt(IWEdit1.Caption);
  v2 := StrToInt(IWEdit2.Caption);
  v3 := v1 + v2;
  IWMemo1.Lines.Add(IWEdit1.Caption + ' + ' + IWEdit2.Caption);
  IWMemo1.Lines.Add('Resultado: ' + IntToStr(v3));
end;

procedure TIWForm1.IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
var
  v1, v2, v3: Integer;
begin
  v1 := StrToInt(IWEdit1.Caption);
  v2 := StrToInt(IWEdit2.Caption);
  v3 := v1 div v2;
  IWMemo1.Lines.Add(IWEdit1.Caption + ' / ' + IWEdit2.Caption);
  IWMemo1.Lines.Add('Resultado: ' + IntToStr(v3));
end;

procedure TIWForm1.IWButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  v1, v2, v3: Integer;
begin
  v1 := StrToInt(IWEdit1.Caption);
  v2 := StrToInt(IWEdit2.Caption);
  v3 := v1 * v2;
  IWMemo1.Lines.Add(IWEdit1.Caption + ' * ' + IWEdit2.Caption);
  IWMemo1.Lines.Add('Resultado: ' + IntToStr(v3));
end;

procedure TIWForm1.IWButton5Click(Sender: TObject);
begin
  xStr := TimeToStr(Now);
end;

procedure TIWForm1.IWButton6Click(Sender: TObject);
begin
  IWLabel1.Caption := xStr;
end;

initialization
  TIWForm1.SetAsMainForm;


end.
