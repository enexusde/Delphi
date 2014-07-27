object PersonForm: TPersonForm
  Left = 642
  Top = 234
  Width = 465
  Height = 333
  Caption = 'Person'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Anrede'
  end
  object Label2: TLabel
    Left = 8
    Top = 37
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vorname'
  end
  object Label3: TLabel
    Left = 8
    Top = 61
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Nachname'
  end
  object Label4: TLabel
    Left = 8
    Top = 85
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Mitgliedsnummer'
  end
  object Label5: TLabel
    Left = 8
    Top = 112
    Width = 58
    Height = 13
    Caption = 'Bankkonten'
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 7
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object Edit1: TEdit
    Left = 96
    Top = 32
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 96
    Top = 56
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 96
    Top = 80
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object ListView1: TListView
    Left = 8
    Top = 128
    Width = 361
    Height = 169
    Columns = <
      item
        Caption = 'IBAN'
        Width = 200
      end
      item
        Caption = 'BIC (Ausland)'
        Width = 100
      end>
    TabOrder = 4
    ViewStyle = vsReport
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 8
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'OK'
    Default = True
    TabOrder = 5
    OnClick = BitBtn1Click
  end
end
