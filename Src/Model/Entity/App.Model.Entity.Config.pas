unit App.Model.Entity.Config;

interface

uses
  SimpleAttributes;

type
  [Tabela('CONFIG')]
  TConfig = class
  private
    FId_Config: Integer;
    FVl_Entrega: Double;
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('ID_CONFIG'), PK, AutoInc, NotNull, Display('Id. Config')]
    property Id_Config: Integer read FId_Config write FId_Config;
    [Campo('VL_ENTREGA'), Display('Valor Entrega')]
    property Vl_Entrega: Double read FVl_Entrega write FVl_Entrega;
  end;

implementation

{ TConfig }

constructor TConfig.Create;
begin

end;

destructor TConfig.Destroy;
begin

  inherited;
end;

end.
