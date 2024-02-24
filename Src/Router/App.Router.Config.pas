unit App.Router.Config;

interface

procedure Registry;

implementation

uses
  System.SysUtils,
  System.Classes,
  System.Generics.Collections,
  System.JSON,
  Horse,
  App.Controller,
  App.Model.Entity.Config;

procedure Registry;
begin
  THorse

    .Get('/config',
    procedure(AReq: THorseRequest; ARes: THorseResponse; ANext: TNextProc)
    begin
      ARes.Send<TJSONArray>(TController.New.Config.Model.Find).Status(THTTPStatus.OK);
    end)
end;

end.
