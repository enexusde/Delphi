object IBANandBICForm: TIBANandBICForm
  Left = 762
  Top = 374
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Kontoverbindung'
  ClientHeight = 114
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    350
    114)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 28
    Height = 13
    Caption = 'IBAN:'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 20
    Height = 13
    Caption = 'BIC:'
  end
  object BitBtn1: TBitBtn
    Left = 266
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Speichern'
    Default = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 266
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Abbrechen'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 24
    Width = 249
    Height = 28
    EditMask = '>AA00-0000-0000-0000-0000-00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 27
    ParentFont = False
    TabOrder = 2
    Text = '    -    -    -    -    -  '
    OnChange = MaskEdit1Change
  end
  object MaskEdit2: TMaskEdit
    Left = 8
    Top = 80
    Width = 137
    Height = 28
    EditMask = '>AAAAAAAAAAA;1;X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 11
    ParentFont = False
    TabOrder = 3
    Text = '           '
    OnChange = MaskEdit2Change
  end
end
