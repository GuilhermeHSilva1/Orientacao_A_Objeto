unit UContas;

interface

type
    TContas = class
      private
        FNome: String;
        FSaldo: Double;
        FNumero: Integer;


        procedure SetNome(const Value: String);
        procedure SetSaldo(const Value: Double);
        procedure SetNumero(const Value: Integer);

        function GetNome: String;
        function GetSaldo: Double;
        function GetNumero: Integer;
    public

  constructor Create(const pNumeroConta: Integer; pNome:String; pSaldo: Currency = 0);

  function AlterarNome: String;
  function Deposito: Double;
  function Saque(var pValor: Double): Double;

  property Nome: String read GetNome write SetNome;
  property Saldo: Double read GetSaldo write SetSaldo;
  property Numero: Integer read GetNumero write SetNumero;

end;

implementation

constructor TContas.Create(const pNumeroConta: Integer; pNome: string; pSaldo: Currency = 0);
begin
  FNumero := pNumeroConta;
  FNome := pNome;
  FSaldo:= pSaldo;
end;

function TContas.AlterarNome: String;
begin

end;

function TContas.Deposito: Double;
begin

end;

function TContas.Saque(var pValor: Double): Double;
begin

end;

function TContas.GetNome: String;
begin
  Result := FNome;
end;

function TContas.GetNumero: Integer;
begin
  Result:= FNumero;
end;

function TContas.Getsaldo: Double;
begin
  Result:= FSaldo;
end;

procedure TContas.SetNome(const Value: String);
begin
  FNome:= Value;
end;

procedure TContas.SetNumero(const Value: Integer);
begin
  FNumero:= Value;
end;

procedure TContas.SetSaldo(const Value: Double);
begin
  FSaldo:= Saldo;
end;

end.
