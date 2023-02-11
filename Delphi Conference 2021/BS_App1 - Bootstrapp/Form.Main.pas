unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  Frame.Custom, Form.Custom;

type
  TfrmMainForm = class(TfrmCustomForm)
    rgnSideBar: TIWRegion;
    rgnMain: TIWRegion;
    lnkViewFishList: TIWLink;
    lnkViewRandomImage: TIWLink;
    lnkViewAllFishImages: TIWLink;
    procedure lnkViewFishListAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure lnkViewRandomImageAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure lnkViewAllFishImagesAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
    procedure ViewFishData(aSpeciesNo: Integer);
    procedure ViewFishImage(aSpeciesNo: Integer);
    procedure CloseFishFrame(aSender: TObject);
    procedure CloseFishListFrame(aSender: TObject);
    procedure CloseFishRandomFrame(aSender: TObject);
    //
    procedure DoViewFishList;
    procedure DoViewFishData(aSpeciesNo: Integer);
    procedure DoViewFishImage(aSpeciesNo: Integer; aOnClose: TNotifyEvent);
    procedure DoViewRandomFishImage;
    procedure DoViewFishImageList;
  public
    { Public declarations }
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

uses
  ServerController,
  Frame.Fish.Data,
  Frame.Fish.List,
  Frame.Fish.Image,
  Frame.Fish.ImageList;

procedure TfrmMainForm.DoViewFishList;
begin
  FreeFrame;
  ShowFrame(TfrmFishList, rgnMain);
  TfrmFishList(fFrame).OnViewData := ViewFishData;
  TfrmFishList(fFrame).OnViewImage := ViewFishImage;
end;

procedure TfrmMainForm.DoViewRandomFishImage;
var
  lSpeciesNo: Integer;
begin
  lSpeciesNo := UserSession.SelectRandomFish;
  DoViewFishImage(lSpeciesNo, CloseFishRandomFrame);
end;

procedure TfrmMainForm.DoViewFishData(aSpeciesNo: Integer);
begin
  FreeFrame;
  ShowFrame(TfrmFishData, rgnMain);
  TfrmFishData(fFrame).OnClose := CloseFishFrame;
  TfrmFishData(fFrame).ShowFishData(aSpeciesNo);
end;

procedure TfrmMainForm.DoViewFishImage(aSpeciesNo: Integer; aOnClose: TNotifyEvent);
begin
  FreeFrame;
  ShowFrame(TfrmFishImage, rgnMain);
  TfrmFishImage(fFrame).OnClose := aOnClose;
  TfrmFishImage(fFrame).ShowFishImage(aSpeciesNo);
end;

procedure TfrmMainForm.DoViewFishImageList;
begin
  FreeFrame;
  ShowFrame(TfrmFishImageList, rgnMain);
  TfrmFishImageList(fFrame).OnClose := CloseFishListFrame;
end;

procedure TfrmMainForm.CloseFishFrame(aSender: TObject);
begin
  DoViewFishList;
end;

procedure TfrmMainForm.CloseFishListFrame(aSender: TObject);
begin
  FreeFrame;
end;

procedure TfrmMainForm.CloseFishRandomFrame(aSender: TObject);
begin
  FreeFrame;
end;

procedure TfrmMainForm.ViewFishData(aSpeciesNo: Integer);
begin
  DoViewFishData(aSpeciesNo);
end;

procedure TfrmMainForm.ViewFishImage(aSpeciesNo: Integer);
begin
  DoViewFishImage(aSpeciesNo, CloseFishFrame);
end;

procedure TfrmMainForm.lnkViewRandomImageAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  DoViewRandomFishImage;
end;

procedure TfrmMainForm.lnkViewAllFishImagesAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  DoViewFishImageList;
end;

procedure TfrmMainForm.lnkViewFishListAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  DoViewFishList;
end;

end.
