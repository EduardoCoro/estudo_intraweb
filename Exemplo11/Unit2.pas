unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit;

type
  TIWForm2 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWEdit2: TIWEdit;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

const
  jsMaisculo =
    'this.value = this.value.toUpperCase();';

implementation

{$R *.dfm}


procedure TIWForm2.IWAppFormCreate(Sender: TObject);
begin
  IWEdit2.ScriptEvents.HookEvent('onKeyUp', jsMaisculo);
end;

initialization
  TIWForm2.SetAsMainForm;

end.
