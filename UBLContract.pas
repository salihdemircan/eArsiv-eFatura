unit UBLContract;

interface

uses
  SysUtils, System.Classes, Xml.XMLIntf, Xml.XMLDoc, System.TypInfo, uNullableTypes;

type

  TUBLfatura = class;

  TMuhatap = class
  private
    fName: String;
    fOwner : TUBLfatura;
  public
    { Public declarations }
    WebURI, VKNTCKN, Unvan, Ilce, Il, Ulke, UlkeKodu, VergiDairesi: String;
    BinaNo, StreetName, PostalZone, Telephone, Fax, email: String;
    constructor Create(byName: String;aOwner : TUBLfatura);
  published
    property Name: String read fName write fName;
    property Owner : TUBLfatura read fOwner write fOwner;
  end;

  TFaturaSenaryo = (TEMELFATURA, TICARIFATURA, IHRACAT, YOLCUBERABERFATURA);

  TFaturaTipi = (SATIS, IADE, TEVKIFAT, ISTISNA, OZELMATRAH, IHRACKAYITLI);

{$REGION 'OlcuBirirmi'}
  TOlcuBirimleri = (B32, // Kilogram / Metrekare
    BAS, // Bas
    BX, // Kutu
    C62, // Adet
    CCT, // Ton başına taşıma kapasitesi
    CLT, // Santilitre
    CMK, // Santimetrekare
    CMQ, // Santimetreküp
    CMT, // Santimetre
    CPR, // Adet (Çift)
    CS, // Koli
    CT, // Karton
    D30, // Brüt Kalori Değeri
    D40, // Bin Litre
    DAY, // Gün
    GMS, // Gümüş
    GRM, // Gram
    GT, // Gross Ton
    HUR, // Saat
    K20, // Kg Potasyum Oksit
    K58, // Kurutulmuş Net Ağırlıklı kg
    K62, // Kg / Adet
    KGM, // Kilogram
    KGS, // KGS
    KH6, // Kg / Bas
    KJO, // Kilojul
    KPR, // Kilogram-Çift
    KSD, // %90 Kuru Ürün Kilogramı
    KTM, // Kilometre
    KWH, // Kilowattsaat
    KWT, // Kilowatt
    LPA, // Saf Alkol Listesi
    LTR, // Litre
    MLT, // Mililitre
    MMQ, // Metreküp
    MMT, // Milimetre
    MON, // Ay
    MTK, // Metrekare
    MTQ, // Metreküp
    MTR, // Metre
    NCL, // Hücre Adet
    NCR, // Karat
    NM3, // 101325 mbar/m³ (0°C)
    PA, // Paket
    PR, // Çift
    R9, // Bin Metreküp
    _SET, // Set
    SM3, // 101325 mbar/m³ (15°C)
    T3, // Bin Adet
    TWH, // Bin Kilowatt-saat
    _26 // Ton
    );

{$ENDREGION}

  TVergi = class(TObject)
  public
    Matrah: Nullable<Currency>;
    Kodu: String;
    Adi: String;
    Oran: Nullable<Double>;
    Tutar: Currency;
    MuafiyetKodu: String;
    MuafiyetAciklama: String;
    isTevkifat: boolean;
    constructor Create(Kodu, Adi: String);
    procedure Clone(out vergi: TVergi);
  end;

  TVergiler = class(TList)
  private
    function Get(Index: Integer): TVergi;
  public
    ToplamVergi: Currency;
    destructor Destroy; override;
    function Add(Value: TVergi): Integer;
    property Items[Index: Integer]: TVergi read Get; default;
    function MevcutMu(vergi: TVergi): TVergi;
  end;

  TAddress = class
    public
      StreetName,
      BuildingName,
      BuildingNumber,
      CitySubdivisionName,
      CityName,
      PostalZone,
      CountryName : string;
      procedure Assign(Source : TAddress);
  end;

  TDelivery = class
  public
     PackagingTypeCode : string;  // Eşyanın bulunduğu kabın cinsi nevi.
     PackagingID       : string;  // Eşyanın bulunduğu kabın numarası.
     Quantity          : Integer; // Kab Adedi
     DeliveryAdress    : string;  // Teslimat Adresi
     TransportModeCode : string;  // Eşyanın gönderilme şekli.
     IncoTerms         : string;  // Teslim Şartı
     RequiredCustomsID : string;  // GTİP No.
     TeslimAdresi      : TAddress;
     Constructor Create;
  end;

  TKalem = class
  public
    KalemNo: Integer;
    Notlar: TStringList;
    Miktar: Double;
    OlcuBirimi: TOlcuBirimleri;
    IndirimCarpan: Double;
    IndirimTutar: Nullable<Currency>;
    KalemTutar: Currency;
    UrunKodu: String;
    UrunAdi: String;
    BirimFiyat: Currency;
    Vergiler: TVergiler;
    Ihracat : TDelivery;
  end;

  KalemArray = Array of TKalem;
  VergiArray = Array of TVergi;

  TKalemler = class(TList)
  private
    function Get(Index: Integer): TKalem;
  public
    destructor Destroy; override;
    function Add(Value: TKalem): Integer;
    property Items[Index: Integer]: TKalem read Get; default;
  end;

  TUBLSiparis = class
    public
      EvrakNo : String;
      Tarih : TDateTime;
  end;

  TSiparisler = class (TList)
  private
    function Get(Index: Integer): TUBLSiparis;
  public
    destructor Destroy; override;
    function Add(Value: TUBLSiparis): Integer;
    property Items[Index: Integer]: TUBLSiparis read Get; default;
  end;

  TUBLIrsaliye=class
    IrsaliyeNo : String;
    Tarih : TDateTime;
  end;

  TIrsaliyeler = class (Tlist)
    function Get(Index: Integer): TUBLIrsaliye;
  public
    destructor Destroy; override;
    function Add(Value: TUBLIrsaliye): Integer;
    property Items[Index: Integer]: TUBLIrsaliye read Get; default;
  end;

  TUBLfatura = class
  private
    { Private declarations }
    fOwner : Tcomponent;
    function GetGeneralXSLT: string;
    function GetGeneralXSLTbyFileName(byFileName: string = ''): string;
    function GetGeneralXSLTbyStream(byStream: TMemoryStream = nil): string;
  public
    No: String;
    ETTN: String;
    Tarih: TDate;
    Saat: TTime;
    Senaryo: TFaturaSenaryo; //TFaturaSenaryo = (TEMELFATURA, TICARIFATURA, IHRACAT, YOLCUBERABERFATURA);
    Tipi: TFaturaTipi;
    BelgeParaBirimi: String;
    // Gorsel: string;
    CompanyLogo: string;
    SignLogo : string;
    Gonderici: TMuhatap;
    Gümrük_Müsteşarlığı : TMuhatap;
    Alici: TMuhatap;
    Kalemler: TKalemler;
    Vergiler: TVergiler;
    Tevkifat: TVergi;
    KalemToplamTutar, 
    VergiDahilTutar,
    VergiHaricTutar,
    ToplamIndirim  : Currency;
    OdenecekTutar : Extended;
    Notlar: TStrings;
    isEArchive: boolean;
    isEIhracat : boolean;
    Siparisler : TSiparisler;
    Irsaliyeler : TIrsaliyeler;
    ProviderName : string;
    CurrExchange : Currency;
    constructor Create(aOwner : TComponent); overload;
    constructor Create(ETTN: String; aOwner : TComponent); overload;
    procedure BaslikVergileriHesapla;
    procedure ŞirketLogosuEkle(logoStr: string);
    procedure ŞirketİmzaResmiEkle(imzaStr : string);
  published
    // property GeneralXSLT: string read GetGeneralXSLT;
    property Owner : TComponent read fOwner write fOwner;
  end;

const
  c_Faturagovde  = 'Fatura.Govde.xml';
  c_FaturaGorsel = 'Fatura.gorsel.xslt';


function Get_GIB_Logo_from_res: string;
function Get_GIB_base_from_res(_fName : string = c_Faturagovde): string;
function Get_GIB_fatura_gorsel_from_res(_fName : string = c_FaturaGorsel): UTF8String;

// xml string oluşturur
function CreateUBLFatura(Fatura: TUBLfatura; FaturaClass: string = 'eFatura'): String;
function GetSenaryoEnumName(_Senaryo:TFaturaSenaryo): String;
function GetSenaryoEnumValue(_SenaryoName:string): TFaturaSenaryo;
function GetFaturaTipiFromName(Name: String): TFaturaTipi;
Function GetUlkeCodeFromName(Name: String): String;
function GetUlkeNameFromCode(Code: String): String;

procedure ChangeNode(parent: IXMLNode; Name, namespace, Value: String);
procedure KalemEkle(node: IXMLNode; kalem: TKalem; BelgeParaBirimi: String);
function CreateChildNode(node: IXMLNode; namespace, Name: String): IXMLNode;
procedure AddChildNode(node: IXMLNode; namespace, Name, Value: String);
procedure AddChildNodeWN(node: IXMLNode; namespace, Name, Value: String);
procedure MuhatapBilgileri(node: IXMLNode; muhatap: TMuhatap);
procedure MuhatapIhracat(node: IXMLNode; muhatap: TMuhatap);
procedure VergiEkle(node: IXMLNode; Vergiler: TVergiler; BelgeParaBirimi: String); overload;
procedure VergiEkle(node: IXMLNode; vergi: TVergi; BelgeParaBirimi: String); overload;
procedure AddSatışSipariş(node: IXMLNode; Fatura : TUBLFatura);
procedure AddIrsaliye(node: IXMLNode; Fatura : TUBLFatura);
procedure PricingExchangeEkle(node : IXMLNode;Fatura: TUBLfatura);
procedure DipToplam(node: IXMLNode; Fatura: TUBLfatura);

