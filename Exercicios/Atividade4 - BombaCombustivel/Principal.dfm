object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 366
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 40
    Top = 27
    Width = 56
    Height = 15
    Caption = 'Pre'#231'o / L :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 30
    Top = 75
    Width = 66
    Height = 15
    Caption = 'Quantidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 135
    Top = 16
    Width = 17
    Height = 321
    Brush.Color = clMenu
  end
  object Shape2: TShape
    Left = 151
    Top = 190
    Width = 394
    Height = 17
    Brush.Color = clMenu
  end
  object Shape3: TShape
    Left = 312
    Top = 206
    Width = 17
    Height = 131
    Brush.Color = clMenuBar
  end
  object Label3: TLabel
    Left = 432
    Top = 264
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Preco: TEdit
    Left = 8
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Quantidade: TEdit
    Left = 8
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 128
    Width = 121
    Height = 87
    Caption = 'Tipo Combustivel'
    Items.Strings = (
      'Gasolina'
      'Alcool'
      'Diesel')
    TabOrder = 2
  end
  object Cadastrar: TButton
    Left = 8
    Top = 221
    Width = 121
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = CadastrarClick
  end
  object ValorAbastecer: TEdit
    Left = 168
    Top = 222
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object RadioGroup2: TRadioGroup
    Left = 168
    Top = 249
    Width = 121
    Height = 49
    Caption = 'Abastecer por'
    Columns = 2
    Items.Strings = (
      'Litro'
      'Valor')
    TabOrder = 5
  end
  object Memo1: TMemo
    Left = 168
    Top = 48
    Width = 114
    Height = 105
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 6
  end
  object AltCombustivel: TButton
    Left = 168
    Top = 159
    Width = 114
    Height = 25
    Caption = 'Alterar Combustivel'
    TabOrder = 7
    Visible = False
    OnClick = AltCombustivelClick
  end
  object AltPreco: TButton
    Left = 288
    Top = 159
    Width = 121
    Height = 25
    Caption = 'Alterar Pre'#231'o'
    TabOrder = 8
    Visible = False
    OnClick = AltPrecoClick
  end
  object AltQuantidade: TButton
    Left = 415
    Top = 159
    Width = 121
    Height = 25
    Caption = 'Alterar Quantidade'
    TabOrder = 9
    Visible = False
  end
  object Memo2: TMemo
    Left = 288
    Top = 48
    Width = 121
    Height = 105
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 10
  end
  object Memo3: TMemo
    Left = 415
    Top = 48
    Width = 121
    Height = 105
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 11
  end
  object Abastecer: TButton
    Left = 168
    Top = 304
    Width = 121
    Height = 25
    Caption = 'Abastecer'
    TabOrder = 12
    Visible = False
  end
  object Modificar: TButton
    Left = 8
    Top = 221
    Width = 121
    Height = 25
    Caption = 'Modificar'
    TabOrder = 13
    Visible = False
    OnClick = ModificarClick
  end
end