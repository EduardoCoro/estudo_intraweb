unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  IWCompButton, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompExtCtrls;

type
  TIWForm2 = class(TIWAppForm)
    IWImageFile1: TIWImageFile;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWLabel1: TIWLabel;
    IWButton3: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    fFileList: TStringList;
    i: Integer;
    procedure MostraImagem(Indice: Integer);
  public
  end;

implementation

uses StrUtils, IWGlobal, Windows;

{$R *.dfm}

function GetFileList(const Path: string; FileFilter: TStrings; const Recursive: Boolean; Const AddFolderName: Boolean; MaxFiles: Integer): TStringList;
var
  FileList: TStringList;
  i: integer;

  procedure RFindFile(const Folder: TFileName; FileExtension: string; const Recursive: Boolean);
  var
    SearchRec: TSearchRec;
  begin
    // Locate all matching files in the current
    // folder and add their names to the list
    if FindFirst(folder + FileExtension, faAnyFile, SearchRec) = 0 then begin
      try
        repeat
          if (SearchRec.Attr and faDirectory = 0) or (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then begin
            FileList.Add(IfThen(AddFolderName, Folder, '') + SearchRec.Name);
            if (MaxFiles <> -1) and (FileList.Count >= MaxFiles) then
              Break;
          end;
        until (FindNext(SearchRec) <> 0);
      except
        SysUtils.FindClose(SearchRec);
        raise;
      end;
      SysUtils.FindClose(SearchRec);
    end;
    if Recursive then begin
      // Now search the subfolders
      if FindFirst(Folder + '*', faAnyFile, SearchRec) = 0 then begin
        try
          repeat
            if ((SearchRec.Attr and faDirectory) <> 0) and
              (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
              RFindFile(folder + SearchRec.Name + '\', FileExtension, Recursive);
          until (FindNext(SearchRec) <> 0);
        except
          SysUtils.FindClose(SearchRec);
          raise;
        end;
        SysUtils.FindClose(SearchRec);
      end;
    end;
  end; // procedure RFindFile inside of FindFile

begin // function FindFile
  FileList := TStringList.Create;
  try
    for i := 0 to FileFilter.Count - 1 do
      RFindFile(IncludeTrailingPathDelimiter(Path), FileFilter[i], Recursive);
    Result := FileList;
  except
    FileList.Free;
    raise;
  end;
end;

procedure TIWForm2.IWAppFormCreate(Sender: TObject);
var
  xFilter: TStringList;
begin
  xFilter := TStringList.Create;
  xFilter.Add('*.jpg');
  xFilter.Add('*.jpeg');
  xFilter.Add('*.png');
  //
  fFileList := TStringList.Create;
  try
    fFileList := GetFileList(gSC.ContentPath + 'Imagens', xFilter, False, False, -1);
  finally
    xFilter.Free;
  end;
  //
  i := 0;
  MostraImagem(i);
end;

procedure TIWForm2.IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  Dec(i);
  if i = -1 then begin
    i := fFileList.Count - 1;
  end;
  MostraImagem(i);
end;

procedure TIWForm2.IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  Inc(i);
  if i = fFileList.Count then begin
    i := 0;
  end;
  MostraImagem(i);
end;

procedure TIWForm2.IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  // cache do usuario - acesso via diretorio
  CopyFile(Pchar(gSC.ContentPath + 'Imagens\' + fFileList[i]), Pchar(gSC.UserCacheDir + fFileList[i]), False);
  // sleep
  Sleep(500);
  // cache do usuario - acesso via URL
  WebApplication.NewWindow(gSC.UserCacheURL + fFileList[i]);
end;

procedure TIWForm2.MostraImagem(Indice: Integer);
var
  xFileName: string;
begin
  xFileName := fFileList[Indice];
  IWImageFile1.ImageFile.Filename := gSC.ContentPath + 'Imagens\' + xFileName;
  IWLabel1.Caption := xFileName;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
