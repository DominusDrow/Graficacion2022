unit Unit1;

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
    Button6: TButton;
    Button7: TButton;
    ColorDialog1: TColorDialog;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1,x2,y1,y2: Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  {Se posiciona en el primer punto a graficar}
  Image1.Canvas.MoveTo(x1,y1);
  {Hasta donde va a trazar}
  Image1.Canvas.LineTo(x2,y2);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Image1.Canvas.Rectangle(x1,y1,x2,y2);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Image1.Canvas.Ellipse(x1,y1,x2,y2);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if(ColorDialog1.Execute) then
  begin
    Image1.Canvas.Pen.Color := ColorDialog1.Color;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if(ColorDialog1.Execute) then
  begin
    Image1.Canvas.Brush.Color := ColorDialog1.Color;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,500,500);
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x1 := X;
  y1 := Y;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x2 := X;
  y2 := Y;
end;

end.
