unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids, IWDBGrids, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, IWCompGradButton, IWCompButton, IWHTMLTag, IWCompCheckbox;

type
  TfrmMain = class(TIWAppForm)
    grdBioLifeData: TIWDBGrid;
    DataSource: TDataSource;
    iwtpBioLiveGrid: TIWTemplateProcessorHTML;
    btnT1: TIWButton;
    btnT2: TIWButton;
    btnT3: TIWButton;
    btnT4: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnT1Click(Sender: TObject);
    procedure btnT2Click(Sender: TObject);
    procedure btnT3Click(Sender: TObject);
    procedure btnT4Click(Sender: TObject);
    procedure grdBioLifeDataHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
  private
    procedure AjustaTemplate(aTemplate: string);
  public
  end;

implementation

{$R *.dfm}

uses UserSessionUnit, ServerController, IWMarkupLanguageTag;


procedure TfrmMain.AjustaTemplate(aTemplate: string);
var
  i, p1, p2: Integer;
  lText: string;
begin
  grdBioLifeData.Css := '';
  grdBioLifeData.OnHTMLTag := Nil;
  iwtpBioLiveGrid.Templates.Default := aTemplate;
  // retira os <divs>
  for i := 0 to grdBioLifeData.Columns.Count - 1 do
  begin
    lText := TIWDBGRidColumn(grdBioLifeData.Columns.Items[i]).Title.Text;
    p1 := Pos('<div>', lText);
    p2 := Pos('</div>', lText);
    if p1 <> 0 then
    begin
      Delete(lText, p1, p2 - p1 + Length('</div>'));
    end;
    TIWDBGRidColumn(grdBioLifeData.Columns.Items[i]).Title.Text := lText;
  end;
end;

procedure TfrmMain.btnT1Click(Sender: TObject);
begin
  AjustaTemplate('BioLifeGrid1.html');
end;

procedure TfrmMain.btnT2Click(Sender: TObject);
begin
  AjustaTemplate('BioLifeGrid2.html');
end;

procedure TfrmMain.btnT3Click(Sender: TObject);
begin
  AjustaTemplate('BioLifeGrid3.html');
end;

procedure TfrmMain.btnT4Click(Sender: TObject);
var
  i: Integer;
begin
  iwtpBioLiveGrid.Templates.Default := 'BioLifeGrid4.html';

  grdBioLifeData.OnHTMLTag := grdBioLifeDataHTMLTag;

  for i := 0 to grdBioLifeData.Columns.Count - 1 do
  begin
    if Pos('<div>', TIWDBGRidColumn(grdBioLifeData.Columns.Items[i]).Title.Text) = 0 then
      TIWDBGRidColumn(grdBioLifeData.Columns.Items[i]).Title.Text :=
        TIWDBGRidColumn(grdBioLifeData.Columns.Items[i]).Title.Text +
          '<div>' + TIWDBGRidColumn(grdBioLifeData.Columns.Items[i]).Title.Text + '</div>';
  end;

end;

procedure TfrmMain.grdBioLifeDataHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
var
  lStyle: string;
begin

  lStyle := ATag.Params.Values['STYLE'];
  if Pos('position: relative;', lStyle) <> 0 then
  begin
     Delete(
        lStyle,
        Pos('position: relative;', lStyle),
        Length('position: relative;')
     );
  end;
  ATag.Params.Values['STYLE'] := lStyle;

end;

procedure TfrmMain.IWAppFormCreate(Sender: TObject);
begin
  UserSession.cdsBioLife.Open;
end;

initialization
  TfrmMain.SetAsMainForm;

end.