procedure TutarDegistir(parent: IXMLNode; Name, namespace, pb: String; Value: Extended;  ÖzelFormat : Integer=2);
procedure FaturaStyleSheet(node: IXMLNode; Fatura: TUBLfatura);

function NewGuid : String;

implementation
//{$R GIBRESOURCE.RES}

uses
  uUtility, System.IOUtils,
  uHelperClass,
  //dsEfaturaBase,
  Soap.EncdDecd, Vcl.Imaging.jpeg, Winapi.Windows, System.NetEncoding;

type
  UlkeType = record
    UlkeKod: string[3];
    UlkeAdı: string[54];
  end;

const
  CRLF = #13#10;

const
  PR_cbc = 'cbc';
  NS_cbc = 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2';
  PR_cac = 'cac';
  NS_CAC = 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2';


  // ÜlkeKodları
{$REGION 'UlkeKodlari'}
const
  Ulkeler: array [0 .. 223] of UlkeType = ((UlkeKod: 'AF'; UlkeAdı: 'Afganistan'), (UlkeKod: 'DE'; UlkeAdı: 'Almanya'), (UlkeKod: 'AD';
    UlkeAdı: 'Andorra'), (UlkeKod: 'AO'; UlkeAdı: 'Angola'), (UlkeKod: 'AG'; UlkeAdı: 'Antigua ve Barbuda'), (UlkeKod: 'AR';
    UlkeAdı: 'Arjantin'), (UlkeKod: 'AL'; UlkeAdı: 'Arnavutluk'), (UlkeKod: 'AW'; UlkeAdı: 'Aruba'), (UlkeKod: 'AU'; UlkeAdı: 'Avustralya'),
    (UlkeKod: 'AT'; UlkeAdı: 'Avusturya'), (UlkeKod: 'AZ'; UlkeAdı: 'Azerbaycan'), (UlkeKod: 'BS'; UlkeAdı: 'Bahamalar'), (UlkeKod: 'BH';
    UlkeAdı: 'Bahreyn'), (UlkeKod: 'BD'; UlkeAdı: 'Bangladeş'), (UlkeKod: 'BB'; UlkeAdı: 'Barbados'), (UlkeKod: 'EH';
    UlkeAdı: 'Batı Sahra (MA)'), (UlkeKod: 'BE'; UlkeAdı: 'Belçika'), (UlkeKod: 'BZ'; UlkeAdı: 'Belize'), (UlkeKod: 'BJ'; UlkeAdı: 'Benin'),
    (UlkeKod: 'BM'; UlkeAdı: 'Bermuda'), (UlkeKod: 'BY'; UlkeAdı: 'Beyaz Rusya'), (UlkeKod: 'BT'; UlkeAdı: 'Bhutan'), (UlkeKod: 'AE';
    UlkeAdı: 'Birleşik Arap Emirlikleri'), (UlkeKod: 'US'; UlkeAdı: 'Birleşik Devletler'), (UlkeKod: 'GB'; UlkeAdı: 'Birleşik Krallık'),
    (UlkeKod: 'BO'; UlkeAdı: 'Bolivya'), (UlkeKod: 'BA'; UlkeAdı: 'Bosna-Hersek'), (UlkeKod: 'BW'; UlkeAdı: 'Botsvana'), (UlkeKod: 'BR';
    UlkeAdı: 'Brezilya'), (UlkeKod: 'BN'; UlkeAdı: 'Bruney'), (UlkeKod: 'BG'; UlkeAdı: 'Bulgaristan'), (UlkeKod: 'BF';
    UlkeAdı: 'Burkina Faso'), (UlkeKod: 'BI'; UlkeAdı: 'Burundi'), (UlkeKod: 'TD'; UlkeAdı: 'Çad'), (UlkeKod: 'KY';
    UlkeAdı: 'Cayman Adaları'), (UlkeKod: 'GI'; UlkeAdı: 'Cebelitarık (GB)'), (UlkeKod: 'CZ'; UlkeAdı: 'Çek Cumhuriyeti'), (UlkeKod: 'DZ';
    UlkeAdı: 'Cezayir'), (UlkeKod: 'DJ'; UlkeAdı: 'Cibuti'), (UlkeKod: 'CN'; UlkeAdı: 'Çin'), (UlkeKod: 'DK'; UlkeAdı: 'Danimarka'),
    (UlkeKod: 'CD'; UlkeAdı: 'Demokratik Kongo Cumhuriyeti'), (UlkeKod: 'TL'; UlkeAdı: 'Doğu Timor'), (UlkeKod: 'DO';
    UlkeAdı: 'Dominik Cumhuriyeti'), (UlkeKod: 'DM'; UlkeAdı: 'Dominika'), (UlkeKod: 'EC'; UlkeAdı: 'Ekvador'), (UlkeKod: 'GQ';
    UlkeAdı: 'Ekvator Ginesi'), (UlkeKod: 'SV'; UlkeAdı: 'El Salvador'), (UlkeKod: 'ID'; UlkeAdı: 'Endonezya'), (UlkeKod: 'ER';
    UlkeAdı: 'Eritre'), (UlkeKod: 'AM'; UlkeAdı: 'Ermenistan'), (UlkeKod: 'MF'; UlkeAdı: 'Ermiş Martin (FR)'), (UlkeKod: 'EE';
    UlkeAdı: 'Estonya'), (UlkeKod: 'ET'; UlkeAdı: 'Etiyopya'), (UlkeKod: 'FK'; UlkeAdı: 'Falkland Adaları'), (UlkeKod: 'FO';
    UlkeAdı: 'Faroe Adaları (DK)'), (UlkeKod: 'MA'; UlkeAdı: 'Fas'), (UlkeKod: 'FJ'; UlkeAdı: 'Fiji'), (UlkeKod: 'CI';
    UlkeAdı: 'Fildişi Sahili'), (UlkeKod: 'PH'; UlkeAdı: 'Filipinler'), (UlkeKod: 'FI'; UlkeAdı: 'Finlandiya'), (UlkeKod: 'FR';
    UlkeAdı: 'Fransa'), (UlkeKod: 'GF'; UlkeAdı: 'Fransız Guyanası (FR)'), (UlkeKod: 'PF'; UlkeAdı: 'Fransız Polinezyası (FR)'),
    (UlkeKod: 'GA'; UlkeAdı: 'Gabon'), (UlkeKod: 'GM'; UlkeAdı: 'Gambiya'), (UlkeKod: 'GH'; UlkeAdı: 'Gana'), (UlkeKod: 'GN';
    UlkeAdı: 'Gine'), (UlkeKod: 'GW'; UlkeAdı: 'Gine Bissau'), (UlkeKod: 'GD'; UlkeAdı: 'Grenada'), (UlkeKod: 'GL';
    UlkeAdı: 'Grönland (DK)'), (UlkeKod: 'GP'; UlkeAdı: 'Guadeloupe (FR)'), (UlkeKod: 'GT'; UlkeAdı: 'Guatemala'), (UlkeKod: 'GG';
    UlkeAdı: 'Guernsey (GB)'), (UlkeKod: 'ZA'; UlkeAdı: 'Güney Afrika'), (UlkeKod: 'KR'; UlkeAdı: 'Güney Kore'), (UlkeKod: 'GE';
    UlkeAdı: 'Gürcistan'), (UlkeKod: 'GY'; UlkeAdı: 'Guyana'), (UlkeKod: 'HT'; UlkeAdı: 'Haiti'), (UlkeKod: 'IN'; UlkeAdı: 'Hindistan'),
    (UlkeKod: 'HR'; UlkeAdı: 'Hırvatistan'), (UlkeKod: 'NL'; UlkeAdı: 'Hollanda'), (UlkeKod: 'HN'; UlkeAdı: 'Honduras'), (UlkeKod: 'HK';
    UlkeAdı: 'Hong Kong (CN)'), (UlkeKod: 'VG'; UlkeAdı: 'İngiliz Virjin Adaları'), (UlkeKod: 'IQ'; UlkeAdı: 'Irak'), (UlkeKod: 'IR';
    UlkeAdı: 'İran'), (UlkeKod: 'IE'; UlkeAdı: 'İrlanda'), (UlkeKod: 'ES'; UlkeAdı: 'İspanya'), (UlkeKod: 'IL'; UlkeAdı: 'İsrail'),
    (UlkeKod: 'SE'; UlkeAdı: 'İsveç'), (UlkeKod: 'CH'; UlkeAdı: 'İsviçre'), (UlkeKod: 'IT'; UlkeAdı: 'İtalya'), (UlkeKod: 'IS';
    UlkeAdı: 'İzlanda'), (UlkeKod: 'JM'; UlkeAdı: 'Jamaika'), (UlkeKod: 'JP'; UlkeAdı: 'Japonya'), (UlkeKod: 'JE'; UlkeAdı: 'Jersey (GB)'),
    (UlkeKod: 'KH'; UlkeAdı: 'Kamboçya'), (UlkeKod: 'CM'; UlkeAdı: 'Kamerun'), (UlkeKod: 'CA'; UlkeAdı: 'Kanada'), (UlkeKod: 'ME';
    UlkeAdı: 'Karadağ'), (UlkeKod: 'QA'; UlkeAdı: 'Katar'), (UlkeKod: 'KZ'; UlkeAdı: 'Kazakistan'), (UlkeKod: 'KE'; UlkeAdı: 'Kenya'),
    (UlkeKod: 'CY'; UlkeAdı: 'Kıbrıs'), (UlkeKod: 'KG'; UlkeAdı: 'Kırgızistan'), (UlkeKod: 'KI'; UlkeAdı: 'Kiribati'), (UlkeKod: 'CO';
    UlkeAdı: 'Kolombiya'), (UlkeKod: 'KM'; UlkeAdı: 'Komorlar'), (UlkeKod: 'CG'; UlkeAdı: 'Kongo Cumhuriyeti'), (UlkeKod: 'KV';
    UlkeAdı: 'Kosova (RS)'), (UlkeKod: 'CR'; UlkeAdı: 'Kosta Rika'), (UlkeKod: 'CU'; UlkeAdı: 'Küba'), (UlkeKod: 'KW'; UlkeAdı: 'Kuveyt'),
    (UlkeKod: 'KP'; UlkeAdı: 'Kuzey Kore'), (UlkeKod: 'LA'; UlkeAdı: 'Laos'), (UlkeKod: 'LS'; UlkeAdı: 'Lesoto'), (UlkeKod: 'LV';
    UlkeAdı: 'Letonya'), (UlkeKod: 'LR'; UlkeAdı: 'Liberya'), (UlkeKod: 'LY'; UlkeAdı: 'Libya'), (UlkeKod: 'LI'; UlkeAdı: 'Lihtenştayn'),
    (UlkeKod: 'LT'; UlkeAdı: 'Litvanya'), (UlkeKod: 'LB'; UlkeAdı: 'Lübnan'), (UlkeKod: 'LU'; UlkeAdı: 'Lüksemburg'), (UlkeKod: 'HU';
    UlkeAdı: 'Macaristan'), (UlkeKod: 'MG'; UlkeAdı: 'Madagaskar'), (UlkeKod: 'MO'; UlkeAdı: 'Makao (CN)'), (UlkeKod: 'MK';
    UlkeAdı: 'Makedonya'), (UlkeKod: 'MW'; UlkeAdı: 'Malavi'), (UlkeKod: 'MV'; UlkeAdı: 'Maldivler'), (UlkeKod: 'MY'; UlkeAdı: 'Malezya'),
    (UlkeKod: 'ML'; UlkeAdı: 'Mali'), (UlkeKod: 'MT'; UlkeAdı: 'Malta'), (UlkeKod: 'IM'; UlkeAdı: 'Man Adası (GB)'), (UlkeKod: 'MH';
    UlkeAdı: 'Marshall Adaları'), (UlkeKod: 'MQ'; UlkeAdı: 'Martinique (FR)'), (UlkeKod: 'MU'; UlkeAdı: 'Mauritius'), (UlkeKod: 'YT';
    UlkeAdı: 'Mayotte (FR)'), (UlkeKod: 'MX'; UlkeAdı: 'Meksika'), (UlkeKod: 'FM'; UlkeAdı: 'Mikronezya'), (UlkeKod: 'EG';
    UlkeAdı: 'Mısır'), (UlkeKod: 'MN'; UlkeAdı: 'Moğolistan'), (UlkeKod: 'MD'; UlkeAdı: 'Moldova'), (UlkeKod: 'MC'; UlkeAdı: 'Monako'),
    (UlkeKod: 'MR'; UlkeAdı: 'Moritanya'), (UlkeKod: 'MZ'; UlkeAdı: 'Mozambik'), (UlkeKod: 'MM'; UlkeAdı: 'Myanmar'), (UlkeKod: 'NA';
    UlkeAdı: 'Namibya'), (UlkeKod: 'NR'; UlkeAdı: 'Nauru'), (UlkeKod: 'NP'; UlkeAdı: 'Nepal'), (UlkeKod: 'NE'; UlkeAdı: 'Nijer'),
    (UlkeKod: 'NG'; UlkeAdı: 'Nijerya'), (UlkeKod: 'NI'; UlkeAdı: 'Nikaragua'), (UlkeKod: 'NO'; UlkeAdı: 'Norveç'), (UlkeKod: 'CF';
    UlkeAdı: 'Orta Afrika Cumhuriyeti'), (UlkeKod: 'UZ'; UlkeAdı: 'Özbekistan'), (UlkeKod: 'PK'; UlkeAdı: 'Pakistan'), (UlkeKod: 'PW';
    UlkeAdı: 'Palau'), (UlkeKod: 'PA'; UlkeAdı: 'Panama'), (UlkeKod: 'PG'; UlkeAdı: 'Papua Yeni Gine'), (UlkeKod: 'PY';
    UlkeAdı: 'Paraguay'), (UlkeKod: 'PE'; UlkeAdı: 'Peru'), (UlkeKod: 'PL'; UlkeAdı: 'Polonya'), (UlkeKod: 'PT'; UlkeAdı: 'Portekiz'),
    (UlkeKod: 'PR'; UlkeAdı: 'Porto Riko (US)'), (UlkeKod: 'RE'; UlkeAdı: 'Réunion (FR)'), (UlkeKod: 'RO'; UlkeAdı: 'Romanya'),
    (UlkeKod: 'RW'; UlkeAdı: 'Ruanda'), (UlkeKod: 'RU'; UlkeAdı: 'Rusya'), (UlkeKod: 'BL'; UlkeAdı: 'Saint Barthélemy (FR)'),
    (UlkeKod: 'KN'; UlkeAdı: 'Saint Kitts ve Nevis'), (UlkeKod: 'LC'; UlkeAdı: 'Saint Lucia'), (UlkeKod: 'PM';
    UlkeAdı: 'Saint Pierre ve Miquelon (FR)'), (UlkeKod: 'VC'; UlkeAdı: 'Saint Vincent ve Grenadinler'), (UlkeKod: 'WS'; UlkeAdı: 'Samoa'),
    (UlkeKod: 'SM'; UlkeAdı: 'San Marino'), (UlkeKod: 'ST'; UlkeAdı: 'São Tomé ve Príncipe'), (UlkeKod: 'SN'; UlkeAdı: 'Senegal'),
    (UlkeKod: 'SC'; UlkeAdı: 'Seyşeller'), (UlkeKod: 'SL'; UlkeAdı: 'Sierra Leone'), (UlkeKod: 'CL'; UlkeAdı: 'Şili'), (UlkeKod: 'SG';
    UlkeAdı: 'Singapur'), (UlkeKod: 'RS'; UlkeAdı: 'Sırbistan'), (UlkeKod: 'SK'; UlkeAdı: 'Slovakya Cumhuriyeti'), (UlkeKod: 'SI';
    UlkeAdı: 'Slovenya'), (UlkeKod: 'SB'; UlkeAdı: 'Solomon Adaları'), (UlkeKod: 'SO'; UlkeAdı: 'Somali'), (UlkeKod: 'SS';
    UlkeAdı: 'South Sudan'), (UlkeKod: 'SJ'; UlkeAdı: 'Spitsbergen (NO)'), (UlkeKod: 'LK'; UlkeAdı: 'Sri Lanka'), (UlkeKod: 'SD';
    UlkeAdı: 'Sudan'), (UlkeKod: 'SR'; UlkeAdı: 'Surinam'), (UlkeKod: 'SY'; UlkeAdı: 'Suriye'), (UlkeKod: 'SA'; UlkeAdı: 'Suudi Arabistan'),
    (UlkeKod: 'SZ'; UlkeAdı: 'Svaziland'), (UlkeKod: 'TJ'; UlkeAdı: 'Tacikistan'), (UlkeKod: 'TZ'; UlkeAdı: 'Tanzanya'), (UlkeKod: 'TH';
    UlkeAdı: 'Tayland'), (UlkeKod: 'TW'; UlkeAdı: 'Tayvan'), (UlkeKod: 'TG'; UlkeAdı: 'Togo'), (UlkeKod: 'TO'; UlkeAdı: 'Tonga'),
    (UlkeKod: 'TT'; UlkeAdı: 'Trinidad ve Tobago'), (UlkeKod: 'TN'; UlkeAdı: 'Tunus'), (UlkeKod: 'TR'; UlkeAdı: 'Türkiye'), (UlkeKod: 'TM';
    UlkeAdı: 'Türkmenistan'), (UlkeKod: 'TC'; UlkeAdı: 'Turks ve Caicos'), (UlkeKod: 'TV'; UlkeAdı: 'Tuvalu'), (UlkeKod: 'UG';
    UlkeAdı: 'Uganda'), (UlkeKod: 'UA'; UlkeAdı: 'Ukrayna'), (UlkeKod: 'OM'; UlkeAdı: 'Umman'), (UlkeKod: 'JO'; UlkeAdı: 'Ürdün'),
    (UlkeKod: 'UY'; UlkeAdı: 'Uruguay'), (UlkeKod: 'VU'; UlkeAdı: 'Vanuatu'), (UlkeKod: 'VA'; UlkeAdı: 'Vatikan'), (UlkeKod: 'VE';
    UlkeAdı: 'Venezuela'), (UlkeKod: 'VN'; UlkeAdı: 'Vietnam'), (UlkeKod: 'WF'; UlkeAdı: 'Wallis ve Futuna (FR)'), (UlkeKod: 'YE';
    UlkeAdı: 'Yemen'), (UlkeKod: 'NC'; UlkeAdı: 'Yeni Kaledonya (FR)'), (UlkeKod: 'NZ'; UlkeAdı: 'Yeni Zelanda'), (UlkeKod: 'CV';
    UlkeAdı: 'Yeşil Burun Adaları'), (UlkeKod: 'GR'; UlkeAdı: 'Yunanistan'), (UlkeKod: 'ZM'; UlkeAdı: 'Zambiya'), (UlkeKod: 'ZW';
    UlkeAdı: 'Zimbabve'));

