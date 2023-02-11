unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids,
  IWCompCalendar, IWCompLabel, IWCompTreeview, IWCompExtCtrls, IWCompButton;

type
  TIWForm2 = class(TIWAppForm)
    IWCalendar1: TIWCalendar;
    IWLabel1: TIWLabel;
    IWTreeView1: TIWTreeView;
    IWGrid1: TIWGrid;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWCalendar1DateChange(ADate: TDateTime);
    procedure IWTreeView1TreeItemClick(Sender: TObject;
      ATreeViewItem: TIWTreeViewItem);
    procedure IWGrid1RenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWAppFormCreate(Sender: TObject);
var
  i, j: Integer;
begin
  IWCalendar1.StartDate := EncodeDate(2012, 1, 1);
  Randomize;
  for i := 0 to 4 do begin
    for j := 0 to 4 do begin
      IWGrid1.Cell[i, j].Text := IntTOstr(Random(1000));
    end;
  end;
end;

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  WebApplication.ShowMessage(TimeToStr(Now));
end;

procedure TIWForm2.IWCalendar1DateChange(ADate: TDateTime);
begin
  if DayOfWeek(ADate) in [1,7]  then begin
    IWLabel1.Caption := 'fim de semana';
  end else begin
    IWLabel1.Caption := 'dia de trabalho';
  end;
end;

procedure TIWForm2.IWGrid1RenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  if ARow mod 2 = 0 then begin
    ACell.BGColor := clWebAQUA;
  end else begin
    ACell.BGColor := clWebALICEBLUE;
  end;
  if (aRow = 4) and (AColumn=4) then begin
    ACell.Control := TIWImageFile.Create(Self);
    TIWImageFile(ACell.Control).Align := alClient;
    TIWImageFile(ACell.Control).ImageFile.Filename := 'imagens/button.png';
    TIWImageFile(ACell.Control).OnClick := IWButton1Click;
    TIWImageFile(ACell.Control).UseSize := True;
  end;
end;

procedure TIWForm2.IWTreeView1TreeItemClick(Sender: TObject;
  ATreeViewItem: TIWTreeViewItem);
begin
  WebApplication.ShowMessage(ATreeViewItem.Caption);
end;

end.
