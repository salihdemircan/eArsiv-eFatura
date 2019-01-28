object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 487
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button7: TButton
    Left = 251
    Top = 16
    Width = 146
    Height = 25
    Caption = 'Get EArchive Invoice Status'
    TabOrder = 0
    OnClick = Button7Click
  end
  object Button9: TButton
    Left = 580
    Top = 16
    Width = 146
    Height = 25
    Caption = 'Read From Archive '
    TabOrder = 1
  end
  object Button10: TButton
    Left = 419
    Top = 16
    Width = 146
    Height = 25
    Caption = 'Get Email E Archive Invoice'
    TabOrder = 2
  end
  object GroupBox3: TGroupBox
    Left = 24
    Top = 8
    Width = 202
    Height = 75
    Caption = 'Login'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 59
      Height = 13
      Caption = 'Kullan'#305'c'#305' Ad'#305':'
    end
    object Label2: TLabel
      Left = 8
      Top = 45
      Width = 56
      Height = 13
      Caption = #350'ifre          :'
    end
    object KA: TEdit
      Left = 69
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '01/2019'
    end
    object PA: TEdit
      Left = 70
      Top = 42
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '01/2019'
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 120
    Width = 735
    Height = 367
    Align = alBottom
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object Button1: TButton
    Left = 581
    Top = 47
    Width = 146
    Height = 25
    Caption = 'Get E Archive Invoice List'
    TabOrder = 5
  end
end
