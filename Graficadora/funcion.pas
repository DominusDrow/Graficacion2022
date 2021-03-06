unit funcion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Graph: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Button6: TButton;
    IntervalB: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    IntervalA: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure IntervalAChange(Sender: TObject);
    procedure IntervalBChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure restringInt(Sender: TObject; var Key: Char);
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
x,y,Dx: Real;

Begin
  a := StrToInt(IntervalA.Text);
  b := StrToInt(IntervalB.Text);
  Dx := (b - a) / Graph.Width/8;

  x := a;
  While x < b do
  Begin
    y := 8*Sin(x);
    {Transformación}
    Col := Round((Graph.Width/2) + x * (Graph.Width div (b - a)));
    Ren := Round((Graph.Width/2) - y * (Graph.Width div (b - a)));

    Graph.Canvas.Pixels[Col,Ren] := $688043;
    x := x + Dx;
  End

End;

procedure TForm1.FormCreate(Sender: TObject);
Var
I: Integer;

begin
  {La ventana aparece en el centro}
  Position := poScreenCenter;

  {Se dibuja un rectangulo que abarca toda la imagen}
  Graph.Canvas.Rectangle(0,0,Graph.Width,Graph.Height);

  {Se definen los ejes ordenados}
  Graph.Canvas.TextOut(Graph.Width -18,(Graph.Width div 2) - 18,'x');
  Graph.Canvas.TextOut((Graph.Width div 2) - 8,2,'y');

  {Se dibujan los cuadrantes}
  for I := 1 to Graph.Width do
    begin
      Graph.Canvas.Pixels[0+i,Graph.Width div 2] := Clblack;
      Graph.Canvas.Pixels[Graph.Width div 2,0+i] := Clblack;
    end;

  {Se indica el origen y escalas}
  Graph.Canvas.TextOut((Graph.Width div 2)+6,(Graph.Width div 2)+6,'0');

  Graph.Canvas.TextOut(Graph.Width -18,(Graph.Width div 2) + 4,intervalB.Text);
  Graph.Canvas.TextOut((Graph.Width div 2) + 6,2,intervalB.Text);
  Graph.Canvas.TextOut((Graph.Width div 2) + 4,Graph.Width -18,intervalA.Text);
  Graph.Canvas.TextOut(2,(Graph.Width div 2) + 6,intervalA.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
a,b,Col,Ren: Integer;
x,y,Dx: Real;

Begin
  a := StrToInt(IntervalA.Text);
  b := StrToInt(IntervalB.Text);
  Dx := (b - a) / Graph.Width/4;  {El 4 es para aumentar la densidad de pixeles}

  x := a;
  While x < b do
  Begin
    y := 2*(x*x);
    {Transformación}
    Col := Round((Graph.Width/2) + x * (Graph.Width div (b - a)));
    Ren := Round((Graph.Width/2) - y * (Graph.Width div (b - a)));

    Graph.Canvas.Pixels[Col,Ren] := Clblue; {Aquí se utiliza la funcion primitiva}
    x := x + Dx;
  End

End;


procedure TForm1.Button3Click(Sender: TObject);
Var
a,b,Col,Ren: Integer;
x,Dx,Max,Min,y: Real;

Begin
  {Paso número 2}
  a := StrToInt(IntervalA.Text);
  b := StrToInt(IntervalB.Text);

  Max := a*a*a;
  Min := Max;

  Dx := (b - a) / (Graph.Width div 2);
  x := a;

  for Col := 1 to (Graph.Width div 2) do
  Begin
    y := x*x*x;
    If(y > Max) then
      Max := y;
    If(y < Min) then
      Min := y;

    x := x + Dx;
  End;

  {Paso número 3}
  x := a;
  for Col := 1 to (Graph.Width div 2) do
  Begin
    y := x*x*x;
    Ren := Round(((Graph.Width div 2-0)/(Min - Max)) * (y - Max) + 0);
    Graph.Canvas.Pixels[Col, Ren] := Clred;
    x := x + Dx;
  End

End;

procedure TForm1.Button4Click(Sender: TObject);
Var
I: integer;

begin
  {Se dibuja un rectangulo que abarca toda la imagen}
  Graph.Canvas.Rectangle(0,0,Graph.Width,Graph.Height);

  {Se dibujan los cuadrantes}
  for I := 1 to Graph.Width do
    begin
      Graph.Canvas.Pixels[0+i,Graph.Width div 2] := Clblack;
      Graph.Canvas.Pixels[Graph.Width div 2,0+i] := Clblack;
    end;

  {Se indica el origen y escalas}
  Graph.Canvas.TextOut((Graph.Width div 2)+6,(Graph.Width div 2)+6,'0');

  Graph.Canvas.TextOut(Graph.Width -18,(Graph.Width div 2) + 4,intervalB.Text);
  Graph.Canvas.TextOut((Graph.Width div 2) + 6,2,intervalB.Text);
  Graph.Canvas.TextOut((Graph.Width div 2) + 4,Graph.Width -18,intervalA.Text);
  Graph.Canvas.TextOut(2,(Graph.Width div 2) + 6,intervalA.Text);

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ShowMessage('Alfredo Omar Vásquez López');
end;

procedure TForm1.Button6Click(Sender: TObject);
Var
a,b,Col,Ren: Integer;
x,y,Dx: Real;

Begin
  a := StrToInt(IntervalA.Text);
  b := StrToInt(IntervalB.Text);
  Dx := (b - a) / Graph.Width/3;

  x := a;
  While x < b do
  Begin
    y := -1*Cos(x);
    {Transformación}
    Col := Round((Graph.Width/2) + x * (Graph.Width div (b - a)));
    Ren := Round((Graph.Width/2) - y * (Graph.Width div (b - a)));

    Graph.Canvas.Pixels[Col,Ren] := $7fbf1d;
    x := x + Dx;
  End

End;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.IntervalAChange(Sender: TObject);
begin
  {Se ponen las escalas de la grafica}
  Graph.Canvas.TextOut((Graph.Width div 2) + 4,Graph.Width -18,intervalA.Text);
  Graph.Canvas.TextOut(2,(Graph.Width div 2) + 6,intervalA.Text);
end;



procedure TForm1.IntervalBChange(Sender: TObject);
begin
  {Se ponen las escalas de la grafica}
  Graph.Canvas.TextOut(Graph.Width -18,(Graph.Width div 2) + 4,intervalB.Text);
  Graph.Canvas.TextOut((Graph.Width div 2) + 6,2,intervalB.Text);
end;

procedure TForm1.restringInt(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','-',#8]) then
    key := #0;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage('Alfredo Omar Vásquez López');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
Var
I: integer;

begin
  {Se dibuja un rectangulo que abarca toda la imagen}
  Graph.Canvas.Rectangle(0,0,Graph.Width,Graph.Height);

  {Se definen los ejes ordenados}
  Graph.Canvas.TextOut(Graph.Width -18,(Graph.Width div 2) - 18,'x');
  Graph.Canvas.TextOut((Graph.Width div 2) - 8,2,'y');

  {Se dibujan los cuadrantes}
  for I := 1 to Graph.Width do
    begin
      Graph.Canvas.Pixels[0+i,Graph.Width div 2] := Clblack;
      Graph.Canvas.Pixels[Graph.Width div 2,0+i] := Clblack;
    end;

  {Se indica el origen y escalas}
  Graph.Canvas.TextOut((Graph.Width div 2)+6,(Graph.Width div 2)+6,'0');

  Graph.Canvas.TextOut(Graph.Width -18,(Graph.Width div 2) + 4,intervalB.Text);
  Graph.Canvas.TextOut((Graph.Width div 2) + 6,2,intervalB.Text);
  Graph.Canvas.TextOut((Graph.Width div 2) + 4,Graph.Width -18,intervalA.Text);
  Graph.Canvas.TextOut(2,(Graph.Width div 2) + 6,intervalA.Text);

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Close();
end;

end.



