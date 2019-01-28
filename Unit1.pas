unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Grids,
  // ShellApi,
  System.IOUtils, // TPath class
  Soap.InvokeRegistry, // THTTPRIO require
  Soap.Rio, // THTTPRIO
  Soap.SOAPHTTPClient, // THTTPRIO require
  Vcl.ExtCtrls,
  EFaturaService, // E fatura
  Vcl.Buttons,
  Soap.XSBuiltIns, // TXSDate class
  System.Types, Vcl.ComCtrls, Data.DB, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin, FireDAC.Stan.StorageXML // TByteDynArray type
    ; // Web Service E-Fatura

type
  TUTF8EncodingWithoutBOM = class(TUTF8Encoding)
  public
    function Clone: TEncoding; override;
    function GetPreamble: TBytes; override;
  end;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Button5: TButton;
    Panel2: TPanel;
    Panel4: TPanel;
    IDRed: TEdit;
    Label10: TLabel;
    IDAccept: TEdit;
    Label9: TLabel;
    XMLDosya: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edtSenderVkn: TEdit;
    edtSenderGB: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edtReceiverVkn: TEdit;
    edtReceiverPK: TEdit;
    Label7: TLabel;
    btnGetInvoicesSent: TButton;
    btnSendInvoice: TButton;
    btnGetInvoices: TButton;
    Panel3: TPanel;
    Label11: TLabel;
    edtUserID: TEdit;
    btnCheckUserByTitle: TButton;
    Label12: TLabel;
    KullaniciBasligi: TEdit;
    Button1: TButton;
    Button6: TButton;
    PageControl1: TPageControl;
    Genel: TTabSheet;
    tabGelenFaturalar: TTabSheet;
    tabMukellefList: TTabSheet;
    PageControl2: TPageControl;
    tabGelenEFatura: TTabSheet;
    Panel8: TPanel;
    buttonGelenFaturalar: TButton;
    Panel9: TPanel;
    Panel10: TPanel;
    buttonMukellefListe: TButton;
    gridMukellef: TDBGrid;
    dateStart1: TDateTimePicker;
    dateEnd1: TDateTimePicker;
    Label13: TLabel;
    gridGelenFaturaList: TDBGrid;
    Panel11: TPanel;
    Memo2: TMemo;
    Label14: TLabel;
    editUBLVersionID: TEdit;
    Label15: TLabel;
    editProfileID: TEdit;
    Label16: TLabel;
    editID: TEdit;
    Label17: TLabel;
    editUUID: TEdit;
    Label18: TLabel;
    editIssuDate: TEdit;
    Label19: TLabel;
    editAliciVKNO: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    editSaticiVKNO: TEdit;
    Label23: TLabel;
    editAliciUnvan: TEdit;
    editAliciTel1: TEdit;
    label989: TLabel;
    Label24: TLabel;
    editSaticiUnvan: TEdit;
    Label25: TLabel;
    editSaticiTel1: TEdit;
    Panel12: TPanel;
    Splitter1: TSplitter;
    Button3: TButton;
    Button4: TButton;
    Label27: TLabel;
    UUIDRed: TEdit;
    Label28: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtUser: TEdit;
    edtPasswd: TEdit;
    UUIDAccept: TEdit;
    editSenderUnvan: TEdit;
    editReceiverUnvan: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    HTTPRIO1: THTTPRIO;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    fdFaturaDetay: TFDMemTable;
    fdFaturaDetayId: TFDAutoIncField;
    fdFaturaDetayStockNo: TStringField;
    fdFaturaDetayAliciStockNo: TStringField;
    fdFaturaDetayUreticiStockNo: TStringField;
    fdFaturaDetayStockName: TStringField;
    fdFaturaDetayMarkaAdi: TStringField;
    fdFaturaDetayAciklama: TStringField;
    fdFaturaDetayMiktar: TFloatField;
    fdFaturaDetayUnitCode: TStringField;
    fdFaturaDetaybirimFiyat: TFloatField;
    fdFaturaDetayCurrency: TStringField;
    fdFaturaDetayIndirimMatrah: TFloatField;
    fdFaturaDetayIndirimCarpan: TIntegerField;
    fdFaturaDetayIndirimTutar: TFloatField;
    fdFaturaDetaySatirTutar: TFloatField;
    fdFaturaDetayVergiKodu: TStringField;
    fdFaturaDetayVergiAdi: TStringField;
    fdFaturaDetayVergiOrani: TFloatField;
    fdFaturaDetayNot1: TStringField;
    dsFaturaDetay: TDataSource;
    Panel13: TPanel;
    Panel17: TPanel;
    Label8: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    editFaturaNo: TEdit;
    cmbProfil: TComboBox;
    cmbTipi: TComboBox;
    editCURR: TEdit;
    editNot1: TEdit;
    editNot2: TEdit;
    editNot3: TEdit;
    editTotal: TEdit;
    editTotalVergi: TEdit;
    Panel16: TPanel;
    Label26: TLabel;
    Label41: TLabel;
    DBGrid2: TDBGrid;
    Memo3: TMemo;
    Memo1: TMemo;
    tabGonderilenFaturalar: TTabSheet;
    PageControl3: TPageControl;
    tabGidenlistele: TTabSheet;
    Panel5: TPanel;
    Label31: TLabel;
    buttonGonderilenListele: TButton;
    dtGidenStart: TDateTimePicker;
    dtGidenEnd: TDateTimePicker;
    gridGidenFaturaList: TDBGrid;
    btnSendServerResponseAccept: TButton;
    faturaHTTPRIO: THTTPRIO;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnCheckUserByTitleClick(Sender: TObject);
    procedure btnGetInvoicesSentClick(Sender: TObject);
    procedure buttonMukellefListeClick(Sender: TObject);
    procedure faturaHTTPRIOBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure faturaHTTPRIOAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure buttonGelenFaturalarClick(Sender: TObject);
    procedure AfterFaturaListScroll(DataSet: TDataSet);
    procedure btnSendInvoiceClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnGetInvoicesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure buttonGonderilenListeleClick(Sender: TObject);
    procedure btnSendServerResponseAcceptClick(Sender: TObject);

  private
    { Private declarations }
    OturumID: string;
    fdMukellef: TFDMemTable;
    dsMukellef: TDataSource;
    fdGelenFaturaList: TFDMemTable;
    dsGelenFaturaList: TDataSource;

    fdGidenFaturaList: TFDMemTable;
    dsGidenFaturaList: TDataSource;
    // ------------------------------------
    ReqHeader: REQUEST_HEADERType;
    MyEncoding: TUTF8EncodingWithoutBOM;

    InboxDir: string;
    procedure TumeEitleriTemizle();
    procedure Log(const Value: string);
    procedure SaveInvoice(const AInvoice: INVOICE);

    function MakeLoginParam(const _username, _password: string): EFaturaService.Login;

    function GenerateFields(const arr: array of string; TargetDs: TDataSet): Integer;
    procedure MakeMukellefData;

    procedure Make_EFaturaGelenData;
    procedure Make_EFaturaGidenData;
  public
    { Public declarations }
    procedure OturumId_Olustur;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Uses
  System.Zip,
  System.NetEncoding,
  Xml.XMLDoc,
  Xml.XMLIntf,
  Xml.Win.msxmldom, Winapi.MSXML,
  uUtility, Unit2, UBLContract, uIniUtils, uHelperClass, uNullabletypes;

{ TUTF8EncodingWithoutBOM }

procedure TForm1.OturumId_Olustur;
var
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;
  Servis: EFaturaService.EFaturaServiceSoap;
