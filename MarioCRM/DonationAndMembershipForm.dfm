object DonationAndMembership: TDonationAndMembership
  Left = 772
  Top = 198
  BorderStyle = bsDialog
  Caption = 'DonationAndMembership'
  ClientHeight = 709
  ClientWidth = 675
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
    675
    709)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 11
    Width = 46
    Height = 13
    Caption = 'Einzahler:'
  end
  object Label2: TLabel
    Left = 480
    Top = 678
    Width = 44
    Height = 20
    Anchors = [akLeft, akRight]
    Caption = 'Wert:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 10
    Top = 42
    Width = 56
    Height = 13
    Caption = 'Kommentar:'
  end
  object Bevel3: TBevel
    Left = 7
    Top = 666
    Width = 660
    Height = 17
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsTopLine
  end
  object Payer: TEdit
    Left = 72
    Top = 9
    Width = 409
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 576
    Top = 8
    Width = 88
    Height = 28
    Caption = 'Speichern'
    Default = True
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000D8AB8ECD9570
      BD7342B76835B56835B46734B26634B06533AE6433AC6332AA6232A96132A860
      31A76132AB693CBC8661C37D4FEBC6ADEAC5ADFEFBF8FEFBF8FEFBF8FEFBF8FE
      FBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8C89A7CC79879AD6B40BA6C38EDCAB3
      E0A27AFEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
      F6CA8D65C99B7CA76132BB6C38EECCB6E1A27AFEFAF7BFDCC2BFDCC2BFDCC2BF
      DCC2BFDCC2BFDCC2BFDCC2BFDCC2FDF9F6CD9068CC9E81A86132BB6B38EFCEB8
      E1A279FEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
      F6CF936ACEA384AA6132BA6A36EFD0BBE2A27AFEFBF8FEFBF8FEFBF8FEFBF8FE
      FBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8D3966DD2A78AAB6232BB6A36F0D2BE
      E2A37AE2A37AE1A37AE2A37BE1A37BE0A178DE9F77DD9F76DC9D74D99B72D899
      71D69970D5AB8EAD6333BB6A36F2D5C2E3A37AE3A37AE2A37BE2A37BE2A47BE1
      A279E0A178DEA077DE9E75DC9D74DA9B73D99B73DAB095AF6433BB6A36F2D8C5
      E3A47BE3A37AE3A47AE2A47BE2A37BE1A37BE1A279DFA077DE9F76DD9E74DB9C
      72DC9D74DDB59AB16534BB6B36F4D9C7E6A67DC88C64C98D65C98E67CB926CCB
      926DCA9069C88C65C88C64C88C64C88C64DA9C74E1BA9FB36634BB6C37F4DCC9
      E7A77DF9ECE1F9ECE1F9EDE3FCF4EEFDFAF7FDF7F3FAEDE5F7E7DBF7E5D9F6E5
      D8DEA077E4BEA4B46734BD6E3AF5DDCCE7A87EFAF0E8FAF0E8C98D66FAF0E9FD
      F8F3FEFAF8FCF4EFF9E9DFF7E7DBF7E5D9E0A278E7C2A9B66835C07442F6DFD0
      E8A87EFCF6F1FCF6F1C88C64FAF1E9FBF4EEFDFAF7FDF9F6FAF0E8F8E8DDF7E6
      DBE1A37AEFD5C3B76A36C68255F6DFD1E9AA80FEFAF6FDFAF6C88C64FBF3EEFB
      F1EAFCF6F2FEFBF8FCF6F1F9ECE2F8E7DBEED0BAECD0BDBD7443D6A585F6E0D1
      F7E0D1FEFBF8FEFBF7FDF9F6FCF5F0FAF0EAFBF2EDFDF9F6FDFAF7FBF1EBF8E9
      DFECD1BECD926AE2C5B1E1BDA6D9AB8DC9895EC07543BD6E3ABB6C37BB6B36BB
      6A36BB6A36BC6C39BD6E3BBB6D3ABF7444C98D65E7CEBCFFFFFF}
  end
  object BitBtn3: TBitBtn
    Left = 576
    Top = 45
    Width = 88
    Height = 28
    Cancel = True
    Caption = 'Abbrechen'
    TabOrder = 2
  end
  object MaskEdit1: TMaskEdit
    Left = 532
    Top = 676
    Width = 136
    Height = 28
    Anchors = [akRight, akBottom]
    EditMask = '#####0,00\ \E\U\R;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = '     0,00 EUR'
  end
  object BitBtn4: TBitBtn
    Left = 488
    Top = 8
    Width = 81
    Height = 25
    Caption = 'Finden ...'
    TabOrder = 4
    OnClick = BitBtn4Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3934
      393430332F2B2C2925272421201D1BE7E7E73331300B0A090707060404030000
      00000000FFFFFFFFFFFFFFFFFF46413B857A70C3B8AE7C72687F756B36322DF2
      F2F14C4A4795897DBAAEA27C72687F756B010101FFFFFFFFFFFFFFFFFF4D4741
      83786FCCC3BA786F657B716734302DFEFEFE2C2A2795897DC2B8AD786F657C72
      68060505FFFFFFFFFFFFFFFFFF554E4883786FCCC3BA79706671685F585550FF
      FFFF494645857A70C2B8AD786F657B71670D0C0BFFFFFFFFFFFFFFFFFF817B76
      9F9286CCC3BAC0B4AAA6988B807D79FFFFFF74726F908479C2B8ADC0B4AAA89B
      8E494747FFFFFFFFFFFFFCFCFC605952423D3858514A3D3833332F2B393734D3
      D3D35F5E5C1A18162522201917150F0E0D121212FDFDFDFFFFFFFDFDFD9D9185
      B1A3967F756B7C7268776D646C635B2E2A26564F4880766C7C7268776D647067
      5E010101FAFAFAFFFFFFFEFDFDB8ACA1BAAEA282776D82776DAA917BBAA794B8
      A690B097819F8D7D836D5B71635795897D232322FCFCFCFFFFFFFDFCFCDDDAD7
      9B8E829D9185867B71564F48504A4480766C6E665D826C58A6917D948474564F
      488B8A8AFEFEFEFFFFFFFFFFFFFFFFFF746B62A4978A95897D9F92863E3934FF
      FFFF4C46407E746A857A703E393485817EF5F5F5FDFDFDFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9B9187C3B8AE655D55FFFFFF7C7268A89B8EA69B90FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA79C91BCB0A49D9185FF
      FFFFAEA0939D91857B756EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object Memo1: TMemo
    Left = 72
    Top = 40
    Width = 497
    Height = 41
    TabOrder = 5
  end
  object ScrollBox1: TScrollBox
    Left = 1
    Top = 96
    Width = 672
    Height = 570
    VertScrollBar.Smooth = True
    VertScrollBar.Style = ssHotTrack
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    TabOrder = 6
    object Panel1: TPanel
      Left = 0
      Top = 2190
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        656
        73)
      object Label3: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label4: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount1: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel2: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note1: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation1: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find1: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee1: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 2117
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        656
        73)
      object Label5: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label6: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount2: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel1: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note2: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation2: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find2: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee2: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 2044
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        656
        73)
      object Label8: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label9: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount3: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel4: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note3: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation3: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find3: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee3: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 1971
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 3
      DesignSize = (
        656
        73)
      object Label10: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label11: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount4: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel5: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note4: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation4: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find4: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee4: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 1898
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 4
      DesignSize = (
        656
        73)
      object Label12: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label13: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount5: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel6: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note5: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation5: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find5: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee5: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 1825
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 5
      DesignSize = (
        656
        73)
      object Label14: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label15: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount6: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel7: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note6: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation6: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find6: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee6: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 1752
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 6
      DesignSize = (
        656
        73)
      object Label16: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label17: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount7: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel8: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note7: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation7: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find7: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee7: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 1679
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 7
      DesignSize = (
        656
        73)
      object Label18: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label19: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount8: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel9: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note8: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation8: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find8: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee8: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 1606
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 8
      DesignSize = (
        656
        73)
      object Label20: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label21: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount9: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel10: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note9: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation9: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find9: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee9: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 1533
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 9
      DesignSize = (
        656
        73)
      object Label22: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label23: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount10: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel11: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note10: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation10: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find10: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee10: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel11: TPanel
      Left = 0
      Top = 1460
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 10
      DesignSize = (
        656
        73)
      object Label24: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label25: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount11: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel12: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note11: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation11: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find11: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee11: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel12: TPanel
      Left = 0
      Top = 1387
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 11
      DesignSize = (
        656
        73)
      object Label26: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label27: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount12: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel13: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note12: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation12: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find12: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee12: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel13: TPanel
      Left = 0
      Top = 1314
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 12
      DesignSize = (
        656
        73)
      object Label28: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label29: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount13: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel14: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note13: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation13: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find13: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee13: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel14: TPanel
      Left = 0
      Top = 1241
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 13
      DesignSize = (
        656
        73)
      object Label30: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label31: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount14: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel15: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note14: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation14: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find14: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee14: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel15: TPanel
      Left = 0
      Top = 1168
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 14
      DesignSize = (
        656
        73)
      object Label32: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label33: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount15: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel16: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note15: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation15: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find15: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee15: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel16: TPanel
      Left = 0
      Top = 1095
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 15
      DesignSize = (
        656
        73)
      object Label34: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label35: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount16: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel17: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note16: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation16: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find16: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee16: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel17: TPanel
      Left = 0
      Top = 1022
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 16
      DesignSize = (
        656
        73)
      object Label36: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label37: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount17: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel18: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note17: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation17: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find17: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee17: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel18: TPanel
      Left = 0
      Top = 949
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 17
      DesignSize = (
        656
        73)
      object Label38: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label39: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount18: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel19: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note18: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation18: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find18: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee18: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel19: TPanel
      Left = 0
      Top = 876
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 18
      DesignSize = (
        656
        73)
      object Label40: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label41: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount19: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel20: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note19: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation19: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find19: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee19: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel20: TPanel
      Left = 0
      Top = 803
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 19
      DesignSize = (
        656
        73)
      object Label42: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label43: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount20: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel21: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note20: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation20: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find20: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee20: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel21: TPanel
      Left = 0
      Top = 730
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 20
      DesignSize = (
        656
        73)
      object Label44: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label45: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount21: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel22: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note21: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation21: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find21: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee21: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel22: TPanel
      Left = 0
      Top = 657
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 21
      DesignSize = (
        656
        73)
      object Label46: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label47: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount22: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel23: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note22: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation22: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find22: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee22: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel23: TPanel
      Left = 0
      Top = 584
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 22
      DesignSize = (
        656
        73)
      object Label48: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label49: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount23: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel24: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note23: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation23: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find23: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee23: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel24: TPanel
      Left = 0
      Top = 511
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 23
      DesignSize = (
        656
        73)
      object Label50: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label51: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount24: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel25: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note24: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation24: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find24: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee24: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel25: TPanel
      Left = 0
      Top = 438
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 24
      DesignSize = (
        656
        73)
      object Label52: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label53: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount25: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel26: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note25: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation25: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find25: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee25: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel26: TPanel
      Left = 0
      Top = 365
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 25
      DesignSize = (
        656
        73)
      object Label54: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label55: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount26: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel27: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note26: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation26: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find26: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee26: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel27: TPanel
      Left = 0
      Top = 292
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 26
      DesignSize = (
        656
        73)
      object Label56: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label57: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount27: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel28: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note27: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation27: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find27: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee27: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel28: TPanel
      Left = 0
      Top = 219
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 27
      DesignSize = (
        656
        73)
      object Label58: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label59: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount28: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel29: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note28: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation28: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find28: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee28: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel29: TPanel
      Left = 0
      Top = 146
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 28
      DesignSize = (
        656
        73)
      object Label60: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label61: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount29: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel30: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note29: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation29: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find29: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee29: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel30: TPanel
      Left = 0
      Top = 73
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 29
      DesignSize = (
        656
        73)
      object Label62: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label63: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount30: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel31: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note30: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation30: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find30: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee30: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
    object Panel31: TPanel
      Left = 0
      Top = 0
      Width = 656
      Height = 73
      Align = alBottom
      TabOrder = 30
      DesignSize = (
        656
        73)
      object Label64: TLabel
        Left = 139
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Beitrag:'
      end
      object Label65: TLabel
        Left = 320
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Spende:'
      end
      object Amount31: TLabel
        Left = 570
        Top = 9
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = '0,00 EUR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Bevel32: TBevel
        Left = 10
        Top = 40
        Width = 652
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object Note31: TLabel
        Left = 8
        Top = 50
        Width = 118
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Kein Hinweis vorhanden.'
      end
      object Donation31: TMaskEdit
        Left = 364
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
      object Find31: TBitBtn
        Left = 9
        Top = 8
        Width = 118
        Height = 25
        Caption = 'Finden ...'
        TabOrder = 1
        OnClick = Find1Click
      end
      object Fee31: TMaskEdit
        Left = 179
        Top = 11
        Width = 119
        Height = 24
        EditMask = '#####0,00\ \E\U\R;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Text = '     0,00 EUR'
        OnChange = FeeChange
      end
    end
  end
end
