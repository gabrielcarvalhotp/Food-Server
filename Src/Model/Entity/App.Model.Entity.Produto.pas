unit App.Model.Entity.Produto;

interface

uses
  SimpleAttributes;

type

  [Tabela('PRODUTO')]
  TProduto = class
  private
    FId_Produto: Integer;
    FNome: string;
    FDescricao: string;
    FPreco: Double;
    FFoto: string;
    FId_Categoria: Integer;
    FOrdem: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('ID_PRODUTO'), PK, AutoInc, NotNull]
    property Id_Produto: Integer read FId_Produto write FId_Produto;
    [Campo('NOME')]
    property Nome: string read FNome write FNome;
    [Campo('DESCRICAO')]
    property Descricao: string read FDescricao write FDescricao;
    [Campo('PRECO')]
    property Preco: Double read FPreco write FPreco;
    [Campo('FOTO')]
    property Foto: string read FFoto write FFoto;
    [Campo('ID_CATEGORIA')]
    property Id_Categoria: Integer read FId_Categoria write FId_Categoria;
    [Campo('ORDEM')]
    property Ordem: Integer read FOrdem write FOrdem;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

  inherited;
end;

end.