begin
  if OturumID = '' then
  begin
    LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
    Servis := GetEFaturaServiceSoap(True, '', faturaHTTPRIO);
    LoginCevap := Servis.Login(LoginParam);
    if LoginCevap.LoginResult.IsSuccessLogin then
    begin
      OturumID := LoginCevap.LoginResult.SessionId;
    end
    else
    begin
      OturumID := '';
      Log('** Login Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
    end;
  end;
  Edit1.Text := OturumID;
end;

function ArrToString(const arr: ArrayOfString): string;
var
  i: Integer;
begin
  Result := '';
  for i := Low(arr) to High(arr) do
    Result := Result + arr[i];
end;

function MakeInvoiceUBL(ReceiptID: Integer; MusteriTCKVVN, MusteriAlias, FaturaSenaryo: string): String;
var
  // kalem : TKalem;
  arrKalem: KalemArray;
  // kalem2:TKalem;
  vergi: TVergi;
  CurrExc: Double;
  FaturaClass, XmlBelge: String;
  i: Integer;
  VergilerToplam, KalemToplamTutar, VergiHaricTutar, VergiDahilTutar, ToplamIndirim: Currency;
  OdenecekTutar: Extended;
  MuafiyetCode, Muafiyet: string;
  TakeUpOran, tevkDetay: Extended;
  ihRacatFaturasý: boolean;
  // CBank_ : TDataClass;

  // AddKalem Detay
{$REGION 'AddKalem'}
  procedure AddKalem(fatura: TUblFatura);
  var
    i: Integer;
    kalem: TKalem;
    StockID, LineID, ACTID, UnitID: Integer;
    UNIQUECode, StockName, StockAciklama: String;

    _SatýrMiktar: Extended; // Double; //
    MultiplierFactorNumeric, _IskontoToplam, IskontoUygulanacakToplam: Extended;
  begin
    // qryDetay.First;
    i := -1;
    // while Not qryDetay.EOF do
    begin
      inc(i);
      kalem := TKalem.Create;
      kalem.KalemNo := i + 1;
      StockName := 'stokAdý'; // qryDetay.FieldByName('STOCKNAME').AsString;
      StockAciklama := 'Açýklama'; // qryDetay.FieldByName('DESCRIPTION').AsString;

      StockID := 1; // qryDetay.FieldByName('STOCKID').AsInteger;
      if StockID > 0 then
      // STOK seçilmiþse
      begin
        {
          UNIQUECode := '';
          DNDBRequery(qryGetBirimCevrim, VarArrayOf([SCompanyId, StockID]));
          qryGetBirimCevrim.First;

          while Not qryGetBirimCevrim.EOF do
          begin
          if qryDetay.FieldByName('QTYSELECT').AsString = '' then
          Break;
          if qryDetay.FieldByName('QTYSELECT').AsString = IntToStr(qryGetBirimCevrim.RecNo) then
          Break;
          qryGetBirimCevrim.Next;
          end;
          UnitID := qryGetBirimCevrim.FieldByName('UNITID').AsInteger;
          DNDBRequery(qryUnit, VarArrayOf([frmFinansLib.CompanyId, UnitID]));
          if (qryUnit.RecordCount > 0) then
          UNIQUECode := qryUnit.FieldByName('UNITCODE').AsString;
          end
          else
          //Stok dýþýnda hizmet vs ise
          begin
          StockID := qryDetay.FieldByName('EXPREVID').AsInteger;
          UnitID := qryDetay.FieldByName('UNITID').AsInteger;
          DNDBRequery(qryUnit, VarArrayOf([frmFinansLib.CompanyId, UnitID]));
          if (qryUnit.RecordCount > 0) then
          UNIQUECode := qryUnit.FieldByName('UNITCODE').AsString;
          if qryDetay.FieldByName('ACTIONCODE').AsString = 'EXPREV' then
          begin
          if StockID > 0 then
          begin
          StockName := uEFaturaProvider.GetData('SELECT EXPREVNAME FROM EXPREV WHERE EXPREVID=' + IntToStr(StockID));
          end;
          end;
          end;

          if UNIQUECode <> '' then
          begin
          kalem.OlcuBirimi := TOlcuBirimleri(GetEnumValue(TypeInfo(TOlcuBirimleri), UNIQUECode));

          if qryDetay.FieldByName('QTYSELECT').AsString = '2' then
          _SatýrMiktar := qryDetay.FieldByName('QUANTITY2').AsFloat
          else
          if qryDetay.FieldByName('QTYSELECT').AsString = '3' then
          _SatýrMiktar := qryDetay.FieldByName('QUANTITY3').AsFloat
          else
          _SatýrMiktar := qryDetay.FieldByName('QUANTITY').AsFloat;
        }
        _SatýrMiktar := 10;
        kalem.Miktar := _SatýrMiktar;
      end;

      MultiplierFactorNumeric := 0;
      // if (fatura.BelgeParaBirimi = 'TL') or (fatura.BelgeParaBirimi = 'TRL') or (fatura.BelgeParaBirimi = 'TRY') then
      begin
        IskontoUygulanacakToplam := 0; // qryDetay.FieldByName('NETTOTAL').AsFloat / CurrExc;
        _IskontoToplam := 0; // qryDetay.FieldByName('DISCOUNTTOTAL').AsFloat / CurrExc;
      end;

      // if IskontoUygulanacakToplam > 0 then
      // MultiplierFactorNumeric := qryDetay.FieldByName('DISCOUNT1').AsFloat / 100;

      kalem.KalemTutar := IskontoUygulanacakToplam;
      kalem.IndirimCarpan := MultiplierFactorNumeric;
      kalem.IndirimTutar := _IskontoToplam;

      kalem.UrunKodu := 'Stok01'; // qryDetay.FieldByName('STOCKNO').AsString;

      if (StockName <> StockAciklama) then
        kalem.UrunAdi := StockAciklama
      else
        kalem.UrunAdi := StockName;

      // 29.01.2017 NETPRICE a çevrildi
      kalem.BirimFiyat := 15; // qryDetay.FieldByName('NETPRICE').AsFloat / CurrExc;

      // Vergi Hesabý yap; Baþla
      kalem.Vergiler := TVergiler.Create;

      // Delivery Yalnýzca Ýhracat ve Yolcu Beraber Faturalarda olur
      if fatura.Senaryo in [IHRACAT, YOLCUBERABERFATURA] then
      begin
        kalem.IHRACAT := TDelivery.Create;
        kalem.IHRACAT.PackagingTypeCode := ''; // qryDetay.FieldByName('PACKINGTYPECODE').AsString;
        kalem.IHRACAT.PackagingID := ''; // qryDetay.FieldByName('PACKINGID').AsString;
        kalem.IHRACAT.Quantity := 1; // qryDetay.FieldByName('PQUANTITY').AsInteger;
        kalem.IHRACAT.IncoTerms := '1'; // qryBaslik.FieldByName('INCOTERMS').AsString;
        // DBManager . UpdateLib . mmoupsysSpecType Memosunda deðerler 8000 den baþlýyor oysa bize 0..9 arasý lazým
        kalem.IHRACAT.TransportModeCode := '1'; // IntToStr(qryBaslik.FieldByName('TRANSPORTMODE').AsInteger - 8000) ;
        kalem.IHRACAT.RequiredCustomsID := '1';

        // if Assigned(TeslimAdresi) then
        // kalem.Ihracat.TeslimAdresi.Assign(TeslimAdresi);
      end;

      if fatura.Senaryo = IHRACAT then
      begin // Yani IHRACAT Faturasý
        {
          vergi := TVergi.Create('0015', 'KDV'); //TaxTypeCode Name
          vergi.Matrah := qryDetay.FieldByName('NETTOTAL').AsFloat / CurrExc; //TaxableAmount
          vergi.Tutar := 0; //TaxAmount
          vergi.Oran := 0 ; //Percent
          vergi.MuafiyetKodu :='301';
          vergi.MuafiyetAciklama := '11/1-a Mal ihracatý';
          kalem.Vergiler.Add(vergi);
        }
      end
      else if fatura.Senaryo = YOLCUBERABERFATURA then
      begin // Yani YOLCUBERABERFATURA Faturasý
        {
          vergi := TVergi.Create('0015', 'KDV'); //TaxTypeCode Name
          vergi.Matrah := qryDetay.FieldByName('NETTOTAL').AsFloat / CurrExc; //TaxableAmount
          vergi.Tutar := qryDetay.FieldByName('VATTOTAL').AsFloat / CurrExc; //TaxAmount
          vergi.Oran := qryDetay.FieldByName('VAT').AsFloat; //Percent
          vergi.MuafiyetKodu :='501';
          vergi.MuafiyetAciklama := 'Türkiye'+#39+'de Ýkamet Etmeyenlere KDV Hesaplanarak Yapýlan Satýþlar(Yolcu Beraberi Eþya';
          kalem.Vergiler.Add(vergi);
        }
      end
      else
      begin
        //
        // ötv varsa ekle
        {
          if (qryDetay.FieldByName('TAXPRIVATE').AsFloat > 0) then
          begin
          vergi := TVergi.Create('0075', 'ÖTV 3A LÝSTESÝ'); //TaxTypeCode Name
          vergi.Matrah := qryDetay.FieldByName('VATTOTAL').AsFloat + qryDetay.FieldByName('TAXPRIVATETOTAL').AsFloat -
          qryDetay.FieldByName('TAKEUPTAXSUMITEM').AsFloat / CurrExc; //TaxAmount
          vergi.Tutar := _SatýrMiktar * qryDetay.FieldByName('NETPRICE').AsFloat / CurrExc; //TaxableAmount

          vergi.Oran := qryDetay.FieldByName('TAXPRIVATE').AsFloat; //Percent
          kalem.Vergiler.Add(vergi);
          end;
        }
        //
        // kdv varsa ekle
        // if (qryDetay.FieldByName('VATTOTAL').AsFloat > 0) then
        begin
          vergi := TVergi.Create('0015', 'KDV'); // TaxTypeCode Name
          vergi.Matrah := 100; // qryDetay.FieldByName('NETTOTAL').AsFloat / CurrExc; //TaxableAmount
          vergi.Tutar := 90; // qryDetay.FieldByName('VATTOTAL').AsFloat / CurrExc; //TaxAmount
          vergi.Oran := 18; // qryDetay.FieldByName('VAT').AsFloat; //Percent
          kalem.Vergiler.Add(vergi);
        end;
      end;

      // Vergi Hesabý Son..
      fatura.Kalemler.Add(kalem);
      // qryDetay.Next;
    end;
  end;

{$ENDREGION}
// AddMuhatap
{$REGION 'AddMuhatap'}
  Procedure AddMuhatap(Muhatap: TMuhatap);
  var
    VKNo: String;
    TempName, PAC: String;
  begin
    if Muhatap.Name = 'Gümrük' then
    // if UBLFatura.isEIhracat then
    begin // Yolcu Beraber Ihracat Faturalarý SABÝT ALICI bilgisi ihtiva eder.
      // Muhatap.WebURI := '';//qryAct.FieldByName('WEB').AsString;
      Muhatap.VKNTCKN := '1460415308';
      Muhatap.Unvan := 'Gümrük ve Ticaret Bakanlýðý';
      Muhatap.Ilce := 'Çankaya';
      Muhatap.Il := 'Ankara';
      Muhatap.Ulke := 'Türkiye';
      // Muhatap.UlkeKodu := GetUlkeCodeFromName(Muhatap.Ulke); //'TR';
      Muhatap.VergiDairesi := 'Ulus';
      Muhatap.BinaNo := '151';
      Muhatap.StreetName := 'Üniversiteler Mahallesi Dumlupýnar Bulvarý';
      // Muhatap.PostalZone := '06 falanFilan';
    end
    else if Muhatap.Name = 'Alýcý' then
    // Alýcý
    begin // Normal Alýcý
      VKNo := '7210452742';
      {
        if (qryAct.FieldByName('TAXNO').AsString <> '') then
        begin
        VKNo := qryAct.FieldByName('TAXNO').AsString;
        end
        else
        //sonra ACT.TCNO
        if (qryAct.FieldByName('TCNO').AsString <> '') then
        begin
        VKNo := qryAct.FieldByName('TCNO').AsString;
        end;
      }
      Muhatap.WebURI := ''; // qryAct.FieldByName('WEB').AsString;
      Muhatap.VKNTCKN := VKNo;

      Muhatap.Unvan := 'PARK ENTEGRASYON'; // qryAct.FieldByName('ACTNAME').AsString;
      // if trim(Muhatap.Unvan) = '' then Muhatap.Unvan := qryAct.FieldByName('ACTNAME2').AsString;
      {
        if (qryBaslik.FieldByName('ADDRESSID').AsInteger > 0) then
        DNDBRequery(qryGlbAdres, VarArrayOf([qryBaslik.FieldByName('ADDRESSID').AsInteger, qryBaslik.FieldByName('ACTID').AsInteger,
        frmFinansLib.CompanyId]))
        else
        qryGlbAdres := qryAct;
      }
      Muhatap.Ilce := ''; // qryGlbAdres.FieldByName('TOWN').AsString;
      Muhatap.Il := ''; // qryGlbAdres.FieldByName('CITY').AsString;
      Muhatap.Ulke := 'Türkiye'; // qryGlbAdres.FieldByName('COUNTRY').AsString;
      Muhatap.UlkeKodu := GetUlkeCodeFromName(Muhatap.Ulke); // 'TR';
      Muhatap.VergiDairesi := ''; // qryAct.FieldByName('TAXOFFICE').AsString;
      Muhatap.BinaNo := '';
      Muhatap.StreetName := ''; // qryGlbAdres.FieldByName('ADDRESS1').AsString + ' ' + qryGlbAdres.FieldByName('ADDRESS2').AsString + ' ' + qryGlbAdres.FieldByName('ADDRESS3').AsString;
      Muhatap.PostalZone := ''; // qryGlbAdres.FieldByName('POSTALCODE').AsString;
      Muhatap.Telephone := ''; // qryAct.FieldByName('PHONE1').AsString;
      Muhatap.Fax := ''; // qryAct.FieldByName('FAX').AsString;
      Muhatap.email := ''; // qryAct.FieldByName('EMAIL').AsString;
    end // Alýcý mý Gönderici mi
    else
    // Gönderici
    begin
      Muhatap.VKNTCKN := '7210452742'; // Provider.GetTCKVKN;
      Muhatap.Unvan := 'PARK ENTEGRASYON'; // Provider.CompanyName ;// qryCompany.FieldByName('COMPANYNAME').AsString;
      if Muhatap.VKNTCKN.Length = 11 then
        Muhatap.Unvan := ''; // Provider.A_ContactName; //qryCompany.FieldByName('CONTACTNAME').AsString;
      Muhatap.WebURI := ''; // Provider.A_WEB; //qryCompany.FieldByName('WEB').AsString;
      Muhatap.Ilce := ''; // Provider.A_Town; //qryCompany.FieldByName('TOWN').AsString;
      Muhatap.Il := ''; // Provider.A_City;// qryCompany.FieldByName('CITY').AsString;
      Muhatap.Ulke := 'Türkiye'; // Provider.A_Country;// qryCompany.FieldByName('COUNTRY').AsString;
      Muhatap.UlkeKodu := GetUlkeCodeFromName(Muhatap.Ulke); // 'TR';
      Muhatap.VergiDairesi := ''; // Provider.A_TaxOffice;// qryCompany.FieldByName('TAXOFFICE').AsString;
      Muhatap.BinaNo := ''; // Provider.A_Address3;// qryCompany.FieldByName('ADRESS3').AsString;
      // TempName := qryCompany.FieldByName('ADRESS1').AsString + ' ' + qryCompany.FieldByName('ADRESS2').AsString + ' ';
      // TempName := Provider.A_Address1+' '+Provider.A_Address2+' ';
      // TempName := TrimLeft(TrimRight(TempName));
      // TempName := StringToXmlString(TempName);

      Muhatap.StreetName := 'Cadde'; // TempName;
      Muhatap.PostalZone := ''; // Provider.A_PostCode; //qryCompany.FieldByName('POSTCODE').AsString;
      // PAC := trim(qryCompany.FieldByName('PHONEAREACODE').AsString);
      PAC := ''; // Provider.A_PhoneAreaCode;
      Muhatap.Telephone := ''; // PAC + Provider.A_Phone1; //qryCompany.FieldByName('PHONE1').AsString;
      Muhatap.Fax := ''; // PAC + Provider.A_Fax; //qryCompany.FieldByName('FAX').AsString;
      Muhatap.email := ''; // Provider.A_Email; //qryCompany.FieldByName('EMAIL').AsString;
    end;
  end;

{$ENDREGION}
{$REGION 'AddIrsaliyeler'}
  procedure AddIrsaliyeler;
  var
    aIrsaliye: TUBLIrsaliye;
  Begin
    {
      if qryBagliIrsaliye.RecordCount > 0 then
      begin
      UBLFatura.Irsaliyeler := TIrsaliyeler.Create;
      qryBagliIrsaliye.First;
      while Not qryBagliIrsaliye.EOF do
      begin
      aIrsaliye := TUBLIrsaliye.Create;
      aIrsaliye.IrsaliyeNo := qryBagliIrsaliye.FieldByName('RECEIPTNO').AsString;
      aIrsaliye.Tarih := qryBagliIrsaliye.FieldByName('TRANSDATE').AsDateTime;
      UBLFatura.Irsaliyeler.Add(aIrsaliye);
      qryBagliIrsaliye.Next;
      end;
      end;
    }
  End;
{$ENDREGION}
{$REGION 'AddSiparisler'}
  Procedure AddSiparisler;
  var
    aSiparis: TUBLSiparis;
  begin
    {
      if qryBagliSiparisler.RecordCount > 0 then
      begin
      UBLFatura.Siparisler := TSiparisler.Create;
      qryBagliSiparisler.First;
      while Not qryBagliSiparisler.EOF do
      begin
      aSiparis := TUBLSiparis.Create;
      aSiparis.EvrakNo := qryBagliSiparisler.FieldByName('DOCUMENTNO').AsString;
      aSiparis.Tarih := qryBagliSiparisler.FieldByName('TRANSDATE').AsDateTime;
      UBLFatura.Siparisler.Add(aSiparis);
      qryBagliSiparisler.Next;
      end;
      end;
      ]- }
  end;
{$ENDREGION}

