unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB,
  Vcl.ComCtrls, VCLTee.TeCanvas, dmodule_u ,VCLTee.TeeEdiGrad, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, home;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    siusername: TEdit;
    Label3: TLabel;
    Image2: TImage;
    sipassword: TEdit;
    Label4: TLabel;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    suname: TEdit;
    Label7: TLabel;
    susurname: TEdit;
    Label8: TLabel;
    suusername: TEdit;
    Label9: TLabel;
    supassword: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    prusername: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    suanswer: TEdit;
    Button1: TButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    pranswer: TEdit;
    Label17: TLabel;
    prnewpassword: TEdit;
    Label18: TLabel;
    Button2: TButton;
    suquestion: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure signupclear;
    procedure Button2Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
// Sign Up Button, New Admisator.
var
usernamecheck : string;
begin
  with dmodule do
  begin
    usernamecheck:= suusername.text;
    if tbPersonel.Locate('username', usernamecheck, []) then
      begin
        ShowMessage('Username Already Exists.');
        signupclear();
        Abort();
      end; // End if.

    if (suname.text = '') or (susurname.text = '')or (suusername.Text = '')
    or (supassword.Text = '') or (suanswer.Text = '') then
      begin
        ShowMessage('Do Not Leave The Fields Blank');
        Abort();
      end; // End if

      tbPersonel.insert;
      tbPersonel['name'] := trim(suname.Text);
      tbPersonel['surname'] := trim(susurname.Text);
      tbPersonel['username'] := trim(suusername.Text);
      tbPersonel['password'] := trim(supassword.Text);
      tbPersonel['securityquestion'] := tbSquestion['squestion'];
      tbPersonel['securityanswer'] := trim(suanswer.Text);
      tbPersonel.Post;
      showmessage('Registration Successful');
      signupclear();

  end; // End with.

end; // End Sign Up Procedure.

procedure TForm1.Button2Click(Sender: TObject);
var
prusercheck : string;
pruusername : string;
prsecurity : string;
pranswer : string;

begin
  with dmodule do
    begin
      prusercheck := prusername.Text;
      if tbPersonel.Locate('username',prusercheck, []) then
        begin
          ADOQUERY1.Close;
          Adoquery1.SQL.Clear;
          Adoquery1.SQL.Add('select username,securityquestion,securityanswer FROM personel where username='+#39+prusername.Text+#39);
          AdoQuery1.Open;
        end // End if
      else
        begin
          Showmessage('Böyle Kullanýcý Yoktur.');
          Abort();
        end;
    end; // End With
end;

procedure TForm1.signupclear;
// Sign Up Edit Box Clear.
begin
        suname.Clear;
        susurname.Clear;
        suusername.Clear;
        supassword.Clear;
        suanswer.Clear;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
// Login Page, Connection Button After Check Empty Data.
begin
if (siusername.text = '') OR (sipassword.text = '') then
    begin
      ShowMessage('Username Or Password Cannot Be Empty!');
      Abort();
    end; // End if

with dmodule do

begin
  ADOQUERY1.Close;
  Adoquery1.SQL.Clear;
  Adoquery1.SQL.Add('select username,password from personel where username=:username and password=:password');
  AdoQuery1.Parameters.ParamByName('username').value:=siusername.text;
  AdoQuery1.Parameters.ParamByName('password').Value:=sipassword.text;
  AdoQuery1.Open;
end;
if dmodule.AdoQuery1.RecordCount > 0 then
  begin
    ShowMessage('Login Successful');
    form1.hide;
    form2.Show;
  end // End if
else
  begin
    ShowMessage('Username or Password is Incorrect!');
    siusername.Clear;
    sipassword.Clear;
  end; // End Else
end;

end.
