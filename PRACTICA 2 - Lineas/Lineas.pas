unit Lineas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 100 do
    begin
      Image1.Canvas.Pixels[i,i] := Clred;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
  I: Integer;
begin
  for I := 1 to 100 do
    begin
      Image1.Canvas.Pixels[100+i,100] := Clgreen;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var
  I: Integer;
begin
  for I := 1 to 100 do
    begin
      Image1.Canvas.Pixels[200,100+i] := Clblue;
    end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,400,400);
end;

end.