var
  HangiSenaryo: TFaturaSenaryo;
  // AdrData : TDataClass;
  UBLFatura: TUblFatura;
  UID: string;

begin // begin MakeInvoiceUBL
  HangiSenaryo := GetSenaryoEnumValue(FaturaSenaryo);
  if (Ord(HangiSenaryo) < 0) then
    raise Exception.Create('Senaryo Algýlanamadý.');

  // Ýhracat faturalarýnda Teslim Adresi ÖNEMLÝ sorunlu
  {
    if HangiSenaryo in [IHRACAT,YOLCUBERABERFATURA] then
    begin
    AdrData := GetData('SELECT top 1 ADDRESS1,ADDRESS2,ADDRESS3,POSTALCODE,TOWN,CITY,COUNTRY FROM VE_GLBADDRESS '+
    'WHERE GLBADDRESSID ='+QuotedStr(qryBaslik.FieldByName('DELIVERYADDRESSID').AsString),MainConnection);
    if Assigned(AdrData) and (AdrData.RecordCount>0) then
    begin
    TeslimAdresi := TAddress.Create;
    TeslimAdresi.BuildingName := VarToStr(AdrData['ADDRESS1']);
    TeslimAdresi.BuildingNumber := VarToStr(AdrData['ADDRESS2']);
    TeslimAdresi.StreetName := VarToStr(AdrData['ADDRESS3']);
    TeslimAdresi.CitySubdivisionName := VarToStr(AdrData['TOWN']);
    TeslimAdresi.CityName := VarToStr(AdrData['CITY']);
    TeslimAdresi.PostalZone := VarToStr(AdrData['POSTALCODE']);
    TeslimAdresi.CountryName := VarToStr(AdrData['COUNTRY']);
    end
    else
    begin
    if Assigned(AdrData) then
    AdrData.Free;
    raise Exception.Create('Ýhracat veya Yolcu Beraber Faturalarýn Teslimat adresi zorunludur'+__+'Ýlgili Faturayý düzenleyiniz');
    end;
    end;
  }

  UBLFatura := TUblFatura.Create(Application);

  UBLFatura.ProviderName := ''; // Provider.Provider;

  UID := UBLFatura.ettn;

  {
    if (MethodClass = mc_eArchive) then
    FaturaClass := 'eArsiv'
    else
  }
  FaturaClass := 'eFatura';

  // IrsaliyeSiparisReQuery;

  UBLFatura.isEArchive := False; // (MethodClass = mc_eArchive);
  {
    qryAct.Close;
    qryAct.SQL.Text := 'SELECT * FROM ACT WHERE COMPANYID = ' + frmFinansLib.CompanyId.ToString + ' AND ACTID = ' +
    qryBaslik.FieldByName('ACTID').AsString;
    qryAct.Open;

    DNDBRequery(qryCompany, frmFinansLib.CompanyId);
  }
  CurrExc := 1; // qryBaslik.FieldByName('CURREXC').AsFloat;
  UBLFatura.CurrExchange := CurrExc;
  UBLFatura.Tarih := Now; // qryBaslik['TRANSDATE']; //Date;
  UBLFatura.Saat := Now; // qryBaslik.FieldByName('INSERTDATE').AsDateTime;

  UBLFatura.No := 'FAT2019000000011'; // qryBaslik['RECEIPTNO']; //txNo.Text;

  // TEMELFATURA, TICARIFATURA, IHRACAT, YOLCUBERABERFATURA
  { }
  UBLFatura.Senaryo := GetSenaryoEnumValue(FaturaSenaryo); // TFaturaSenaryo(GetEnumValue(TypeInfo(TFaturaSenaryo), cbProfileID.Items[cbProfileID.ItemIndex]));
  { }
  UBLFatura.isEIhracat := (UBLFatura.Senaryo in [IHRACAT, YOLCUBERABERFATURA]);

  if (UBLFatura.Senaryo in [IHRACAT, YOLCUBERABERFATURA]) then
    UBLFatura.Tipi := ISTISNA
  else
    // SATIS, IADE, TEVKIFAT, ISTISNA, OZELMATRAH, IHRACKAYITLI
    UBLFatura.Tipi := SATIS; // GetFaturaTipiFromName(GetFaturaTip(qryBaslik));

  // UBLfatura.Tipi := TFaturaTipi(GetEnumValue(TypeInfo(TFaturaTipi),cbInvoiceType.Items[cbInvoiceType.ItemIndex]));
  UBLFatura.BelgeParaBirimi := 'TRY'; // GetCurrUniCode(qryBaslik['CURRCODE']);
  // UBLfatura.BelgeParaBirimi := 'TRY';

  // Alýcý
  UBLFatura.Alici := TMuhatap.Create('Alýcý', UBLFatura);

  AddMuhatap(UBLFatura.Alici);

  UBLFatura.Gonderici := TMuhatap.Create('Gönderici', UBLFatura);
  AddMuhatap(UBLFatura.Gonderici);

  if (UBLFatura.Senaryo in [IHRACAT, YOLCUBERABERFATURA]) then
  begin
    UBLFatura.Gümrük_Müsteþarlýðý := TMuhatap.Create('Gümrük', UBLFatura);
    AddMuhatap(UBLFatura.Gümrük_Müsteþarlýðý);
  end;

  // UBLFatura kalemleri

  UBLFatura.Kalemler := TKalemler.Create;
  AddKalem(UBLFatura);
  // baþlýk vergileri manuel de atanabilir

  {
    if Assigned(TeslimAdresi) then
    TeslimAdresi.Free;
  }

  UBLFatura.BaslikVergileriHesapla;

{$REGION FATURA_ALTOPLAM}
  // Tevkivat varsa ekle
  { ---------------- }
  { TODO -o -cUBL Fatura : UBL Fatura Tevkifat bakýlacak V1 }
  if UBLFatura.Tipi = TFaturaTipi.TEVKIFAT then
  begin
    TakeUpOran := 1; // (qryBaslik.FieldByName('TAKEUPMULT').AsFloat * 100) / qryBaslik.FieldByName('TAKEUPDIV').AsFloat;

    UBLFatura.Tevkifat := TVergi.Create('650', 'Diðerleri'); // TaxTypeCode Name
    UBLFatura.Tevkifat.isTevkifat := True;
    UBLFatura.Tevkifat.Matrah := 1; // qryBaslik.FieldByName('VATSUM').AsFloat / CurrExc; //TaxableAmount
    UBLFatura.Tevkifat.Tutar := 1; // qryBaslik.FieldByName('TAKEUPTAXSUM').AsFloat / CurrExc; //TaxAmount
    UBLFatura.Tevkifat.Oran := 1; // TakeUpOran; //Percent
  end;
  { ------------ }
  if (UBLFatura.Vergiler.ToplamVergi = 0) then
  begin
    Muafiyet := 'Diðerleri';
    MuafiyetCode := '350';
    {
      Muafiyet := GetMuafiyetString(qryBaslik);

      if Muafiyet = '' then
      begin
      Muafiyet := TrimLeft(TrimRight(qryBaslik.FieldByName('DESCRIPTION2').AsString));
      MuafiyetCode := '350';
      end else begin
      MuafiyetCode := qryBaslik.FieldByName('EXCLUDEREASON').AsString
      end;
      if Muafiyet = '' then
      begin
      Muafiyet := 'Diðerleri';
      MuafiyetCode := '350';
      end;
    }
    if (UBLFatura.Vergiler.Count = 0) then
    begin
      vergi := TVergi.Create('0015', 'KDV');
      vergi.MuafiyetKodu := MuafiyetCode;
      vergi.MuafiyetAciklama := Muafiyet;
      UBLFatura.Vergiler.Add(vergi)
    end;
  end;

  if UBLFatura.Tipi = TFaturaTipi.TEVKIFAT then
    KalemToplamTutar := 100 // qryBaslik.FieldByName('PRODUCTSUM').AsFloat / CurrExc //MalToplam
  else
    KalemToplamTutar := 100; // qryBaslik.FieldByName('PRODUCTSUMOUTVAT').AsFloat / CurrExc; //MalToplam

  VergilerToplam := 20; // qryBaslik.FieldByName('VATSUM').AsFloat / CurrExc;
  VergiHaricTutar := KalemToplamTutar; // MalToplam  [PRODUCTSUM]   / CurrEx
  // v1. VergiDahilTutar := KalemToplamTutar + VergilerToplam; //Toplam [TOTAL] veya [CURRTOTAL]  CURRTOTAL zaten / CurrEx
  // v2. VergiDahilTutar :=  qryBaslik.FieldByName('TOTAL').AsFloat / CurrExc;
  // v3.
  VergiDahilTutar := 120; // qryBaslik.FieldByName('CURRTOTAL').AsFloat;
  ToplamIndirim := 0; // qryBaslik.FieldByName('DISCOUNTSUM').AsFloat / CurrExc; //Ýskonto Toplam [DISCOUNTSUM]  / CurrEx

  OdenecekTutar := 120; // qryBaslik.FieldByName('CURRTOTAL').AsFloat; //Toplam [TOTAL] veya [CURRTOTAL]  CURRTOTAL zaten / CurrEx

{$ENDREGION}
  {
    if UBLFatura.Senaryo in [IHRACAT,YOLCUBERABERFATURA] then
    begin // IHRACAT Faturasý olduðu için...
    //VergiHaricTutar := KalemToplamTutar;
    VergiDahilTutar := KalemToplamTutar;
    end;
  }

  UBLFatura.KalemToplamTutar := KalemToplamTutar; // LineExtensionAmount
  UBLFatura.VergiHaricTutar := VergiHaricTutar; // TaxExclusiveAmount
  UBLFatura.VergiDahilTutar := VergiDahilTutar; // TaxInclusiveAmount
  UBLFatura.ToplamIndirim := ToplamIndirim; // AllowanceTotalAmount
  UBLFatura.OdenecekTutar := OdenecekTutar; // PayableAmount

  // Ýrsaliyeler varsa ekle
  AddIrsaliyeler;

  // Satýþ Sipariþleri varsa ekle
  AddSiparisler;

  UBLFatura.Notlar := TStringList.Create;
  // SplitNoteToStringList(qryBaslik.FieldByName('NOTES').AsString, UBLFatura.Notlar);
  for i := 0 to UBLFatura.Notlar.Count - 1 do
  begin
    // UBLFatura.Notlar[i] := StringToXmlString(UBLFatura.Notlar[i]);
  end;
  {
    if UBLFatura.Tipi=IHRACKAYITLI then
    begin
    UBLFatura.Notlar.Insert(0,'Ýhracat Nedeni : '+GetIhracatKayitString(qryBaslik));
    end;

    UBLFatura.Notlar.Insert(0, 'YALNIZ ' + frmFinansLib.TotalToStrParaBirim(OdenecekTutar, qryBaslik.FieldByName('CURRCODE').AsString));


    CBank_ := SqlLib.GetData('SELECT * FROM COMPANYBANK WHERE COMPANYID='+SCompanyId,frmFinansLib.dbglobal);
    if Assigned(CBank_) and (CBank_.RecordCount>0) then
    begin
    CBank_.First;
    UBLFatura.Notlar.Insert(0,'');
    while Not CBank_.Eof do
    begin
    UBLFatura.Notlar.Insert(0,'BANKA: '+ CBank_.FieldByName('BANKA_ADI').AsString +' Þube:'+CBank_.FieldByName('SUBE_ADI').AsString +
    //CBank_.FieldByName('BANKA_NO').AsString +'!'+CBank_.FieldByName('SUBE_NO').AsString +'!'+
    ' Hesap No: '+ CBank_.FieldByName('BANKCODE').AsString+
    ' (IBAN: '+CBank_.FieldByName('IBAN_NO').AsString+') ('+CBank_.FieldByName('CURRCODE').AsString+')');
    CBank_.Next;
    end;
    end;

    FreeAndNil(CBank_);

  }

  {
    UBLFatura.ÞirketLogosuEkle(GetLogo_COMPANY);
    UBLFatura.ÞirketÝmzaResmiEkle(GetSignLogo_COMPANY);
  }

  XmlBelge := CreateUBLFatura(UBLFatura, FaturaClass);

  UBLFatura.Vergiler.Destroy;
  UBLFatura.Kalemler.Destroy;
  UBLFatura.Notlar.Free;
  UBLFatura.Free;
  UBLFatura := NIL;
  Result := XmlBelge;

  // 04-07-2017 M.Yaðmur Faturanýn XML halini Her durumda Kaydedlim.
  TextSaveToFile(XmlBelge, ProgramPath + '\XmlOut' + '\' + UID + '.xml', TEncoding.UTF8);

  // ....
  // ....
  // ....
end;

// Decimal oluþtur
function CreateDecimal(dec: Extended): TXSDecimal;
var
  s: string;
begin
  Result := TXSDecimal.Create;
  Result.AsBcd := dec;
end;

// xml yükleme
function LoadFileToStr(const FileName: TFileName): String;
var
  FileStream: TFileStream;
  Bytes: TBytes;

begin
  Result := '';
  FileStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    if FileStream.Size > 0 then
    begin
      SetLength(Bytes, FileStream.Size);
      FileStream.Read(Bytes[0], FileStream.Size);
    end;
    Result := TEncoding.ASCII.GetString(Bytes);
  finally
    FileStream.Free;
  end;
end;

function TUTF8EncodingWithoutBOM.Clone: TEncoding;
begin
  Result := TUTF8EncodingWithoutBOM.Create;
end;

function TUTF8EncodingWithoutBOM.GetPreamble: TBytes;
begin
  Result := nil;
end;

procedure TForm1.btnCheckUserByTitleClick(Sender: TObject);
var
  RIO: THTTPRIO;
  Request: EFaturaService.CheckUserRequest;
  Response: EFaturaService.CheckUserResponse;
  KullaniciListesi: CheckUser;
  Ticks: Cardinal;
  I: Integer;

  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;
begin
  Memo1.Clear();
  Ticks := GetTickCount();
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);

  try
    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Kullanýcý Giriþi Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
      Edit1.Text := OturumID;
    end;

    if OturumID <> '' then
      try
        KullaniciListesi := CheckUser.Create();
        KullaniciListesi.CheckUserRequest := CheckUserRequest.Create();
        KullaniciListesi.CheckUserRequest.USER := GIBUSER.Create();
        KullaniciListesi.CheckUserRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;
        KullaniciListesi.CheckUserRequest.REQUEST_HEADER.SESSION_ID := OturumID;
        KullaniciListesi.CheckUserRequest.USER.TITLE := KullaniciBasligi.Text;
      except
        on ExcLogCev001: Exception do
        begin
          Log('** Hata ExcLogCev001 : ' + ExcLogCev001.Message);
        end;
      end;

    try
      Log('*** KULLANCILAR***');
      Log('BÝLGÝ: Bu iþlem zaman alabilir.');
      Response := GetEFaturaServiceSoap().CheckUser(KullaniciListesi);
    except
      on E: Exception do
      begin
        Log('HATA - KULLANCILAR: ' + E.Message);
        Exit();
      end;
    end;

    Log('KULLANICI DETAY:');
    for I := Low(Response.CheckUserResult) to High(Response.CheckUserResult) do
    begin
      Log('ID: ' + Response.CheckUserResult[I].IDENTIFIER + ', ALIAS: ' + Response.CheckUserResult[I].ALIAS + ', TITLE: ' + Response.CheckUserResult[I].TITLE);
    end;
    Log('Toplam kullanýcý listelendi: ' + FormatFloat('#,##0 ad', Length(Response.CheckUserResult)));
  finally
    for I := Low(Response.CheckUserResult) to High(Response.CheckUserResult) do
    begin
      Response.CheckUserResult[I].Free();
    end;

    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;
