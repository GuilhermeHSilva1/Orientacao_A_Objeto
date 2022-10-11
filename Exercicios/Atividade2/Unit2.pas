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
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FContas: TContas;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
var
  xNovoSaldo:Double;
begin
 xNovoSaldo:= FContas.Saque(500);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(FContas);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if not Assigned(FContas)then
    FContas:= TContas.Create(112,'Guilherme', 500);
end;

end.
