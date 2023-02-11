unit Unit5;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  IWCompLabel, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton, IWCompListbox, IWHTMLControls, IWCompMemo, IWCompText,
  IWCompExtCtrls;

type
  TIWForm5 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWEdit1: TIWEdit;
    IWComboBox1: TIWComboBox;
    IWLabel2: TIWLabel;
    IWButton2: TIWButton;
    IWListbox1: TIWListbox;
    IWButton3: TIWButton;
    IWList1: TIWList;
    IWMemo1: TIWMemo;
    IWText1: TIWText;
    IWRadioGroup1: TIWRadioGroup;
    IWLabel3: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
    procedure IWComboBox1Change(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWComboBox1AsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWButton3Click(Sender: TObject);
    procedure IWRadioGroup1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm5.IWButton1Click(Sender: TObject);
begin
  if Trim(IWEdit1.Text) <> '' then begin
    IWLabel1.Caption := IWEdit1.Text;
    IWLabel1.Visible := True;
  end else begin
    WebApplication.ShowMessage('Você não digitou nada.');
    IWLabel1.Visible := False;
  end;
end;

procedure TIWForm5.IWButton2Click(Sender: TObject);
begin
  IWComboBox1.Editable := not IWComboBox1.Editable;
end;

procedure TIWForm5.IWButton3Click(Sender: TObject);
begin
  IWListBox1.Items.Add('Passagem comprada: ' + IWLabel2.Caption);
  IWList1.Items.Add('Passagem comprada: ' + IWLabel2.Caption);
  IWText1.Lines.Add('<h2>Passagem comprada: ' + IWLabel2.Caption + '</h2>');
  // <h2><strong>Texto</strong></h2>
end;

procedure TIWForm5.IWComboBox1AsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  if IWComboBox1.ItemIndex <> -1 then begin
    IWLabel2.Caption := 'O preço da passagem de avião para o ' + IWComboBox1.Items.Names[IWComboBox1.ItemIndex]
      + ' custa ' + CurrencyString + IWComboBox1.Items.ValueFromIndex[IWComboBox1.ItemIndex];
  end;
end;

procedure TIWForm5.IWComboBox1Change(Sender: TObject);
begin
  Randomize;
  case IWComboBox1.ItemIndex of
    0:
    begin
      IWLabel2.Caption := 'O preço da passagem de avião para o ' +
        IWComboBox1.Items[IWComboBox1.ItemIndex] + ' custa ' + CurrencyString + FormatFloat('0.00', Random(1000));
    end;
    1:
    begin
      IWLabel2.Caption := 'O preço da passagem de avião para o ' +
        IWComboBox1.Items[IWComboBox1.ItemIndex] + ' custa ' + CurrencyString + FormatFloat('0.00', Random(1000));
    end;
    2:
    begin
      IWLabel2.Caption := 'O preço da passagem de avião para o ' +
        IWComboBox1.Items[IWComboBox1.ItemIndex] + ' custa ' + CurrencyString + FormatFloat('0.00', Random(1000));
    end;
    3:
    begin
      IWLabel2.Caption := 'O preço da passagem de avião para o ' +
        IWComboBox1.Items[IWComboBox1.ItemIndex] + ' custa ' + CurrencyString + FormatFloat('0.00', Random(1000));
    end;
    4:
    begin
      IWLabel2.Caption := 'O preço da passagem de avião para o ' +
        IWComboBox1.Items[IWComboBox1.ItemIndex] + ' custa ' + CurrencyString + FormatFloat('0.00', Random(1000));
    end;
    5:
    begin
      IWLabel2.Caption := 'O preço da passagem de avião para o ' +
        IWComboBox1.Items[IWComboBox1.ItemIndex] + ' custa ' + CurrencyString + FormatFloat('0.00', Random(1000));
    end;
  end;
end;

procedure TIWForm5.IWRadioGroup1Click(Sender: TObject);
begin
  IWLabel3.Caption := IWRadioGroup1.Items[IWRadioGroup1.ItemIndex];
end;

initialization
  TIWForm5.SetAsMainForm;

end.
