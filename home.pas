unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Menus, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, member,
  memberadd,book,bookadd,bookout,bookin;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Option1: TMenuItem;
    nfo1: TMenuItem;
    MyAccount1: TMenuItem;
    Exit1: TMenuItem;
    ImageList1: TImageList;
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Button2: TButton;
    Image3: TImage;
    Button3: TButton;
    Image4: TImage;
    Button4: TButton;
    Image6: TImage;
    Image5: TImage;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure nfo1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses login;

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
  form3.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  form4.ShowModal;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  form5.ShowModal;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  form6.showmodal;
end;
procedure TForm2.Button5Click(Sender: TObject);
begin
  form7.ShowModal;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  form8.ShowModal;
end;

procedure TForm2.Exit1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form1.Close;
end;

procedure TForm2.nfo1Click(Sender: TObject);
begin
  ShowMessage('Created by Ýbrahim Yýlmaz');
end;

end.
