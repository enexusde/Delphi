object TinyLogForm: TTinyLogForm
  Left = 192
  Top = 107
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Log'
  ClientHeight = 648
  ClientWidth = 1297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 34
    Width = 1297
    Height = 614
    Align = alClient
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 0
      Top = 0
      Width = 41
      Height = 33
      Caption = 'Left'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 48
      Top = 0
      Width = 41
      Height = 33
      Caption = 'Center'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 96
      Top = 0
      Width = 41
      Height = 33
      Caption = 'Right'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 144
      Top = 0
      Width = 41
      Height = 33
      Caption = 'Bottom'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 240
      Top = 0
      Width = 41
      Height = 33
      Caption = 'Top'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 192
      Top = 0
      Width = 41
      Height = 33
      Caption = 'Middle'
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 288
      Top = 1
      Width = 41
      Height = 33
      Cancel = True
      Caption = 'Close'
      TabOrder = 6
      OnClick = BitBtn7Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 120
    Top = 144
  end
end
