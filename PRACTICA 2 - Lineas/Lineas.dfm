object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 459
  ClientWidth = 713
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
    Left = 24
    Top = 32
    Width = 400
    Height = 400
  end
  object Panel1: TPanel
    Left = 440
    Top = 32
    Width = 249
    Height = 400
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 27
      Width = 12
      Height = 13
      Caption = 'X1'
    end
    object Label2: TLabel
      Left = 24
      Top = 54
      Width = 12
      Height = 13
      Caption = 'Y1'
    end
    object Label3: TLabel
      Left = 24
      Top = 81
      Width = 12
      Height = 13
      Caption = 'X2'
    end
    object Label4: TLabel
      Left = 24
      Top = 108
      Width = 12
      Height = 13
      Caption = 'Y2'
    end
    object Edit1: TEdit
      Left = 72
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 72
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Edit3: TEdit
      Left = 72
      Top = 78
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Edit4: TEdit
      Left = 72
      Top = 105
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object Button1: TButton
      Left = 80
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Roja'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 80
      Top = 188
      Width = 75
      Height = 25
      Caption = 'Verde'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 80
      Top = 227
      Width = 75
      Height = 25
      Caption = 'Azul'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 80
      Top = 274
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 7
    end
    object Button5: TButton
      Left = 80
      Top = 313
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 8
    end
    object Button6: TButton
      Left = 80
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 9
      OnClick = Button6Click
    end
  end
end
