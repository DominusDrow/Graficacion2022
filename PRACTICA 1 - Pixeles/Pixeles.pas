unit Pixeles;

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
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
begin
    Image1.Canvas.Pixels[50,50] := Clred;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Image1.Canvas.Pixels[100,100] := RGB(0,255,0);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Image1.Canvas.Pixels[150,150] := $FF0000;
end;

procedure TForm1.Button4Click(Sender: TObject);
Var
x,y:Integer;

begin
  x := StrToInt(Edit1.Text);
  y := StrToInt(Edit2.Text);

  Image1.Canvas.Pixels[x,y] := ClBlack;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,400,400);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  ShowMessage('Alfredo Omar');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,400,400);
end;

end.