{$ENDREGION}

function Get_GIB_Logo_from_res: string;
var
  resStream: TResourceStream;
  ByteArr: Tbytes;
begin
  Result := '';
  try
    resStream := TResourceStream.Create(hInstance, 'GIB_LOGO', RT_RCDATA);
    SetLength(ByteArr, resStream.Size);
    resStream.Read(ByteArr[0], resStream.Size);
    Result := TEncoding.ANSI.GetString(ByteArr, 0, resStream.Size);
  finally
    resStream.Free;
  end;
end;

function Get_GIB_base_from_res(_fName : string = c_Faturagovde): string;
 var
  fname : string;
// resStream : TResourceStream;
// ByteArr   : Tbytes;
// _File : TFile;
begin
  Result := '';
  try
    {resStream := TResourceStream.Create(hInstance, 'FATURA_GOVDE', RT_RCDATA);
      SetLength(ByteArr,resStream.Size);
      resStream.Read(ByteArr[0],resStream.Size);
      Result:=TEncoding.ANSI.GetString(ByteArr,0,resStream.Size);}
    if _fName='' then
          _fName := c_Faturagovde;
    fName:= Programpath+'\'+ _fName;
    if FileExists(fname) then

      Result := TFile.ReadAllText(fName, TEncoding.ANSI)
    else
     LogAppLog('Fatura.Gövde olması gerekn Yol "'+fname+'"');
  finally
    // resStream.Free;
  end;
