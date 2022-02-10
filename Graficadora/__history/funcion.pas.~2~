unit funcion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
Var
a,b,Col,Ren: Integer;
x,Dx,Max,Min,y: Real;

Begin
  {Pasa número 2}
  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);

  Max := Sin(a);
  Min := Max;

  Dx := (b - a) / 600;
  x := a;

  for Col := 1 to 600 do
  Begin
    y := Sin(x);
    If(y > Max) then
      Max := y;
    If(y < Min) then
      Min := y;

    x := x + Dx;
  End;

  {Paso número 3}
  x := a;
  for Col := 1 to 600 do
  Begin
    y := Sin(x);
    Ren := Round(((400-0)/(Min - Max)) * (y - Max) + 0);
    Image1.Canvas.Pixels[Col, Ren] := Clred;
    x := x + Dx;
  End


End;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,600,400);
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
a,b,Col,Ren: Integer;
x,Dx,Max,Min,y: Real;

Begin
  {Pasa número 2}
  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);

  Max := a*a;
  Min := Max;

  Dx := (b - a) / 600;
  x := a;

  for Col := 1 to 600 do
  Begin
    y := x*x;
    If(y > Max) then
      Max := y;
    If(y < Min) then
      Min := y;

    x := x + Dx;
  End;

  {Paso número 3}
  x := a;
  for Col := 1 to 600 do
  Begin
    y := x*x;
    Ren := Round(((400-0)/(Min - Max)) * (y - Max) + 0);
    Image1.Canvas.Pixels[Col, Ren] := Clred;
    x := x + Dx;
  End


End;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,600,400);
end;

end.



