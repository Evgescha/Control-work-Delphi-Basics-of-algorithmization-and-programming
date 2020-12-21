unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iAll:integer;
  isDrawed:bool;
  arr:array[1..8] of array[1..2] of integer;
implementation

{$R *.dfm}
//paint
procedure TForm1.Button1Click(Sender: TObject);
var

i:integer;
begin
//ship
arr[1][1]:=200;  arr[1][2]:=100;
arr[2][1]:=150;  arr[2][2]:=50;
arr[3][1]:=150;  arr[3][2]:=200;
arr[4][1]:=75;   arr[4][2]:=200;
arr[5][1]:=90;   arr[5][2]:=220;
arr[6][1]:=210;  arr[6][2]:=220;
arr[7][1]:=225;  arr[7][2]:=200;
arr[8][1]:=150;  arr[8][2]:=200;

// start point
Image1.Canvas.MoveTo(150,150);

//fast drawing
IF RadioButton1.Checked then
    for i:=1 to 8 do
     begin
       Image1.Canvas.LineTo(arr[i][1],arr[i][2]);
    end
ELSE
//slow drawing
begin
//
  iAll:=1;
  isDrawed:=true;
end;

end;


// clear
procedure TForm1.Button2Click(Sender: TObject);
begin
Image1.Canvas.Rectangle(0,0,500,500);
end;

//slow drawing
procedure TForm1.Timer1Timer(Sender: TObject);
begin
//   ���� ������� ��������
  if isDrawed then
  //������ �����
  begin
    Image1.Canvas.LineTo(arr[iAll][1],arr[iAll][2]);
    iAll:=iAll+1;
    if iAll>8 then
    begin
      iAll:=1;
      isDrawed:=false;
    end;
  end;
end;

end.
