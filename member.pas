unit member;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, dmodule_u,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label7: TLabel;
    Image2: TImage;
    Button1: TButton;
    Image3: TImage;
    Button2: TButton;
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Dbgrid1.DataSource.DataSet.Delete
end;

procedure TForm3.Button2Click(Sender: TObject);
var
search:boolean;
begin
 with dmodule do
 begin
   search := tbMember.Locate('socialno',edit2.Text,[]);
   if search=false then
      showmessage('Not Found');
 end;
end;


procedure TForm3.Edit2Change(Sender: TObject);
begin
  edit2.text
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
var
count : string;
begin
  count := IntToStr(DBGrid1.DataSource.DataSet.RecordCount);
  Label7.caption := 'Members Count '+ count;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
count : string;
begin
count := IntToStr(DBGrid1.DataSource.DataSet.RecordCount);
Label7.caption := 'Members Count '+ count;
end;

end.