end;


/// StyleSheet Görünüm
/// GIB_FATURA_GORSEL

function Get_GIB_fatura_gorsel_from_res(_fName : string = c_FaturaGorsel): UTF8String;
{ var
  resStream : TResourceStream;
  ByteArr   : Tbytes;  }
begin
  Result := '';
  {try
    resStream := TResourceStream.Create(hInstance, 'FATURA_GOVDE', RT_RCDATA);
    SetLength(ByteArr,resStream.Size);
    resStream.Read(ByteArr[0],resStream.Size);
    Result:=TEncoding.ANSI.GetString(ByteArr,0,resStream.Size);
    finally
    resStream.Free;
    end; }
  if _fName='' then
        _fName:=c_FaturaGorsel;
  if FileExists(_fName) then
   Result:=Result.LoadfromFile(_fName,TEncoding.UTF8);
   // Result := TFile.ReadAllText(c_FaturaGorsel, TEncoding.UTF8); // TEncoding.UTF8) ;
end;

procedure TAddress.Assign(Source : TAddress);
begin
  BuildingName        :=  Source.BuildingName;
  BuildingNumber      :=  Source.BuildingNumber;
  CitySubdivisionName :=  Source.CitySubdivisionName;
  CityName            :=  Source.CityName;
  PostalZone          :=  Source.PostalZone;
  CountryName         :=  Source.CountryName;
end;

Constructor TDelivery.Create;
begin
  inherited;
  TeslimAdresi := TAddress.Create;
end;

constructor TMuhatap.Create(byName: String;aOwner : TUBLfatura);
begin
  inherited Create;
  fOwner := aOwner;
  fName := byName;
end;

constructor TVergi.Create(Kodu, Adi: String);
begin
  self.Kodu := Kodu;
  self.Adi := Adi;
end;

procedure TVergi.Clone(out vergi: TVergi);
begin
  vergi := TVergi.Create(self.Kodu, self.Adi);
  if self.Matrah.HasValue then
    vergi.Matrah := self.Matrah.Value;
  if self.Oran.HasValue then
    vergi.Oran := self.Oran.Value;
  vergi.Tutar := self.Tutar;
  vergi.MuafiyetKodu := self.MuafiyetKodu;
  vergi.MuafiyetAciklama := self.MuafiyetAciklama;
end;

function TVergiler.Add(Value: TVergi): Integer;
begin
  Result := inherited Add(Value);
end;

destructor TVergiler.Destroy;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  inherited;
end;

function TVergiler.Get(Index: Integer): TVergi;
begin
  Result := TVergi(inherited Get(Index));
end;

// ---------------------------------------------------------------------------

function TKalemler.Add(Value: TKalem): Integer;
begin
  Result := inherited Add(Value);
end;

destructor TKalemler.Destroy;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  inherited;
end;

function TKalemler.Get(Index: Integer): TKalem;
begin
  Result := TKalem(inherited Get(Index));
end;
// ----------------------------------------------------------------------

// Siparişler
function TSiparisler.Add(Value: TUBLSiparis): Integer;
begin
  Result := inherited Add(Value);
end;

destructor TSiparisler.Destroy;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  inherited;
end;

function TSiparisler.Get(Index: Integer): TUBLSiparis;
begin
  Result := TUBLSiparis(inherited Get(Index));
end;
// ----------------------------------------------------------------------

// İrsaliyeler
function TIrsaliyeler.Add(Value: TUBLIrsaliye): Integer;
begin
  Result := inherited Add(Value);
end;

destructor TIrsaliyeler.Destroy;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  inherited;
end;

function TIrsaliyeler.Get(Index: Integer): TUBLIrsaliye;
begin
  Result := TUBLIrsaliye(inherited Get(Index));
end;


// ----------------------------------------------------------------------

function NewGuid : String;
var
  Uid: TGuid;
begin
  CreateGuid(Uid);
  Result := GuidToString(Uid);
end;

constructor TUBLfatura.Create(aOwner : TComponent);
begin
  fOwner := aOwner;
  // {$IFDEF WRITETESTXML}
  // self.ETTN := '55555555-2222-4444-accc-bbbbbbbff333';
  // {$ELSE}
  self.ETTN := NewGuid;
  self.ETTN := StringReplace(ETTN, '{', '', [rfReplaceAll]);
  self.ETTN := StringReplace(ETTN, '}', '', [rfReplaceAll]);
  // {$ENDIF}
  isEArchive := False;
  isEIhracat := False;
end;


constructor TUBLfatura.Create(ETTN: String; aOwner : TComponent);
begin
  fOwner := aOwner;
  self.ETTN := ETTN;
  isEArchive := False;
  isEIhracat := False;
end;

procedure TUBLfatura.BaslikVergileriHesapla;
var
  mevcut, yeni: TVergi;
  i, j: Integer;
begin
  if self.Kalemler = nil then
    raise Exception.Create('Fatura Ayrıntı kalemi bulunamadı!');
  self.Vergiler := TVergiler.Create;
  for i := 0 to self.Kalemler.Count - 1 do
    for j := 0 to self.Kalemler[i].Vergiler.Count - 1 do
    begin
      mevcut := self.Vergiler.MevcutMu(self.Kalemler[i].Vergiler[j]);
      if mevcut = nil then
      begin
        self.Kalemler[i].Vergiler[j].Clone(yeni);
        self.Vergiler.Add(yeni);
        self.Vergiler.ToplamVergi := self.Vergiler.ToplamVergi + yeni.Tutar;
      end
      else
      begin
        mevcut.Tutar := mevcut.Tutar + self.Kalemler[i].Vergiler[j].Tutar;
        self.Vergiler.ToplamVergi := self.Vergiler.ToplamVergi + mevcut.Tutar;
      end;
    end;

end;

procedure TUBLfatura.ŞirketLogosuEkle(logoStr: string);
begin
  CompanyLogo := logoStr;
end;

procedure TUBLfatura.ŞirketİmzaResmiEkle(imzaStr : string);
begin
  SignLogo := imzaStr;
end;

function TUBLfatura.GetGeneralXSLT: string;
begin
  Result := GetGeneralXSLTbyFileName('');
end;

function TUBLfatura.GetGeneralXSLTbyFileName(byFileName: string = ''): string;
(*
  var
  stream: TMemoryStream;
*)
begin
  (*
    stream := TMemoryStream.Create;
    try
    if byFileName <> '' then
    begin
    stream.LoadFromFile(byFileName);
    Result := GetGeneralXSLTbyStream(stream);
    end
    else
    begin
    stream.WriteBuffer(xmls_efatura_gorsel, Length(xmls_efatura_gorsel));

    Result := GetGeneralXSLTbyStream(stream);
    end;
    finally
    stream.Free;
    end;
  *)
end;

function TUBLfatura.GetGeneralXSLTbyStream(byStream: TMemoryStream = nil): string;
begin
  if Assigned(byStream) then
  begin
    byStream.Position := 0;
    Result := EncodeBase64(byStream.Memory, byStream.Size);
  end
  else
    Result := '';
end;

function TVergiler.MevcutMu(vergi: TVergi): TVergi;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to self.Count - 1 do
    if (self[i].Kodu = vergi.Kodu) and (self[i].Oran = vergi.Oran) and (self[i].MuafiyetKodu = vergi.MuafiyetKodu) and
      (self[i].MuafiyetAciklama = vergi.MuafiyetAciklama) then
    begin
      Result := self[i];
      break;
    end;
end;

//
// ----------------------------------------------------------------------------------------------------------------------
//
procedure ChangeNode(parent: IXMLNode; Name, namespace, Value: String);
var
  node: IXMLNode;
begin
  node := parent.ChildNodes.FindNode(name, namespace);
  if node = nil then
    exit;
  if Value = '' then
  begin
    parent.ChildNodes.Remove(node);
    exit;
  end;
  node.Text := Value;
end;

procedure AddChildNode(node: IXMLNode; namespace, Name, Value: String);
var
  new: IXMLNode;
begin
  new := node.OwnerDocument.CreateElement(name, namespace);
  if Value <> '' then
    new.Text := Value;
  node.ChildNodes.Add(new);
end;

procedure AddChildNodeWN(node: IXMLNode; namespace, Name, Value: String);
begin
  if trim(Value) <> '' then
    AddChildNode(node, namespace, name, Value);
end;

function CreateChildNode(node: IXMLNode; namespace, Name: String): IXMLNode;
begin
  Result := node.OwnerDocument.CreateElement(name, namespace);
  node.ChildNodes.Add(Result);
