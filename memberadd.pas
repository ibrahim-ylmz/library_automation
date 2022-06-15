unit memberadd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls,dmodule_u;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Label3: TLabel;
    membersocialno: TEdit;
    membername: TEdit;
    Label1: TLabel;
    membersurname: TEdit;
    Label2: TLabel;
    memberphonenumber: TEdit;
    Label4: TLabel;
    memberemail: TEdit;
    Label5: TLabel;
    memberadress: TEdit;
    Label6: TLabel;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure memberaddclear;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.memberaddclear;
// Member Add Edit Box Clear.
begin
        membersocialno.Clear;
        membername.Clear;
        membersurname.Clear;
        memberphonenumber.Clear;
        memberemail.Clear;
        memberadress.Clear;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  with dmodule do
    begin
      if (membersocialno.text = '') or (membername.Text = '')or (membersurname.Text = '')
    or (memberphonenumber.Text = '') or (memberemail.Text = '') or (memberadress.Text = '')then
      begin
        ShowMessage('Do Not Leave The Fields Blank');
        Abort();
      end; // End if

      tbMember.insert;
      tbMember['socialno'] := trim(membersocialno.Text);
      tbMember['name'] := trim(membername.Text);
      tbMember['surname'] := trim(membersurname.Text);
      tbMember['tel'] := trim(memberphonenumber.Text);
      tbMember['email'] := trim(memberemail.Text);
      tbMember['address'] := trim(memberadress.Text);
      tbMember.Post;
      showmessage('New Member Successfully Added');
      memberaddclear();

    end;
end;

end.
