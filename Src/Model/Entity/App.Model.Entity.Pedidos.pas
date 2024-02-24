unit App.Model.Entity.Pedidos;

interface

uses
  System.Generics.Collections,
  App.Model.Entity.Pedido_Item,
  SimpleAttributes;

type
  [Tabela('PEDIDO')]
  TPedido = class
  private
    FId_Pedido: Integer;
    FId_Usuario: Integer;
    FEndereco: string;
    FFone: string;
    FVl_Subtotal: Double;
    FVl_Entrega: Double;
    FVl_Total: Double;
    FDt_Pedido: TDateTime;
    FStatus: string;
    FItens: TObjectList<TPedido_Item>;
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('ID_PEDIDO'), NotNull]
    property Id_Pedido: Integer read FId_Pedido write FId_Pedido;
    [Campo('ID_USUARIO'), FK]
    property Id_Usuario: Integer read FId_Usuario write FId_Usuario;
    [Campo('ENDERECO')]
    property Endereco: string read FEndereco write FEndereco;
    [Campo('FONE')]
    property Fone: string read FFone write FFone;
    [Campo('VL_SUBTOTAL')]
    property Vl_Subtotal: Double read FVl_Subtotal write FVl_Subtotal;
    [Campo('VL_ENTREGA')]
    property Vl_Entrega: Double read FVl_Entrega write FVl_Entrega;
    [Campo('VL_TOTAL')]
    property Vl_Total: Double read FVl_Total write FVl_Total;
    [Campo('DT_PEDIDO')]
    property Dt_Pedido: TDateTime read FDt_Pedido write FDt_Pedido;
    [Campo('STATUS')]
    property Status: string read FStatus write FStatus;

    [Ignore]
    property Itens: TObjectList<TPedido_Item> read FItens write FItens;
  end;

implementation

{ TPedido }

uses
  System.SysUtils;

constructor TPedido.Create;
begin
  FItens := TObjectList<TPedido_Item>.Create;
end;

destructor TPedido.Destroy;
begin
  FreeAndNil(FItens);
  inherited;
end;

end.