end;

procedure TForm1.SaveInvoice(const AInvoice: INVOICE);
var
  Xml: string;
  InboxFilename: string;
begin
  if not TDirectory.Exists(InboxDir) then
  begin
    Log('HATA: Gelen kutusu dizini mevcut deðil!');
    Exit();
  end;

  Xml := TEncoding.UTF8.GetString(AInvoice.CONTENT.Text);

  InboxFilename := TPath.Combine(InboxDir, AInvoice.ID + '.xml');

  TFile.WriteAllText(InboxFilename, Xml, MyEncoding);
end;

procedure TForm1.TumeEitleriTemizle;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TEdit) and (Components[i].Tag = 125) then
      TEdit(Components[i]).Text := '';
end;

function ToByteDynArray(const B: TBytes): TByteDynArray; inline;
var
  len: Integer;
begin
  len := Length(B);
  SetLength(Result, len);
  Result := TByteDynArray(B);
end;

procedure TForm1.btnGetInvoicesClick(Sender: TObject);
var
  RIO: THTTPRIO;
  Ticks: Cardinal;
  I: Integer;
  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;
  Sorgu: GetInvoice;

  InvoiceSearchKey: INVOICE_SEARCH_KEY2;
  GetInvoiceRes: GetInvoiceResponse;
  SDate: TXSDate;
  FDate: TXSDate;

begin
  Memo1.Clear();
  Ticks := GetTickCount();
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);

  try

    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Kullanýcý Giriþi Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
      Edit1.Text := OturumID;
    end;

    if OturumID <> '' then
      try
        Sorgu := GetInvoice.Create();
        Sorgu.GetInvoiceRequest := GetInvoiceRequest.Create();
        Sorgu.GetInvoiceRequest.REQUEST_HEADER := ReqHeader.Create();
        Sorgu.GetInvoiceRequest.REQUEST_HEADER.SESSION_ID := OturumID;
        Sorgu.GetInvoiceRequest.REQUEST_HEADER.COMPRESSED := 'N';

        InvoiceSearchKey := INVOICE_SEARCH_KEY2.Create();
        InvoiceSearchKey.ID := 'PRK2017000003026';
        InvoiceSearchKey.UUID := 'F437195F-3847-48AF-9033-1FD8A6E1AC4E';
        InvoiceSearchKey.READ_INCLUDED := False;
        InvoiceSearchKey.DIRECTION := 'IN';
        Sorgu.GetInvoiceRequest.INVOICE_SEARCH_KEY := InvoiceSearchKey.Create();

        Sorgu.GetInvoiceRequest.HEADER_ONLY := 'N';

      except
        on GetInvoiceRequest_ExcLogCev001: Exception do
        begin
          Log('** Hata GetInvoiceRequest_ExcLogCev001 : ' + GetInvoiceRequest_ExcLogCev001.Message);
        end;
      end;

    try
      Log('*** FATURA GÖNDER ***');
      GetInvoiceRes := Servis.GetInvoice(Sorgu);
    except
      on GetInvoices_ExcLogCev001: Exception do
      begin
        Log('Hata-GetInvoices_ExcLogCev001:' + GetInvoices_ExcLogCev001.Message);
        Exit();
      end;
    end;

    if Assigned(GetInvoiceRes) then
    begin
      Log('Fatutalar:');
      if Length(GetInvoiceRes.GetInvoiceResult) > 0 then
      begin
        for I := Low(GetInvoiceRes.GetInvoiceResult) to High(GetInvoiceRes.GetInvoiceResult) do
        begin
          SaveInvoice(GetInvoiceRes.GetInvoiceResult[I]);
          Log('ID: ' + GetInvoiceRes.GetInvoiceResult[I].ID + ', UUID: ' + GetInvoiceRes.GetInvoiceResult[I].UUID + ', Date: ' + GetInvoiceRes.GetInvoiceResult[I]
            .HEADER.ISSUE_DATE.NativeToXS());
        end;
      end
      else
      begin
        Log('Yeni Fatura Yok');
      end;
    end
    else
    begin
      Log('Yeni Fatura Yok');
    end;
  finally

    if Length(GetInvoiceRes.GetInvoiceResult) > 0 then
    begin
      for I := Low(GetInvoiceRes.GetInvoiceResult) to High(GetInvoiceRes.GetInvoiceResult) do
        GetInvoiceRes.GetInvoiceResult[I].Free();
    end;

    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;
end;

procedure TForm1.btnGetInvoicesSentClick(Sender: TObject);
var
  RIO: THTTPRIO;
  FaturaListesi: EFaturaService.GetInvoice;
  InvoiceSearchKey: INVOICE_SEARCH_KEY2;
  GetInvoiceRes: EFaturaService.GetInvoiceResponse;
  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;
  I: Integer;
  Ticks: Cardinal;
begin
  Memo1.Clear();
  Ticks := GetTickCount();
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);

  try
    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Giriþ Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
      Edit1.Text := OturumID;
    end;

    if OturumID <> '' then
      try
        FaturaListesi := GetInvoice.Create();
        FaturaListesi.GetInvoiceRequest := GetInvoiceRequest.Create;
        FaturaListesi.GetInvoiceRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;
        FaturaListesi.GetInvoiceRequest.REQUEST_HEADER.SESSION_ID := OturumID;

        FaturaListesi.GetInvoiceRequest.INVOICE_SEARCH_KEY := INVOICE_SEARCH_KEY2.Create();

      except
        on GetInvoices_ExcLogCev001: Exception do
        begin
          Log('** Hata - E-Fatura Okuma - Get Invoices Exc Log Cev 001 : ' + GetInvoices_ExcLogCev001.Message);
        end;
      end;

    try
      Log('*** E-Fatura Okuma***');
      GetInvoiceRes := GetEFaturaServiceSoap().GetInvoice(FaturaListesi);
    except
      on GetInvoices_ExcLogCev002: Exception do
      begin
        Log('Hata- E-Fatura Okuma - Get Invoices Exc Log Cev 001 :  ' + GetInvoices_ExcLogCev002.Message);
        Exit();
      end;
    end;

    if Assigned(GetInvoiceRes) then
    begin
      Log('E-Fatura Oku:');
      if Length(GetInvoiceRes.GetInvoiceResult) > 0 then
      begin
        for I := Low(GetInvoiceRes.GetInvoiceResult) to High(GetInvoiceRes.GetInvoiceResult) do
        begin
          Log('ID: ' + GetInvoiceRes.GetInvoiceResult[I].ID + ', UUID: ' + ' | ' + GetInvoiceRes.GetInvoiceResult[I].UUID + ', Date: ' + ' | ' + GetInvoiceRes.GetInvoiceResult[I]
            .HEADER.ISSUE_DATE.NativeToXS() + ' | ' + GetInvoiceRes.GetInvoiceResult[I].HEADER.Sender + ' | ' + GetInvoiceRes.GetInvoiceResult[I].HEADER.RECEIVER + ' | ' +
            GetInvoiceRes.GetInvoiceResult[I].HEADER.SUPPLIER + ' | ' + GetInvoiceRes.GetInvoiceResult[I].HEADER.CUSTOMER + ' | ' + GetInvoiceRes.GetInvoiceResult[I].HEADER.FROM + '| ' +
            GetInvoiceRes.GetInvoiceResult[I].HEADER.TO_ + ' | ' + GetInvoiceRes.GetInvoiceResult[I].HEADER.PROFILEID + '  ' + GetInvoiceRes.GetInvoiceResult[I].HEADER.INVOICE_TYPE_CODE);
        end;
      end
      else
      begin
        Log('E-Fatura Yok');
      end;
    end
    else
    begin
      Log('E-Fatura Yok');
    end;
  finally

    if Length(GetInvoiceRes.GetInvoiceResult) > 0 then
    begin
      for I := Low(GetInvoiceRes.GetInvoiceResult) to High(GetInvoiceRes.GetInvoiceResult) do
        GetInvoiceRes.GetInvoiceResult[I].Free();
    end;

    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;
end;

procedure TForm1.btnSendInvoiceClick(Sender: TObject);
var
  Servis: EFaturaService.EFaturaServiceSoap;
  FaturaGonder: EFaturaService.SendInvoice;
  FaturaGonder_Cevap: EFaturaService.SendInvoiceResponse;

  sGUID: string;
  fatura: EFaturaService.INVOICE;
  Faturalar: EFaturaService.ArrayOfINVOICE;
  vGuid: TGUID;
  nxGonderiTarihi: TXSDate;
  FaturaTutar: TXSDecimal;

  faturaXML_text: UTF8String;
  faturaXML_bin: TBytes;
  faturaBase64: EFaturaService.base64Binary;
