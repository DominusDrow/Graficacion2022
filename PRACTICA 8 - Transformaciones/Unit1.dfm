object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 550
  ClientWidth = 744
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
    Top = 32
    Width = 500
    Height = 500
  end
  object Panel1: TPanel
    Left = 551
    Top = 32
    Width = 185
    Height = 500
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 12
      Height = 13
      Caption = 'Tx'
    end
    object Label2: TLabel
      Left = 24
      Top = 43
      Width = 12
      Height = 13
      Caption = 'Ty'
    end
    object Label3: TLabel
      Left = 24
      Top = 83
      Width = 12
      Height = 13
      Caption = 'Sx'
    end
    object Label4: TLabel
      Left = 24
      Top = 110
      Width = 12
      Height = 13
      Caption = 'Sy'
    end
    object Label5: TLabel
      Left = 24
      Top = 144
      Width = 33
      Height = 13
      Caption = #193'ngulo'
    end
    object Edit1: TEdit
      Left = 72
      Top = 13
      Width = 97
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit3: TEdit
      Left = 72
      Top = 40
      Width = 97
      Height = 21
      TabOrder = 1
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 72
      Top = 80
      Width = 97
      Height = 21
      TabOrder = 2
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 72
      Top = 107
      Width = 97
      Height = 21
      TabOrder = 3
      Text = 'Edit5'
    end
    object Button1: TButton
      Left = 56
      Top = 253
      Width = 75
      Height = 25
      Caption = 'Pintar'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 56
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Derecha'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 56
      Top = 327
      Width = 75
      Height = 25
      Caption = 'Izquierda'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 56
      Top = 366
      Width = 75
      Height = 25
      Caption = 'Traslaci'#243'n'
      TabOrder = 7
      OnClick = Button4Click
    end
    object Edit2: TEdit
      Left = 72
      Top = 141
      Width = 97
      Height = 21
      TabOrder = 8
      Text = 'Edit2'
    end
    object Button5: TButton
      Left = 56
      Top = 397
      Width = 75
      Height = 25
      Caption = 'Escala'
      TabOrder = 9
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 56
      Top = 222
      Width = 75
      Height = 25
      Caption = 'Inicializar'
      TabOrder = 10
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 56
      Top = 179
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 11
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 56
      Top = 440
      Width = 75
      Height = 25
      Caption = 'Rotaci'#243'n'
      TabOrder = 12
      OnClick = Button8Click
    end
  end
end
