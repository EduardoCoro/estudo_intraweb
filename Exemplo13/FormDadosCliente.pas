unit FormDadosCliente;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompRectangle,
  IWCompEdit, IWCompLabel, IWCompListbox, Data.DB, IWDBStdCtrls, IWCompButton,
  ServerController;

type
  TfrmDadosCliente = class(TIWAppForm)
    IWRectangle1: TIWRectangle;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWEdit1: TIWDBEdit;
    IWEdit2: TIWDBEdit;
    IWEdit3: TIWDBEdit;
    IWEdit4: TIWDBEdit;
    cbxPaises: TIWDBComboBox;
    DataSource1: TDataSource;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
    procedure Editar;
    procedure NovoCliente;
  end;

implementation

uses SQLs;

{$R *.dfm}

procedure TfrmDadosCliente.IWAppFormCreate(Sender: TObject);
begin
  DataSource1.DataSet := UserSession.DM.Clientes.Dataset;
  //
  UserSession.DM.Paises.Open(SQLPaises);
  with UserSession.DM.Paises do begin
    Dataset.First;
    while (not Dataset.Eof) do begin
      cbxPaises.Items.Add(Dataset.FieldByname('COUNTRY').AsString);
      Dataset.Next;
    end;
  end;
  UserSession.DM.Paises.Close;
end;

procedure TfrmDadosCliente.IWButton1Click(Sender: TObject);
begin
  UserSession.DM.Clientes.Dataset.Post;
  Release;
end;

procedure TfrmDadosCliente.IWButton2Click(Sender: TObject);
begin
  UserSession.DM.Clientes.Dataset.Cancel;
  Release;
end;

procedure TfrmDadosCliente.Editar;
begin
  UserSession.DM.Clientes.Dataset.Edit;
  Show;
end;

procedure TfrmDadosCliente.NovoCliente;
begin
  UserSession.DM.Clientes.Dataset.Insert;
  Show;
end;

end.
