object Form2: TForm2
  Left = 484
  Top = 257
  BorderStyle = bsDialog
  Caption = 'Neue Addresse'
  ClientHeight = 199
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    343
    199)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 72
    Width = 35
    Height = 13
    Caption = 'Strasse'
  end
  object Label2: TLabel
    Left = 184
    Top = 72
    Width = 62
    Height = 13
    Caption = 'Hausnummer'
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 64
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = 'PLZ oder ZIP'
    ParentBiDiMode = False
  end
  object Label4: TLabel
    Left = 8
    Top = 32
    Width = 68
    Height = 13
    Caption = 'Addresszusatz'
  end
  object Label5: TLabel
    Left = 88
    Top = 112
    Width = 14
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = 'Ort'
    ParentBiDiMode = False
  end
  object Label6: TLabel
    Left = 8
    Top = 152
    Width = 56
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = 'Bundesland'
    ParentBiDiMode = False
  end
  object Label7: TLabel
    Left = 120
    Top = 152
    Width = 24
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = 'Land'
    ParentBiDiMode = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 88
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 184
    Top = 88
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 8
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 8
    Top = 48
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 128
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 8
    Top = 168
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'ComboBox1'
  end
  object ComboBox3: TComboBox
    Left = 120
    Top = 168
    Width = 129
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'ComboBox1'
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 8
    Width = 241
    Height = 17
    Caption = 'Als Hauptaddresse'
    Checked = True
    State = cbChecked
    TabOrder = 0
  end
  object Button1: TButton
    Left = 260
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Speichern'
    Default = True
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 260
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Abbrechen'
    TabOrder = 9
    OnClick = Button2Click
  end
end
