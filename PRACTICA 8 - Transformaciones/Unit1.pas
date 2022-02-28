unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    Edit2: TEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  figura: Array[1..9] of Tpoint;
  I,Tx,Ty,Sx,Sy,grados: Integer;
  ang: Real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  {Dibujar}
  Image1.Canvas.Polygon(figura);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  {Mover derecha}
  Tx := 1;
  Ty := 0;

  for I := 1 to 9 do
  begin
    figura[I].x := figura[I].x + Tx;
    figura[I].y := figura[I].y + Ty;
  end;

  {Dibujar}
  Image1.Canvas.Rectangle(0,0,500,500);
  Image1.Canvas.Brush.Color := Clred;
  Image1.Canvas.Polygon( figura);
  Image1.Canvas.Brush.Color := ClWhite;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  {Mover izquierda}
  Tx := -1;
  Ty := 0;

  for I := 1 to 9 do
  begin
    figura[I].x := figura[I].x + Tx;
    figura[I].y := figura[I].y + Ty;
  end;

  {Dibujar}
  Image1.Canvas.Rectangle(0,0,500,500);
  Image1.Canvas.Brush.Color := Clred;
  Image1.Canvas.Polygon( figura);
  Image1.Canvas.Brush.Color := ClWhite;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  {Traslación}
  Tx := StrToInt(Edit1.Text);
  Ty := StrToInt(Edit3.Text);

  for I := 1 to 9 do
  begin
    figura[I].x := figura[I].x + Tx;
    figura[I].y := figura[I].y + Ty;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  {Escala}
  Sx := StrToInt(Edit4.Text);
  Sy := StrToInt(Edit5.Text);

  for I := 1 to 9 do
  begin
    figura[I].x := figura[I].x * Sx;
    figura[I].y := figura[I].y * Sy;
  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  {Cargargado de los datos}
  figura[1] := point(0,0);
  figura[2] := point(5,0);
  figura[3] := point(3,2);
  figura[4] := point(-3,2);
  figura[5] := point(-5,0);
  figura[6] := point(0,0);
  figura[7] := point(0,-4);
  figura[8] := point(-2,-1);
  figura[9] := point(0,-1);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,500,500);
end;

procedure TForm1.Button8Click(Sender: TObject);
Var
Xaux, Yaux: Real;

begin
  {Rotación}
  grados := StrToInt(Edit2.Text);
  ang := (grados * PI) / 180.0;

  for I := 1 to 9 do
  begin
    Xaux := (figura[I].x * Cos(ang)) + (figura[I].y * Sin(ang));
    Yaux := (-figura[I].x * Sin(ang)) + (figura[I].y * Cos(ang));

    figura[I].x := Round(Xaux);
    figura[I].y := Round(Yaux);
  end;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,500,500);

  Edit1.Text := '0';
  Edit3.Text := '0';
  Edit4.Text := '1';
  Edit5.Text := '1';
  Edit2.Text := '0';

end;

end.
