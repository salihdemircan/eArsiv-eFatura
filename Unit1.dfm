object Form1: TForm1
  Left = 0
  Top = 77
  Caption = 'Form1'
  ClientHeight = 854
  ClientWidth = 1009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1009
    Height = 49
    Align = alTop
    TabOrder = 0
    object Edit1: TEdit
      Left = 55
      Top = 8
      Width = 508
      Height = 21
      TabOrder = 0
      Text = 'SessionID'
    end
    object Button2: TButton
      Left = 834
      Top = 6
      Width = 75
      Height = 25
      Caption = #199#305'k'#305#351'2'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button5: TButton
      Left = 743
      Top = 6
      Width = 75
      Height = 25
      Caption = #199#305'k'#305#351'1'
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button3: TButton
      Left = 606
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Giri'#351
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 1003
    Height = 799
    ActivePage = Genel
    Align = alClient
    TabOrder = 1
    object Genel: TTabSheet
      Caption = 'Genel'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 70
        Align = alTop
        TabOrder = 0
        object Label10: TLabel
          Left = 643
          Top = 11
          Width = 88
          Height = 13
          Caption = 'Red Fatura No ID:'
        end
        object Label9: TLabel
          Left = 184
          Top = 11
          Width = 95
          Height = 13
          Caption = 'Kabul Fatura No ID:'
        end
        object Label27: TLabel
          Left = 165
          Top = 37
          Width = 29
          Height = 13
          Caption = 'UUID:'
        end
        object Label28: TLabel
          Left = 702
          Top = 37
          Width = 29
          Height = 13
          Caption = 'UUID:'
        end
        object IDRed: TEdit
          Left = 737
          Top = 8
          Width = 161
          Height = 21
          TabOrder = 0
          Text = 'TST2018311839909'
        end
        object IDAccept: TEdit
          Left = 285
          Top = 8
          Width = 161
          Height = 21
          TabOrder = 1
          Text = 'TST2018311839909'
        end
        object UUIDRed: TEdit
          Left = 737
          Top = 35
          Width = 246
          Height = 21
          TabOrder = 2
          Text = '26d04328-ee7a-4332-b358-b9c2f3fa64df'
        end
        object UUIDAccept: TEdit
          Left = 200
          Top = 35
          Width = 246
          Height = 21
          TabOrder = 3
          Text = '26d04328-ee7a-4332-b358-b9c2f3fa64df'
        end
        object btnSendServerResponseAccept: TButton
          Left = 8
          Top = 6
          Width = 170
          Height = 25
          Caption = 'Sunucu Yan'#305't'#305' G'#246'nder KABUL'
          TabOrder = 4
          OnClick = btnSendServerResponseAcceptClick
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 70
        Width = 995
        Height = 207
        Align = alTop
        TabOrder = 1
        object Label7: TLabel
          Left = 20
          Top = 136
          Width = 76
          Height = 13
          Caption = 'Fatura Dosyas'#305':'
        end
        object XMLDosya: TEdit
          Left = 102
          Top = 133
          Width = 712
          Height = 21
          TabOrder = 0
          Text = 
            'C:\Users\Win10\Documents\Embarcadero\Studio\Projects\Test 031220' +
            '18 - Kopya\TestFatura.xml'
        end
        object GroupBox1: TGroupBox
          Left = 245
          Top = 28
          Width = 285
          Height = 99
          Caption = 'G'#246'nderici Birim:'
          TabOrder = 1
          object Label3: TLabel
            Left = 8
            Top = 18
            Width = 23
            Height = 13
            Caption = 'VKN:'
          end
          object Label4: TLabel
            Left = 8
            Top = 45
            Width = 17
            Height = 13
            Caption = 'GB:'
          end
          object Label29: TLabel
            Left = 8
            Top = 72
            Width = 38
            Height = 13
            Caption = #220'NVAN:'
          end
          object edtSenderVkn: TEdit
            Left = 37
            Top = 15
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '7210452742'
          end
          object edtSenderGB: TEdit
            Left = 37
            Top = 42
            Width = 209
            Height = 21
            TabOrder = 1
            Text = 'urn:mail:defaultgb@parkentegrasyon.com.tr'
          end
          object editSenderUnvan: TEdit
            Left = 60
            Top = 69
            Width = 209
            Height = 21
            TabOrder = 2
            Text = 'Benden gidiyor'
          end
        end
        object GroupBox2: TGroupBox
          Left = 536
          Top = 28
          Width = 278
          Height = 99
          Caption = 'Al'#305'c'#305' Birim:'
          TabOrder = 2
          object Label5: TLabel
            Left = 8
            Top = 18
            Width = 23
            Height = 13
            Caption = 'VKN:'
          end
          object Label6: TLabel
            Left = 15
            Top = 54
            Width = 16
            Height = 13
            Caption = 'PK:'
          end
          object Label30: TLabel
            Left = 16
            Top = 73
            Width = 38
            Height = 13
            Caption = #220'NVAN:'
          end
          object edtReceiverVkn: TEdit
            Left = 37
            Top = 15
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '7210452742'
          end
          object edtReceiverPK: TEdit
            Left = 37
            Top = 42
            Width = 212
            Height = 21
            TabOrder = 1
            Text = 'urn:mail: defaultpk@parkentegrasyon.com.tr'
          end
          object editReceiverUnvan: TEdit
            Left = 60
            Top = 69
            Width = 209
            Height = 21
            TabOrder = 2
            Text = 'Al'#305'c'#305' '#220'nvan'#305' san'#305'r'#305'm Park Entegrasyon'
          end
        end
        object btnGetInvoicesSent: TButton
          Left = 844
          Top = 105
          Width = 139
          Height = 25
          Caption = 'Get Invoices'
          TabOrder = 3
          OnClick = btnGetInvoicesSentClick
        end
        object btnSendInvoice: TButton
          Left = 844
          Top = 34
          Width = 139
          Height = 25
          Caption = 'Send Invoice'
          TabOrder = 4
          OnClick = btnSendInvoiceClick
        end
        object btnGetInvoices: TButton
          Left = 844
          Top = 167
          Width = 139
          Height = 25
          Caption = 'Get Invoices Received'
          TabOrder = 5
          OnClick = btnGetInvoicesClick
        end
        object Button4: TButton
          Left = 844
          Top = 136
          Width = 139
          Height = 25
          Caption = 'Get Invoice With Type'
          TabOrder = 6
          OnClick = Button4Click
        end
        object GroupBox3: TGroupBox
          Left = 20
          Top = 21
          Width = 202
          Height = 75
          Caption = 'Login'
          TabOrder = 7
          object Label1: TLabel
            Left = 8
            Top = 18
            Width = 59
            Height = 13
            Caption = 'Kullan'#305'c'#305' Ad'#305':'
          end
          object Label2: TLabel
            Left = 8
            Top = 45
            Width = 56
            Height = 13
            Caption = #350'ifre          :'
          end
          object edtUser: TEdit
            Left = 69
            Top = 15
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '01/2019'
          end
          object edtPasswd: TEdit
            Left = 70
            Top = 42
            Width = 121
            Height = 21
            TabOrder = 1
            Text = '01/2019'
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 277
        Width = 995
        Height = 59
        Align = alTop
        TabOrder = 2
        object Label11: TLabel
          Left = 187
          Top = 19
          Width = 55
          Height = 13
          Caption = 'Kullan'#305'c'#305' ID:'
        end
        object Label12: TLabel
          Left = 509
          Top = 19
          Width = 70
          Height = 13
          Caption = 'Kullan'#305'c'#305' Ba'#351'l'#305'k:'
        end
        object edtUserID: TEdit
          Left = 245
          Top = 14
          Width = 152
          Height = 21
          TabOrder = 0
          Text = '7210452742'
        end
        object btnCheckUserByTitle: TButton
          Left = 403
          Top = 15
          Width = 100
          Height = 25
          Caption = 'Check User-TITLE'
          TabOrder = 1
          OnClick = btnCheckUserByTitleClick
        end
        object KullaniciBasligi: TEdit
          Left = 581
          Top = 16
          Width = 300
          Height = 21
          TabOrder = 2
          Text = 'PARK ENTEGRASYON'
        end
        object Button1: TButton
          Left = 89
          Top = 15
          Width = 75
          Height = 25
          Caption = 'Check User-ID'
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button6: TButton
          Left = 8
          Top = 15
          Width = 75
          Height = 25
          Caption = 'Get User List'
          TabOrder = 4
          OnClick = Button6Click
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 349
        Width = 995
        Height = 422
        Align = alBottom
        TabOrder = 3
        object Panel17: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 272
          Height = 233
          Align = alLeft
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object Label8: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 264
            Height = 13
            Align = alTop
            Caption = 'Fatura Ba'#351'l'#305#287#305
            ExplicitWidth = 64
          end
          object Label37: TLabel
            Left = 4
            Top = 27
            Width = 52
            Height = 13
            Caption = 'Fatura No:'
          end
          object Label38: TLabel
            Left = 4
            Top = 52
            Width = 31
            Height = 13
            Caption = 'Profil :'
          end
          object Label39: TLabel
            Left = 4
            Top = 76
            Width = 51
            Height = 13
            Caption = 'Fatura Tipi'
          end
          object Label40: TLabel
            Left = 197
            Top = 180
            Width = 21
            Height = 13
            Caption = 'Curr'
          end
          object Label42: TLabel
            Left = 4
            Top = 100
            Width = 19
            Height = 13
            Caption = 'No1'
          end
          object Label43: TLabel
            Left = 9
            Top = 179
            Width = 63
            Height = 13
            Caption = 'Toplam Tutar'
          end
          object editFaturaNo: TEdit
            Left = 70
            Top = 23
            Width = 121
            Height = 21
            TabOrder = 0
            Text = 'PRE0002018005'
          end
          object cmbProfil: TComboBox
            Left = 70
            Top = 47
            Width = 120
            Height = 22
            Style = csOwnerDrawFixed
            ItemIndex = 0
            TabOrder = 1
            Text = 'TEMELFATURA'
            Items.Strings = (
              'TEMELFATURA'
              'TICARIFATURA'
              'IHRACAT'
              'YOLCUBERABERFATURA')
          end
          object cmbTipi: TComboBox
            Left = 70
            Top = 72
            Width = 120
            Height = 22
            Style = csOwnerDrawFixed
            ItemIndex = 0
            TabOrder = 2
            Text = 'SATIS'
            Items.Strings = (
              'SATIS'
              'IADE'
              'TEVKIFAT'
              'ISTISNA'
              'OZELMATRAH'
              'IHRACKAYITLI')
          end
          object editCURR: TEdit
            Left = 223
            Top = 176
            Width = 39
            Height = 21
            TabOrder = 7
            Text = 'TRY'
          end
          object editNot1: TEdit
            Left = 29
            Top = 97
            Width = 233
            Height = 21
            TabOrder = 3
          end
          object editNot2: TEdit
            Left = 29
            Top = 121
            Width = 233
            Height = 21
            TabOrder = 4
          end
          object editNot3: TEdit
            Left = 29
            Top = 145
            Width = 233
            Height = 21
            TabOrder = 5
          end
          object editTotal: TEdit
            Left = 88
            Top = 176
            Width = 102
            Height = 21
            TabOrder = 6
          end
          object editTotalVergi: TEdit
            Left = 88
            Top = 200
            Width = 102
            Height = 21
            TabOrder = 8
          end
        end
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 282
          Top = 4
          Width = 709
          Height = 233
          Align = alClient
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          object Label26: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 107
            Width = 701
            Height = 13
            Align = alBottom
            Caption = 'Logs2...'
            ExplicitWidth = 40
          end
          object Label41: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 701
            Height = 13
            Align = alTop
            Caption = 'Fatura Ayr'#305'nt'#305
            ExplicitWidth = 66
          end
          object DBGrid2: TDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 23
            Width = 701
            Height = 78
            Align = alClient
            DataSource = dsFaturaDetay
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object Memo3: TMemo
            Left = 1
            Top = 123
            Width = 707
            Height = 109
            Align = alBottom
            Lines.Strings = (
              '')
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
        object Memo1: TMemo
          Left = 1
          Top = 240
          Width = 993
          Height = 181
          Align = alBottom
          Lines.Strings = (
            '')
          ScrollBars = ssBoth
          TabOrder = 2
        end
      end
    end
    object tabGelenFaturalar: TTabSheet
      Caption = 'Gelen Faturalar'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 187
        Width = 995
        Height = 6
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 3
        ExplicitTop = 189
        ExplicitWidth = 900
      end
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 989
        Height = 181
        ActivePage = tabGelenEFatura
        Align = alTop
        TabOrder = 0
        object tabGelenEFatura: TTabSheet
          Caption = 'tabGelenEFatura'
          object Panel8: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 975
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label13: TLabel
              Left = 8
              Top = 13
              Width = 56
              Height = 13
              Caption = 'Tarih Aral'#305#287#305
            end
            object buttonGelenFaturalar: TButton
              AlignWithMargins = True
              Left = 791
              Top = 4
              Width = 180
              Height = 33
              Align = alRight
              Caption = 'Gelen Faturalar Listele'
              TabOrder = 0
              OnClick = buttonGelenFaturalarClick
            end
            object dateStart1: TDateTimePicker
              Left = 73
              Top = 8
              Width = 113
              Height = 21
              Date = 43344.008354375000000000
              Time = 43344.008354375000000000
              TabOrder = 1
            end
            object dateEnd1: TDateTimePicker
              Left = 201
              Top = 8
              Width = 89
              Height = 21
              Date = 43448.008354375000000000
              Time = 43448.008354375000000000
              TabOrder = 2
            end
          end
          object Panel9: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 50
            Width = 975
            Height = 100
            Align = alClient
            TabOrder = 1
            object gridGelenFaturaList: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 967
              Height = 92
              Align = alClient
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
        end
      end
      object Panel11: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 196
        Width = 989
        Height = 572
        Align = alClient
        TabOrder = 1
        object Memo2: TMemo
          AlignWithMargins = True
          Left = 4
          Top = 84
          Width = 981
          Height = 484
          Align = alClient
          Color = clBtnFace
          ScrollBars = ssBoth
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 987
          Height = 80
          Align = alTop
          TabOrder = 1
          object Label14: TLabel
            Left = 8
            Top = 6
            Width = 46
            Height = 13
            Caption = 'VersionID'
          end
          object Label15: TLabel
            Left = 116
            Top = 5
            Width = 48
            Height = 13
            Caption = 'FaturaT'#252'r'
          end
          object Label16: TLabel
            Left = 292
            Top = 5
            Width = 11
            Height = 13
            Caption = 'ID'
          end
          object Label17: TLabel
            Left = 428
            Top = 5
            Width = 25
            Height = 13
            Caption = 'UUID'
          end
          object Label18: TLabel
            Left = 704
            Top = 6
            Width = 24
            Height = 13
            Caption = 'Tarih'
          end
          object Label19: TLabel
            Left = 78
            Top = 31
            Width = 44
            Height = 13
            Caption = 'VKNO/TC'
          end
          object Label20: TLabel
            Left = 8
            Top = 31
            Width = 53
            Height = 13
            Caption = 'Al'#305'c'#305' Bilgileri'
          end
          object Label21: TLabel
            Left = 8
            Top = 56
            Width = 60
            Height = 13
            Caption = 'Sat'#305'c'#305' Bilgileri'
          end
          object Label22: TLabel
            Left = 78
            Top = 56
            Width = 44
            Height = 13
            Caption = 'VKNO/TC'
          end
          object Label23: TLabel
            Left = 263
            Top = 31
            Width = 31
            Height = 13
            Caption = #220'nvan'
          end
          object Label24: TLabel
            Left = 263
            Top = 56
            Width = 31
            Height = 13
            Caption = #220'nvan'
          end
          object Label25: TLabel
            Left = 519
            Top = 56
            Width = 23
            Height = 13
            Caption = 'Tel 1'
          end
          object label989: TLabel
            Left = 519
            Top = 31
            Width = 23
            Height = 13
            Caption = 'Tel 1'
          end
          object editAliciTel1: TEdit
            Tag = 125
            Left = 554
            Top = 27
            Width = 198
            Height = 21
            TabOrder = 0
          end
          object editAliciUnvan: TEdit
            Tag = 125
            Left = 298
            Top = 27
            Width = 215
            Height = 21
            TabOrder = 1
          end
          object editAliciVKNO: TEdit
            Tag = 125
            Left = 136
            Top = 27
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object editID: TEdit
            Tag = 125
            Left = 305
            Top = 2
            Width = 121
            Height = 21
            TabOrder = 3
          end
          object editIssuDate: TEdit
            Tag = 125
            Left = 731
            Top = 2
            Width = 111
            Height = 21
            TabOrder = 4
          end
          object editProfileID: TEdit
            Tag = 125
            Left = 167
            Top = 2
            Width = 121
            Height = 21
            TabOrder = 5
          end
          object editSaticiTel1: TEdit
            Tag = 125
            Left = 554
            Top = 52
            Width = 198
            Height = 21
            TabOrder = 6
          end
          object editSaticiUnvan: TEdit
            Tag = 125
            Left = 298
            Top = 52
            Width = 215
            Height = 21
            TabOrder = 7
          end
          object editSaticiVKNO: TEdit
            Tag = 125
            Left = 136
            Top = 52
            Width = 121
            Height = 21
            TabOrder = 8
          end
          object editUBLVersionID: TEdit
            Tag = 125
            Left = 56
            Top = 2
            Width = 57
            Height = 21
            TabOrder = 9
          end
          object editUUID: TEdit
            Tag = 125
            Left = 458
            Top = 2
            Width = 240
            Height = 21
            TabOrder = 10
          end
        end
      end
    end
    object tabMukellefList: TTabSheet
      Caption = 'M'#252'kellef Listesi'
      ImageIndex = 3
      object Panel10: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 989
        Height = 41
        Align = alTop
        TabOrder = 0
        object buttonMukellefListe: TButton
          AlignWithMargins = True
          Left = 881
          Top = 4
          Width = 104
          Height = 33
          Align = alRight
          Caption = 'M'#252'kellef Listele'
          TabOrder = 0
          OnClick = buttonMukellefListeClick
        end
      end
      object gridMukellef: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 50
        Width = 989
        Height = 718
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabGonderilenFaturalar: TTabSheet
      Caption = 'G'#246'nderilen Faturalar'
      ImageIndex = 2
      object PageControl3: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 989
        Height = 765
        ActivePage = tabGidenlistele
        Align = alClient
        TabOrder = 0
        object tabGidenlistele: TTabSheet
          Caption = 'Gidenler Listesi'
          object Panel5: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 975
            Height = 35
            Align = alTop
            TabOrder = 0
            object Label31: TLabel
              Left = 11
              Top = 9
              Width = 56
              Height = 13
              Caption = 'Tarih Aral'#305#287#305
            end
            object buttonGonderilenListele: TButton
              AlignWithMargins = True
              Left = 825
              Top = 4
              Width = 146
              Height = 27
              Align = alRight
              Caption = 'G'#246'nderilan Faturalar Listele'
              TabOrder = 0
              OnClick = buttonGonderilenListeleClick
            end
            object dtGidenStart: TDateTimePicker
              Left = 76
              Top = 5
              Width = 113
              Height = 21
              Date = 43101.008354375000000000
              Time = 43101.008354375000000000
              TabOrder = 1
            end
            object dtGidenEnd: TDateTimePicker
              Left = 204
              Top = 5
              Width = 89
              Height = 21
              Date = 43471.008354375000000000
              Time = 43471.008354375000000000
              TabOrder = 2
            end
          end
          object gridGidenFaturaList: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 44
            Width = 975
            Height = 690
            Align = alClient
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
    end
  end
  object HTTPRIO1: THTTPRIO
    OnAfterExecute = faturaHTTPRIOAfterExecute
    OnBeforeExecute = faturaHTTPRIOBeforeExecute
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 343
    Top = 716
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 449
    Top = 713
  end
  object fdFaturaDetay: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftAutoInc
      end
      item
        Name = 'StockNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AliciStockNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UreticiStockNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'StockName'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'MarkaAdi'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'Aciklama'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'Miktar'
        DataType = ftFloat
      end
      item
        Name = 'UnitCode'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'birimFiyat'
        DataType = ftFloat
        Precision = 19
      end
      item
        Name = 'Currency'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'IndirimMatrah'
        DataType = ftFloat
      end
      item
        Name = 'IndirimCarpan'
        DataType = ftInteger
      end
      item
        Name = 'IndirimTutar'
        DataType = ftFloat
      end
      item
        Name = 'SatirTutar'
        DataType = ftFloat
      end
      item
        Name = 'VergiKodu'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'VergiAdi'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'VergiOrani'
        DataType = ftFloat
      end
      item
        Name = 'Not1'
        DataType = ftString
        Size = 128
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 567
    Top = 716
    Content = {
      414442530F007E1D410A0000FF00010001FF02FF0304001A0000006600640046
      00610074007500720061004400650074006100790005000A0000005400610062
      006C006500060000000000070000080032000000090000FF0AFF0B0400040000
      0049006400050004000000490064000C00010000000E000D000F000110000111
      00011200011300FFFFFFFF1400FFFFFFFF150001160001170001180001190004
      00000049006400FEFF0B04000E000000530074006F0063006B004E006F000500
      0E000000530074006F0063006B004E006F000C00020000000E001A001B001400
      00000F000110000112000115000116000117000119000E000000530074006F00
      63006B004E006F001C0014000000FEFF0B04001800000041006C006900630069
      00530074006F0063006B004E006F0005001800000041006C0069006300690053
      0074006F0063006B004E006F000C00030000000E001A001B00140000000F0001
      10000112000115000116000117000119001800000041006C0069006300690053
      0074006F0063006B004E006F001C0014000000FEFF0B04001C00000055007200
      65007400690063006900530074006F0063006B004E006F0005001C0000005500
      720065007400690063006900530074006F0063006B004E006F000C0004000000
      0E001A001B00140000000F000110000112000115000116000117000119001C00
      00005500720065007400690063006900530074006F0063006B004E006F001C00
      14000000FEFF0B040012000000530074006F0063006B004E0061006D00650005
      0012000000530074006F0063006B004E0061006D0065000C00050000000E001A
      001B00400000000F000110000112000115000116000117000119001200000053
      0074006F0063006B004E0061006D0065001C0040000000FEFF0B040010000000
      4D00610072006B0061004100640069000500100000004D00610072006B006100
      4100640069000C00060000000E001A001B00200000000F000110000112000115
      00011600011700011900100000004D00610072006B0061004100640069001C00
      20000000FEFF0B0400100000004100630069006B006C0061006D006100050010
      0000004100630069006B006C0061006D0061000C00070000000E001A001B0040
      0000000F00011000011200011500011600011700011900100000004100630069
      006B006C0061006D0061001C0040000000FEFF0B04000C0000004D0069006B00
      74006100720005000C0000004D0069006B007400610072000C00080000000E00
      1D000F000110000112000115000116000117000119000C0000004D0069006B00
      740061007200FEFF0B04001000000055006E006900740043006F006400650005
      001000000055006E006900740043006F00640065000C00090000000E001A001B
      00080000000F000110000112000115000116000117000119001000000055006E
      006900740043006F00640065001C0008000000FEFF0B04001400000062006900
      720069006D004600690079006100740005001400000062006900720069006D00
      460069007900610074000C000A0000000E001D001E00130000001F0004000000
      0F00011000011200011500011600011700011900140000006200690072006900
      6D0046006900790061007400200013000000210004000000FEFF0B0400100000
      00430075007200720065006E0063007900050010000000430075007200720065
      006E00630079000C000B0000000E001A001B00030000000F0001100001120001
      150001160001170001190010000000430075007200720065006E00630079001C
      0003000000FEFF0B04001A00000049006E0064006900720069006D004D006100
      740072006100680005001A00000049006E0064006900720069006D004D006100
      74007200610068000C000C0000000E001D000F00011000011200011500011600
      0117000119001A00000049006E0064006900720069006D004D00610074007200
      61006800FEFF0B04001A00000049006E0064006900720069006D004300610072
      00700061006E0005001A00000049006E0064006900720069006D004300610072
      00700061006E000C000D0000000E000D000F0001100001120001150001160001
      17000119001A00000049006E0064006900720069006D00430061007200700061
      006E00FEFF0B04001800000049006E0064006900720069006D00540075007400
      6100720005001800000049006E0064006900720069006D005400750074006100
      72000C000E0000000E001D000F00011000011200011500011600011700011900
      1800000049006E0064006900720069006D0054007500740061007200FEFF0B04
      0014000000530061007400690072005400750074006100720005001400000053
      006100740069007200540075007400610072000C000F0000000E001D000F0001
      1000011200011500011600011700011900140000005300610074006900720054
      007500740061007200FEFF0B040012000000560065007200670069004B006F00
      64007500050012000000560065007200670069004B006F00640075000C001000
      00000E001A001B00080000000F00011000011200011500011600011700011900
      12000000560065007200670069004B006F00640075001C0008000000FEFF0B04
      0010000000560065007200670069004100640069000500100000005600650072
      00670069004100640069000C00110000000E001A001B00200000000F00011000
      0112000115000116000117000119001000000056006500720067006900410064
      0069001C0020000000FEFF0B040014000000560065007200670069004F007200
      61006E006900050014000000560065007200670069004F00720061006E006900
      0C00120000000E001D000F000110000112000115000116000117000119001400
      0000560065007200670069004F00720061006E006900FEFF0B0400080000004E
      006F00740031000500080000004E006F00740031000C00130000000E001A001B
      00800000000F00011000011200011500011600011700011900080000004E006F
      00740031001C0080000000FEFEFF22FEFF23FEFF24FF25260000000000280027
      00FF2900000100000001000500000053544B30310200050000004D5354303104
      000600000053746F6B20310500050000004D61726B6106000900000041E7FD6B
      6C616D6131070000000000000010400800030000004336320900000000000000
      39400A00030000005452590E0000000000000059400F00040000003030313510
      00030000004B445611000000000000003240120014000000427520DC72FC6E20
      696E646972696D6465646972FEFEFF2526000100000028002700FF2900000200
      000001000500000053544B30310200050000004D535430320400060000005374
      6F6B20320500060000004D61726B613206000900000041E7FD6B6C616D613207
      00000000000000F03F08000300000043363209000000000000003E400A000300
      00005452590E000000000000003E400F0004000000303031351000030000004B
      44561100000000000000204012001A0000004DFCFE746572696E696E20656E20
      7365766469F06920FC72FC6EFEFEFEFEFEFF2AFEFF2B2C000F000000FF2DFEFE
      FE0E004D0061006E0061006700650072001E0055007000640061007400650073
      005200650067006900730074007200790012005400610062006C0065004C0069
      00730074000A005400610062006C00650008004E0061006D006500140053006F
      0075007200630065004E0061006D0065000A0054006100620049004400240045
      006E0066006F0072006300650043006F006E00730074007200610069006E0074
      0073001E004D0069006E0069006D0075006D0043006100700061006300690074
      007900180043006800650063006B004E006F0074004E0075006C006C00140043
      006F006C0075006D006E004C006900730074000C0043006F006C0075006D006E
      00100053006F007500720063006500490044000E006400740049006E00740033
      0032001000440061007400610054007900700065001400530065006100720063
      006800610062006C006500120041006C006C006F0077004E0075006C006C000E
      004100750074006F0049006E0063000800420061007300650022004100750074
      006F0049006E006300720065006D0065006E0074005300650065006400220041
      00750074006F0049006E006300720065006D0065006E00740053007400650070
      0014004F0041006C006C006F0077004E0075006C006C0012004F0049006E0055
      007000640061007400650010004F0049006E005700680065007200650020004F
      004100660074006500720049006E0073004300680061006E006700650064001A
      004F0072006900670069006E0043006F006C004E0061006D0065001800640074
      0041006E007300690053007400720069006E0067000800530069007A00650014
      0053006F007500720063006500530069007A00650010006400740044006F0075
      0062006C006500120050007200650063006900730069006F006E000A00530063
      0061006C0065001E0053006F0075007200630065005000720065006300690073
      0069006F006E00160053006F0075007200630065005300630061006C0065001C
      0043006F006E00730074007200610069006E0074004C00690073007400100056
      006900650077004C006900730074000E0052006F0077004C0069007300740006
      0052006F0077000A0052006F0077004900440016007200730055006E00630068
      0061006E006700650064001A0052006F0077005000720069006F007200530074
      0061007400650010004F0072006900670069006E0061006C001800520065006C
      006100740069006F006E004C006900730074001C005500700064006100740065
      0073004A006F00750072006E0061006C001200530061007600650050006F0069
      006E0074000E004300680061006E00670065007300}
    object fdFaturaDetayId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object fdFaturaDetayStockNo: TStringField
      DisplayWidth = 11
      FieldName = 'StockNo'
      Origin = 'StockNo'
    end
    object fdFaturaDetayAliciStockNo: TStringField
      DisplayWidth = 12
      FieldName = 'AliciStockNo'
      Origin = 'AliciStockNo'
    end
    object fdFaturaDetayUreticiStockNo: TStringField
      DisplayWidth = 14
      FieldName = 'UreticiStockNo'
      Origin = 'UreticiStockNo'
    end
    object fdFaturaDetayStockName: TStringField
      DisplayWidth = 13
      FieldName = 'StockName'
      Origin = 'StockName'
      Size = 64
    end
    object fdFaturaDetayMarkaAdi: TStringField
      DisplayWidth = 12
      FieldName = 'MarkaAdi'
      Origin = 'MarkaAdi'
      Size = 32
    end
    object fdFaturaDetayAciklama: TStringField
      DisplayWidth = 20
      FieldName = 'Aciklama'
      Origin = 'Aciklama'
      Size = 64
    end
    object fdFaturaDetayMiktar: TFloatField
      DisplayWidth = 10
      FieldName = 'Miktar'
      Origin = 'Miktar'
    end
    object fdFaturaDetayUnitCode: TStringField
      DisplayWidth = 8
      FieldName = 'UnitCode'
      Origin = 'UnitCode'
      Size = 8
    end
    object fdFaturaDetaybirimFiyat: TFloatField
      DisplayWidth = 10
      FieldName = 'birimFiyat'
      Origin = 'birimFiyat'
    end
    object fdFaturaDetayCurrency: TStringField
      DisplayWidth = 7
      FieldName = 'Currency'
      Origin = 'Currency'
      Size = 3
    end
    object fdFaturaDetayIndirimMatrah: TFloatField
      DisplayWidth = 11
      FieldName = 'IndirimMatrah'
      Origin = 'IndirimMatrah'
    end
    object fdFaturaDetayIndirimCarpan: TIntegerField
      DisplayWidth = 11
      FieldName = 'IndirimCarpan'
      Origin = 'IndirimCarpan'
    end
    object fdFaturaDetayIndirimTutar: TFloatField
      DisplayWidth = 10
      FieldName = 'IndirimTutar'
      Origin = 'IndirimTutar'
    end
    object fdFaturaDetaySatirTutar: TFloatField
      DisplayWidth = 10
      FieldName = 'SatirTutar'
      Origin = 'SatirTutar'
    end
    object fdFaturaDetayVergiKodu: TStringField
      DisplayWidth = 8
      FieldName = 'VergiKodu'
      Origin = 'VergiKodu'
      Size = 8
    end
    object fdFaturaDetayVergiAdi: TStringField
      DisplayWidth = 14
      FieldName = 'VergiAdi'
      Origin = 'VergiAdi'
      Size = 32
    end
    object fdFaturaDetayVergiOrani: TFloatField
      DisplayWidth = 10
      FieldName = 'VergiOrani'
      Origin = 'VergiOrani'
    end
    object fdFaturaDetayNot1: TStringField
      DisplayWidth = 35
      FieldName = 'Not1'
      Origin = 'Not1'
      Size = 128
    end
  end
  object dsFaturaDetay: TDataSource
    DataSet = fdFaturaDetay
    Left = 688
    Top = 712
  end
  object faturaHTTPRIO: THTTPRIO
    OnAfterExecute = faturaHTTPRIOAfterExecute
    OnBeforeExecute = faturaHTTPRIOBeforeExecute
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 239
    Top = 716
  end
end
