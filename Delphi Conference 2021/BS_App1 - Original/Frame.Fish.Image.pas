unit Frame.Fish.Image;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame.Custom, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompExtCtrls, IWCompButton;

type
  TfrmFishImage = class(TfrmCustomFrame)
    IWFishImage: TIWImageFile;
    btnClose: TIWButton;
    procedure btnCloseAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    FOnClose: TNotifyEvent;
    { Private declarations }
  public
    { Public declarations }
    procedure ShowFishImage(aSpeciesNo: Integer);
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
  end;

var
  frmFishImage: TfrmFishImage;

implementation

uses
  ServerController;

{$R *.dfm}

{ TfrmFishImage }

procedure TfrmFishImage.btnCloseAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  if Assigned(FOnClose) then
  begin
    FOnClose(Sender);
  end;
end;

procedure TfrmFishImage.ShowFishImage(aSpeciesNo: Integer);
begin
  UserSession.cdsFish.Locate('Species No', aSpeciesNo, []);
  IWFishImage.ImageFile.URL := '/images/' + UserSession.cdsFishCommon_Name.AsString + '.jpg';
end;

end.
