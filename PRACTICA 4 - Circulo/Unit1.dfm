object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 468
  ClientWidth = 709
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
    Top = 32
    Width = 400
    Height = 400
  end
  object Label2: TLabel
    Left = 504
    Top = 99
    Width = 11
    Height = 13
    Caption = 'Yc'
  end
  object Panel1: TPanel
    Left = 488
    Top = 32
    Width = 185
    Height = 400
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 27
      Width = 11
      Height = 13
      Caption = 'Xc'
    end
    object Label3: TLabel
      Left = 16
      Top = 107
      Width = 27
      Height = 13
      Caption = 'Radio'
    end
    object Edit1: TEdit
      Left = 64
      Top = 24
      Width = 105
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Button1: TButton
      Left = 48
      Top = 188
      Width = 75
      Height = 25
      Caption = 'Circulo1'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 48
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Circulo2'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 48
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Circulo3'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 48
      Top = 344
      Width = 75
      Height = 25
      Caption = 'Circulo4'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Edit3: TEdit
      Left = 64
      Top = 104
      Width = 105
      Height = 21
      TabOrder = 5
      Text = '10'
    end
  end
  object Edit2: TEdit
    Left = 552
    Top = 96
    Width = 105
    Height = 21
    TabOrder = 1
    Text = '0'
  end
end
