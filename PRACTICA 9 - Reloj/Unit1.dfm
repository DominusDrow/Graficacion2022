object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 524
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 32
    Top = 16
    Width = 500
    Height = 500
  end
  object Panel1: TPanel
    Left = 588
    Top = 128
    Width = 185
    Height = 305
    Caption = 'Panel1'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 648
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Encender'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 656
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Apagar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 456
    Top = 472
  end
end
