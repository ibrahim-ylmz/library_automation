unit bookout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,dmodule_u, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Image3: TImage;
    Edit1: TEdit;
    Button2: TButton;
    Image1: TImage;
    Edit2: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
 with dmodule do
  begin
      tbGivebook.insert;
      tbGivebook['socialno'] :=  dbgrid1.Fields[0].AsString;
      tbGivebook['name'] := dbgrid1.Fields[1].AsString;
      tbGivebook['surname'] := dbgrid1.Fields[2].AsString;
      tbGivebook['tel'] := dbgrid1.Fields[3].AsString;
      tbGivebook['address'] := dbgrid1.Fields[5].AsString;
      tbGivebook['barcode_no'] := dbgrid2.Fields[0].AsString;
      tbGivebook['book_title'] := dbgrid2.Fields[1].AsString;
      tbGivebook['author'] := dbgrid2.Fields[2].AsString;
      tbGivebook['page_count'] := dbgrid2.Fields[3].AsString;
      tbGivebook['shelf_no'] := dbgrid2.Fields[4].AsString;
      tbGivebook['issue_date'] :=  datetimepicker1.DateTime;
      tbGivebook['submission_date'] := datetimepicker2.DateTime;
      tbGivebook.Post;
      showmessage('Entrust Book Save Successful');
  end;
end;

procedure TForm7.Button2Click(Sender: TObject);
var
search:boolean;
begin
 with dmodule do
 begin
   search := tbMember.Locate('socialno',edit1.Text,[]);
   if search=false then
      showmessage('Not Found');
 end;
end;


procedure TForm7.Button3Click(Sender: TObject);
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

end.
