object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Funcion'
  ClientHeight = 446
  ClientWidth = 824
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
    Left = 8
    Top = 24
    Width = 600
    Height = 400
  end
  object Panel1: TPanel
    Left = 631
    Top = 24
    Width = 185
    Height = 400
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object Label2: TLabel
      Left = 16
      Top = 86
      Width = 6
      Height = 13
      Caption = 'B'
    end
    object Edit1: TEdit
      Left = 88
      Top = 37
      Width = 81
      Height = 21
      TabOrder = 0
      Text = '-3'
    end
    object Button1: TButton
      Left = 48
      Top = 140
      Width = 75
      Height = 25
      Caption = 'SIN(X)'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 88
      Top = 83
      Width = 81
      Height = 21
      TabOrder = 2
      Text = '3'
    end
    object Button2: TButton
      Left = 48
      Top = 188
      Width = 75
      Height = 25
      Caption = 'X^2'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 48
      Top = 228
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 4
    end
    object Button4: TButton
      Left = 48
      Top = 276
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 5
      OnClick = Button4Click
    end
  end
end