end;

procedure AddSignature(Gonderici: TMuhatap; node: IXMLNode; namespace: string);
var
  nodesign_, node1, nodeSignatoryParty: IXMLNode;
  node2, child: IXMLNode;
begin
  if Not Assigned(node) then
    exit;

  // node:=CreateChildnode(node,NS_cac,PR_cac + ':Signature');
  node1 := node.OwnerDocument.CreateElement(PR_cbc + ':ID', NS_cbc); //
  node1.Text := Gonderici.VKNTCKN;
  
  {
  if Gonderici.VKNTCKN = 11 then
    node1.Attributes['schemeID'] := 'TCKN'
  else
   if Length(Gonderici.VKNTCKN then
    node1.Attributes['schemeID'] := 'VKN'
  else
    raise Exception.Create('VKNTCKN biçimi geçersiz (10 veya 11 hane olmalı)!');
  }

 //if Gonderici.Owner.Owner.ClassName='TdmFINANSBANK' then

  // 04-07-2017 Added 
  if Length(Gonderici.VKNTCKN)<10 then
    raise Exception.Create('Göndrici VKNTCKN biçimi geçersiz (10 veya 11 hane olmalı)!');
   node1.Attributes['schemeID'] := 'VKN_TCKN';

  node.ChildNodes.Add(node1);

  nodeSignatoryParty := CreateChildNode(node, NS_CAC, PR_cac + ':SignatoryParty');
  node1 := CreateChildNode(nodeSignatoryParty, NS_CAC, PR_cac + ':PartyIdentification');
  node2 := node.OwnerDocument.CreateElement(PR_cbc + ':ID', NS_cbc); //
  if Length(Gonderici.VKNTCKN) = 11 then
    node2.Attributes['schemeID'] := 'TCKN'
  else if Length(Gonderici.VKNTCKN) = 10 then
    node2.Attributes['schemeID'] := 'VKN';

  node2.Text := Gonderici.VKNTCKN;
  node1.ChildNodes.Add(node2);

  node1 := CreateChildNode(nodeSignatoryParty, NS_CAC, PR_cac + ':PostalAddress');
  AddChildNode(node1, NS_cbc, PR_cbc + ':StreetName', Gonderici.StreetName);
  AddChildNode(node1, NS_cbc, PR_cbc + ':BuildingNumber', Gonderici.BinaNo);
  AddChildNode(node1, NS_cbc, PR_cbc + ':CitySubdivisionName', Gonderici.Ilce);
  AddChildNode(node1, NS_cbc, PR_cbc + ':CityName', Gonderici.Il);
  AddChildNode(node1, NS_cbc, PR_cbc + ':PostalZone', Gonderici.PostalZone);
  child := node.OwnerDocument.CreateElement(PR_cac + ':Country', NS_CAC);
  node1.ChildNodes.Add(child);
  AddChildNode(child, NS_cbc, PR_cbc + ':IdentificationCode', Gonderici.UlkeKodu);
  AddChildNode(child, NS_cbc, PR_cbc + ':Name', Gonderici.Ulke);

  node1 := CreateChildNode(node, NS_CAC, PR_cac + ':DigitalSignatureAttachment');
  node2 := CreateChildNode(node1, NS_CAC, PR_cac + ':ExternalReference');
  AddChildNode(node2, NS_cbc, PR_cbc + ':URI', '#Signature');

end;

procedure MuhatapBilgileri(node: IXMLNode; muhatap: TMuhatap);
var
  new: IXMLNode;
  child: IXMLNode;
  i: Integer;
begin
  // party elemanına git
  try
  node := node.ChildNodes.First;
  // tüm alt elemanları temizle
   node.ChildNodes.Clear;

  // web adresi
  AddChildNode(node, NS_cbc, PR_cbc + ':WebsiteURI', muhatap.WebURI);
  // VKN/TCKN
  new := CreateChildNode(node, NS_CAC, PR_cac + ':PartyIdentification');
  child := node.OwnerDocument.CreateElement(PR_cbc + ':ID', NS_cbc);
  child.Text := muhatap.VKNTCKN;
  if Length(muhatap.VKNTCKN) = 11 then
    child.Attributes['schemeID'] := 'TCKN'
  else if Length(muhatap.VKNTCKN) = 10 then
    child.Attributes['schemeID'] := 'VKN'
  else
    raise Exception.Create('VKNTCKN biçimi geçersiz (10 veya 11 hane olmalı)!');
  new.ChildNodes.Add(child);

  // Tüzel şirket ünvan Vergi Kimlik No
  if Length(muhatap.VKNTCKN) = 10 then
  begin
    new := CreateChildNode(node, NS_CAC, PR_cac + ':PartyName');
    AddChildNode(new, NS_cbc, PR_cbc + ':Name', muhatap.Unvan);
    child := node.OwnerDocument.CreateElement(PR_cbc + ':Name', NS_cbc);
  end;
  // Adres
  new := CreateChildNode(node, NS_CAC, PR_cac + ':PostalAddress');
  AddChildNode(new, NS_cbc, PR_cbc + ':Room', '');
  AddChildNode(new, NS_cbc, PR_cbc + ':StreetName', muhatap.StreetName);
  AddChildNode(new, NS_cbc, PR_cbc + ':BuildingName', '');
  AddChildNode(new, NS_cbc, PR_cbc + ':BuildingNumber', muhatap.BinaNo);
  AddChildNode(new, NS_cbc, PR_cbc + ':CitySubdivisionName', muhatap.Ilce);
  AddChildNode(new, NS_cbc, PR_cbc + ':CityName', muhatap.Il);
  AddChildNode(new, NS_cbc, PR_cbc + ':PostalZone', muhatap.PostalZone);
  AddChildNode(new, NS_cbc, PR_cbc + ':Region', '');
  child := node.OwnerDocument.CreateElement(PR_cac + ':Country', NS_CAC);
  new.ChildNodes.Add(child);
  if Trim(muhatap.UlkeKodu)<>'' then
    AddChildNode(child, NS_cbc, PR_cbc + ':IdentificationCode', muhatap.UlkeKodu);
  AddChildNode(child, NS_cbc, PR_cbc + ':Name', muhatap.Ulke);
  // vergi dairesi
  child := CreateChildNode(node, NS_CAC, PR_cac + ':PartyTaxScheme');
  child := CreateChildNode(child, NS_CAC, PR_cac + ':TaxScheme');
  AddChildNode(child, NS_cbc, PR_cbc + ':Name', muhatap.VergiDairesi);
  // Contact
  child := CreateChildNode(node, NS_CAC, PR_cac + ':Contact');
  AddChildNode(child, NS_cbc, PR_cbc + ':Telephone', muhatap.Telephone);
  AddChildNode(child, NS_cbc, PR_cbc + ':Telefax', muhatap.Fax);
  AddChildNode(child, NS_cbc, PR_cbc + ':ElectronicMail', muhatap.email);
  // Şahıs şirket sahibi
  if Length(muhatap.VKNTCKN) = 11 then
  begin
    child := CreateChildNode(node, NS_CAC, PR_cac + ':Person');
    // Unvan ad-soyad tespiti
    i := LastDelimiter(' ', muhatap.Unvan);
    if i < 2 then
      raise Exception.Create('Ünvan biçimi uygun değil!');
    AddChildNode(child, NS_cbc, PR_cbc + ':FirstName', Copy(muhatap.Unvan, 0, i - 1));
    AddChildNode(child, NS_cbc, PR_cbc + ':FamilyName', Copy(muhatap.Unvan, i + 1, Length(muhatap.Unvan) - 2));
  end;
  except
     On ExMuhatap : Exception do
     LogAppLog('** ExMuhatap :'+ExMuhatap.Message);
  end;
end;

procedure MuhatapIhracat(node: IXMLNode; muhatap: TMuhatap);
var
  new: IXMLNode;
  child: IXMLNode;
  i: Integer;
begin
  // party elemanına git
  node := node.ChildNodes.First;
  // tüm alt elemanları temizle
  node.ChildNodes.Clear;

  // VKN/TCKN
  new := CreateChildNode(node, NS_CAC, PR_cac + ':PartyIdentification');
  child := node.OwnerDocument.CreateElement(PR_cbc + ':ID', NS_cbc);
  child.Text := 'EXPORT';
  child.Attributes['schemeID'] := 'PARTYTYPE';
  new.ChildNodes.Add(child);

  // Tüzel şirket ünvan Vergi Kimlik No
 // if Length(muhatap.VKNTCKN) = 10 then
  begin
    new := CreateChildNode(node, NS_CAC, PR_cac + ':PartyName');
    AddChildNode(new, NS_cbc, PR_cbc + ':Name', muhatap.Unvan);
    child := node.OwnerDocument.CreateElement(PR_cbc + ':Name', NS_cbc);
  end;
  // Adres Başlangıç
  new := CreateChildNode(node, NS_CAC, PR_cac + ':PostalAddress');;
  AddChildNode(new, NS_cbc, PR_cbc + ':CitySubdivisionName', muhatap.Ilce);
  AddChildNode(new, NS_cbc, PR_cbc + ':CityName', muhatap.Il);

  child := node.OwnerDocument.CreateElement(PR_cac + ':Country', NS_CAC);
  new.ChildNodes.Add(child);
  //AddChildNode(child, NS_cbc, PR_cbc + ':IdentificationCode', muhatap.UlkeKodu);
  AddChildNode(child, NS_cbc, PR_cbc + ':Name', muhatap.Ulke);
  // Adres Son....
  // vergi dairesi
  new := CreateChildNode(node, NS_CAC, PR_cac + ':PartyLegalEntity');
  AddChildNode(new, NS_cbc, PR_cbc + ':RegistrationName', muhatap.Unvan);
  AddChildNode(new, NS_cbc, PR_cbc + ':CompanyID', muhatap.VKNTCKN);

end;

procedure KalemEkle(node: IXMLNode; kalem: TKalem; BelgeParaBirimi: String);
var
  new: IXMLNode;
  child,c1,c2,c3, Allowancechild: IXMLNode;
  i: Integer;
begin
  // TEST için Swap
  new := CreateChildNode(node,NS_CAC,PR_cac+':InvoiceLine');
  //new := node.OwnerDocument.CreateElement(PR_cac + ':InvoiceLine', NS_cac);
  // TEST için Swap

  // Kalem numarası
  AddChildNode(new, NS_cbc, PR_cbc + ':ID', IntToStr(kalem.KalemNo));
  node.ChildNodes.Add(new);

  // notlar
  if kalem.Notlar <> nil then
    for i := 0 to kalem.Notlar.Count - 1 do
      AddChildNode(new, NS_cbc, PR_cbc + ':Note', kalem.Notlar[i]);

  // miktar
  child := CreateChildNode(new, NS_cbc, PR_cbc + ':InvoicedQuantity');
  child.Attributes['unitCode'] := StringReplace(GetEnumName(TypeInfo(TOlcuBirimleri), Ord(kalem.OlcuBirimi)), '_', '', []);
  child.Text := FldFloatStr(kalem.Miktar);

  // Kalem tutarı
  child := CreateChildNode(new, NS_cbc, PR_cbc + ':LineExtensionAmount');
  child.Attributes['currencyID'] := BelgeParaBirimi;
  child.Text := FldFloatStr(kalem.KalemTutar);

  // İhracatsa.. <Delivery> eklenecek
  if Assigned(kalem.Ihracat) then
  begin
    child := CreateChildNode(new, NS_CAC, PR_cac + ':Delivery');
    // Adres Eklensin
     c1 := CreateChildNode(child,NS_CAC, PR_cac + ':DeliveryAddress');
       AddChildNode(c1, NS_cbc, PR_cbc + ':StreetName', kalem.Ihracat.TeslimAdresi.StreetName);
       AddChildNode(c1, NS_cbc, PR_cbc + ':BuildingName', kalem.Ihracat.TeslimAdresi.BuildingName);
       AddChildNode(c1, NS_cbc, PR_cbc + ':BuildingNumber', kalem.Ihracat.TeslimAdresi.BuildingNumber);
       AddChildNode(c1, NS_cbc, PR_cbc + ':CitySubdivisionName', kalem.Ihracat.TeslimAdresi.CitySubdivisionName);
       AddChildNode(c1, NS_cbc, PR_cbc + ':CityName', kalem.Ihracat.TeslimAdresi.CityName);
       AddChildNode(c1, NS_cbc, PR_cbc + ':PostalZone', kalem.Ihracat.TeslimAdresi.PostalZone);
       c2 := CreateChildNode(c1,NS_CAC, PR_cac + ':Country');
         AddChildNode(c2, NS_cbc, PR_cbc + ':Name', kalem.Ihracat.TeslimAdresi.CountryName);
    //DeliveryTerms
      c1 := CreateChildNode(child,NS_CAC, PR_cac + ':DeliveryTerms');
       c2 := CreateChildNode(c1,NS_cbc, PR_cbc + ':ID');
       c2.Attributes['schemeID'] := 'INCOTERMS';
       c2.Text := kalem.Ihracat.IncoTerms;
    //Shipment
      c1 := CreateChildNode(child,NS_CAC, PR_cac + ':Shipment');
       AddChildNode(c1, NS_cbc, PR_cbc + ':ID', '');
       c2 := CreateChildNode(c1,NS_CAC, PR_cac + ':GoodsItem');
        AddChildNode(c2, NS_cbc, PR_cbc + ':RequiredCustomsID', kalem.Ihracat.RequiredCustomsID);
       c2 := CreateChildNode(c1,NS_CAC, PR_cac + ':ShipmentStage');
        AddChildNode(c2, NS_cbc, PR_cbc + ':TransportModeCode', kalem.Ihracat.TransportModeCode);
       c2 := CreateChildNode(c1,NS_CAC, PR_cac + ':TransportHandlingUnit');
        c3 := CreateChildNode(c2,NS_CAC, PR_cac + ':ActualPackage');
         AddChildNode(c3, NS_cbc, PR_cbc + ':ID', kalem.Ihracat.PackagingID);
         AddChildNode(c3, NS_cbc, PR_cbc + ':Quantity', kalem.Ihracat.Quantity.ToString);
         AddChildNode(c3, NS_cbc, PR_cbc + ':PackagingTypeCode', kalem.Ihracat.PackagingTypeCode);
  end;

  // indirim
  if kalem.IndirimTutar.HasValue then
  begin
    Allowancechild := CreateChildNode(new, NS_CAC, PR_cac + ':AllowanceCharge');
    AddChildNode(Allowancechild, NS_cbc, PR_cbc + ':ChargeIndicator', 'false');
    // if kalem.IndirimCarpan>0 then
    // begin
    AddChildNode(Allowancechild, NS_cbc, PR_cbc + ':MultiplierFactorNumeric', FldFloatStr(kalem.IndirimCarpan));
    // end;
    child := CreateChildNode(Allowancechild, NS_cbc, PR_cbc + ':Amount');
    child.Text := FldFloatStr(kalem.IndirimTutar);
    child.Attributes['currencyID'] := BelgeParaBirimi;

    child := CreateChildNode(Allowancechild, NS_cbc, PR_cbc + ':BaseAmount');
    child.Text := FldFloatStr(kalem.KalemTutar);
    child.Attributes['currencyID'] := BelgeParaBirimi;
  end;

  // vergiler
  if kalem.Vergiler.Count > 0 then
  begin
    child := CreateChildNode(new, NS_CAC, PR_cac + ':TaxTotal');
    VergiEkle(child, kalem.Vergiler, BelgeParaBirimi);
  end;
  // Detay
  child := CreateChildNode(new, NS_CAC, PR_cac + ':Item');
  AddChildNode(child, NS_cbc, PR_cbc + ':Name', kalem.UrunAdi);
  if kalem.UrunKodu <> '' then
  begin
    child := CreateChildNode(child, NS_CAC, PR_cac + ':SellersItemIdentification');
    AddChildNode(child, NS_cbc, PR_cbc + ':ID', kalem.UrunKodu);
  end;

  // birim fiyat
  child := CreateChildNode(new, NS_CAC, PR_cac + ':Price');
  child := CreateChildNode(child, NS_cbc, PR_cbc + ':PriceAmount');
  // 29.01.2017 5 Hane Birim Fiyat
  child.Text := FldFloatStr(kalem.BirimFiyat,5);
  child.Attributes['currencyID'] := BelgeParaBirimi;
end;

procedure VergiEkle(node: IXMLNode; Vergiler: TVergiler; BelgeParaBirimi: String);
var
  child: IXMLNode;
  i: Integer;
begin
  node.ChildNodes.Clear;

  child := CreateChildNode(node, NS_cbc, PR_cbc + ':TaxAmount');
  child.Text := FldFloatStr(Vergiler.ToplamVergi);
  child.Attributes['currencyID'] := BelgeParaBirimi;
  for i := 0 to Vergiler.Count - 1 do
    VergiEkle(node, Vergiler[i], BelgeParaBirimi);

  // <cbc:TaxAmount currencyID="TRL">90</cbc:TaxAmount>
end;

procedure VergiEkle(node: IXMLNode; vergi: TVergi; BelgeParaBirimi: String);
var
  new: IXMLNode;
  child: IXMLNode;
  FloatDeğer : String;
begin
  if vergi = nil then
    exit;
  child := CreateChildNode(node, NS_CAC, PR_cac + ':TaxSubtotal');
  // matrah
  if vergi.Matrah.HasValue then
  begin
    new := CreateChildNode(child, NS_cbc, PR_cbc + ':TaxableAmount');
    new.Text := FldFloatStr(vergi.Matrah);
    new.Attributes['currencyID'] := BelgeParaBirimi;
  end;
  // vergi tutar
  new := CreateChildNode(child, NS_cbc, PR_cbc + ':TaxAmount');
  new.Text := FldFloatStr(vergi.Tutar);
  new.Attributes['currencyID'] := BelgeParaBirimi;

  // oran
  if vergi.Oran.HasValue then
  begin
   if vergi.isTevkifat then
     FloatDeğer := FldFloatStr(vergi.Oran,0)
   else
     FloatDeğer := FldFloatStr(vergi.Oran);
    AddChildNode(child, NS_cbc, PR_cbc + ':Percent', FloatDeğer);
  end;

  // vergi bilgileri
  new := CreateChildNode(child, NS_CAC, PR_cac + ':TaxCategory');

  // muhafiyet bilgisi
  if vergi.MuafiyetKodu <> '' then
  begin
    AddChildNode(new, NS_cbc, PR_cbc + ':TaxExemptionReasonCode', vergi.MuafiyetKodu);
    AddChildNode(new, NS_cbc, PR_cbc + ':TaxExemptionReason', vergi.MuafiyetAciklama);
    // AddChildNode(new, NS_cac, PR_cac + ':TaxScheme', '');
  end;

  if vergi.Adi <> '' then
  begin
    new := CreateChildNode(new, NS_CAC, PR_cac + ':TaxScheme');
    AddChildNode(new, NS_cbc, PR_cbc + ':Name', vergi.Adi);
    AddChildNode(new, NS_cbc, PR_cbc + ':TaxTypeCode', vergi.Kodu);
  end;
end;


procedure TevkifatEkle(node: IXMLNode; vergi: TVergi; BelgeParaBirimi: String);
var
  new : IXMLNode;
begin
   new := CreateChildNode(node, NS_cbc, PR_cbc + ':TaxAmount');
   new.Text := FldFloatStr(vergi.Matrah);
   new.Attributes['currencyID'] := BelgeParaBirimi;
   VergiEkle(node,vergi, BelgeParaBirimi);
end;


procedure PricingExchangeEkle(node : IXMLNode;Fatura: TUBLfatura);
var
  idx : Integer;
  pricingEx, child: IXMLNode;
begin
  //  <cac:TaxTotal> den önce
  idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode('TaxTotal', NS_CAC));
  if idx<0 then
     Exit;
  pricingEx := CreateChildNode(node, NS_CAC, PR_cac + ':PricingExchangeRate');
  node.ChildNodes.Insert(idx, pricingEx);
  AddChildNode(pricingEx, NS_cbc, PR_cbc + ':SourceCurrencyCode', Fatura.BelgeParaBirimi);
  AddChildNode(pricingEx, NS_cbc, PR_cbc + ':TargetCurrencyCode', 'TRY');
  AddChildNode(pricingEx, NS_cbc, PR_cbc + ':CalculationRate', FldFloatStr(Fatura.CurrExchange,4));
