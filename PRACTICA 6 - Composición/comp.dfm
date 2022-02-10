object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 477
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 24
    Top = 128
    Width = 200
    Height = 200
  end
  object Image2: TImage
    Left = 264
    Top = 128
    Width = 200
    Height = 200
  end
  object Image3: TImage
    Left = 504
    Top = 128
    Width = 200
    Height = 200
    OnMouseDown = Image3MouseDown
    OnMouseUp = Image3MouseUp
  end
  object Panel1: TPanel
    Left = 24
    Top = 368
    Width = 680
    Height = 101
    TabOrder = 0
    object Button1: TButton
      Left = 72
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Open1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 72
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 320
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 320
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Open 2'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 496
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Composici'#243'n'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 496
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Reparar 1'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 592
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Button7'
      TabOrder = 6
    end
    object Button8: TButton
      Left = 592
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 7
      OnClick = Button8Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 264
    Top = 56
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 448
    Top = 56
  end
end
