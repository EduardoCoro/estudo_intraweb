unit Frame.Fish.Data;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, IWCompMemo,
  IWDBStdCtrls, IWCompEdit, IWCompLabel, IWCompGrids, IWDBGrids, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompExtCtrls, IWDBExtCtrls, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, Frame.Custom, IWCompButton;

type
  TfrmFishData = class(TfrmCustomFrame)
    DataSource: TDataSource;
    Label1: TIWLabel;
    Label2: TIWLabel;
    Label3: TIWLabel;
    Label4: TIWLabel;
    Label5: TIWLabel;
    Label6: TIWLabel;
    DBEdit1: TIWDBEdit;
    DBEdit2: TIWDBEdit;
    DBEdit3: TIWDBEdit;
    DBEdit4: TIWDBEdit;
    DBEdit5: TIWDBEdit;
    DBMemo1: TIWDBMemo;
    IWDBEdit1: TIWDBEdit;
    IWLabel1: TIWLabel;
    btnBackToFishList: TIWButton;
    procedure btnBackToFishListAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    FOnClose: TNotifyEvent;
    { Private declarations }
  public
    { Public declarations }
    procedure ShowFishData(aSpeciesNo: Integer);
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
  end;

var
  frmFishData: TfrmFishData;

implementation

{$R *.dfm}

uses
  UserSessionUnit,
  ServerController;

{ TfrmFishData }

procedure TfrmFishData.btnBackToFishListAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  if Assigned(FOnClose) then
  begin
    FOnClose(Sender);
  end;
end;

procedure TfrmFishData.ShowFishData(aSpeciesNo: Integer);
begin
  UserSession.cdsFish.Locate('Species No', aSpeciesNo, []);
end;

end.
