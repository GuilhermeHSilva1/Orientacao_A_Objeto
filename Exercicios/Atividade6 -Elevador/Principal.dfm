object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 281
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AndarAgora: TLabel
    Left = 20
    Top = 23
    Width = 86
    Height = 16
    Caption = 'Andar atual: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object AndarMax: TLabel
    Left = 270
    Top = 23
    Width = 105
    Height = 16
    Caption = 'Andar Maximo:  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object PessoasAgora: TLabel
    Left = 20
    Top = 70
    Width = 143
    Height = 16
    Caption = 'Pessoas no elevador: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object PessoasMax: TLabel
    Left = 270
    Top = 70
    Width = 114
    Height = 16
    Caption = 'Pessoas Maxima: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 89
    Top = 106
    Width = 56
    Height = 13
    Caption = 'Andar Max;'
  end
  object Label2: TLabel
    Left = 79
    Top = 133
    Width = 66
    Height = 13
    Caption = 'Pessoas Max;'
  end
  object Inicializar: TButton
    Left = 151
    Top = 157
    Width = 132
    Height = 25
    Caption = 'Inicializar'
    TabOrder = 0
    OnClick = InicializarClick
  end
  object Adicionar: TButton
    Left = 31
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    Visible = False
  end
  object Remover: TButton
    Left = 122
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 2
    Visible = False
  end
  object Subir: TButton
    Left = 219
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Subir'
    TabOrder = 3
    Visible = False
    OnClick = SubirClick
  end
  object Descer: TButton
    Left = 309
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Descer'
    TabOrder = 4
    Visible = False
  end
  object Edit1: TEdit
    Left = 151
    Top = 103
    Width = 132
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    TextHint = 'Total Andares'
  end
  object Edit2: TEdit
    Left = 151
    Top = 130
    Width = 132
    Height = 21
    NumbersOnly = True
    TabOrder = 6
    TextHint = 'Max Pessoas no Elevador'
  end
end