begin
  Memo1.Clear();
  //
  OturumId_Olustur;
  if OturumID <> '' then
  begin
    CreateGuid(vGuid);
    sGUID := GUIDToString(vGUID); // GUID burada oluþturuluyor
    sGUID := StringReplace(StringReplace(sGUID, '{', '', [rfReplaceAll]), '}', '', [rfReplaceAll]);
    Servis := GetEFaturaServiceSoap(True, '', faturaHTTPRIO);
    FaturaGonder := EFaturaService.SendInvoice.Create;
    FaturaGonder.SendInvoiceRequest := EFaturaService.SendInvoiceRequest.Create;

    // Fatura Gönderici Bilgileri (Yani ben)
    FaturaGonder.SendInvoiceRequest.Sender := EFaturaService.Sender.Create;
    FaturaGonder.SendInvoiceRequest.Sender.vkn := edtSenderVkn.Text; // '7210452742' ; // Gönderici vergi KimlikNo

    FaturaGonder.SendInvoiceRequest.Sender.alias := edtSenderGB.Text; // 'urn:mail:defaultgb@parkentegrasyon.com.tr'; // Gönderici Alias;

    // Fatura Alýcýsý Bilgileri
    FaturaGonder.SendInvoiceRequest.RECEIVER := EFaturaService.RECEIVER.Create;
    FaturaGonder.SendInvoiceRequest.RECEIVER.vkn := edtReceiverVkn.Text; // Alýcý vergi KimlikNo
    FaturaGonder.SendInvoiceRequest.RECEIVER.alias := edtReceiverPK.Text; // 'urn:mail:defaultpk@parkentegrasyon.com.tr'; // Alýcý Alias

    // Fatura Gönderim Header oluþtur
    FaturaGonder.SendInvoiceRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;
    FaturaGonder.SendInvoiceRequest.REQUEST_HEADER.SESSION_ID := OturumID;
    FaturaGonder.SendInvoiceRequest.REQUEST_HEADER.COMPRESSED := 'N';

    fatura := INVOICE.Create;
    fatura.ID := editFaturaNo.Text; // 'PRE0002018005' ; // Fatura Evrak Numarasý
    fatura.UUID := sGUID; // Oluþan GUID deðeri herzaman tekil olmalýdýr
    fatura.LIST_ID := 1;
    fatura.HEADER := EFaturaService.HEADER2.Create;
    fatura.HEADER.PROFILEID := cmbProfil.Text; // 'TEMELFATURA';
    fatura.HEADER.Sender := editSenderUnvan.Text; // 'Benden gidiyor';
    fatura.HEADER.RECEIVER := editReceiverUnvan.Text; // 'Alýcý Ünvaný sanýrým Park Entegrasyon';

    nxGonderiTarihi := TXSDate.Create;

    // nxGonderiTarihi.AsDate := StringToDate('2019-01-03');  //Belirli Tarig gönderim
    nxGonderiTarihi.AsDate := Now; // Þu an gönderdim

    fatura.HEADER.ISSUE_DATE := nxGonderiTarihi;
    fatura.HEADER.PAYABLE_AMOUNT := AmountType.Create;
    fatura.HEADER.PAYABLE_AMOUNT.currencyID := editCURR.Text; // 'TRY';
    FaturaTutar := CreateDecimal(12345.01); // Decimal olmalýdýr

    fatura.HEADER.PAYABLE_AMOUNT.Text := FaturaTutar;
    fatura.HEADER.INVOICE_TYPE_CODE := cmbTipi.Text; // 'SATIS';

    // UBL Fatura standardýndan

    faturaXML_text := '<xml 1.0?>' + __ + '<faturayý_burda_text_olarak>' + __ + '<olusturabilirsin>';
    faturaXML_text := MakeInvoiceUBL(123, '7210452742', 'defaultpk@parkentegrasyon.com.tr', cmbProfil.Text);

    faturaXML_bin := StringToBytes(faturaXML_text);
    faturaBase64 := EFaturaService.base64Binary.Create;
    faturaBase64.Text := BytesToDynArray(faturaXML_bin);

    fatura.CONTENT := faturaBase64;
    // ------------------------------------

    SetLength(Faturalar, 1); // Tek Fatura gidecek
    Faturalar[0] := fatura;
    FaturaGonder.SendInvoiceRequest.INVOICE := Faturalar;
    try
      Log('E-Fatura Gönder');
      FaturaGonder_Cevap := Servis.SendInvoice(FaturaGonder);
      if FaturaGonder_Cevap.SendInvoiceResult.REQUEST_RETURN.RETURN_CODE = 0 then
        Log('Gönderi Baþarýlý (' + sGUID + ')')
      else
      begin
        Log('Gönderme iþlemi baþarýsýz ' + FaturaGonder_Cevap.SendInvoiceResult.REQUEST_RETURN.RETURN_CODE.ToString + ' ' +
          ArrToString(FaturaGonder_Cevap.SendInvoiceResult.REQUEST_RETURN.WARNINGS));
      end;
    except
      on ExFGubl002: Exception do
      begin

        Log('ExFGubl002 :' + ExFGubl002.Message);
      end;
    end;
  end;
end;

procedure TForm1.btnSendServerResponseAcceptClick(Sender: TObject);
var

  RIO: THTTPRIO;
  Sorgu: EFaturaService.SendInvoiceResponseWithServerSign;
  Cevap: SendInvoiceResponseWithServerSignResponse;
  AInvoice: SendInvoiceResponseWithServerSignRequest;
  InvoiceList: INVOICE;
  Ticks: Cardinal;

  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;
  RecordCount: integer;
begin
  Memo1.Clear();
  Ticks := GetTickCount();
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);

  Sorgu := nil;
  Cevap := nil;

  freeandnil(Sorgu);

  (*
    gonder.Istek := ArrayOfBildirimKayitIstek2.Create; // Create ettik.
    gonder.Istek.SetBildirimKayitIstek2ArrayLength(1); // Dizinin uzunluðunu kendi methodunu kullanarak verdik.
    gonder.Istek.SetBildirimKayitIstek2Array(0, istk); // Diziyi yine kendi methodu ile doldurduk.
  *)

  Sorgu.SendInvoiceResponseWithServerSignRequest := SendInvoiceResponseWithServerSignRequest.Create(); // Create ettik.
  Sorgu.SendInvoiceResponseWithServerSignRequest.INVOICE[1].HEADER.ToString; // Dizinin uzunluðunu kendi methodunu kullanarak verdik.
  // Sorgu.SendInvoiceResponseWithServerSignRequest.(0, 1); // Diziyi yine kendi methodu ile doldurduk.

  try
    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Kullanýcý Giriþi Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
      Edit1.Text := OturumID;
    end;

    if OturumID <> '' then
      try
        Sorgu := SendInvoiceResponseWithServerSign.Create();
        Sorgu.SendInvoiceResponseWithServerSignRequest := SendInvoiceResponseWithServerSignRequest.Create();
        Sorgu.SendInvoiceResponseWithServerSignRequest.REQUEST_HEADER := REQUEST_HEADERType.Create();
        Sorgu.SendInvoiceResponseWithServerSignRequest.REQUEST_HEADER := ReqHeader.Create();

        Sorgu.SendInvoiceResponseWithServerSignRequest.REQUEST_HEADER.SESSION_ID := OturumID;
        Sorgu.SendInvoiceResponseWithServerSignRequest.STATUS := 'KABUL';

        AInvoice := SendInvoiceResponseWithServerSignRequest.Create();

      except
        on SendInvoiceResponseWithServerSignRequest_ExcLogCev001: Exception do
        begin
          Log('** Hata SendInvoiceResponseWithServerSignRequest_ExcLogCev001 : ' + SendInvoiceResponseWithServerSignRequest_ExcLogCev001.Message);
        end;
      end;

    try
      Log('*** Fatura Kabul Edildi***');
      Cevap := Servis.SendInvoiceResponseWithServerSign(Sorgu); // alan çaðýrmasý sorunlu
    except
      on E: Exception do
      begin
        Log('HATA - Sunucu Ýþaretiyle Fatura Yanýtý Gönder: ' + E.Message);
        Exit();
      end;
    end;

    Log('Cevap: ' + Cevap.SendInvoiceResponseWithServerSignResult.ToString());

  finally
    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  RIO: THTTPRIO;
  Response: EFaturaService.CheckUserResponse;
  KullaniciListesi: CheckUser;
  Ticks: Cardinal;
  I: Integer;
  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;

begin
  Memo1.Clear();
  Ticks := GetTickCount();
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);

  try

    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Giriþ Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
      Edit1.Text := OturumID;
    end;

    if OturumID <> '' then
      try

        KullaniciListesi := CheckUser.Create();
        KullaniciListesi.CheckUserRequest := CheckUserRequest.Create();
        KullaniciListesi.CheckUserRequest.USER := GIBUSER.Create();
        KullaniciListesi.CheckUserRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;
        KullaniciListesi.CheckUserRequest.REQUEST_HEADER.SESSION_ID := OturumID;
        KullaniciListesi.CheckUserRequest.USER.IDENTIFIER := edtUserID.Text;

      except
        on ExcLogCev001: Exception do
        begin
          Log('** Hata Kullanýcý listesi - ExcLogCev001 : ' + ExcLogCev001.Message);
        end;
      end; //

    try
      Log('*** Kullanýcý Listesi***');
      Response := GetEFaturaServiceSoap().CheckUser(KullaniciListesi);
    except
      on E: Exception do
      begin
        Log('HATA - Kullanýcý listesi: ' + E.Message);
        Exit();
      end;
    end;

    Log('Kullanýcý Detaylarý:');
    for I := Low(Response.CheckUserResult) to High(Response.CheckUserResult) do
    begin
      Log('ID: ' + Response.CheckUserResult[I].IDENTIFIER + ', ALIAS: ' + Response.CheckUserResult[I].ALIAS + ', TITLE: ' + Response.CheckUserResult[I].TITLE);
    end;
  finally
    for I := Low(Response.CheckUserResult) to High(Response.CheckUserResult) do
    begin
      Response.CheckUserResult[I].Free();
    end;

    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var

  WS: EFaturaServiceSoap;
  LogoutRes: LogoutResponse;
  LoginReq: LoginRequest;
  LoginRes: LoginResponse;
  LoginN: Login;
  LogOutT: Logout;
  RIO: THTTPRIO;

begin
  Memo1.Clear();

  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';

  LoginRes := nil;
  LoginN := Login.Create;
  LogOutT := Logout.Create;
  LoginReq := LoginRequest.Create();

  // WS := GetEFaturaServiceSoap(False, 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL');
  // WS := (RIO as EFaturaServiceSoap);
  // WS := GetEFaturaServiceSoap(false, '', nil);

  WS := GetEFaturaServiceSoap(False, '');

  try
    LoginN.username := '01/2019';
    LoginN.password := '01/2019';
    LoginRes := WS.Login(LoginN);

    LogOutT.SessionId := LoginRes.LoginResult.SessionId;

    if LogOutT.SessionId <> '' then
    begin
      try
        LogoutRes := WS.Logout(LogOutT);
        Log('*** ÇIKIÞ ***');
        Log('Çýkýþ Cevabý: ' + 'Çýkýþ Baþarýlý: ' + LogoutRes.LogoutResult.ToString);
        // ShowMessage('Çýkýþ Baþarýlý: ' + LogOutRes.LogoutResult.ToString);

      except
        on E: Exception do
        begin
          Log('*** ÇIKIÞ ***');
          Log('Çýkýþ Cevabý: ' + 'Çýkýþ Baþarýsýz: ');
          // ShowMessage('Çýkýþ Baþarýsýz')
        end;
      end;
    end;

  finally

    if Assigned(LogOutT) then
      LogOutT.DisposeOf;

    if Assigned(LogoutRes) then
      LogoutRes.DisposeOf;

    if Assigned(LoginN) then
      LoginN.DisposeOf;

    WS := nil;

  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Ticks: Cardinal;
  RIO: THTTPRIO;
  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;

