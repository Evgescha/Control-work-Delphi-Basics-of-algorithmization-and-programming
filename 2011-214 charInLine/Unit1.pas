unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
//find
procedure TForm1.Button1Click(Sender: TObject);

var s,s2:string;
i,n:integer;
begin

s:=Edit2.Text;//���������� ������
s2:=Edit1.Text; //���������� �����

if(Length(s2)<1) or (Length(s)<1) then Exit;

n:=0;//�������� ������� ��������
for i:=1 to Length(s2) do//���������� ������ �������� � ������
if s[1]=s2[i] then n:=n+1; //���� ������� ������ ����� �������� �� ����������� �������
Label3.Caption:='������ ' + s[1]+ ' ����������� '+inttostr(n)+  ' ���';//����� ����������

end;
  //clear
procedure TForm1.Button2Click(Sender: TObject);
begin
Edit2.Text:='';
Edit1.Text:='';
Label3.Caption:='';

end;
  //exit
procedure TForm1.Button3Click(Sender: TObject);
begin
form1.Close;
end;

end.
