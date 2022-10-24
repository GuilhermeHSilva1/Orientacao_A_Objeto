unit UElevador;

interface

uses
  vcl.Dialogs, System.SysUtils, System.Classes;

type
  TElevador = class
    private
      FPessoasMax:   Integer;
      FPessoasAgora: Integer;
      FPessoasSair:  Array of Integer;
      FAndarMax:     Integer;
      FAndarAgora:   Integer;


    function GetAndarAgora: Integer;
    function GetAndarMax: Integer;
    function GetPessoasAgora: Integer;
    function GetPessoasMax: Integer;
    function GetPessoasSair: Integer;


    procedure SetAndarAgora(const Value: Integer);
    procedure SetPessoasAgora(const Value: Integer);
    procedure SetPessoasSair(const Value: Integer);

    public
      constructor Create(const pAndar, pPessoas: Integer);

      procedure Adicionar(const pValor: Integer);
      procedure MoverElevador(const pAndar: Integer);

      property PessoasMax:   Integer read GetPessoasMax;
      property AndarMax:     Integer read GetAndarMax;
      property PessoasSair:  Integer read GetPessoasSair  write SetPessoasSair;
      property PessoasAgora: Integer read GetPessoasAgora write SetPessoasAgora;
      property AndarAgora:   Integer read GetAndarAgora   write SetAndarAgora;

  end;

implementation

{ TElevador }

constructor TElevador.Create(const pAndar, pPessoas: Integer);
var
  I:Integer;
begin
  FAndarMax := pAndar;
  FPessoasMax:= pPessoas;
  FAndarAgora:= 0;
  FPessoasAgora:= 0;
  for I := 1 to FPessoasMax do
    begin
      SetLength(FPessoasSair, Length(FPessoasSair)+1);
      FPessoasSair[I-1]:= -1;
    end;
end;

procedure TElevador.Adicionar(const pValor: Integer);
begin
  if pValor > FAndarMax then
    raise Exception.Create('Elevador n�o possui esse andar')
  else if FPessoasAgora = FPessoasMax then
    raise Exception.Create('Elevador ja esta lotado')
  else
    begin
      FPessoasAgora:= FPessoasAgora + 1;
      FPessoasSair[FPessoasAgora - 1]:= pValor;
    end;
end;

procedure TElevador.MoverElevador(const pAndar: Integer);
var
  I,X: Integer;
begin
  if pAndar = -1 then
    raise Exception.Create('Clique em algum andar')
  else
    begin
      if FAndarAgora <= pAndar then
      begin
        for I := FAndarAgora to pAndar do
          begin
            for X := Low(FPessoasSair) to High(FPessoasSair) do
              begin
                if FPessoasSair[X] = I then
                  begin
                    FPessoasAgora:= FPessoasAgora -1;
                    FPessoasSair[X] := -1;
                  end;
              end;
          end;
      end
      else
      begin
      for I := pAndar to FAndarAgora do
          begin
            for X := Low(FPessoasSair) to High(FPessoasSair) do
              begin
                if FPessoasSair[X] = I then
                  begin
                    FPessoasAgora:= FPessoasAgora -1;
                    FPessoasSair[X] := -1;
                  end;
              end;
          end;
      end;

      FAndarAgora:= pAndar;
    end;
end;

function TElevador.GetAndarAgora: Integer;
begin
  Result:= FAndarAgora;
end;

function TElevador.GetAndarMax: Integer;
begin
  Result:= FAndarMax;
end;

function TElevador.GetPessoasAgora: Integer;
begin
  Result:= FPessoasAgora;
end;

function TElevador.GetPessoasMax: Integer;
begin
  Result:= FPessoasMax;
end;

function TElevador.GetPessoasSair: Integer;
begin
  Result:= FPessoasSair[FPessoasAgora];
end;

procedure TElevador.SetAndarAgora(const Value: Integer);
begin
  FAndarAgora:= Value;
end;

procedure TElevador.SetPessoasAgora(const Value: Integer);
begin
  FPessoasAgora:= Value;
end;

procedure TElevador.SetPessoasSair(const Value: Integer);
begin
  FPessoasSair[FPessoasAgora]:= value;
end;

end.
