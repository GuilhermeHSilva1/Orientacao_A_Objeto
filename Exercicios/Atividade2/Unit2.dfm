object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 210
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 48
    Top = 40
    Width = 73
    Height = 25
    Caption = 'CriarConta'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 127
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Retirar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 289
    Top = 40
    Width = 75
    Height = 25
    Caption = 'AlterarNome'
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 48
    Top = 80
    Width = 316
    Height = 25
    Alignment = taCenter
    TabOrder = 4
  end
end
