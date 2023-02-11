unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes;

type
  TfrmAzul = class(TIWAppForm)
  public
  end;

implementation

uses IWURLMap, Unit3;

{$R *.dfm}

initialization
  TIWURLMap.Add('/azul/', '*', TfrmAzul);

end.
