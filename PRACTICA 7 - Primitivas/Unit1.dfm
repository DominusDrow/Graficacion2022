object Form1: TForm1
  Left = 488
  Top = 110
  Caption = 'Form1'
  ClientHeight = 526
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 8
    Width = 500
    Height = 500
    Cursor = crCross
    OnMouseDown = Image1MouseDown
    OnMouseUp = Image1MouseUp
  end
  object Panel1: TPanel
    Left = 544
    Top = 8
    Width = 185
    Height = 500
    TabOrder = 0
    object Button1: TButton
      Left = 56
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Linea'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 56
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Rectangulo'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 56
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Circulo'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 56
      Top = 239
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 56
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Button5'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 48
      Top = 360
      Width = 89
      Height = 25
      Caption = 'Color de Pluma'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 48
      Top = 416
      Width = 89
      Height = 25
      Caption = 'Color de Pincel'
      TabOrder = 6
      OnClick = Button7Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 248
    Top = 232
  end
end