begin

  Memo1.Clear();
  Ticks := GetTickCount();
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);
  try
    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
        Edit1.Text := OturumID;
        Log('** Giriþ Baþarýlý : ' + LoginCevap.LoginResult.SessionId);
      end
      else
      begin
        OturumID := '';
        Log('** Giriþ Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;

    end;
  finally
    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  FaturaTipleri: EFaturaService.GetInvoiceWithType;
  Response: GetInvoiceWithTypeResponse;

  RIO: THTTPRIO;
  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;
  I: Integer;
  Ticks: Cardinal;
begin
  Memo1.Clear();
  Ticks := GetTickCount();
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);

  try
    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Login Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
      Edit1.Text := OturumID;
    end;

    if OturumID <> '' then
      try
        FaturaTipleri := GetInvoiceWithType.Create();
        FaturaTipleri.GetInvoiceWithTypeRequest := GetInvoiceWithTypeRequest.Create;
        FaturaTipleri.GetInvoiceWithTypeRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;
        FaturaTipleri.GetInvoiceWithTypeRequest.INVOICE_SEARCH_KEY := INVOICE_SEARCH_KEY.Create();

        FaturaTipleri.GetInvoiceWithTypeRequest.REQUEST_HEADER.SESSION_ID := OturumID;
        FaturaTipleri.GetInvoiceWithTypeRequest.REQUEST_HEADER.COMPRESSED := 'N';
        FaturaTipleri.GetInvoiceWithTypeRequest.INVOICE_SEARCH_KEY.TYPE_ := 'XML';
        FaturaTipleri.GetInvoiceWithTypeRequest.INVOICE_SEARCH_KEY.READ_INCLUDED := False;

        FaturaTipleri.GetInvoiceWithTypeRequest.HEADER_ONLY := 'N';

        FaturaTipleri.GetInvoiceWithTypeRequest.INVOICE_SEARCH_KEY.DIRECTION := 'IN';
      except
        on GETINVOICEWITHTYPE: Exception do
        begin
          Log('** Hata GETINVOICEWITHTYPE_ExcLogCev001 : ' + GETINVOICEWITHTYPE.Message);
        end;
      end;

    try
      Log('GETINVOICEWITHTYPE');
      Response := GetEFaturaServiceSoap().GetInvoiceWithType(FaturaTipleri);
    except
      on GETINVOICEWITHTYPE_ExcLogCev001: Exception do
      begin
        Log('Hata- E-Fatura Tipiyle Beraber Getir: ' + GETINVOICEWITHTYPE_ExcLogCev001.Message);
        Exit();
      end;
    end;

    if Assigned(Response) then
    begin
      Log('Faturalar:');
      if Length(Response.GetInvoiceWithTypeResult) > 0 then
      begin
        for I := Low(Response.GetInvoiceWithTypeResult) to High(Response.GetInvoiceWithTypeResult) do
        begin
          Log('ID: ' + Response.GetInvoiceWithTypeResult[I].ID + ', UUID: ' + ' | ' + Response.GetInvoiceWithTypeResult[I].UUID + ', Date: ' + ' | ' + Response.GetInvoiceWithTypeResult[I]
            .HEADER.ISSUE_DATE.NativeToXS() + ' | ' + Response.GetInvoiceWithTypeResult[I].HEADER.Sender + ' | ' + Response.GetInvoiceWithTypeResult[I].HEADER.RECEIVER + ' | ' +
            Response.GetInvoiceWithTypeResult[I].HEADER.SUPPLIER + ' | ' + Response.GetInvoiceWithTypeResult[I].HEADER.CUSTOMER + ' | ' + Response.GetInvoiceWithTypeResult[I].HEADER.FROM +
            '| ' + Response.GetInvoiceWithTypeResult[I].HEADER.TO_ + ' | ' + Response.GetInvoiceWithTypeResult[I].HEADER.PROFILEID + '  ' + Response.GetInvoiceWithTypeResult[I]
            .HEADER.INVOICE_TYPE_CODE);
        end;
      end
      else
      begin
        Log('Fatura Yok');
      end;
    end
    else
    begin
      Log('Fatura Yok');
    end;
  finally

    if Length(Response.GetInvoiceWithTypeResult) > 0 then
    begin
      for I := Low(Response.GetInvoiceWithTypeResult) to High(Response.GetInvoiceWithTypeResult) do
        Response.GetInvoiceWithTypeResult[I].Free();
    end;

    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);

  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  WS: EFaturaServiceSoap;
  LogoutRes: LogoutResponse;
  LoginReq: LoginRequest;
  LoginRes: LoginResponse;
  LoginN: Login;
  LogOutT: Logout;
  RIO: THTTPRIO;

begin
  Memo1.Clear();
  Log(' Çýkýþa gerek Yok. Login de oluþan OTURUMID programýný heryerinde kullanýlýr ve Oturum kendiliðinen kapanýr zaten');
  Exit;
  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';

  LoginRes := nil;
  LoginReq := LoginRequest.Create();
  LoginN := Login.Create;
  LogOutT := Logout.Create;
  // WS := GetEFaturaServiceSoap(False, 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL');
  // WS := (RIO as EFaturaServiceSoap);
  WS := GetEFaturaServiceSoap(False, '', nil);
  try
    LoginN.username := '01/2019';
    LoginN.password := '01/2019';
    LoginRes := WS.Login(LoginN);

    LogOutT.SessionId := LoginRes.LoginResult.SessionId;
    LogoutRes := WS.Logout(LogOutT);

    Log('*** ÇIKIÞ ***');
    Log('Çýkýþ Cevabý: ' + 'Çýkýþ Baþarýlý: ' + LogoutRes.LogoutResult.ToString);

    // ShowMessage('Çýkýþ Baþarýlý: ' + LogOutRes.LogoutResult.ToString);

  finally

    LoginReq.Free();
    LoginRes.Free();
    LoginN.Free();
    LogOutT.Free();
  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Servis: EFaturaService.EFaturaServiceSoap;
  Response: GetUserListResponse;
  KullaniciListesi: GetUserList;

  RIO: THTTPRIO;
  Ticks: Cardinal;
  I: Integer;

  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;

begin
  Memo1.Clear();
  Ticks := GetTickCount();

  RIO := THTTPRIO.Create(nil);
  RIO.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  Servis := GetEFaturaServiceSoap(True, '', RIO);

  try
    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Giriþ Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
      Edit1.Text := OturumID;
    end;

    if OturumID <> '' then
      try // 1
        try // 2

          KullaniciListesi := EFaturaService.GetUserList.Create();
          KullaniciListesi.GetUserListRequest := GetUserListRequest.Create;
          KullaniciListesi.GetUserListRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;
          KullaniciListesi.GetUserListRequest.REQUEST_HEADER.SESSION_ID := OturumID;

        except
          on ExcLogCev001: Exception do
          begin
            Log('** Hata ExcLogCev001 : ' + ExcLogCev001.Message);
          end;
        end; // try 2
      finally

        // Listele

        try
          Log('*** Kullanýcý Listesini Al ***');
          Log('BÝLGÝ: Bu iþlem zaman alabilir. Ortalama yaklaþýk 60 saniye olacaktýr.');
          Response := GetEFaturaServiceSoap().GetUserList(KullaniciListesi);
        except
          on E: Exception do
          begin
            Log('HATA - Kullanýcý Listesini Al: ' + E.Message);
          end;
        end;

        Log('Kullanýcý Listesi:');
        for I := Low(Response.GetUserListResult) to High(Response.GetUserListResult) do
        begin
          Log(InttoStr(i) + '  ' + 'ID: ' + Response.GetUserListResult[I].IDENTIFIER + ', ALIAS: ' + Response.GetUserListResult[I].ALIAS + ', TITLE: ' + Response.GetUserListResult[I].TITLE);
        end;
        Log('Genel Kullanýcý Listesi: ' + FormatFloat('#,##0 ad', Length(Response.GetUserListResult)));

        for I := Low(Response.GetUserListResult) to High(Response.GetUserListResult) do
        begin
          Response.GetUserListResult[I].Free();
        end;

      end; // try 1
  finally
    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;
end;

function TForm1.GenerateFields(const arr: array of string; TargetDs: TDataSet): Integer;
var
  f: TField;
  i: Integer;
  _size: Integer;
  _p: Integer;
  _name, _s: string;
  _t: string;
  _parseList: TStringList;
begin
  Result := 0;

  if Not Assigned(TargetDs) then
    Exit;
  if High(arr) < 0 then
    Exit;

  try
    if TargetDs.FieldCount > 0 then
    begin
      TargetDs.Open;
      TFDMemTable(TargetDs).EmptyDataSet;
      TargetDs.Fields.Clear;
    end;

    if TargetDs.State in [dsBrowse, dsInsert, dsEdit] then
      TargetDs.Close;

    for i := 0 to High(arr) do
    begin
      if TargetDs.FindField(arr[i]) = nil then
      begin
        _parseList := TStringList.Create;
        _parseList.Delimiter := ';';
        _parseList.DelimitedText := arr[i];
        if _parseList.Count > 0 then
          _name := _parseList[0]
        else
          _name := arr[i];
        if _parseList.Count > 1 then
        begin
          _s := _parseList[1];
          if Not TryStrToInt(_s, _size) then
            _size := 24
        end
        else
          _size := 32;
        if _parseList.Count > 2 then
        begin
          _t := _parseList[2];
        end
        else
          _t := 'string';

        if _t = 'memo' then
          f := TMemoField.Create(TargetDs)
        else if _t = 'integer' then
          f := TIntegerField.Create(TargetDs)
        else if _t = 'currency' then
          f := TCurrencyField.Create(TargetDs)
        else

          if _t = 'date' then
          f := TDateField.Create(TargetDs)
        else if _t = 'datetime' then
          f := TDateTimeField.Create(TargetDs)
        else
        begin
          f := TStringField.Create(TargetDs);
          TStringField(f).Size := _size;
        end;

        f.FieldName := _name;
        f.Name := _name;
        f.DataSet := TargetDs;
        // TargetDs.Fields.Add(f);
        Result := Result + 1;
        _parseList.Free;
      end;
    end;
  finally

  end;
end;

function TForm1.MakeLoginParam(const _username, _password: string): EFaturaService.Login;
begin
  Result := Login.Create;
  Result.username := edtUser.Text; // 01/2019
  Result.password := edtPasswd.Text; // 01/2019;
end;

procedure TForm1.MakeMukellefData;
begin
  if Not Assigned(fdMukellef) then
    fdMukellef := TFDMemTable.Create(Self);
  GenerateFields(['TCK_Vergi;16', 'URN_adres;128'], fdMukellef);
end;

procedure TForm1.Make_EFaturaGelenData;
begin
  if Not Assigned(fdGelenFaturaList) then
    fdGelenFaturaList := TFDMemTable.Create(Self);
  GenerateFields(['ID;48', 'UUID;48', 'LISTID;0;integer',
    // <Header
    'SENDER;16', 'RECEIVER;16', 'SUPPLIER;64', 'CUSTOMER;64', 'ISSUE_DATE;12;date', 'PAYABLE_AMOUNT_CURR;4', 'PAYABLE_AMOUNT;12;currency', 'FROM;64', 'TO_;64', 'PROFILEID;24',
    'INVOICE_TYPE_CODE;16', 'STATUS;48', 'STATUS_DESCRIPTION;48', 'GIB_STATUS_CODE;0;integr', 'GIB_STATUS_DESCRIPTION;32', 'RESPONSE_CODE;4', 'RESPONSE_DESCRIPTION;32', 'FILENAME;128',
    'HASH;64', 'CDATE;18;datetime', 'ENVELOPE_IDENTIFIER;64',
    // Header>
    'CONTENT;65535;memo'], fdGelenFaturaList)
end;

type
  tMukellefRec = record
    TC_VergiNo: string;
    Urn: string;
  end;

function ParseMukellef(s: string): tMukellefRec;
begin
  Result.TC_VergiNo := '';
  Result.Urn := '';
  if Pos('-', s) > 0 then
  begin
    Result.TC_VergiNo := Copy(s, 1, Pos('-', s) - 1);
    Result.Urn := Copy(s, Pos('-', s) + 1, 1024);
  end;
end;

procedure TForm1.buttonMukellefListeClick(Sender: TObject);
var
  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;

  MukellefListSorgu: GibUserListTxt;
  MukellefListCevap: GibUserListTxtResponse;
  ListSize, i: Integer;
  // ByteDizi : TBytes;
  MukellefList: TStringList;
  MukellefRec: tMukellefRec;
  s: string;
begin
  if Not Assigned(dsMukellef) then
    dsMukellef := TDataSource.Create(Self);
  dsMukellef.DataSet := NIL;
  gridMukellef.Datasource := dsMukellef;

  MakeMukellefData;
  Screen.Cursor := crHourGlass;
  try // 1

    // Mükellefleri Listele
    // MemoryTable'a al ve Grid'i güncelle
    Servis := GetEFaturaServiceSoap(True, '', faturaHTTPRIO);

    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Login Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
    end;

    Edit1.Text := OturumID;

    if OturumID <> '' then
      try // 2
        try // 3
          MukellefListSorgu := GibUserListTxt.Create;
          MukellefListSorgu.SessionId := OturumID;
          try // 4
            MukellefListCevap := Servis.GibUserListTxt(MukellefListSorgu);
            ListSize := Length(MukellefListCevap.GibUserListTxtResult);
            if ListSize > 0 then
            begin
              // TByteDynArray -> TBytes'a dönüþtürüldü
              // ByteDizi := DynArrayToBytes(MukellefListCevap.GibUserListTxtResult);
              fdMukellef.Open;

              s := ByteDynArrayToString(MukellefListCevap.GibUserListTxtResult);
              if Pos('}', s) > 0 then
                // "2018-12-10 11:23:02.609   Müþteri iþlem kimliði: {F9BAAB9C-AC23-4ECB-9E44-6FE2140E0D4D}" ile baþadýðýndan
                // Bu Bilgiyi siliyoruz.
                Delete(s, 1, Pos('}', s));

              // Daha sonra gelen tüm Verileri önce '&' ayracý ile ayrýþtýrýyoruz.
              // Ýki alaný '-' iþareti ile ayrýþtýrýyoruz
              // 3540025160-urn:mail:defaul@faltd.com örneðine olduðu gibi Tc veya Vergi Tireden önce gelir.
              // urn adresi tireden sonra gelir
              MukellefList := TStringList.Create;
              if Not Assigned(fdMukellef) then
                fdMukellef := TFDMemTable.Create(Self);
              fdMukellef.EmptyDataSet;
              fdMukellef.EmptyView;

              try
                MukellefList.Delimiter := '&';
                MukellefList.DelimitedText := s;
                for i := 0 to MukellefList.Count - 1 do
                begin
                  // s := MukellefList[i];
                  // S deðerini Yeniden Parse et '-' ile ayrýþtýr ve MemoDataya aktar;
                  MukellefRec := ParseMukellef(MukellefList[i]);
                  fdMukellef.Append;
                  fdMukellef.FieldByName('TCK_Vergi').AsString := MukellefRec.TC_VergiNo; // '12345678901';
                  fdMukellef.FieldByName('URN_adres').AsString := MukellefRec.Urn; // 'urn:mail:falan@filan.com';
                  fdMukellef.Post;
                end;
              finally
                MukellefList.Free;
              end;

              dsMukellef.DataSet := fdMukellef;
              gridMukellef.Datasource := dsMukellef;
            end
            else
              Log('Kayýt bulunamadý...');

          except
            on ExcMukList001: Exception do
            begin
              Memo1.Lines.Add('** Hata ExcMukList001 : ' + ExcMukList001.Message);
            end;
          end; // try 4
        except
          on ExcLogCev001: Exception do
          begin
            Memo1.Lines.Add('** Hata ExcLogCev001 : ' + ExcLogCev001.Message);
          end;
        end; // try 3
      finally
        MukellefListCevap.Free;
      end; // try 2
  finally
    Screen.Cursor := crDefault;
  end; // try 1

