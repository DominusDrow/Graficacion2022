unit Ejercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
I,J: Integer;

begin
  {Se dibuja el cuadrante 1}
  for I := 1 to (Image1.Width div 2) do
    begin
      {linea horizontal}
      Image1.Canvas.Pixels[(Image1.Width div 2)+I,Image1.Width div 4] := Clgreen;
      {linea vertical}
      Image1.Canvas.Pixels[(Image1.Width div 4)*3,0+I] := Clgreen;
    end;

  for J := 1 to (Image1.Width div 4) do
    begin
      {linea horizontal}
      Image1.Canvas.Pixels[((Image1.Width div 4)*3)+J,Image1.Width div 8] := Clgreen;
      {linea vertical}
      Image1.Canvas.Pixels[(Image1.Width div 8)*7,0+J] := Clgreen;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
I: Integer;

begin
  {Se dibuja el cuadrante 2}
  for I := 1 to (Image1.Width div 2) do
    begin
      {linea diagonal arriba}
      Image1.Canvas.Pixels[0+I,0+I] := Clred;
      {linea diagonal abajo}
      Image1.Canvas.Pixels[0+I,(Image1.Width div 2)-I] := Clred;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var
I: Integer;

begin
  {Se dibuja el cuadrante 3}
  for I := 1 to (Image1.Width div 2) do
    begin
      {linea horizontal 1}
      Image1.Canvas.Pixels[0+I,(Image1.Width div 8)*5] := Clblue;
      {linea horizontal 2}
      Image1.Canvas.Pixels[0+I,(Image1.Width div 8)*6] := Clblue;
      {linea horizontal 3}
      Image1.Canvas.Pixels[0+I,(Image1.Width div 8)*7] := Clblue;
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
Var
I: Integer;

begin
  {Se dibuja el cuadrante 4}
  for I := 1 to (Image1.Width div 2) do
    begin
      {linea vertical 1}
      Image1.Canvas.Pixels[(Image1.Width div 8)*5,(Image1.Width div 2)+I] := Clgray;
      {linea vertical 2}
      Image1.Canvas.Pixels[(Image1.Width div 8)*6,(Image1.Width div 2)+I] := Clgray;
      {linea vertical 3}
      Image1.Canvas.Pixels[(Image1.Width div 8)*7,(Image1.Width div 2)+I] := Clgray;
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ShowMessage('Alfredo Omar Vásquez López');
end;

procedure TForm1.Button7Click(Sender: TObject);
Var
I: Integer;

begin
  {Se dibuja un rectangulo que abarca toda la imagen}
  Image1.Canvas.Rectangle(0,0,400,400);

  {Se delimitan los cuadrantes}
  for I := 1 to 400 do
    begin
      Image1.Canvas.Pixels[0+i,200] := Clblack;
      Image1.Canvas.Pixels[200,0+i] := Clblack;
    end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.FormCreate(Sender: TObject);
Var
I: Integer;

begin
  {La ventana aparece en el centro}
  Position := poScreenCenter;
  {Se dibuja un rectangulo que abarca toda la imagen}
  Image1.Canvas.Rectangle(0,0,400,400);

  {Se delimitan los cuadrantes}
  for I := 1 to 400 do
    begin
      Image1.Canvas.Pixels[0+i,200] := Clblack;
      Image1.Canvas.Pixels[200,0+i] := Clblack;
    end;
end;

end.
