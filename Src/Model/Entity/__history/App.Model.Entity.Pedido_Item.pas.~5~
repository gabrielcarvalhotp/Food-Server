unit App.Model.Entity.Pedido_Item;

interface

uses
  SimpleAttributes;

type

  [Tabela('PEDIDO_ITEM')]
  TPedido_Item = class
  private
    FId_Item: Integer;
    FId_Pedido: Integer;
    FId_Produto: Integer;
    FQtd: Double;
    FVl_Unitario: Double;
    FVl_Total: Double;
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('ID_ITEM'), PK, AutoInc, NotNull]
    property Id_Item: Integer read FId_Item write FId_Item;
    [Campo('ID_PEDIDO'), FK]
    property Id_Pedido: Integer read FId_Pedido write FId_Pedido;
    [Campo('ID_PRODUTO'), FK]
    property Id_Produto: Integer read FId_Produto write FId_Produto;
    [Campo('QTD')]
    property Qtd: Double read FQtd write FQtd;
    [Campo('VL_UNITARIO')]
    property Vl_Unitario: Double read FVl_Unitario write FVl_Unitario;
    [Campo('VL_TOTAL')]
    property Vl_Total: Double read FVl_Total write FVl_Total;
  end;

implementation

{ TPedido_Item }

constructor TPedido_Item.Create;
begin

end;

destructor TPedido_Item.Destroy;
begin

  inherited;
end;

end.