end;

procedure DipToplam(node: IXMLNode; Fatura: TUBLfatura);
var
  child: IXMLNode;
begin
  child := node.ChildNodes.FindNode('LegalMonetaryTotal', NS_CAC);
  TutarDegistir(child, 'LineExtensionAmount', NS_cbc, Fatura.BelgeParaBirimi, Fatura.KalemToplamTutar);
  TutarDegistir(child, 'TaxExclusiveAmount', NS_cbc, Fatura.BelgeParaBirimi, Fatura.VergiHaricTutar);
  TutarDegistir(child, 'TaxInclusiveAmount', NS_cbc, Fatura.BelgeParaBirimi, Fatura.VergiDahilTutar);
  TutarDegistir(child, 'AllowanceTotalAmount', NS_cbc, Fatura.BelgeParaBirimi, Fatura.ToplamIndirim);
  TutarDegistir(child, 'PayableAmount', NS_cbc, Fatura.BelgeParaBirimi, Fatura.OdenecekTutar)
end;


procedure AddSatışSipariş(node: IXMLNode; Fatura : TUBLFatura);
var
  new, child: IXMLNode;
  i : Integer;
  idx: Integer;
begin
  if  Assigned(node) then
   idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode('LineCountNumeric', NS_cbc))
  else idx :=-1;
  if idx<0 then
      raise Exception.Create('Hatalı UBL Fatura.govde (ASS1)');
  if Assigned(Fatura) and Assigned(Fatura.Siparisler)and(Fatura.Siparisler.Count>0) then
  begin
  for I := 0 to Fatura.Siparisler.Count-1 do
   begin
    new := CreateChildNode(node, NS_CAC, PR_cac + ':OrderReference');
    node.ChildNodes.Insert(idx + 1 , new);
    AddChildNode(new, NS_cbc, PR_cbc + ':ID', Fatura.Siparisler[i].EvrakNo); // Satış Sipariş Numarası
    AddChildNode(new, NS_cbc, PR_cbc + ':IssueDate', FormatDateTime('yyyy-mm-dd', Fatura.Siparisler[i].Tarih));
   end;
  end;
