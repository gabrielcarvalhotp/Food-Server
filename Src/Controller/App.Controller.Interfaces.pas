unit App.Controller.Interfaces;

interface

uses
  App.Model.Entity.Config,
  App.Model.Entity.Produto,
  App.Model.Entity.Produto_Categoria,
  App.Model.Entity.Pedidos,
  App.Model.Entity.Pedido_Item,
  App.Model.Entity.Users,
  App.Model.DAO.Interfaces;

type
  IControllerEntity<T: class> = interface;

  IController = interface
    ['{67C7876C-E96A-4E58-B270-0AF0C84CC831}']
    function Config: IControllerEntity<TConfig>;
    function Produto: IControllerEntity<TProduto>;
    function Produto_Categoria: IControllerEntity<TProduto_Categoria>;
    function Pedido: IControllerEntity<TPedido>;
    function Pedido_Item: IControllerEntity<TPedido_Item>;
    function Users: IControllerEntity<TUsers>;
  end;

  IControllerEntity<T: class> = interface
    ['{5244AFFE-CC4B-4B0E-A19F-620BA2F18E32}']
    function Model: IModelDAO<T>;
    function &End: IController;
  end;

implementation

end.
