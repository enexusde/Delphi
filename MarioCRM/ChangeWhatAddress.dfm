object Form3: TForm3
  Left = 727
  Top = 295
  Width = 199
  Height = 338
  Caption = 'Addresse ausw'#228'hlen'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    191
    311)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 167
    Height = 13
    Caption = 'Die Person hat mehrere Addressen.'
  end
  object Label2: TLabel
    Left = 8
    Top = 20
    Width = 136
    Height = 13
    Caption = 'Bitte w'#228'hlen Sie aus, welche'
  end
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 148
    Height = 13
    Caption = 'Addresse ge'#228'ndert werden soll.'
  end
  object CheckListBox1: TCheckListBox
    Left = 8
    Top = 48
    Width = 177
    Height = 225
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 280
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Abbrechen'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 110
    Top = 280
    Width = 75
    Height = 25
    Cancel = True
    Caption = #196'ndern'
    Default = True
    Enabled = False
    TabOrder = 2
  end
end
