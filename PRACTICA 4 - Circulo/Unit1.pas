unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var
  I,x,y: Integer;
begin
  for I := 1 to 360 do
  begin
    x := Round(50 * Cos(I));
    y := Round(50 * Sin(I));

    Image1.Canvas.Pixels[x,y]:= Clred;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I,x,y: Integer;
begin
  for I := 1 to 360 do
  begin
    x := Round(50 * Cos(I)) + 100; {Desplazamiento 100}
    y := Round(50 * Sin(I)) + 100;

    Image1.Canvas.Pixels[x,y]:= Clblue;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  grados,x,y: Integer;
  rad: Real;
begin
  for grados := 1 to 360 do
  begin
    rad := (grados * PI) / 180.0; {Formula radianes}
    x := Round(50 * Cos(rad)) + 200;
    y := Round(50 * Sin(rad)) + 200;

    Image1.Canvas.Pixels[x,y]:= Clred;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  grados,x,y: Integer;
  rad: Real;
begin
  for grados := 1 to 360 do
  begin
    rad := (grados * PI) / 180.0; {Formula radianes}
    x := Round(StrToInt(Edit3.Text) * Cos(rad)) + StrToInt(Edit1.Text);
    y := Round(StrToInt(Edit3.Text) * Sin(rad)) + StrToInt(Edit2.Text);

    Image1.Canvas.Pixels[x,y]:= Clred;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,400,400);
end;

end.
