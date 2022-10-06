unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function CalcularTriangulo1:Double;
    function CalcularTriangulo2:Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.CalcularTriangulo1;
var
  a,b,c,p,xArea: Double;
begin
  if not TryStrToFloat(Edit1.Text, a) then
    raise Exception.Create('Digite valores validos');
  if not TryStrToFloat(Edit2.Text, b) then
    raise Exception.Create('Digite valores validos');
  if not TryStrToFloat(Edit3.Text, c) then
    raise Exception.Create('Digite valores validos');

  p:= (a+b+c) / 2;
  xArea := Sqrt(p*(p-a)*(p-b)*(p-c));

  label9.Caption:= ('Triangulo X �rea: ' + FormatFloat('0.00',xArea));
  Result:= xArea;
end;

function TForm1.CalcularTriangulo2;
var
  a,b,c,p,xArea: Double;
begin
  if not TryStrToFloat(Edit4.Text, a) then
    raise Exception.Create('Digite valores validos');
  if not TryStrToFloat(Edit5.Text, b) then
    raise Exception.Create('Digite valores validos');
  if not TryStrToFloat(Edit6.Text, c) then
    raise Exception.Create('Digite valores validos');

  p:= (a+b+c) / 2;
  xArea := Sqrt(p*(p-a)*(p-b)*(p-c));

  label10.Caption:= ('Triangulo Y �rea: ' + FormatFloat('0.00',xArea));
  Result:= xArea;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (CalcularTriangulo1 > CalcularTriangulo2) then
    label11.Caption:= ('A �rea do triangulo X � maior')
  else
    label11.Caption:= ('A �rea do triangulo Y � maior');
end;

end.
