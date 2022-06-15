unit bookin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,dmodule_u,
  Vcl.DBGrids;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  Dbgrid1.DataSource.DataSet.Delete
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dbgrid1.Refresh;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  dbgrid1.Refresh;
end;

end.
