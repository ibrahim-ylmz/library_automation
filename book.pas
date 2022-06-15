unit book;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls,dmodule_u, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Label7: TLabel;
    Image3: TImage;
    Edit2: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}


procedure TForm5.Button1Click(Sender: TObject);
begin
  Dbgrid1.DataSource.DataSet.Delete
end;

procedure TForm5.Button2Click(Sender: TObject);
var
search:boolean;
begin
 with dmodule do
 begin
   search := tbBook.Locate('book_title',edit2.Text,[]);
   if search=false then
      showmessage('Not Found');
 end;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
var
count : string;
begin
count := IntToStr(DBGrid1.DataSource.DataSet.RecordCount);
Label7.caption := 'Book Count '+ count;
end;

procedure TForm5.FormCreate(Sender: TObject);
var
count : string;
begin
count := IntToStr(DBGrid1.DataSource.DataSet.RecordCount);
Label7.caption := 'Book Count '+ count;
end;

end.
