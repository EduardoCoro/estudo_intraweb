unit Frame.Fish.ImageList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame.Custom, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompGrids, IWDBGrids, Data.DB, IWCompButton, IWCompExtCtrls;

type
  TfrmFishImageList = class(TfrmCustomFrame)
    IWDBGrid1: TIWDBGrid;
    DataSource: TDataSource;
    IWRegion1: TIWRegion;
    btnClose: TIWButton;
    procedure btnCloseAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
  private
    FOnClose: TNotifyEvent;
    { Private declarations }
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
  end;

var
  frmFishImageList: TfrmFishImageList;

implementation

{$R *.dfm}

uses
  ServerController,
  UserSessionUnit;

{ TfrmCustomFrame1 }

procedure TfrmFishImageList.btnCloseAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  if Assigned(OnClose) then
  begin
    FOnClose(Sender);
  end;
end;

constructor TfrmFishImageList.Create(aOwner: TComponent);
begin
  inherited;
  UserSession.OpenFishListDataset;
end;

procedure TfrmFishImageList.IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  // this IWDBGrid has no header
  // our column no. 0 is empty
  if aColumn = 0 then
  begin
    aCell.Control := TIWImageFile.Create(Self);
    TIWImageFile(aCell.Control).Align := alClient;
    TIWImageFile(aCell.Control).ImageFile.URL := '/images/' + UserSession.cdsFishCommon_Name.AsString + '.jpg';
    TIWImageFile(aCell.Control).Css := 'img-fluid w-100';
  end;
end;

end.
