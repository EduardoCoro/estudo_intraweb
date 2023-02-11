unit DadosCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrameBaseDB, IWCompEdit, IWDBStdCtrls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  Data.DB, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion;

type
  TfrmDadosCliente = class(TfrmBaseDB)
    IWLabel1: TIWLabel;
    IWDBEdit1: TIWDBEdit;
    IWLabel2: TIWLabel;
    IWDBEdit2: TIWDBEdit;
    IWLabel3: TIWLabel;
    IWDBEdit3: TIWDBEdit;
    IWLabel4: TIWLabel;
    IWDBEdit4: TIWDBEdit;
    IWLabel5: TIWLabel;
    IWDBEdit5: TIWDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDadosCliente: TfrmDadosCliente;

implementation

{$R *.dfm}

end.
