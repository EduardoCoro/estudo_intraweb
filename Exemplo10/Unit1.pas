unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompRectangle, IWCompButton, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompExtCtrls, IWCompText,
  IWCompCheckbox;

type
  TIWForm1 = class(TIWAppForm)
    IWImageFile1: TIWImageFile;
    IWRegion1: TIWRegion;
    IWButton1: TIWButton;
    IWRectangle1: TIWRectangle;
    IWText1: TIWText;
    IWButton2: TIWButton;
    IWCheckBox1: TIWCheckBox;
    IWButton3: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  private
    IWImageFile001: TIWImageFile;
  public
  end;

implementation

{$R *.dfm}

uses IWGlobal;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  with TIWButton.Create(Self) do begin
    Top := IWButton3.Top + IWButton3.Height + 10;
    Left := IWButton3.Left;
    Name := 'iwbutton1001010';
    Caption := 'olá';
    zIndex := 1000;
    Parent := Self;
  end;
end;

procedure TIWForm1.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageFile1.Align := alClient;
  IWImageFile1.Visible := True;
  IWImageFile1.UseSize := True;
  IWRegion1.Visible := True;
end;

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageFile1.Visible := False;
  IWRegion1.Visible := False;
end;

procedure TIWForm1.IWButton3Click(Sender: TObject);
begin
  IWImageFile001 := TIWImageFile.Create(Self);
  with IWImageFile001 do begin
    Top := IWButton3.Top + IWButton3.Height + 10;
    Left := IWButton3.Left;
    FriendlyName := 'IWImageFile001';
    ImageFile.Filename := gSC.ContentPath + 'Imagens\cocacola.jpg';
    Name := 'IWImageFile001';
    RenderSize := True;
    UseSize := True;
    Cacheable := True;
//    Width := 100;
//    Height := 100;
    Visible := True;
    Parent := Self;
  end;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
