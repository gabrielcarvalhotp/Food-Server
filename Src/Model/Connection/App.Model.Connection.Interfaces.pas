unit App.Model.Connection.Interfaces;

interface

uses
  FireDAC.Comp.Client;

type
  IModelConnection = interface
    ['{FA56BE09-DBB0-49DF-BBC8-22209AEE6EDA}']
    function Connect: TFDConnection;
  end;

  IModelConnectionFactory = interface
    ['{79584EC7-5D38-49BB-8D8E-920C6D614D42}']
    function This: IModelConnection;
  end;



implementation

end.
