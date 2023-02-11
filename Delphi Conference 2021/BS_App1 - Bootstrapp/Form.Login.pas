unit Form.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWHTMLControls, IWCompEdit, IWCompLabel,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, Form.Custom;

type
  TfrmLoginForm = class(TfrmCustomForm)
    btnChangePassword: TIWButton;
    lblUserName: TIWLabel;
    edtUserName: TIWEdit;
    lblPassword: TIWLabel;
    edtPassword: TIWEdit;
    btnLogin: TIWButton;
    lnkForgotPassword: TIWLink;
    lblMessage: TIWLabel;
    btnCancel: TIWButton;
    procedure btnLoginAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure lnkForgotPasswordAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btnCancelAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnChangePasswordAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
    procedure ShowMessage(aMessage: string);
    procedure ClearMessage;
    procedure PrepareForLogin;
    procedure PrepareForPasswordChange;
  public
    { Public declarations }
  end;

var
  frmLoginForm: TfrmLoginForm;

implementation

{$R *.dfm}

uses
  ServerController,
  Form.Main;

procedure TfrmLoginForm.btnCancelAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  PrepareForLogin;
end;

procedure TfrmLoginForm.btnChangePasswordAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  if edtUserName.Text = '' then
  begin
    ShowMessage('Please type a user name to continue');
    Exit;
  end;

  UserSession.InitializePasswordChangeProcess(edtUserName.Text);
  WebApplication.ShowMessage('You have initialized a process to change your password. If you ' +
    'typed a valid user name, you will receive a message with instructions to complete the process.');
  PrepareForLogin;
end;

procedure TfrmLoginForm.btnLoginAsyncClick(Sender: TObject; EventParams: TStringList);
var
  lLoginOK: Boolean;
begin
  lLoginOK := UserSession.CheckLogin(edtUserName.Text, edtPassword.Text);
  if lLoginOK then
  begin
    Release;
    with TfrmMainForm.Create(WebApplication) do
    begin
      Show;
    end;
  end else
  begin
    ShowMessage('Invalid User name or Password');
  end;
end;

procedure TfrmLoginForm.ClearMessage;
begin
  ShowMessage('')
end;

procedure TfrmLoginForm.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  PrepareForLogin;
end;

procedure TfrmLoginForm.PrepareForLogin;
begin
  edtPassword.Visible := True;
  lblPassword.Visible := True;
  lnkForgotPassword.Visible := True;
  //
  btnLogin.Visible := True;
  btnChangePassword.Visible := True;
  btnCancel.Visible := False;
  //
  ShowMessage('Please type your user name and password');
  //
  edtUserName.Text := 'abc';
  edtPassword.Text := 'abc';
end;

procedure TfrmLoginForm.PrepareForPasswordChange;
begin
  lblPassword.Visible := False;
  edtPassword.Visible := False;
  lnkForgotPassword.Visible := False;
  //
  btnLogin.Visible := False;
  btnChangePassword.Visible := True;
  btnCancel.Visible := True;
  //
  ClearMessage;
end;

procedure TfrmLoginForm.lnkForgotPasswordAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  PrepareForPasswordChange;
end;

procedure TfrmLoginForm.ShowMessage(aMessage: string);
begin
  lblMessage.Visible := aMessage <> '';
  lblMessage.Text := aMessage;
end;

initialization

  TfrmLoginForm.SetAsMainForm;

end.