end;

procedure AddIrsaliye(node: IXMLNode; Fatura : TUBLFatura);
var
  new, child: IXMLNode;
  i : Integer;
  idx: Integer;
begin
  if  Assigned(node) then
   idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode('LineCountNumeric', NS_cbc))
  else idx :=-1;
  if idx<0 then
      raise Exception.Create('Hatalı UBL Fatura.govde (AI1)');

  if Assigned(Fatura) and Assigned(Fatura.Irsaliyeler)and(Fatura.Irsaliyeler.Count>0) then
  begin
  for I := 0 to Fatura.Irsaliyeler.Count-1 do
   begin
    new := CreateChildNode(node, NS_CAC, PR_cac + ':DespatchDocumentReference');
    //idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode('Signature', NS_cac));
    node.ChildNodes.Insert(idx + 1, new);
    AddChildNode(new, NS_cbc, PR_cbc + ':ID', Fatura.Irsaliyeler[i].IrsaliyeNo); // İrsaliye Numarası
    AddChildNode(new, NS_cbc, PR_cbc + ':IssueDate', FormatDateTime('yyyy-mm-dd', Fatura.Irsaliyeler[i].Tarih));
   end;
  end;
end;

procedure TutarDegistir(parent: IXMLNode; Name, namespace, pb: String; Value: Extended; ÖzelFormat : Integer =2);
var
  node: IXMLNode;
begin
  node := parent.ChildNodes.FindNode(name, namespace);
  if node = nil then
    exit;
  node.Text := FldFloatStr(Value,ÖzelFormat);
  node.Attributes['currencyID'] := pb;
end;

procedure eArsivBilgiEkle(node: IXMLNode; Fatura: TUBLfatura);
var
  new, child: IXMLNode;
  idx: Integer;
begin
  new := CreateChildNode(node, NS_CAC, PR_cac + ':AdditionalDocumentReference');
  idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode('Signature', NS_CAC));
  node.ChildNodes.Insert(idx, new);
  if Trim(Fatura.Alici.email)<>'' then
   AddChildNode(new, NS_cbc, PR_cbc + ':ID', 'ELEKTRONIK') // KAGIT veya ELEKTRONIK
  else
    AddChildNode(new, NS_cbc, PR_cbc + ':ID', 'KAGIT'); // KAGIT veya ELEKTRONIK

  AddChildNode(new, NS_cbc, PR_cbc + ':IssueDate', FormatDateTime('yyyy-mm-dd', Fatura.Tarih));
  AddChildNode(new, NS_cbc, PR_cbc + ':DocumentTypeCode', 'EREPSENDT');
end;

procedure CustInvIdEkle(node: IXMLNode; Fatura: TUBLfatura);
var
  new, child: IXMLNode;
  idx: Integer;
begin
  new := CreateChildNode(node, NS_CAC, PR_cac + ':AdditionalDocumentReference');
  idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode('Signature', NS_CAC));
  node.ChildNodes.Insert(idx, new);
  AddChildNode(new, NS_cbc, PR_cbc + ':ID', Fatura.No); // KAGIT veya ELEKTRONIK
  AddChildNode(new, NS_cbc, PR_cbc + ':IssueDate', FormatDateTime('yyyy-mm-dd', Fatura.Tarih));
  AddChildNode(new, NS_cbc, PR_cbc + ':DocumentTypeCode', 'CUST_INV_ID');
end;

procedure FaturaStyleSheet(node: IXMLNode; Fatura: TUBLfatura);
var
  new, child: IXMLNode;
  Gorsel    : UTF8String;
  fGorselName,
  LogoBase64: String;
  idx: Integer;
begin
  fGorselName:='';
  //if Fatura.OwnerClassName='TdmFINANSBANK' then fGorselName := 'Fatura.gorsel.efb.xslt';
  Gorsel := Get_GIB_fatura_gorsel_from_res(fGorselName);
  // if fatura.Gorsel = '' then
  // exit;
  if Gorsel = '' then
   begin
    LogAppLog(c_FaturaGorsel+' Dosya görseli açılamadı!');
    exit;
   end;

  if Fatura.isEArchive then
     Gorsel := StringReplace(Gorsel, '<xsl:text>e-Fatura</xsl:text>', '<xsl:text>e-Arşiv Fatura</xsl:text>', [rfReplaceAll]);

  new := CreateChildNode(node, NS_CAC, PR_cac + ':AdditionalDocumentReference');

  // gönderi bilgilerinden öncesine ekleyelim
  idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode('Signature', NS_CAC));
  // idx := node.ChildNodes.IndexOf(node.ChildNodes.FindNode ('AccountingSupplierParty', NS_cac));
  node.ChildNodes.Insert(idx, new);

  // görsel dosyasını yükleyelim
  AddChildNode(new, NS_cbc, PR_cbc + ':ID', '1');
  AddChildNode(new, NS_cbc, PR_cbc + ':IssueDate', FormatDateTime('yyyy-mm-dd', Fatura.Tarih));
  // AddChildNode(new, NS_cbc, PR_cbc + ':IssueTime', '00:00:00');
  // AddChildNode(new, NS_cbc, PR_cbc + ':DocumentTypeCode', 'XSLT');
  AddChildNode(new, NS_cbc, PR_cbc + ':DocumentType', 'XSLT');
  child := CreateChildNode(new, NS_CAC, PR_cac + ':Attachment');
  child := CreateChildNode(child, NS_cbc, PR_cbc + ':EmbeddedDocumentBinaryObject');
  child.Attributes['characterSetCode'] := 'UTF-8';
  child.Attributes['encodingCode'] := 'Base64';
  child.Attributes['filename'] := Fatura.No + '.xslt';
  child.Attributes['mimeCode'] := 'application/xml';

  //Gorsel := Get_GIB_fatura_gorsel_from_res;
  LogoBase64 := '';//Get_GIB_Logo_from_res;
  Gorsel := StringReplace(Gorsel, '#GIB_LOGO#', LogoBase64, [rfReplaceAll]);
  if (Fatura.CompanyLogo <> '') then
  begin
    Gorsel := StringReplace(Gorsel, '#COMPANY_LOGO#', Fatura.CompanyLogo, [rfReplaceAll]);
  end
  else
  begin
    Gorsel := StringReplace(Gorsel,
      '<img style="width:100%;" align="middle" alt="Company Logo" src="data:image/jpeg;base64,#COMPANY_LOGO#"/>', '', [rfReplaceAll]);
  end;

  if (Fatura.SignLogo <> '') then
  begin
    Gorsel := StringReplace(Gorsel, '#COMPANY_SIGN#', Fatura.SignLogo, [rfReplaceAll]);
  end
  else
  begin
    Gorsel := StringReplace(Gorsel,
      '<img height="30px" style="width:80%;" align="center" alt="Company Sign" src="data:image/jpeg;base64,#COMPANY_SIGN#"/>', '', [rfReplaceAll]);

  end;

  // child.Text := EncodeBase64(Gorsel[0],Length(Gorsel));
  child.Text := TNetEncoding.Base64.Encode(Gorsel);
