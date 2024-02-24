unit App.Model.Connection.Firedac;

interface

uses
  Firedac.Stan.Intf,
  Firedac.Stan.Option,
  Firedac.Stan.Error,
  Firedac.UI.Intf,
  Firedac.Phys.Intf,
  Firedac.Stan.Def,
  Firedac.Stan.Pool,
  Firedac.Stan.Async,
  Firedac.Phys,
  Data.DB,
  Firedac.Comp.Client,
  Firedac.DApt,
  Firedac.Phys.FB,
  Firedac.Phys.SQLite,
  Firedac.Phys.SQLiteDef,
  Firedac.Phys.FBDef,
  Firedac.Phys.MySQLDef,
  Firedac.Phys.MySQL,
  Firedac.VCLUI.Wait,
  Firedac.Comp.UI,
  App.Model.Connection.Interfaces;

type
  TModelConnectionFiredac = class(TInterfacedObject, IModelConnection)
  private
    FConnection: TFDConnection;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    class var FInstance: IModelConnection;
    procedure ParamsConnection;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConnection;
    function Connect: TFDConnection;
  end;

implementation

{ TModelConnectionFiredac }

function TModelConnectionFiredac.Connect: TFDConnection;
begin
  Result := FConnection;
end;

constructor TModelConnectionFiredac.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FDPhysFBDriverLink := TFDPhysFBDriverLink.Create(nil);
  FDGUIxWaitCursor := TFDGUIxWaitCursor.Create(nil);
  ParamsConnection;
  FConnection.Open;
end;

destructor TModelConnectionFiredac.Destroy;
begin
  inherited;

end;

class function TModelConnectionFiredac.New: IModelConnection;
begin
  if not Assigned(FInstance) then
    FInstance := Self.Create;
  result := FInstance;
end;

procedure TModelConnectionFiredac.ParamsConnection;
begin
  FConnection.Params.Add('Database=C:\DB\FASTFOOD.FDB');
  FConnection.Params.Add('User_Name=SYSDBA');
  FConnection.Params.Add('Password=masterkey');
  FConnection.Params.Add('DriverID=FB');
end;

end.
