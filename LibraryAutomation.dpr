program LibraryAutomation;

uses
  Vcl.Forms,
  login in 'login.pas' {Form1},
  home in 'home.pas' {Form2},
  dmodule_u in 'dmodule_u.pas' {dmodule: TDataModule},
  member in 'member.pas' {Form3},
  memberadd in 'memberadd.pas' {Form4},
  book in 'book.pas' {Form5},
  bookadd in 'bookadd.pas' {Form6},
  bookout in 'bookout.pas' {Form7},
  bookin in 'bookin.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tdmodule, dmodule);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
