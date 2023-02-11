unit FormClientes;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  Vcl.Forms, frameMenu, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompRectangle, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWCompGrids, IWDBGrids, Data.DB, IWCompButton,
  IWCompEdit, IWCompLabel, SQLs, FormPedidosCliente;

type
  TfrmClientes = class(TIWAppForm)
    frmMenu1: TfrmMenu;
    IWRegion1: TIWRegion;
    IWRectangle1: TIWRectangle;
    Grid: TIWDBGrid;
    DataSource: TDataSource;
    IWLabel1: TIWLabel;
    edtPesquisa: TIWEdit;
    btnPesquisar: TIWButton;
    edtVisualizarPedidos: TIWButton;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    procedure btnPesquisarClick(Sender: TObject);
    procedure GridRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
    procedure GridColumns1Click(ASender: TObject; const AValue: string);
    procedure edtVisualizarPedidosClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure fButtonClick(Sender: TObject);
    procedure IWButton5Click(Sender: TObject);
  private
    fButton: TIWButton;
    procedure StatusBotoes(const Status: Boolean);
  public
  end;

implementation

{$R *.dfm}

uses ServerController, Vcl.Graphics, FormDadosCliente;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);
begin
  UserSession.DM.Clientes.Close;
  UserSession.DM.Clientes.DataSet.IndexFieldNames := 'CUSTNO';
  if edtPesquisa.Text <> '' then begin
    UserSession.DM.Clientes.Open(SQLCliente + ' ' + Format(SQLWhereCliente, ['%'+edtPesquisa.Text+'%']));
  end else begin
    UserSession.DM.Clientes.Open(SQLCliente);
  end;
  DataSource.DataSet := UserSession.DM.Clientes.DataSet;
  StatusBotoes(True);
end;

procedure TfrmClientes.edtVisualizarPedidosClick(Sender: TObject);
begin
  TfrmPedidosCliente.Create(WebApplication).Show;
end;

procedure TfrmClientes.fButtonClick(Sender: TObject);
begin
  TfrmDadosCliente.Create(WebApplication).Editar;
end;

procedure TfrmClientes.GridColumns1Click(ASender: TObject; const AValue: string);
begin
  UserSession.DM.Clientes.Dataset.Locate('CUSTNO', AValue, []);
end;

procedure TfrmClientes.GridRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  Randomize;
  ACell.Font.Size := 12;
  ACell.Font.FontName := 'Verdana';
  if ARow mod 2 = 1 then begin
    ACell.BGColor := clWebBeige;
    ACell.Font.Color := clWebWHITE;
  end;
  if AColumn = 3 then begin
    if Random(5) mod 2 = 0 then begin
      ACell.Font.Color := clWebRed;
      ACell.Font.Style := [fsBold];
    end;
  end;
  if Grid.RowIsCurrent then begin
    ACell.BGColor := clWebYellow;
    ACell.Font.Color := clWebBlack;
    if AColumn = 4 then begin
      ACell.Control := fButton;
    end;
  end;
end;

procedure TfrmClientes.IWAppFormCreate(Sender: TObject);
begin
  fButton := TIWButton.Create(Self);
  fButton.Caption := 'Editar Registro';
  fButton.Width := 100;
  fButton.OnClick := fButtonClick;
  StatusBotoes(False);
end;

procedure TfrmClientes.IWButton1Click(Sender: TObject);
begin
  UserSession.DM.Clientes.Dataset.First;
end;

procedure TfrmClientes.IWButton2Click(Sender: TObject);
begin
  UserSession.DM.Clientes.Dataset.MoveBy(-15);
end;

procedure TfrmClientes.IWButton3Click(Sender: TObject);
begin
  UserSession.DM.Clientes.Dataset.MoveBy(+15);
end;

procedure TfrmClientes.IWButton4Click(Sender: TObject);
begin
  UserSession.DM.Clientes.Dataset.Last;
end;

procedure TfrmClientes.IWButton5Click(Sender: TObject);
begin
  TfrmDadosCliente.Create(WebApplication).NovoCliente;
end;

procedure TfrmClientes.StatusBotoes(const Status: Boolean);
begin
  edtVisualizarPedidos.Enabled := Status;
  IWButton1.Enabled := Status;
  IWButton2.Enabled := Status;
  IWButton3.Enabled := Status;
  IWButton4.Enabled := Status;
end;

end.
