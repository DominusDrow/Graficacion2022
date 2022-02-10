unit Imagen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    Pick: TImage;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure PickMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
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
  If(OpenPictureDialog1.Execute) then
    begin
      Pick.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;

end;

procedure TForm1.PickMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
red,green,blue : Integer;

begin
  Edit5.Text := IntToStr(X);
  Edit4.Text := IntToStr(Y);

  {RGB son tres bytes, red,green,blue}
  red := Pick.Canvas.Pixels[X,Y] AND $0000FF;
  green := (Pick.Canvas.Pixels[X,Y] AND $00FF00) SHR 8; {Se recorre un byte}
  blue := (Pick.Canvas.Pixels[X,Y] AND $FF0000) SHR 16;

  Edit1.Text := IntToStr(red);
  Edit2.text := IntToStr(green);
  Edit3.text := IntToStr(blue);
end;

end.
