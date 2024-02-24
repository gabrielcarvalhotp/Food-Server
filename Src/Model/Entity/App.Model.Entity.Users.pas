unit App.Model.Entity.Users;

interface

uses
  SimpleAttributes;

type
  [Tabela('TB_USERS')]
  TUsers = class
  private
    FId_Users: Integer;
    FUser_Name: string;
    FPassword: string;
    FEmail: string;
    FEmail_Password: string;
  public
    constructor Create;
    destructor Destroy; override;
    [Campo('ID_USERS'), PK, NotNull]
    property Id_Users: Integer read FId_Users write FId_Users;
    [Campo('USER_NAME'), NotNull]
    property User_Name: string read FUser_Name write FUser_Name;
    [Campo('PASSWORD'), NotNull]
    property Password: string read FPassword write FPassword;
    [Campo('EMAIL')]
    property Email: string read FEmail write FEmail;
    [Campo('EMAIL_PASSWORD')]
    property Email_Password: string read FEmail_Password write FEmail_Password;
  end;

implementation

{ TUsers }

constructor TUsers.Create;
begin

end;

destructor TUsers.Destroy;
begin

  inherited;
end;

end.
