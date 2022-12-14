unit UPessoaFisica;

interface

uses
  UPessoa, SysUtils;

type

  TPessoaFisica = class(TPessoa)
    private
      FCPF: String;
      FIdade: Byte;

    function GetFCPF: String;
    function GetFIdade: Byte;
    procedure SetFCPF(const Value: String);
    procedure SetFIdade(const Value: Byte);

    public

      property CPF:String read GetFCPF write SetFCPF;
      property Idade: Byte read GetFIdade write SetFIdade;
      function CPF_Valido(var pCPF:String): Boolean;

  end;

implementation


{ TPessoaFisica }

function TPessoaFisica.CPF_Valido(var pCPF:String): Boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retoa o tamanho da string (CPF ? um n?mero formadoor 11 d?gitos)
  if ((pCPF = '00000000000') or (pCPF = '11111111111') or
      (pCPF = '22222222222') or (pCPF = '33333333333') or
      (pCPF = '44444444444') or (pCPF = '55555555555') or
      (pCPF = '66666666666') or (pCPF = '77777777777') or
      (pCPF = '88888888888') or (pCPF = '99999999999') or
      (length(pCPF) <> 11))
     then begin
              Result := false;
              exit;
            end;

  // try - protege o c?digo para eventuais erros de convers?o de tipo na fun??o StrToInt
  try
    { *-- C?lculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
      // StrToInt converte o i-?simo caractere do CPF em um n?mero
      s := s + (StrToInt(pCPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um n?mero no respectivo caractere num?rico

    { *-- C?lculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(pCPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

    { Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = pCPF[10]) and (dig11 = pCPF[11]))
       then Result := true
    else Result := false;
  except
    Result := false
  end;
end;

function TPessoaFisica.GetFCPF: String;
begin
  Result:= GetFCPF;
end;

function TPessoaFisica.GetFIdade: Byte;
begin
  Result:= GetFIdade;
end;

procedure TPessoaFisica.SetFCPF(const Value: String);
begin
  FCPF:= value;
end;

procedure TPessoaFisica.SetFIdade(const Value: Byte);
begin
  FIdade:= Value;
end;

end.
