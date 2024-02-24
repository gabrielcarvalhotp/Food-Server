unit App.Model.Connection.Factory;

interface

uses
  App.Model.Connection.Interfaces;

type
  TModelConnectionFactory = class(TInterfacedObject, IModelConnectionFactory)
  private
    FConnection: IModelConnection;
  public
    { public }
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConnectionFactory;
    function This: IModelConnection;
  end;

implementation

{ TModelConnectionFactory }

uses
  App.Model.Connection.Firedac;

function TModelConnectionFactory.This: IModelConnection;
begin
  if not Assigned(FConnection) then
    FConnection := TModelConnectionFiredac.New;
  Result := FConnection;
end;

constructor TModelConnectionFactory.Create;
begin

end;

destructor TModelConnectionFactory.Destroy;
begin
  inherited;

end;

class function TModelConnectionFactory.New: IModelConnectionFactory;
begin
  Result := Self.Create;
end;

end.
