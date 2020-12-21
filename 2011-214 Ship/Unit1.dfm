object Form1: TForm1
  Left = 1166
  Top = 140
  Width = 474
  Height = 360
  Caption = #1050#1086#1088#1072#1073#1083#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 300
    Height = 300
  end
  object RadioButton1: TRadioButton
    Left = 320
    Top = 16
    Width = 113
    Height = 17
    Caption = #1041#1099#1089#1090#1088#1086
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 320
    Top = 40
    Width = 113
    Height = 17
    Caption = #1052#1077#1076#1083#1077#1085#1085#1086
    TabOrder = 1
  end
  object Button1: TButton
    Left = 320
    Top = 80
    Width = 105
    Height = 25
    Caption = #1056#1080#1089#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 112
    Width = 105
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 352
    Top = 176
  end
end
