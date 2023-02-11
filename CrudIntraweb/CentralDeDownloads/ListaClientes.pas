unit ListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrameBaseDBGrid, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids, IWDBGrids,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  Data.DB;

type
  TfrmListaClientes = class(TfrmBaseDBGrid)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaClientes: TfrmListaClientes;

implementation

{$R *.dfm}

end.
