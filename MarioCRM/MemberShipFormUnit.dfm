object MemberShipForm: TMemberShipForm
  Left = 368
  Top = 204
  BorderStyle = bsDialog
  Caption = 'Beitrags'#252'bersicht'
  ClientHeight = 467
  ClientWidth = 595
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
    595
    467)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Mitgliedsverlauf:'
  end
  object Label10: TLabel
    Left = 400
    Top = 451
    Width = 50
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Guthaben:'
  end
  object Label9: TLabel
    Left = 456
    Top = 449
    Width = 137
    Height = 16
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = '0,00 '#8364
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ListView1: TListView
    Left = 8
    Top = 24
    Width = 496
    Height = 422
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'Monat'
      end
      item
        Caption = 'Beitragstyp'
        Width = 100
      end
      item
        Caption = 'Kosten'
        Width = 100
      end
      item
        Caption = 'Eingang'
        Width = 100
      end
      item
        Alignment = taRightJustify
        AutoSize = True
        Caption = 'Guthaben'
      end>
    RowSelect = True
    PopupMenu = PopupMenu1
    TabOrder = 0
    ViewStyle = vsReport
    OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
  end
  object BitBtn1: TBitBtn
    Left = 514
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 520
    Top = 88
    object NeuenAbrechnungszyklus1: TMenuItem
      Caption = 'Neuer Tarif ...'
      OnClick = NeuenAbrechnungszyklus1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object arifzuordnen1: TMenuItem
      Caption = 'Tarif zuordnen'
      Default = True
    end
  end
end
