unit App.Router.Cardapio;

interface

procedure Registry;

implementation

uses
  System.SysUtils,
  System.Classes,
  System.Generics.Collections,
  System.JSON,
  Horse,
  App.Controller.Interfaces,
  App.Controller,
  App.Model.Entity.Produto_Categoria,
  App.Model.Entity.Produto;

procedure Registry;
begin
  THorse

    .Get('/cardapio',
    procedure(AReq: THorseRequest; ARes: THorseResponse; ANext: TNextProc)
    var
      LController: IController;
      LJSONArray: TJSONArray;
      LJSON: TJSONValue;
    begin
      LController := TController.New;
      LJSONArray := LController.Produto_Categoria.Model.Find;

      for LJSON in LJSONArray do
      begin
        LController.Produto.Model.DAO.Find('ID_CATEGORIA', LJSON.GetValue<Integer>('id_categoria', 0));
        TJSONObject(LJSON).AddPair('produtos', LController.Produto.Model.DataSetAsJSONArray);
      end;

      ARes.Send<TJSONArray>(LJSONArray).Status(THTTPStatus.OK);
    end);
end;

end.
