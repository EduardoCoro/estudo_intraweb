unit Frame.Fish.List;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGrids, IWDBGrids, IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  IWCompButton, Data.DB, Frame.Custom, BSApp.Types;

type
  TfrmFishList = class(TfrmCustomFrame)
    IWDBGrid1: TIWDBGrid;
    DataSource: TDataSource;
    procedure IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
  private
    FOnViewData: TOnViewRecordEvent;
    FOnViewImage: TOnViewRecordEvent;
    { Private declarations }
    procedure ViewDataAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure ViewImageAsyncClick(Sender: TObject; EventParams: TStringList);
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    property OnViewData: TOnViewRecordEvent read FOnViewData write FOnViewData;
    property OnViewImage: TOnViewRecordEvent read FOnViewImage write FOnViewImage;
  end;

var
  frmFishList: TfrmFishList;

implementation

{$R *.dfm}

uses UserSessionUnit, ServerController;

{ TfrmFishList }

constructor TfrmFishList.Create(aOwner: TComponent);
begin
  inherited;
  UserSession.OpenFishListDataset;
end;

procedure TfrmFishList.IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  // we don't want to create our buttons on the header (row = 0)
  if aRow > 0 then
  begin
    // our column no. 3 is empty
    if aColumn = 3 then
    begin
      aCell.Control := TIWButton.Create(Self);
      TIWButton(aCell.Control).Caption := 'View Data';
      TIWButton(aCell.Control).OnAsyncClick :=  ViewDataAsyncClick;
      TIWButton(aCell.Control).Tag := UserSession.cdsFishSpeciesNo.AsInteger;
    end;
    // our column no. 4 is empty
    if aColumn = 4 then
    begin
      aCell.Control := TIWButton.Create(Self);
      TIWButton(aCell.Control).Caption := 'View Image';
      TIWButton(aCell.Control).OnAsyncClick :=  ViewImageAsyncClick;
      TIWButton(aCell.Control).Tag := UserSession.cdsFishSpeciesNo.AsInteger;
    end;
  end;
end;

procedure TfrmFishList.ViewDataAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  if Assigned(FOnViewData) then
  begin
    // the SpeciesNo value is saved on the Tag property of our buttons
    FOnViewData(TIWButton(Sender).Tag);
  end;
end;

procedure TfrmFishList.ViewImageAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  if Assigned(FOnViewImage) then
  begin
    // the SpeciesNo value is saved on the Tag property of our buttons
    OnViewImage(TIWButton(Sender).Tag);
  end;
end;

end.
