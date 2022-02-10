object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 511
  ClientWidth = 684
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
    Left = 16
    Top = 56
    Width = 400
    Height = 400
  end
  object Panel1: TPanel
    Left = 432
    Top = 56
    Width = 233
    Height = 400
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 27
      Width = 6
      Height = 13
      Caption = 'X'
    end
    object Label2: TLabel
      Left = 16
      Top = 75
      Width = 6
      Height = 13
      Caption = 'Y'
    end
    object Edit1: TEdit
      Left = 48
      Top = 24
      Width = 129
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 48
      Top = 72
      Width = 129
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Button1: TButton
      Left = 72
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Rojo'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 72
      Top = 143
      Width = 75
      Height = 25
      Caption = 'Verde'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 72
      Top = 174
      Width = 75
      Height = 25
      Caption = 'Azul'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 72
      Top = 205
      Width = 75
      Height = 25
      Caption = 'Negro(x,y)'
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 72
      Top = 236
      Width = 75
      Height = 25
      Caption = 'Button5'
      TabOrder = 6
    end
    object Button6: TButton
      Left = 72
      Top = 267
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 7
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 72
      Top = 298
      Width = 75
      Height = 25
      Caption = 'Autor'
      TabOrder = 8
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 72
      Top = 329
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 9
      OnClick = Button8Click
    end
  end
end
