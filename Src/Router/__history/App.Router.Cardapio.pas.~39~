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
      LJSONArray := LController.Produto.Model.Find;

      for LJSON in LJSONArray do
      begin
        LController.Produto_Categoria.Model.DAO.Find('ID_CATEGORIA', LJSON.GetValue<Integer>('id_categoria', 0));
        TJSONObject(LJSON).AddPair('categoria', LController.Produto_Categoria.Model.DataSetAsJSONArray);
      end;

      ARes.Send<TJSONArray>(LJSONArray).Status(THTTPStatus.OK);
    end);
end;

end.
