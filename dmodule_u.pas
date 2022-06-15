unit dmodule_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdmodule = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    tbPersonel: TADOTable;
    dtPersonel: TDataSource;
    tbSquestion: TADOTable;
    dtSquestion: TDataSource;
    tbMember: TADOTable;
    dtMember: TDataSource;
    qrMember: TADOQuery;
    tbMembersocialno: TWideStringField;
    tbMembername: TWideStringField;
    tbMembersurname: TWideStringField;
    tbMembertel: TWideStringField;
    tbMemberemail: TWideStringField;
    tbMemberaddress: TWideStringField;
    tbBook: TADOTable;
    dtBook: TDataSource;
    qrBook: TADOQuery;
    tbGivebook: TADOTable;
    dtGivebook: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmodule: Tdmodule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
