unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UElevador;

type
  TForm2 = class(TForm)
    Inicializar: TButton;
    Adicionar: TButton;
    Remover: TButton;
    Subir: TButton;
    Descer: TButton;
    AndarAgora: TLabel;
    AndarMax: TLabel;
    PessoasAgora: TLabel;
    PessoasMax: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure InicializarClick(Sender: TObject);
    procedure SubirClick(Sender: TObject);
  private
    { Private declarations }
    FElevador: TElevador;
    procedure AtualizarForm;
    procedure AtualizarLabels;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AtualizarForm;
begin
  Inicializar.Visible:=  False;
  Edit1.Visible:=        False;
  Edit2.Visible:=        False;
  Label1.Visible:=       False;
  Label2.Visible:=       False;
  PessoasMax.Visible:=   True;
  PessoasAgora.Visible:= True;
  AndarMax.Visible:=     True;
  AndarAgora.Visible:=   True;
  Subir.Visible:=        True;
  Descer.Visible:=       True;
  Adicionar.Visible:=    True;
  Remover.Visible:=      True;
end;

procedure TForm2.AtualizarLabels;
begin
  PessoasMax.Caption:= 'Pessoas Maxima: ' + FElevador.PessoasMax.ToString;
  PessoasAgora.Caption:= 'Pessoas no elevador: ' + FElevador.PessoasAgora.ToString;
  AndarMax.Caption:= 'Andar Maximo: '  + FElevador.AndarMax.ToString;
  AndarAgora.Caption:= 'Andar atual: ' + FElevador.AndarAgora.ToString;
end;

procedure TForm2.InicializarClick(Sender: TObject);
var
  xAndarMax, xPessoasMax: Integer;
begin
  xAndarMax:= StrToInt(Edit1.Text);
  xPessoasMax:= StrToInt(Edit2.Text);
  if (xAndarMax = 0) or (xPessoasMax = 0) then
  showMessage('Digite Valores acima de 0')
  else
  begin
    FElevador:= TElevador.Create(xAndarMax, xPessoasMax);
    AtualizarForm;
    AtualizarLabels;
  end;
end;

procedure TForm2.SubirClick(Sender: TObject);
begin
  FElevador.Subir;
end;

end.
