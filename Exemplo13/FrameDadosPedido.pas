unit FrameDadosPedido;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWCompEdit, IWDBStdCtrls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWHTMLContainer, IWHTML40Container, Data.DB, ServerController;

type
  TfrmDadosPedido = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWLabel1: TIWLabel;
    IWDBEdit1: TIWDBEdit;
    IWLabel2: TIWLabel;
    IWDBEdit2: TIWDBEdit;
    IWLabel3: TIWLabel;
    IWDBEdit3: TIWDBEdit;
    IWLabel4: TIWLabel;
    IWDBEdit4: TIWDBEdit;
    IWDBEdit5: TIWDBEdit;
    IWLabel5: TIWLabel;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

{ TfrmDadosPedido }

constructor TfrmDadosPedido.Create(AOwner: TComponent);
begin
  inherited;
  DataSource1.DataSet := UserSession.DM.PedidosCliente.Dataset;
end;

end.