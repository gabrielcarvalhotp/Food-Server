unit App.Controller.Entity;

interface

uses
  App.Controller.Interfaces,
  App.Model.DAO.Interfaces;

type
  TControllerEntity<T: class, constructor> = class(TInterfacedObject, IControllerEntity<T>)
  private
    FParent: IController;
    FModelDAO: IModelDAO<T>;
  public
    constructor Create(AParent: IController);
    destructor Destroy; override;
    class function New(AParent: IController): IControllerEntity<T>;
    function Model: IModelDAO<T>;
    function &End: IController;
  end;

implementation

uses
  App.Model.DAO;

function TControllerEntity<T>.&End: IController;
begin
  Result := FParent;
end;

constructor TControllerEntity<T>.Create(AParent: IController);
begin
  FParent := AParent;
  FModelDAO := TModelDAO<T>.New;
end;

destructor TControllerEntity<T>.Destroy;
begin
  inherited;

end;

class function TControllerEntity<T>.New(AParent: IController): IControllerEntity<T>;
begin
  result := self.Create(AParent);
end;

function TControllerEntity<T>.Model: IModelDAO<T>;
begin
  Result := FModelDAO;
end;

end.
