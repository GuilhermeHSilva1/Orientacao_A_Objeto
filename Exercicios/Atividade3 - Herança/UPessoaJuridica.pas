unit UPessoaJuridica;

interface

uses
  UPessoa;

type

  TPessoaJuridica = class(TPessoa)
    private
      FFCNPJ: String;
      FFIE: String;

    function GetCPF: String;
    function GetFIE: String;
    procedure SetCNPJ(const Value: String);
    procedure SetFIE(const Value: String);

    public

      property CNPJ: String read GetCPF write SetCNPJ;
      property FIE: String read GetFIE write SetFIE;
      function CNPJ_Valido: boolean;

  end;

implementation



{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido: boolean;
begin

end;

function TPessoaJuridica.GetCPF: String;
begin

end;

function TPessoaJuridica.GetFIE: String;
begin

end;


procedure TPessoaJuridica.SetCNPJ(const Value: String);
begin

end;

procedure TPessoaJuridica.SetFIE(const Value: String);
begin

end;

end.
