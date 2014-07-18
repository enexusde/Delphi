object Form5: TForm5
  Left = 790
  Top = 343
  BorderStyle = bsDialog
  Caption = 'Person finden'
  ClientHeight = 387
  ClientWidth = 533
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
  object Label123: TLabel
    Left = 8
    Top = 7
    Width = 65
    Height = 13
    Caption = 'Suchkriterien:'
  end
  object BitBtn1: TBitBtn
    Left = 432
    Top = 8
    Width = 94
    Height = 25
    Caption = 'Diese Person'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 0
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBFDEFF5F17F9F73438B563389522E
      88512D87502E854E3A854F5C8B5BECF3EEF7FBFDFFFFFFFFFFFFFFFFFFBAD3EA
      287BCE429D67318F5863C18A63C18A63C18A63C18A63C18A63C18A2D8A532F88
      533482CFB4CFE8FFFFFFFFFFFF2A7ED182BAEE409E676ECC955BB88158B57E53
      B17A4FAC7554B17A51AD7667C18A3B925C83BCEF2B78CAFFFFFFFFFFFF2B7ECF
      78B3EA5AB88162C08962C0895FBD865AB88155B37C4FAD7649A770419E674DAB
      747EB8ED2D77C8FFFFFFFFFFFFBECCB245A26B82E0A982E0A96FCD9669C79064
      C28B5EBC8557B57E50AE776BC89167C08A4F9A66AEBFA4FFFFFFFFFFFFFEFEFE
      D4EED237945D9FFDC691EFB878D69F6FCD9669C68F62BF8873CF9894F0B93088
      51A9B292FCFCFAFFFFFFFFFFFFFFFFFFFAFAF7A8B99627854EB3F5C849898F4B
      7FA04B7FA049898FA9E8BA26844D9FB18EF7F8F4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBFBF96B8A683474999CCCF8AFD4F7AFD4F7A5CFF6357AA1698466F9F8
      F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A83A6A6CAEEABCCEAA7
      D0F6A8D0F6ABCCEAA7CDEE5781ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2974B1BDD7EFA3C9ED9DC5E844CEEF5BCDEFA8DCF12881BFFBFD
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B9EF362ABCE8AB7E43E
      C6EB1C9FED1DA4EE1EA5EB1C9AE9F2F8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF1DBAF51CB6F51CAAF41CACF41CACF41CACF31CA1F01C93E4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF44BFE81BB6F51CB6F51C
      B6F51CB2F51CABF41DAAF041B9E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF3FBAE81BA7F31CACF41CA8F41BA1F13CB4E1FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitBtn2: TBitBtn
    Left = 432
    Top = 40
    Width = 95
    Height = 25
    Cancel = True
    Caption = 'Abbrechen'
    ModalResult = 2
    TabOrder = 1
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 24
    Width = 185
    Height = 17
    Caption = 'Name (Ohne titel oder Anrede)'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object Edit1: TEdit
    Left = 28
    Top = 45
    Width = 157
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object RadioButton2: TRadioButton
    Left = 200
    Top = 24
    Width = 81
    Height = 17
    Caption = 'Postleitzahl'
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 218
    Top = 45
    Width = 63
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 314
    Top = 45
    Width = 111
    Height = 21
    TabOrder = 6
  end
  object RadioButton3: TRadioButton
    Left = 296
    Top = 24
    Width = 121
    Height = 17
    Caption = 'Mitgliedsnummer'
    TabOrder = 7
  end
  object ListView1: TListView
    Left = 8
    Top = 80
    Width = 519
    Height = 300
    Columns = <
      item
        Caption = 'Anrede'
      end
      item
        Caption = 'Vorname'
      end
      item
        Caption = 'Nachname'
      end>
    GridLines = True
    HideSelection = False
    RowSelect = True
    TabOrder = 8
    ViewStyle = vsReport
    OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
    OnSelectItem = ListView1SelectItem
  end
end
