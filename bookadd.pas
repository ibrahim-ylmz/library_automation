unit bookadd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dmodule_u,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    bookbarcode: TEdit;
    Label3: TLabel;
    booktitle: TEdit;
    Label1: TLabel;
    Image1: TImage;
    bookauthor: TEdit;
    Label2: TLabel;
    bookcount: TEdit;
    Label4: TLabel;
    bookshelf: TEdit;
    Label5: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure bookaddclear;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.bookaddclear;
// Book Add Edit Box Clear.
begin
        bookbarcode.Clear;
        booktitle.Clear;
        bookauthor.Clear;
        bookcount.Clear;
        bookshelf.Clear;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
  with dmodule do
    begin
      if (bookbarcode.text = '') or (booktitle.Text = '') or (bookauthor.Text = '')
    or (bookcount.Text = '') or (bookshelf.Text = '')then
      begin
        ShowMessage('Do Not Leave The Fields Blank');
        Abort();
      end; // End if

      tbBook.insert;
      tbBook['barcode_no'] := trim(bookbarcode.Text);
      tbBook['book_title'] := trim(booktitle.Text);
      tbBook['author'] := trim(bookauthor.Text);
      tbBook['page_count'] := trim(bookcount.Text);
      tbBook['shelf_no'] := trim(bookshelf.Text);
      tbBook.Post;
      showmessage('New Book Successfully Added');
      bookaddclear();
    end;
end;

end.
