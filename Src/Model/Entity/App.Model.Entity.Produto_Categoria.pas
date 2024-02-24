unit App.Model.Entity.Produto_Categoria;

interface

uses
  SimpleAttributes;

type

  [Tabela('PRODUTO_CATEGORIA')]
  TProduto_Categoria = class
  private
    FId_Categoria: Integer;
    FCategoria: string;
    FOrdem: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('ID_CATEGORIA')]
    property Id_Categoria: Integer read FId_Categoria write FId_Categoria;
    [Campo('CATEGORIA')]
    property Categoria: string read FCategoria write FCategoria;
    [Campo('ORDEM')]
    property Ordem: Integer read FOrdem write FOrdem;
  end;

implementation

{ TProduto_Categoria }

constructor TProduto_Categoria.Create;
begin

end;

destructor TProduto_Categoria.Destroy;
begin

  inherited;
end;

end.
