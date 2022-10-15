unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPessoa, Vcl.StdCtrls;

type
  TCadastrar = class(TForm)
    Nome: TEdit;
    Endereco: TEdit;
    CPF: TEdit;
    Idade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    CNPJ: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastrar: TCadastrar;

implementation

{$R *.dfm}

procedure TCadastrar.Button1Click(Sender: TObject);
var
  xCPF: String;
  xPessoa: TPessoa;
begin
  if (nome.Text = '') or (CPF.Text = '') or (Idade.Text = '') or (Endereco.Text = '') then
    showMessage('Por favor preencha tudo')
  else
    begin

      xCPF:= CPF.Text;

      if TPessoaFisica(TPessoa).CPF_Valido(xCPF) then
      begin

        Memo1.Lines.clear;
        Memo1.Lines.Add('Nome: ' + nome.Text);
        Memo1.Lines.Add('Endere�o: ' + Endereco.Text);
        Memo1.Lines.Add('CPF: ' + xCPF);
        Memo1.Lines.Add('Idade: ' + Idade.Text);
      end
      else
        showMessage('CPF Invalido');
    end;

end;

procedure TCadastrar.Button2Click(Sender: TObject);
var
  xCNPJ: String;
  xPessoa: TPessoa;
begin
if (nome.Text = '') or (Endereco.Text = '') or (CNPJ.Text = '') then
  showMessage('Por favor Preencha os dados corretamente')
else
  begin
    xCNPJ:= CNPJ.Text;

    if TPessoaJuridica(TPessoa).CNPJ_Valido(xCNPJ) then
    begin
        Memo1.Lines.clear;
        Memo1.Lines.Add('Nome: ' + nome.Text);
        Memo1.Lines.Add('Endere�o: ' + Endereco.Text);
        Memo1.Lines.Add('CNPJ: ' + xCNPJ);
    end
    else
      showMessage('CNPJ Invalido');
  end;
end;

end.
