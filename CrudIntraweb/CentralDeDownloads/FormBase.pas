unit FormBase;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls,
  Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, FrameBaseDB, DB;

type
  TfrmBase = class(TIWAppForm)
    rgPanel: TIWRegion;
    irBarraTopo: TIWRegion;
    IWHRule1: TIWHRule;
    lblTituloJanela: TIWLabel;
    irAreaTrabalho: TIWRegion;
  protected
    frameAtual: TfrmBaseDB;
    procedure MostraForm(aIWFormClass: TIWAppFormClass);
    procedure MostraFrame(aFrameClass: TfrmBaseDBClass; aDataset: TDataset; aOperacao: TOperacao = opVisualizacao);
  public
  end;

implementation

{$R *.dfm}

{ TfrmBase }

procedure TfrmBase.MostraForm(aIWFormClass: TIWAppFormClass);
begin
  with aIWFormClass.Create(WebApplication) do
  begin
    Show;
  end;
end;

procedure TfrmBase.MostraFrame(aFrameClass: TfrmBaseDBClass; aDataset: TDataset; aOperacao: TOperacao);
begin
  if Assigned(frameAtual) then
  begin
    //frameAtual.Free;
    //frameAtual := Nil;
    FreeAndNil(frameAtual);
  end;

  frameAtual := aFrameClass.Create(Self, aDataset, aOperacao);
  frameAtual.Parent := irAreaTrabalho;
  frameAtual.Align := alClient;
end;

end.

