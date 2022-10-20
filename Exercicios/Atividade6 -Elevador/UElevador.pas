unit UElevador;

interface

uses
  vcl.Dialogs;

type
  TElevador = class
    private
      FPessoasMax:   Integer;
      FPessoasAgora: Integer;
      FAndarMax:     Integer;
      FAndarAgora:   Integer;


    function GetAndarAgora: Integer;
    function GetAndarMax: Integer;
    function GetPessoasAgora: Integer;
    function GetPessoasMax: Integer;


    procedure SetAndarAgora(const Value: Integer);
    procedure SetPessoasAgora(const Value: Integer);

    public
      constructor Create(const pAndar, pPessoas: Integer);

      procedure Adicionar;
      procedure Remover;
      procedure Subir;
      procedure Descer;

      property PessoasMax:   Integer read GetPessoasMax;
      property AndarMax:     Integer read GetAndarMax;
      property PessoasAgora: Integer read GetPessoasAgora write SetPessoasAgora;
      property AndarAgora:   Integer read GetAndarAgora   write SetAndarAgora;

  end;

implementation

{ TElevador }

constructor TElevador.Create(const pAndar, pPessoas: Integer);
begin
  FAndarMax := pAndar;
  FPessoasMax:= pPessoas;
  FAndarAgora:= 0;
  FPessoasAgora:= 0;
end;

procedure TElevador.Adicionar;
begin

end;

procedure TElevador.Remover;
begin

end;

procedure TElevador.Subir;
begin
  FAndarAgora:= FAndarAgora + 1;
end;


procedure TElevador.Descer;
begin
  if (FAndarAgora = 0) then
    showMessage('')
  else
  FAndarAgora:= FAndarAgora - 1
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


procedure TElevador.SetAndarAgora(const Value: Integer);
begin
  FAndarAgora:= Value;
end;

procedure TElevador.SetPessoasAgora(const Value: Integer);
begin
  FPessoasAgora:= Value;
end;

end.
