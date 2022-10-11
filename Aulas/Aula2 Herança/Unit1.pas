unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses
  UAnimais;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xAnimal: TAnimal;
begin
  xAnimal := nil; //Sem referencia a algum ponteira na memoria
                  //Assim que inicializa um objeto no delphi

  try
    case TEnumAnimal(ComboBox1.ItemIndex) of
      stCachorro:
        xAnimal := TCachorro.Create;
      stGato:
        xAnimal := TGato.Create;
      stPassaro:
        xAnimal := TPassaro.Create;
    end;

    showMessage(xAnimal.RetornarSom);
    showMessage('tenho ' + IntToStr(xAnimal.Patas) + ' Patas.');
  finally
    FreeAndNil(xAnimal);
  end;

  end;

end.
