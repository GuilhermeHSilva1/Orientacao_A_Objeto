unit UBomba;

interface

type
  TBomba = class

    private
      FTipoCombustivel: String;
      FValorLitro: Double;
      FQuantidade: Double;

    function GetQuantidade: Double;
    function GetTipoCombustivel: String;
    function GetValorLitro: Double;

    procedure SetQuantidade(const Value: Double);
    procedure SetTipoCombustivel(const Value: String);
    procedure SetValorLitro(const Value: Double);

    public

      property TipoCombustivel : String read GetTipoCombustivel write SetTipoCombustivel;
      property ValorLitro: Double read GetValorLitro write SetValorLitro;
      property Quantidade: Double read GetQuantidade write SetQuantidade;

      function AbastecerPorValor: Double;
      function AbastecerPorLitro: Double;
      procedure AlterarValor(const pValor : Double);
      procedure AlterarCombustivel(const pValor: Integer);
      function AlterarQuantidade: Double;


  end;

implementation

{ TBomba }

function TBomba.AbastecerPorLitro: Double;
begin

end;

function TBomba.AbastecerPorValor: Double;
begin

end;

procedure TBomba.AlterarCombustivel(const pValor: Integer);
begin
  if pValor = 0 then
    FTipoCombustivel:= 'Gasolina'
  else if pValor = 1 then
    FTipoCombustivel:= 'Alcool'
  else
    FTipoCombustivel:= 'Diesel';
end;

function TBomba.AlterarQuantidade: Double;
begin

end;

procedure TBomba.AlterarValor(const pValor:Double);
begin
  FValorLitro:= pValor;
end;

function TBomba.GetQuantidade: Double;
begin
  Result:= FQuantidade;
end;

function TBomba.GetTipoCombustivel: String;
begin
  Result:= FTipoCombustivel;
end;

function TBomba.GetValorLitro: Double;
begin
  Result:= FValorLitro;
end;

procedure TBomba.SetQuantidade(const Value: Double);
begin
  FQuantidade:= Value;
end;

procedure TBomba.SetTipoCombustivel(const Value: String);
begin
  FTipoCombustivel := Value;
end;

procedure TBomba.SetValorLitro(const Value: Double);
begin
  FValorLitro:= Value;
end;

end.
