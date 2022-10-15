unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, UContas;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FContas: TContas;
    procedure AtualizarTela;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AtualizarTela;
begin
  Edit1.Text:= FContas.Nome;
  Edit2.Text:= 'R$:' + FormatFloat('0.00', FContas.Saldo);
  Edit3.Text:= IntToStr(FContas.Numero);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  xSaque: Double;
begin
  xSaque:= StrToFloat(InputBox('Informar','Digite o valor de saque','0'));

    if (FContas.Saque(xSaque) = -1) then
      showMessage('Saldo Insuficiente');

      AtualizarTela;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  xDeposito: Double;
  xVerificar: String;
begin
  xVerificar:= InputBox('Inforamr','Digite o valor do deposito','0');
  if (xVerificar = '') then
    showMessage('Digite um valor')
  else
  begin
    xDeposito:= StrToFloat(xVerificar);
    FContas.Deposito(xDeposito);
  end;
  AtualizarTela;
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  xAlterarNome: String;
begin

  xAlterarNome:= InputBox('Informar','Digite o novo Nome:','');

  if (xAlterarNome = '') then
    showMessage('Nome Invalido')
  else
    FContas.AlterarNome(xAlterarNome);

  AtualizarTela;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(FContas);
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  xNome:String;
  xSaldo:Double;
  xNumeroConta:Integer;
begin

  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') then
    showMessage('Informe todos os valores')
  else
    begin
      xNome:= Edit1.Text;
      if not TryStrToFloat(Edit2.Text, xSaldo) then
        raise Exception.Create('Saldo Invalido');
      xNumeroConta:= StrToInt(Edit3.Text);
    end;
  if (xSaldo < 0) then
    showMessage('Saldo Invalido')
  else
  begin
    if not Assigned(FContas)then
    begin
      FContas:= TContas.Create(xNumeroConta,xNome, xSaldo);
      Button1.Visible := false;
      Button2.Visible := True;
      Button3.Visible := True;
      Button4.Visible := True;
      Edit1.ReadOnly  := True;
      Edit2.ReadOnly  := True;
      Edit3.ReadOnly  := True;
    end;
    AtualizarTela;
  end;
end;

end.
