unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  seg: Array[1..4] of Tpoint;
  I, grados: Integer;
  ang, Xaux, Yaux: Real;
  Caratula: TBitMap;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  grados := 0;
  Caratula := TBitMap.Create;
  Caratula.LoadFromFile('D:\Documentos\GitHub\Pascal\paisaje.bmp');
end;

procedure TForm1.Timer1Timer(Sender: TObject);

begin
  seg[1] := Point(-10,0);
  seg[2] := Point(0,10);
  seg[3] := Point(10,0);
  seg[4] := Point(0,-100);

  {Rotación}
  ang := (grados * PI) / 180.0;
  for I := 1 to 4 do
    begin
      Xaux := (seg[I].x*Cos(ang)) + (seg[I].y * Sin(ang));
      Yaux := -(seg[I].x*Sin(ang)) + (seg[I].y * Cos(ang));

      seg[I].x := Round(Xaux);
      seg[I].y := Round(Yaux);
    end;

  {Traslación}
  for I := 1 to 4 do
    begin
      seg[I].x := seg[I].X + Image1.Width div 2;
      seg[I].y := seg[I].y + Image1.Height div 2;
    end;

  {Dibujar}
  //Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
  Image1.Canvas.Draw(0,0,Caratula);
  Image1.Canvas.Brush.Color := Clred;
  Image1.Canvas.Polygon(seg);
  Image1.Canvas.Brush.Color := ClWhite;

  {Actualización}
  grados := grados - 6;

end;

end.
