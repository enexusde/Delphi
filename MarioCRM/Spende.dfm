object Form4: TForm4
  Left = 374
  Top = 279
  Width = 474
  Height = 454
  Caption = 'Spende erfassen'
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
  object Label11: TLabel
    Left = 8
    Top = 48
    Width = 84
    Height = 13
    Caption = 'Wert der Spende:'
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 143
    Height = 13
    Caption = 'Datum des Spendeneingangs:'
  end
  object Label3: TLabel
    Left = 8
    Top = 272
    Width = 130
    Height = 13
    Caption = 'Zeit des Spendeneingangs:'
  end
  object Label4: TLabel
    Left = 8
    Top = 312
    Width = 56
    Height = 13
    Caption = 'Kommentar:'
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 64
    Width = 158
    Height = 28
    EditMask = '#####0,00\ \E\U\R;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 13
    ParentFont = False
    TabOrder = 0
    Text = '     0,00 EUR'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 288
    Width = 169
    Height = 21
    Date = 41794.197403252310000000
    Time = 41794.197403252310000000
    Kind = dtkTime
    TabOrder = 1
  end
  object MonthCalendar1: TMonthCalendar
    Left = 8
    Top = 112
    Width = 169
    Height = 154
    Date = 41794.816991122690000000
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 384
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 384
    Top = 40
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Abbrechen'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 369
    Height = 41
    BorderStyle = bsNone
    Color = cl3DLight
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object RadioButton1: TRadioButton
    Left = 184
    Top = 64
    Width = 201
    Height = 17
    Caption = 'Einzahler ist Spender'
    Checked = True
    TabOrder = 6
    TabStop = True
    OnClick = RadioButton2Click
  end
  object RadioButton2: TRadioButton
    Left = 184
    Top = 80
    Width = 201
    Height = 17
    Caption = 'Spender sind andere'
    TabOrder = 7
    OnClick = RadioButton2Click
  end
  object CheckBox1: TCheckBox
    Left = 200
    Top = 104
    Width = 73
    Height = 17
    Caption = 'Spender 1'
    Checked = True
    Enabled = False
    State = cbChecked
    TabOrder = 8
    OnClick = CheckBox1Click
  end
  object Edit1: TEdit
    Left = 200
    Top = 130
    Width = 177
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 9
  end
  object BitBtn3: TBitBtn
    Left = 384
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Suchen ...'
    Enabled = False
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object Memo2: TMemo
    Left = 8
    Top = 328
    Width = 449
    Height = 89
    TabOrder = 11
  end
  object MaskEdit2: TMaskEdit
    Left = 336
    Top = 104
    Width = 112
    Height = 21
    Enabled = False
    EditMask = '#####0,00\ \E\U\R;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 12
    Text = '     0,00 EUR'
  end
  object CheckBox2: TCheckBox
    Left = 200
    Top = 160
    Width = 72
    Height = 17
    Caption = 'Spender 2'
    Enabled = False
    TabOrder = 13
    OnClick = CheckBox2Click
  end
  object Edit2: TEdit
    Left = 200
    Top = 186
    Width = 177
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 14
  end
  object BitBtn4: TBitBtn
    Left = 384
    Top = 184
    Width = 74
    Height = 25
    Caption = 'Suchen ...'
    Enabled = False
    TabOrder = 15
    OnClick = BitBtn4Click
  end
  object MaskEdit3: TMaskEdit
    Left = 336
    Top = 160
    Width = 112
    Height = 21
    Enabled = False
    EditMask = '#####0,00\ \E\U\R;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 16
    Text = '     0,00 EUR'
  end
  object CheckBox3: TCheckBox
    Left = 200
    Top = 216
    Width = 71
    Height = 17
    Caption = 'Spender 3'
    Enabled = False
    TabOrder = 17
    OnClick = CheckBox3Click
  end
  object MaskEdit4: TMaskEdit
    Left = 336
    Top = 216
    Width = 112
    Height = 21
    Enabled = False
    EditMask = '#####0,00\ \E\U\R;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 18
    Text = '     0,00 EUR'
  end
  object Edit3: TEdit
    Left = 200
    Top = 242
    Width = 177
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 19
  end
  object BitBtn5: TBitBtn
    Left = 384
    Top = 240
    Width = 74
    Height = 25
    Caption = 'Suchen ...'
    Enabled = False
    TabOrder = 20
    OnClick = BitBtn5Click
  end
  object CheckBox4: TCheckBox
    Left = 200
    Top = 272
    Width = 70
    Height = 17
    Caption = 'Spender 4'
    Enabled = False
    TabOrder = 21
    OnClick = CheckBox4Click
  end
  object MaskEdit5: TMaskEdit
    Left = 336
    Top = 272
    Width = 112
    Height = 21
    Enabled = False
    EditMask = '#####0,00\ \E\U\R;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 22
    Text = '     0,00 EUR'
  end
  object Edit4: TEdit
    Left = 200
    Top = 298
    Width = 177
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 23
  end
  object BitBtn6: TBitBtn
    Left = 384
    Top = 296
    Width = 74
    Height = 25
    Caption = 'Suchen ...'
    Enabled = False
    TabOrder = 24
    OnClick = BitBtn6Click
  end
end
