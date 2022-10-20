unit UPessoa;

interface

uses
  SysUtils;

type
  TPessoa = class
    private
      FNome: String;
      FEndereco: String;

    function GetNome: String;
    procedure SetNome(const Value: String);

    function GetEndereco: String;
    procedure SetEndereco(const Value: String);

    public

      // procedure GravarPesoa(aPessoa: TPessoa);
      function GravarPessoa(aPessoa: TPessoa): String; virtual; abstract;
      property Nome: String read GetNome write SetNome;
      property Endereco: String read GetEndereco write SetEndereco;

  end;

  TPessoaFisica = class(TPessoa)
    private
      FCPF: String;
      FIdade: Byte;

    function GetCPF: String;
    function GetIdade: Byte;
    procedure SetCPF(const Value: String);
    procedure SetIdade(const Value: Byte);

    public

      function Gravarpessoa(aPessoa: TPessoa): String; override;
      property CPF:String read GetCPF write SetCPF;
      property Idade: Byte read GetIdade write SetIdade;
      function CPF_Valido(var pCPF:String): Boolean;

  end;

  TPessoaJuridica = class(TPessoa)
    private
      FCNPJ: String;
      FFIE: String;

    function GetCNPJ: String;
    function GetFIE: String;
    procedure SetCNPJ(const Value: String);
    procedure SetFIE(const Value: String);

    public

      property CNPJ: String read GetCNPJ write SetCNPJ;
      property FIE: String read GetFIE write SetFIE;
      function CNPJ_Valido(const CNPJ: String): boolean;

  end;


implementation

{ TPessoa }


function TPessoa.GetEndereco: String;
begin
  Result := GetEndereco;
end;

function TPessoa.GetNome: String;
begin
  Result:= GetNome;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco:= Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome:= Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido(const CNPJ: String): boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ � um n�mero formado por 14 d�gitos)
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14))
     then begin
            Result := false;
            exit;
          end;

// "try" - protege o c�digo para eventuais erros de convers�o de tipo atrav�s da fun��o "StrToInt"
  try
{ *-- C�lculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-�simo caractere do CNPJ em um n�mero
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um n�mero no respectivo caractere num�rico

{ *-- C�lculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then Result := true
    else Result := false;
  except
    Result := false
  end;
end;

function TPessoaJuridica.GetCNPJ: String;
begin
  Result:= GetCNPJ;
end;

function TPessoaJuridica.GetFIE: String;
begin
  Result:= GetFIE;
end;

procedure TPessoaJuridica.SetCNPJ(const Value: String);
begin
  FCNPJ:= Value;
end;

procedure TPessoaJuridica.SetFIE(const Value: String);
begin
  FFIE:= Value;
end;

{ TPessoaFisica }

function TPessoaFisica.CPF_Valido(var pCPF:String): Boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retoa o tamanho da string (CPF � um n�mero formadoor 11 d�gitos)
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

  // try - protege o c�digo para eventuais erros de convers�o de tipo na fun��o StrToInt
  try
    { *-- C�lculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
      // StrToInt converte o i-�simo caractere do CPF em um n�mero
      s := s + (StrToInt(pCPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um n�mero no respectivo caractere num�rico

    { *-- C�lculo do 2o. Digito Verificador --* }
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

function TPessoaFisica.GetCPF: String;
begin
  Result:= GetCPF;
end;

function TPessoaFisica.GetIdade: Byte;
begin
  Result:= GetIdade;
end;

function TPessoaFisica.Gravarpessoa;
begin

end;

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF:= Value;
end;

procedure TPessoaFisica.SetIdade(const Value: Byte);
begin
  FIdade:= Value;
end;

end.