end;

procedure TForm1.buttonGelenFaturalarClick(Sender: TObject);
var
  Servis: EFaturaService.EFaturaServiceSoap;
  LoginParam: EFaturaService.Login;
  LoginCevap: LoginResponse;
  FaturalarCevap: GetInvoiceResponse;
  FaturaIstek: EFaturaService.GetInvoice;
  nXDateStart: TXSDate;
  nxDateEnd: TXSDate;
  i: Integer;
  FS: TFormatSettings;
begin
  // fdGelenFaturaList : TFDMemTable;

  if Not Assigned(dsGelenFaturaList) then
    dsGelenFaturaList := TDataSource.Create(Self);
  dsGelenFaturaList.DataSet := NIL;
  gridGelenFaturaList.Datasource := Nil;
  if Assigned(fdGelenFaturaList) then
  begin
    fdGelenFaturaList.DisableControls;
    fdGelenFaturaList.AfterScroll := nil;
  end;

  Make_EFaturaGelenData;
  Screen.Cursor := crHourGlass;
  try
    FS := TFormatSettings.Create('tr-TR');
    FS.DecimalSeparator := '.';
    FS.ThousandSeparator := ',';
    Servis := GetEFaturaServiceSoap(True, '', faturaHTTPRIO);

    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(edtUser.Text, edtPasswd.Text);
      LoginCevap := Servis.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.SessionId;
      end
      else
      begin
        OturumID := '';
        Log('** Login Baþarýsýz : ' + LoginCevap.LoginResult.Message_);
      end;
    end;
    Edit1.Text := OturumID;
    if OturumID <> '' then
      try // 2
        FaturaIstek := EFaturaService.GetInvoice.Create;
        FaturaIstek.GetInvoiceRequest := GetInvoiceRequest.Create;
        FaturaIstek.GetInvoiceRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;

        FaturaIstek.GetInvoiceRequest.REQUEST_HEADER.SESSION_ID := OturumID;
        // ZIP olarak almak daha mantýklý ve Hýzlý olsa da malesek Fark Entegrasyondan gelen
        // ZIP dosyalar ZIP64  gibi görünüyor.
        FaturaIstek.GetInvoiceRequest.REQUEST_HEADER.COMPRESSED := 'N';

        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY := INVOICE_SEARCH_KEY2.Create;
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.DIRECTION := 'IN';
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.READ_INCLUDED := False;

        nXDateStart := TXSDate.Create;
        nxDateEnd := TXSDate.Create;

        nXDateStart.AsDate := dateStart1.Date;
        nxDateEnd.AsDate := dateEnd1.Date;
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.START_DATE := nXDateStart;
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.END_DATE := nxDateEnd;

        try
          FaturalarCevap := Servis.GetInvoice(FaturaIstek);
          fdGelenFaturaList.Open;
          for i := 0 to High(FaturalarCevap.GetInvoiceResult) do
          begin
            fdGelenFaturaList.Append;
            fdGelenFaturaList.FieldByName('ID').AsString := FaturalarCevap.GetInvoiceResult[i].ID;
            fdGelenFaturaList.FieldByName('UUID').AsString := FaturalarCevap.GetInvoiceResult[i].UUID;
            fdGelenFaturaList.FieldByName('LISTID').AsInteger := FaturalarCevap.GetInvoiceResult[i].LIST_ID;
            // <Header
            fdGelenFaturaList.FieldByName('SENDER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.Sender;
            fdGelenFaturaList.FieldByName('RECEIVER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.RECEIVER;
            fdGelenFaturaList.FieldByName('SUPPLIER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.SUPPLIER;
            fdGelenFaturaList.FieldByName('CUSTOMER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.CUSTOMER;
            fdGelenFaturaList.FieldByName('ISSUE_DATE').AsString := DateToString(FaturalarCevap.GetInvoiceResult[i].HEADER.ISSUE_DATE.AsDate, 'dd.MM.yyyy');
            fdGelenFaturaList.FieldByName('PAYABLE_AMOUNT_CURR').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.PAYABLE_AMOUNT.currencyID;
            fdGelenFaturaList.FieldByName('PAYABLE_AMOUNT').AsCurrency := StrToCurr(FaturalarCevap.GetInvoiceResult[i].HEADER.PAYABLE_AMOUNT.Text.DecimalString, FS);
            fdGelenFaturaList.FieldByName('FROM').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.FROM;
            fdGelenFaturaList.FieldByName('TO_').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.TO_;
            fdGelenFaturaList.FieldByName('PROFILEID').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.PROFILEID;
            fdGelenFaturaList.FieldByName('INVOICE_TYPE_CODE').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.INVOICE_TYPE_CODE;
            fdGelenFaturaList.FieldByName('STATUS').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.STATUS;
            fdGelenFaturaList.FieldByName('STATUS_DESCRIPTION').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.STATUS_DESCRIPTION;
            fdGelenFaturaList.FieldByName('GIB_STATUS_CODE').AsInteger := FaturalarCevap.GetInvoiceResult[i].HEADER.GIB_STATUS_CODE;
            fdGelenFaturaList.FieldByName('GIB_STATUS_DESCRIPTION').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.GIB_STATUS_DESCRIPTION;
            fdGelenFaturaList.FieldByName('RESPONSE_CODE').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.RESPONSE_CODE;
            fdGelenFaturaList.FieldByName('RESPONSE_DESCRIPTION').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.RESPONSE_DESCRIPTION;
            fdGelenFaturaList.FieldByName('FILENAME').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.FILENAME;
            fdGelenFaturaList.FieldByName('HASH').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.HASH;
            fdGelenFaturaList.FieldByName('CDATE').AsString := DateTimeToStr(FaturalarCevap.GetInvoiceResult[i].HEADER.CDATE.AsDateTime);
            fdGelenFaturaList.FieldByName('ENVELOPE_IDENTIFIER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.ENVELOPE_IDENTIFIER;
            // Header>
            fdGelenFaturaList.FieldByName('CONTENT').AsString := ByteDynArrayToString(FaturalarCevap.GetInvoiceResult[i].CONTENT.Text);
            fdGelenFaturaList.Post;
          end;
        except
          on ExcGetInv001: Exception do
          begin
            Log('** Hata ExcGetInv001 : ' + ExcGetInv001.Message);
          end;

        end;
        dsGelenFaturaList.DataSet := fdGelenFaturaList;
        gridGelenFaturaList.Datasource := dsGelenFaturaList;
        fdGelenFaturaList.AfterScroll := AfterFaturaListScroll;
        fdGelenFaturaList.EnableControls;
      except
        on ExcGetInv002: Exception do
        begin
          Log('** Hata ExcGetInv002 : ' + ExcGetInv002.Message);
        end;
      end; // try 2
  finally
    Screen.Cursor := crDefault;
  end; // try 1
end;

procedure TForm1.Make_EFaturaGidenData;
begin
  if Not Assigned(fdGidenFaturaList) then
    fdGidenFaturaList := TFDMemTable.Create(Self);
  GenerateFields(['ID;48', 'UUID;48', 'LISTID;0;integer',
    // <Header
    'SENDER;16', 'RECEIVER;16', 'SUPPLIER;64', 'CUSTOMER;64', 'ISSUE_DATE;12;date', 'PAYABLE_AMOUNT_CURR;4', 'PAYABLE_AMOUNT;12;currency', 'FROM;64', 'TO_;64', 'PROFILEID;24',
    'INVOICE_TYPE_CODE;16', 'STATUS;48', 'STATUS_DESCRIPTION;48', 'GIB_STATUS_CODE;0;integr', 'GIB_STATUS_DESCRIPTION;32', 'RESPONSE_CODE;4', 'RESPONSE_DESCRIPTION;32', 'FILENAME;128',
    'HASH;64', 'CDATE;18;datetime', 'ENVELOPE_IDENTIFIER;64',
    // Header>
    'CONTENT;65535;memo'], fdGidenFaturaList)

end;

procedure TForm1.buttonGonderilenListeleClick(Sender: TObject);
var
  Servis: EFaturaService.EFaturaServiceSoap;
  FaturalarCevap: GetInvoiceResponse;
  FaturaIstek: EFaturaService.GetInvoice;
  nXDateStart: TXSDate;
  nxDateEnd: TXSDate;
  i: Integer;
  FS: TFormatSettings;
begin
  // GELEn Fatura LÝST ile Giden Fatura LÝST aslýnda ayný ve içerik te ayný
  // Tek fark
  // INVOICE_SEARCH_KEY.DIRECTION := 'OUT' olacak Yani Giden...
  //
  if Not Assigned(dsGidenFaturaList) then
    dsGidenFaturaList := TDataSource.Create(Self);
  dsGidenFaturaList.DataSet := NIL;
  gridGelenFaturaList.Datasource := Nil;
  if Assigned(fdGidenFaturaList) then
  begin
    fdGidenFaturaList.DisableControls;
    fdGidenFaturaList.AfterScroll := nil;
  end;

  Make_EFaturaGidenData;
  Screen.Cursor := crHourGlass;
  try
    FS := TFormatSettings.Create('tr-TR');
    FS.DecimalSeparator := '.';
    FS.ThousandSeparator := ',';
    Servis := GetEFaturaServiceSoap(True, '', faturaHTTPRIO);

    OturumId_Olustur;

    if OturumID <> '' then
      try // 2
        FaturaIstek := EFaturaService.GetInvoice.Create;
        FaturaIstek.GetInvoiceRequest := GetInvoiceRequest.Create;
        FaturaIstek.GetInvoiceRequest.REQUEST_HEADER := REQUEST_HEADERType.Create;

        FaturaIstek.GetInvoiceRequest.REQUEST_HEADER.SESSION_ID := OturumID;
        // ZIP olarak almak daha mantýklý ve Hýzlý olsa da malesek Fark Entegrasyondan gelen
        // ZIP dosyalar ZIP64  gibi görünüyor.
        FaturaIstek.GetInvoiceRequest.REQUEST_HEADER.COMPRESSED := 'N';

        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY := INVOICE_SEARCH_KEY2.Create;
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.DIRECTION := 'OUT';
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.READ_INCLUDED := False;

        nXDateStart := TXSDate.Create;
        nxDateEnd := TXSDate.Create;

        nXDateStart.AsDate := dtGidenStart.Date;
        nxDateEnd.AsDate := dtGidenEnd.Date;
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.START_DATE := nXDateStart;
        FaturaIstek.GetInvoiceRequest.INVOICE_SEARCH_KEY.END_DATE := nxDateEnd;

        try
          FaturalarCevap := Servis.GetInvoice(FaturaIstek);
          fdGidenFaturaList.Open;
          for i := 0 to High(FaturalarCevap.GetInvoiceResult) do
          begin
            fdGidenFaturaList.Append;
            fdGidenFaturaList.FieldByName('ID').AsString := FaturalarCevap.GetInvoiceResult[i].ID;
            fdGidenFaturaList.FieldByName('UUID').AsString := FaturalarCevap.GetInvoiceResult[i].UUID;
            fdGidenFaturaList.FieldByName('LISTID').AsInteger := FaturalarCevap.GetInvoiceResult[i].LIST_ID;
            // <Header
            fdGidenFaturaList.FieldByName('SENDER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.Sender;
            fdGidenFaturaList.FieldByName('RECEIVER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.RECEIVER;
            fdGidenFaturaList.FieldByName('SUPPLIER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.SUPPLIER;
            fdGidenFaturaList.FieldByName('CUSTOMER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.CUSTOMER;
            fdGidenFaturaList.FieldByName('ISSUE_DATE').AsString := DateToString(FaturalarCevap.GetInvoiceResult[i].HEADER.ISSUE_DATE.AsDate, 'dd.MM.yyyy');
            fdGidenFaturaList.FieldByName('PAYABLE_AMOUNT_CURR').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.PAYABLE_AMOUNT.currencyID;

            fdGidenFaturaList.FieldByName('PAYABLE_AMOUNT').AsCurrency := StrToCurr(FaturalarCevap.GetInvoiceResult[i].HEADER.PAYABLE_AMOUNT.Text.DecimalString, FS);
            fdGidenFaturaList.FieldByName('FROM').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.FROM;
            fdGidenFaturaList.FieldByName('TO_').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.TO_;
            fdGidenFaturaList.FieldByName('PROFILEID').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.PROFILEID;
            fdGidenFaturaList.FieldByName('INVOICE_TYPE_CODE').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.INVOICE_TYPE_CODE;
            fdGidenFaturaList.FieldByName('STATUS').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.STATUS;
            fdGidenFaturaList.FieldByName('STATUS_DESCRIPTION').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.STATUS_DESCRIPTION;
            fdGidenFaturaList.FieldByName('GIB_STATUS_CODE').AsInteger := FaturalarCevap.GetInvoiceResult[i].HEADER.GIB_STATUS_CODE;
            fdGidenFaturaList.FieldByName('GIB_STATUS_DESCRIPTION').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.GIB_STATUS_DESCRIPTION;
            fdGidenFaturaList.FieldByName('RESPONSE_CODE').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.RESPONSE_CODE;
            fdGidenFaturaList.FieldByName('RESPONSE_DESCRIPTION').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.RESPONSE_DESCRIPTION;
            fdGidenFaturaList.FieldByName('FILENAME').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.FILENAME;
            fdGidenFaturaList.FieldByName('HASH').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.HASH;
            fdGidenFaturaList.FieldByName('CDATE').AsString := DateTimeToStr(FaturalarCevap.GetInvoiceResult[i].HEADER.CDATE.AsDateTime);
            fdGidenFaturaList.FieldByName('ENVELOPE_IDENTIFIER').AsString := FaturalarCevap.GetInvoiceResult[i].HEADER.ENVELOPE_IDENTIFIER;
            // Header>
            fdGidenFaturaList.FieldByName('CONTENT').AsString := ByteDynArrayToString(FaturalarCevap.GetInvoiceResult[i].CONTENT.Text);
            fdGidenFaturaList.Post;
          end;
        except
          on ExcGetInv001: Exception do
          begin
            Log('** Hata ExcGetInv001 : ' + ExcGetInv001.Message);
          end;

        end;
        dsGidenFaturaList.DataSet := fdGidenFaturaList;
        gridGidenFaturaList.Datasource := dsGidenFaturaList;
        fdGidenFaturaList.AfterScroll := AfterFaturaListScroll;
        fdGidenFaturaList.EnableControls;
      except
        on ExcGetInv002: Exception do
        begin
          Log('** Hata ExcGetInv002 : ' + ExcGetInv002.Message);
        end;
      end; // try 2
  finally
    Screen.Cursor := crDefault;
  end; // try 1
end;

// Fatura bilgilerini ZIP Stream den UNZIP etmek için
// Fakat ZIP 64 biçiminde geldiðinden UNZIP edemedim yani kullanmadým
procedure ExtractTStream(const DownloadStream: TStream; out OutputStream: TStream);
var
  ZipFile: TZipFile;
  DecompressionStream: TStream;
  ZippedFileIndex: Integer;
  LocalHeader: TZipHeader;
  // NewFileName : string;
begin
  try
    ZipFile := TZipFile.Create;
    DownloadStream.Position := 0;
    ZippedFileIndex := 0;
    // döngüye alýnarak 1 den fazla dosya okunabilir.. 0,1,2...
    try
      ZipFile.Open(DownloadStream, zmRead);
      ZipFile.Read(ZippedFileIndex, DecompressionStream, LocalHeader);
      // NewFileName := ExtractFilePath(_TargetFileName) + ZipFile.FileName[ZippedFileIndex];     // c:\filename.pdf..
      try
        OutputStream := TMemoryStream.Create;
        // .Create(NewFileName, fmCreate);
        try
          OutputStream.CopyFrom(DecompressionStream, DecompressionStream.Size);
        finally
          // OutputStream.Free;
        end;
      finally
        DecompressionStream.Free;
      end;
    finally
      ZipFile.Free;
    end;
  finally
    // DownloadStream.Free;
  end;
end;

function BytesAsAnsiString(const B: TBytes): AnsiString;
var
  len: Integer;
begin
  len := Length(B);
  SetLength(Result, len);
  Move(B[0], Result[1], len);
end;

const
  cbc_urn = 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2';
  xsi_urn = 'http://www.w3.org/2001/XMLSchema-instance" xmlns:ds="http://www.w3.org/2000/09/xmldsig#';
  CAC_URN = 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2';
  ns8_urn = 'urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2';
  xades_urn = 'http://uri.etsi.org/01903/v1.3.2#" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2';

procedure TForm1.AfterFaturaListScroll(DataSet: TDataSet);
var
  baseString: string;
  // baseBin : TByteDynArray;
  binBytes: TBytes;
  // zipStream : TStream;
  // OutStream : TStream;
  // ZipFile: TZipFile;
  XmlText: string;
  XmlBelge: { XmlDoc . } TXmlDocument;
  Body, faturaNode: { XmlIntf. } IXMLNode;
  subNode, saticiNode, aliciNode, NodeParty, NodeUnvan, Node1, NodeId, SatirNode, FaturaVergiNode, VergiNode, Node: { XmlIntf. } IXMLNode;
  Val: string;
begin

  if DataSet.RecordCount > 0 then
    if DataSet.FindField('CONTENT') <> nil then
    begin
      // Tüm editBileþenleri (TAG=125 olanlar) Temizle
      TumeEitleriTemizle();
      binBytes := DataSet.FieldByName('CONTENT').AsBytes;
      baseString := BytesAsAnsiString(binBytes);
      Memo2.Lines.Clear;
      Memo2.Lines.Append(baseString);
      XmlBelge := TXmlDocument.Create(Self);
      try
        XmlBelge.LoadFromXML(baseString);
        XmlBelge.Active := True;
        faturaNode := XmlBelge.ChildNodes.FindNode('Invoice');
        if Assigned(faturaNode) then
          faturaNode := XmlBelge.ChildNodes.First;
        if Assigned(faturaNode) then
        begin
          subNode := faturaNode.ChildNodes.FindNode('UBLVersionID', cbc_urn);
          if Assigned(subNode) then
            editUBLVersionID.Text := subNode.Text;

          subNode := faturaNode.ChildNodes.FindNode('ProfileID', cbc_urn);
          if Assigned(subNode) then
            editProfileID.Text := subNode.Text;

          subNode := faturaNode.ChildNodes.FindNode('ID', cbc_urn);
          if Assigned(subNode) then
            editID.Text := subNode.Text;

          subNode := faturaNode.ChildNodes.FindNode('UUID', cbc_urn);
          if Assigned(subNode) then
            editUUID.Text := subNode.Text;

          subNode := faturaNode.ChildNodes.FindNode('IssueDate', cbc_urn);
          if Assigned(subNode) then
            editIssuDate.Text := subNode.Text;

          // Alýcý / Müþteri
          aliciNode := faturaNode.ChildNodes.FindNode('AccountingCustomerParty', CAC_URN);
          if Assigned(aliciNode) then
          begin
            NodeParty := aliciNode.ChildNodes.FindNode('Party', CAC_URN);
            if Assigned(NodeParty) then
            begin
              NodeId := NodeParty.ChildNodes.FindNode('PartyIdentification', CAC_URN);
              if Assigned(NodeId) then
                NodeId := NodeId.ChildNodes.FindNode('ID', cbc_urn);
              if Assigned(NodeId) then
                editAliciVKNO.Text := NodeId.Text;

              NodeUnvan := NodeParty.ChildNodes.FindNode('PartyName', CAC_URN);
              if Assigned(NodeUnvan) then
                NodeUnvan := NodeUnvan.ChildNodes.FindNode('Name', cbc_urn);
              if Assigned(NodeUnvan) then
                editAliciUnvan.Text := NodeUnvan.Text;

              Node1 := NodeParty.ChildNodes.FindNode('Contact', CAC_URN);
              if Assigned(Node1) then
                Node1 := Node1.ChildNodes.FindNode('Telephone', cbc_urn);
              if Assigned(Node1) then
                editAliciTel1.Text := Node1.Text;
            end;
          end;

          // Satýcý / Tedarikçi
          saticiNode := faturaNode.ChildNodes.FindNode('AccountingSupplierParty', CAC_URN);
          if Assigned(saticiNode) then
          begin
            NodeParty := saticiNode.ChildNodes.FindNode('Party', CAC_URN);
            if Assigned(NodeParty) then
            begin
              NodeId := NodeParty.ChildNodes.FindNode('PartyIdentification', CAC_URN);
              if Assigned(NodeId) then
                NodeId := NodeId.ChildNodes.FindNode('ID', cbc_urn);
              if Assigned(NodeId) then
                editSaticiVKNO.Text := NodeId.Text;

              NodeUnvan := NodeParty.ChildNodes.FindNode('PartyName', CAC_URN);
              if Assigned(NodeUnvan) then
                NodeUnvan := NodeUnvan.ChildNodes.FindNode('Name', cbc_urn);
              if Assigned(NodeUnvan) then
                editSaticiUnvan.Text := NodeUnvan.Text;

              Node1 := NodeParty.ChildNodes.FindNode('Contact', CAC_URN);
              if Assigned(Node1) then
                Node1 := Node1.ChildNodes.FindNode('Telephone', cbc_urn);
              if Assigned(Node1) then
                editSaticiTel1.Text := Node1.Text;
            end;

          end;

        end;
      finally
        XmlBelge.Free;
      end;


      // Memo2.Lines.Add(baseString);
      {
        zipStream:=TBytesStream.Create(binBytes );
        zipStream.Position:=0;
        ExtractTStream(zipStream,OutStream);
        zipStream.Free;
        outSTream.Position := 0;
        xmlText := outStream.ToString;
        zipStream. Free;
        OutStream.Free;
      }

    end;
end;

procedure TForm1.faturaHTTPRIOAfterExecute(const MethodName: string; SOAPResponse: TStream);
var
  s: TStrings;
begin
  s := TStringList.Create;
  try
    SOAPResponse.Position := 0;
    s.LoadFromStream(SOAPResponse);
    SOAPResponse.Position := 0;
    s.SaveToFile('XmlOut\After_EFaturaService_' + MethodName + '.xml');
  finally
    s.Free;
  end;
end;

procedure TForm1.faturaHTTPRIOBeforeExecute(const MethodName: string; SOAPRequest: TStream);
var
  s: TStrings;
begin
  s := TStringList.Create;
  try
    SOAPRequest.Position := 0;
    s.LoadFromStream(SOAPRequest);
    SOAPRequest.Position := 0;
    s.SaveToFile('XmlOut\Before_EFaturaService_' + MethodName + '.xml');
  finally
    s.Free;
  end;

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  fdFaturaDetay.Close;
  if TFile.Exists(ProgramPath + '\FaturaDetay_Data.xml') then

    fdFaturaDetay.LoadFromFile(ProgramPath + '\FaturaDetay_Data.xml');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ForceDirectories(ProgramPath + '\XmlOut');
  OturumID := '';
  Memo1.Clear();

  ReqHeader := REQUEST_HEADERType.Create();
  ReqHeader.SESSION_ID := '0';
  ReqHeader.CLIENT_TXN_ID := TGUID.NewGuid.ToString();
  ReqHeader.APPLICATION_NAME := 'GELÝÞÝM E-FATURA';
  ReqHeader.CHANNEL_NAME := 'GELÝÞÝM';
  ReqHeader.HOSTNAME := 'HOST-GELÝÞÝM-DEFAULT';
  ReqHeader.REASON := 'ENTEGRASYON ÇALIÞMALARI';
  ReqHeader.COMPRESSED := 'N';

  Log('Müþteri iþlem kimliði: ' + ReqHeader.CLIENT_TXN_ID);

  InboxDir := TPath.Combine(TPath.GetLibraryPath(), 'inbox');
  if not TDirectory.Exists(InboxDir) then
  begin
    if not ForceDirectories(InboxDir) then
    begin
      ShowMessage('Gelen kutusu oluþturulamýyor:' + sLineBreak + InboxDir);
    end;
  end;

  MyEncoding := TUTF8EncodingWithoutBOM.Create();

end;

procedure TForm1.Log(const Value: string);
var
  Prefix: string;
begin
  if Value = EmptyStr then
  begin
    Memo1.Lines.Add(EmptyStr);
  end
  else
  begin
    Prefix := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz   ', Now());
    Memo1.Lines.Add(Prefix + Value);
  end;
end;

end.
