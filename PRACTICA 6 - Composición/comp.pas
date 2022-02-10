unit comp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Button7: TButton;
    Button8: TButton;
    SavePictureDialog1: TSavePictureDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1,y1,x2,y2: Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  If(OpenPictureDialog1.Execute) then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  If(OpenPictureDialog1.Execute) then
  begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
Var
I,J,azul: Integer;

begin
   for I := 1 to 200 do
     for J := 1 to 200 do
      begin
        azul := (Image1.Canvas.Pixels[I,J] AND $FF0000) SHR 16;
        if(azul >= 160) then
        begin
          Image3.Canvas.Pixels[I,J] := Image2.Canvas.Pixels[I,J];
        end

        else
          begin
            Image3.Canvas.Pixels[I,J] := Image1.Canvas.Pixels[I,J];
          end;
      end;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  I: Integer;
  J: Integer;
begin
  for I := x1 to x2 do
    for J := y1 to y2 do
      Image3.Canvas.Pixels[I,J] := Image1.Canvas.Pixels[I,J];
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if(SavePictureDialog1.Execute) then
  begin
    Image3.Picture.SaveToFile(SavePictureDialog1.FileName);
  end;
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x1 := X;
  y1 := Y;
end;

procedure TForm1.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x2 := X;
  y2 := Y;
end;

end.
