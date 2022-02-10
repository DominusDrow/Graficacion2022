object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Ejercicio1'
  ClientHeight = 477
  ClientWidth = 718
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
    Top = 40
    Width = 400
    Height = 400
    Cursor = crCross
  end
  object Panel1: TPanel
    Left = 456
    Top = 40
    Width = 241
    Height = 400
    Color = clCream
    ParentBackground = False
    TabOrder = 0
    object Button1: TButton
      Left = 72
      Top = 25
      Width = 105
      Height = 40
      Caption = 'Cauadrante 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 72
      Top = 84
      Width = 105
      Height = 41
      Caption = 'Cauadrante 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 72
      Top = 139
      Width = 105
      Height = 44
      Caption = 'Cauadrante 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 72
      Top = 202
      Width = 105
      Height = 40
      Caption = 'Cauadrante 4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 72
      Top = 264
      Width = 105
      Height = 41
      Caption = 'Autor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button8: TButton
      Left = 24
      Top = 344
      Width = 89
      Height = 33
      Cursor = crNoDrop
      Caption = 'Limpiar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button7Click
    end
    object Button9: TButton
      Left = 135
      Top = 344
      Width = 82
      Height = 33
      Cursor = crNo
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button9Click
    end
  end
end