end;

//----------------------------
function GetSenaryoEnumName(_Senaryo:TFaturaSenaryo): String;
begin
  Result:=GetEnumName(System.TypeInfo(TFaturaSenaryo),Ord(_Senaryo));
end;

function GetSenaryoEnumValue(_SenaryoName:string): TFaturaSenaryo;
begin
  try
   Result := TFaturaSenaryo(GetEnumValue(TypeInfo(TFaturaSenaryo), _SenaryoName));
  except
  on ex3:exception do
    logAppLog('** GetSenaryoEnumValue : Fatura Senaryo Seçilemedi! '+ex3.Message);
  end;
end;

function GetFaturaTipiFromName(Name: String): TFaturaTipi;
begin
    try
      Result := TFaturaTipi(GetEnumValue(TypeInfo(TFaturaTipi), Name));
    except
  on ex4:exception do
    logAppLog('** GetFaturaTipiFromName : Fatura Tipi Seçilemedi! '+ex4.Message);
    end;

end;

Function GetUlkeCodeFromName(Name: String): String;
var
  i: Integer;
begin

  for i := 0 to High(Ulkeler) do
  begin
    if Name = Ulkeler[i].UlkeAdı then
    begin
      Result := Ulkeler[i].UlkeKod;
      break;
    end;
  end;
end;

function GetUlkeNameFromCode(Code: String): String;
var
  i: Integer;
begin
  for i := 0 to High(Ulkeler) do
  begin
    if Code = Ulkeler[i].UlkeKod then
    begin
      Result := Ulkeler[i].UlkeAdı;
      break;
    end;
  end;
end;


function CreateUBLFatura(Fatura: TUBLfatura; FaturaClass: string = 'eFatura'): String;
var
  i  : Integer;
  baseXml: string;
  doc: IXMLDocument;
  parent, faturatipi, node, new : IXMLNode;
  NoteList : TStrings;
  DovizliFatura : Boolean;
  InvoicePos : Integer;
  fGovdeName : string;
begin
  fGovdeName:='';
  if Fatura.Owner.ClassName='TdmFINANSBANK' then fGovdeName := 'Fatura.Govde.efb.xml';

  if not Assigned(Fatura) then raise Exception.Create('UBL Fatura ataması yapılmamış! (UBLFatura=NULL)');

  baseXml := Get_GIB_base_from_res(fGovdeName);
  if trim(baseXml) = '' then raise Exception.Create('KAYNAK FATURA_GOVDE yüklenemedi! ('+fGovdeName+' Bulunamadı)');

  if FaturaClass='eArsiv' then Fatura.isEArchive:= True;

  doc := LoadXMLData(baseXml);
  doc.Encoding := 'UTF-8';
  doc.Options := doc.Options + [doNodeAutoIndent];

  parent := doc.DocumentElement;

  NoteList := TStringList.Create;
  try    //1
    if Not Fatura.isEArchive then
    if Fatura.ProviderName='FIT' then
     begin //FaturaNo yu /ID) sil
      ChangeNode(parent, 'ID', NS_cbc, '');
      // CustInvID Eklenecek
      CustInvIdEkle(parent, Fatura);
     end ;


     // Fatura NO ayarlandı
    ChangeNode(parent, 'ID', NS_cbc, Fatura.No);

    // ETTN
    ChangeNode(parent, 'UUID', NS_cbc, Fatura.ETTN);

    // fatura tarihi
    ChangeNode(parent, 'IssueDate', NS_cbc, FormatDateTime('yyyy-MM-dd', Fatura.Tarih));
    // fatura saat
    ChangeNode(parent, 'IssueTime', NS_cbc, FormatDateTime('hh:mm:ss', Fatura.Saat)); // FormatDateTime('hh:mm:ss+02:00', Fatura.Saat)

    // fatura senaryosu
    node := parent.ChildNodes.FindNode('ProfileID', NS_cbc);
    // node.Text := GetEnumName(TypeInfo(TFaturaSenaryo), Ord(fatura.Senaryo));
    node.Text := GetEnumName(TypeInfo(TFaturaSenaryo), Ord(fatura.Senaryo));//Fatura.Senaryo;

    // fatura tipi
    faturatipi := parent.ChildNodes.FindNode('InvoiceTypeCode', NS_cbc);
    faturatipi.Text := GetEnumName(TypeInfo(TFaturaTipi), Ord(Fatura.Tipi));

    // my.
    ChangeNode(parent, 'DocumentCurrencyCode', NS_cbc, Fatura.BelgeParaBirimi);
    // my.
    ChangeNode(parent, 'LineCountNumeric', NS_cbc, Fatura.Kalemler.Count.ToString);

    // signature
    AddSignature(Fatura.Gonderici, parent.ChildNodes.FindNode('Signature', NS_CAC), NS_CAC);

    // eArşiv için AdditionalDocumentReference
    if Fatura.isEArchive then
      eArsivBilgiEkle(parent, Fatura);

    // satıcı
    if Fatura.Gonderici <> nil then
      MuhatapBilgileri(parent.ChildNodes.FindNode('AccountingSupplierParty', NS_CAC), Fatura.Gonderici);

    // müşteri  Alıcı
    if Fatura.isEIhracat then
     begin
       MuhatapBilgileri(parent.ChildNodes.FindNode('AccountingCustomerParty', NS_CAC), Fatura.Gümrük_Müsteşarlığı);
       MuhatapIhracat(parent.ChildNodes.FindNode('BuyerCustomerParty', NS_CAC), Fatura.Alici);
     end
    else
     begin
      MuhatapBilgileri(parent.ChildNodes.FindNode('AccountingCustomerParty', NS_CAC), Fatura.Alici);
      //BuyerCustomerParty ihtiyaç Yok Silinsin
      node := parent.ChildNodes.FindNode('BuyerCustomerParty', NS_CAC);
      if Assigned(node) then
       parent.ChildNodes.Remove(node);
     end;

    // Fatura notu ekle // my
    if Assigned(Fatura.Notlar) then
      for i := 0 to Fatura.Notlar.Count - 1 do
        NoteList.Add(Fatura.Notlar[i]);
    if (Fatura.BelgeParaBirimi='TL') or (Fatura.BelgeParaBirimi='TRL') or (Fatura.BelgeParaBirimi='TRY') then
     DovizliFatura:=False
    else
     DovizliFatura:=True;

    if DovizliFatura then
      NoteList.Add('Döviz Kuru : 1 '+Fatura.BelgeParaBirimi+' = '+FldFloatStr(Fatura.CurrExchange,4)+' TL');

    if NoteList.Count>0 then
     for i := 0 to NoteList.Count-1 do
      begin
        new := doc.CreateElement(PR_cbc + ':Note', NS_cbc);
        new.Text := NoteList[i];
        new.Attributes['languageID'] := 'tr-TR';
        parent.ChildNodes.Insert(parent.ChildNodes.IndexOf(faturatipi) + 1, new);  
      end;

    // Vergiler
    node := parent.ChildNodes.FindNode('TaxTotal', NS_CAC);
    VergiEkle(node, Fatura.Vergiler, Fatura.BelgeParaBirimi);

    node := parent.ChildNodes.FindNode('WithholdingTaxTotal', NS_CAC);
    if Assigned(node) then
    begin
      if Assigned(Fatura.Tevkifat) then
      begin
        TevkifatEkle(node, Fatura.Tevkifat, Fatura.BelgeParaBirimi);
      end
      else
        parent.ChildNodes.Remove(node);
    end;

    //Varsa İrsaliye Bilgileri
    // Önce bu node eklenecek Sonraki(Sipariş Bilgileri) üstüne çıkacak
    AddIrsaliye(Parent,Fatura);

    //Varsa Sipariş Bilgileri
    AddSatışSipariş(Parent,Fatura);

    // Dip toplamlar
    DipToplam(parent, Fatura);
    if DovizliFatura then
     PricingExchangeEkle(parent,Fatura);

    // Kalem ekle
    for i := 0 to Fatura.Kalemler.Count - 1 do
      KalemEkle(parent, Fatura.Kalemler[i], Fatura.BelgeParaBirimi);

    // işler bitince Artık GIB_LOGO ve CompanyLOGO eklenebilir.
    // fatura görseli

    FaturaStyleSheet(parent, Fatura);
    Result := doc.Xml.Text;
    Result := StringReplace(Result, '<?xml version="1.0"?>','<?xml version="1.0" encoding="utf-8"?>',[rfReplaceAll]);
    {
    if OwnerClassName='TdmFINANSBANK' then
     begin
       InvoicePos := Pos('<Invoice', Result);
       Delete(Result,1,InvoicePos-1);
     end;
     }
   {$IFDEF WRITETESTXML}
     // Dosyaya kaydet
     TFile.WriteAllText('Fatura_final.xml', Result);
    {$ENDIF}
  finally  // try 1
    NoteList.Free;
  end;

end;

end.

