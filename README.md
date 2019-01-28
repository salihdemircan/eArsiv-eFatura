- 1. GİRİŞ İçindekiler
- 2. TEST HESAPLARI
- 3. WEB SERVİS METODLARI ÖZET TABLOSU
- 4. WEB SERVİS METODLARI DETAYLARI
- 5. E-FATURA ENTEGRASYON HAZIRLIĞI
- 6. E- ARŞİV FATURA ENTEGRASYON HAZIRLIĞI
- 7. OTURUM AÇMA - LOGİN
- 8. ÇIK IŞ – LOGOUT
   - 8.1. E-ARŞİV XML’İNİN E-FATURA XML’İNDEN FARKLILIKLARI
   - 8.2. PAYMENTMEANS KODLARI
- 9. FATURA GÖNDERME - SENDINVOICE

   - ❖ UBL-TR ILE FATURA GÖNDERME

- 10. E-FATURA NESNESI GÖNDER-SENDPARKINVOICEOBJECT
   - 10.1. E-FATURA NESNESI GÖNDERME
   - 10.2. E-ARŞIV NESNESI GÖNDERME
..................................................................................................................................................
- 11. TASLAK FATURA YÜKLEME - LOADINVOICE
- 12. E-FATURA OKU - GETINVOICE
- 13. E-FATURA DURUM SORGULAMA - GETINVOICESTATUS
- 14. E- FATURA İŞARETLEME - MARKINVOICE
- 15. E-FATURA CEVAP HAZIRLAMA - PREPAREINVOICERESPONSE
- 16. E-FATURA CEVAP GÖNDERME - SENDINVOICERESPONSE
- 17. MÜKELLEF LISTESI ALMA - GETUSERLIST
- 18. MÜKELLEF KONTROLÜ - CHECKUSER
- 19. E-FATURA CEVAP VERME - SENDINVOICERESPONSEWITHSERVERSIGN
- 20. E-FATURA MÜKELLEF LISTESI- GETUSERLISTBINARY- SIKIŞTIRILMIŞ
- 21. E-FATURA ZARF GETIR - GETENVELOPE
- 22. E-FATURA ZARF DURUM SORGULAMA - GETENVELOPESTATUS
- 23. E- FATURA ZARF İŞARET LE - MARKENVELOPE
- 24. E-FATURA TIPIYLE BERABER GETIR - GETINVOICEWITHTYPE
- 25. E- FATURA ZARF XML’I - GETAPPLICATIONRESPONSE
- 26. E- ARŞIV FATURASI GÖN DERME(WRITETOARCHIVEEXTENDED)
- 27. E- ARŞIV FATURASINI A LMA - READFROMARCHIVE
- 28. E- ARŞIV FATURASINI İ PTAL ETME - CANCELEARCHIVEINVOICE
- 29. E- ARŞIV RAPOR LISTES INI ALMA - GETEARCHIVEREPORT
- 30. E- ARŞIV RAPOR DETAYI ALMA - READEARCHIVEREPORT
- 31. E- ARŞIV FATURA DURUM - GETEARCHIVEINVOICESTATUSREQUEST
   - HER HAKKI SAKLIDIR - © 

   - 31.1. E-ARŞIV FATURA DURUM KODLARI
   - 31.2. E-ARŞIV FATURA E-MAIL DURUM KODLARI
- 32. E- ARŞIV FATURASI TEK RARDAN MAIL GÖNDERILMESI - GETEMAILEARCHIVEINVOICE
- 33. FAULT HANDLING
- 34. FAULT HANDLING - GETEMAILEARCHIVEINVOICE
- 35. FATURA DURUMLARI
   - 35.1. GIDEN FATURA DURUMLARI
   - 35.2. GELEN FATURA DURUMLARI
- 36. İHRACAT E - FATURA
   - 36.1. İHRACAT E-FATURA UBL ÖRNEĞİ
   - 36.2. YOLCUBERABER E-FATURA UBL ÖRNEĞİ


## 1. Giriş

Bu doküman PARK e-Fatura ve e-Arşiv Fatura servislerinin kullanımı için, yazılım geliştirme ve sistem

entegrasyon uzmanları için hazırlanmıştır.

PARK e-Fatura ve e-Arşiv Fatura web servisi SOAP protokol tabanlı olarak geliştirilmiştir ve SOAP 1.

kullanmaktadır.

## 2. TEST HESAPLARI

Park e-Fatura sistemine entegre olmak için aşağıdaki WSDL dosyaları kullanılarak istemci oluşturulmaldır. E-

Fatura için sadece EFaturaService, E-Arşiv Fatura için her ikisi de kullanılacaktır. GİB tarafından tek bir test

VKN’sine izin verildiğinden, test ortamında ilgili test VKN’sinden yine aynı VKN’ye fatura düzenlenecektir.

Faturalar çekildiğinde başka faturalar da sonuç olarak dönerse bu aynı VKN ile ortak test yapılmasından

kaynaklıdır.

Test VKN: 7210452742

Test Portal adresi: https://efptest.parkentegrasyon.com.tr

e-Fatura ve e- **Arşiv Fatura:** https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx

e- **Arşiv** Fatura: https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx


## 3. WEB SERVİS METODLARI ÖZET TABLOSU

PARK web servis metodları tablosu yazılım geliştirme ve entegrasyon uzmanlarına web servis işlevlerini

özetleyerek aktarma amacı taşır.


METOD AMACI
Login Web servis istemcisinin(client) EFATURA Entegrasyon Platformuna
kimlik doğrulayarak giriş yapmasını sağlar.
Logout Web servis istemcisinin(client) EFATURA Entegrasyon Platformundan
güvenli çıkış yapmasını sağlar.
LoadInvoice EFATURA Entegrasyon Platformu üzerinden 1 yada daha fazla faturayı
taslak olarak kaydeder.
SendInvoice EFATURA Entegrasyon Platformu üzerinden 1 yada daha fazla faturayı
GIB (Gelir İdaresi Başkanlığı) EFATURA sistemine gönderir.
GetInvoice GIB (Gelir İdaresi Başkanlığı) EFATURA sisteminden gelen/giden
faturaları EFATURA Entegrasyon Platformu üzerinden getirir.
GetInvoiceStatus Faturanın durumunu Park sistemlerinden kontrol etmek için kullanılır.
GetInvoiceWithType GIB (Gelir İdaresi Başkanlığı) EFATURA sisteminden gelen/giden
faturaları EFATURA Entegrasyon Platformu üzerinden seçilen XML,
HTML veya PDF formatı ile getirir.
MarkInvoice Faturayı okundu olarak işaretler.
PrepareInvoiceResponse Alınan Ticari Faturalara kabul yada red cevabı göndermek için
kullanılacak imzasız uygulama yanıtını yaratır. Yaratılan bu uygulama
yanıtı müşteri tarfındaki uygulama tarafından müşteri elektronik imzası







Sayfa 6 / 86


ile onaylanıp SendInvoiceResponse metoduyla ticari faturaya kabul
yada red cevabı vermek için kullanılır.
SendInvoiceResponse Alınan Ticari Faturalara kabul yada red cevabı müşteri tarafında
imzalanarak göndermek için kullanılır.
SendInvoiceResponseWithServverSign Alınan Ticari Faturalara kabul yada red cevabı özel entegratör imzası ile
göndermek için kullanılır.
GetEnvelope GIB (Gelir İdaresi Başkanlığı) EFATURA sisteminden gelen/giden
zarfları EFATURA Entegrasyon Platformu üzerinden getirir.
GetEnvelopeStatus Zarfın durumunu Park sistemlerinden kontrol etmek için kullanılır.
GetUserList GIB EFATURA sistemine kayıtlı kullanıcıların listesini ve bilgilerini getirir.
MarkEnvelope Zarfı okundu olarak işaretler.
CheckUser GIB EFATURA sistemine kayıtlı kullanıcı varmı diye kontrol eder, varsa
bilgilerini getirir.
GetApplicationResponse Girilen zarfa ait bilgilerin döküman bilgilerini XML çıktısı olarak verir.
WriteToArchiveExtended GIB EFATURA sistemine kayıtlı kullanıcıların bilgilerini sıkıştırılmış
formatta getirir.
ReadFromArchive PARK EFATURA Arşiv Platformunda daha önce arşivlenen faturalara
erişimi sağlar.
CancelEArchiveInvoice PARK EFATURA Arşiv Platformunda daha önce arşivlenen faturalara
erişimi sağlar.
GetEArchiveInvoiceStatus PARK EFATURA Arşiv Platformunda daha önce arşivlenen faturaların,
fatura durumu,email durumu ve raporlama durumu sorgulamasını sağlar
GetEArchiveReport PARK EFATURA Arşiv Platformunda bulunan earşiv raporlarını erşimini
sağlar.
ReadEArchiveReport PARK EFATURA Arşiv Platformunda bulunan earşiv rapor’u içerisinde
faturaya erşimini saglar.
GetEmailEarchiveInvoice PARK EFATURA Arşiv Platformunda daha önce arşivlenen faturaların,
tekrardan mail olarak gönderilmesini sağlar.

## 4. WEB SERVİS METODLARI DETAYLARI

**Ortak Kullanılan REQUEST_HEADER Tipi**


ADI AÇIKLAMASI
SESSION_ID Login Metodunda sistem tarafında gönderilen SESSION_ID bilgisi.
Sonraki tüm metod çağrılarında parametre olarak metoda geçmelidir.
CLIENT_TXN_ID İstemci uygulama tarafından üretilen her istek için unique olması
beklenen transaction ID. Bu ID bilgisi DB de saklanmaktadır. Zorunlu
değildir ancak gönderilmesi tavsiye edilir.
INT_TXN_ID İstemci uygulamasında ana modül entitileri ile ilişkilendirelmek istenen
transaction ID. Zorunlu değildir.
INT_PARENT_TXN_ID İstemci uygulamasında ana modül entitileri ile ilişkilendirelmek istenen
ana transaction ID. Zorunlu değildir.
ACTION_DATE Metodun çağrılma tarihi
CHANGE_INFO Bu metod ile eğer verilerde bir değişiklik yapılacak ise o değişikliğe ait
bilgi. Zorunlu değildir.
REASON Aksiyonun çağrılma nedeni. Zorunlu değildir.
APPLICATION_NAME Metodu çağıran uygulamanın adı. Zorunlu değildir.
HOST_NAME Metodu çağıran Host’un adı. Zorunlu değildir.
CHANNEL_NAME Metodun çağrıldığı kanal adı.Zorunlu değildir.
SIMULATION_FLAG Metod çağrılır ancak arkadaki iş yapılmaz. Zorunlu değildir.
COMPRESSED İçerikte taşınan bilginin ZIP formatında sıkıştırılmış mı
gönderildiği/talep edildiği bilgisi. Bu parametre aşağıda ki servislerde
kullanılmaktadır:

- LoadInvoice
- PrepareInvoiceResponse







Sayfa 7 / 86

- SendInvoice
- SendInvoiceResponse

## 5. E-FATURA ENTEGRASYON HAZIRLIĞI

**Uygulamanızı tasarlarken aşağıdaki bilgileri okuduktan sonra servise login olunuz:**

- Login servisi ile giriş yaparak session id alınmalıdır. Session Id sistemimiz tarafında 8 saate kadar
    zaman aşımına uğramadığı için kullanıcı giriş yapınca session Id alıp bütün kullanım süresinde aynı
    session Id’yi kullanabilirsiniz. Portal tarafında session için 30 dk timeout süresi bulunmaktadır.
- GetUserList servisi ile GIB e-fatura mükellef listesini her 2 saatte bir Park sunucularından çekmeniz
    gerekmektedir. Güncel listeyi çektikten sonra Cari listenizdeki firmaların e-Fatura mükellefi olup
    olmadığını güncellemelisiniz.
- e-Fatura Mükellefi olan firmalara kesilen faturaları UBL-TR formatına dönüştürerek Park sunucularına
    gönderebilirsiniz. Her fatura içerisinde faturanın görüntülenmesini sağlayan XSLT dokümanı olmalıdır.
- SendInvoice servisi ile fatura gönderimi yapılmalıdır. Gönderim esnasında eğer faturanın alıcısına ait
    birden fazla Posta Kutusu bulunuyorsa ekranda seçilerek gönderilmesi sağlanmalıdır. Sadece 1 adet
    PK adresi varsa seçim yapılmadan gönderim sağlanabilir.
- GetInvoiceStatus servisi ile gelen/giden faturaların durumları sorgulanmalıdır. Nihai duruma erişene
    kadar faturanın durumu Park sunucularından sorgulanmalıdır.
- GetInvoice servisi ile firmaya gelen faturalar müşteri bilgisayarına aktarılır. Park sistemlerine gelen
    yeni faturaları almanız gerekmektedir. Servis ile yeni gelen en fazla 100 adet faturayı çekebilirsiniz.
    Eğer dönen listede 100 adet fatura varsa yeniden GetInvoice servisi çağırılarak başka fatura olup
    olmadığı kontrol edilmelidir. Dönen listede 100’den az fatura varsa tekrar sorgulama yapmaya gerek
    yoktur.
- MarkInvoice servisi ile başarılı şekilde teslim alınan faturalar Park sistemlerinde okundu olarak
    işaretlenir. Böylece bir sonra ki getinvoice servisi çağrılınca dönülmez.
- SendInvoiceResponseWithServerSign servisi ile gelen ticari bir faturaya kabul veya red yanıtı
    gönderebilirsiniz. Gelen bir faturaya 8 gün içerisinde kabul veya red gönderilebilir. 8 günü geçtikten
    sonra kabul/red yapılması engellenmelidir.
- Logout servisi ile kullanıcı e-Fatura programını kapatınca veya sizin belirlediğiniz bir sürede oturumu
    kapatabilirsiniz.

## 6. E- ARŞİV FATURA ENTEGRASYON HAZIRLIĞI

**Uygulamanızı tasarlarken aşağıdaki bilgileri okuduktan sonra servise login olunuz:**

- Login servisi ile giriş yaparak session id alınacak. Session Id sistemimiz tarafında 8 saate kadar zaman
    aşımına uğramadığı için kullanıcı giriş yapınca session id alıp bütün kullanım süresinde aynı session
    id kullanabilirsiniz. Portal tarafında sessionlar 30 dk timeout süresi bulunuyor.
- WriteToArchieveExtended servisi ile UBL formatlı e-arşiv faturası gönderilir.
- ReadFromArchive servisi ile faturanın ihtiyaç duyulan formatta alınır.
- CancelEArchiveInvoice servisi ile iptal edilen fatura GIB bildirilmek üzere gönderilir.
- GetEArchiveInvoiceStatus serivisi ile Park platformuna yüklemiş olduğunuz e-Arşiv faturasanın
    durumu, email durumu ve raporlanma durumunu sorgulayabilirsiniz.
- GetEArchiveReport servisi ile gelir idaresin raporlanan e-arşiv raporlarını dönemlik olarak
    çekebilirsiniz.
- ReadEArchiveReport serivisi ile gelir idaresinde gönderilen rapor detayını sorgulayabilirsiniz.
- GetEmailEarchiveInvoice servisi ile Park platformuna daha önceden yüklenen e-arşiv faturasının
    tekrardan mail gönderilmesini tetiklenmektedir.







Sayfa 8 / 86

## 7. OTURUM AÇMA - LOGİN

Tüm web servis yöntemlerinden önce oturum açılarak güvenlik doğrulaması yapılmalıdır. Ancak bu metod

hatasız çalıştırıldıktan sonra diğer metodlar kullanılabilir. Login() metodu çalıştırılmadan diğer yöntemlerin

çağırılması durumunda sistem otomatik olarak hata verecektir.

Web servis istemcisinin(client) EFATURA entegrasyon platformuna kimlik doğrulama yöntemiyle giriş

yapmasını sağlar. Webservise giriş için kullanılan kullanıcı bilgileri, portale giriş için kullanılan kullanıcı bilgileri

ile aynıdır.

Dönen cevap başarılı ise session_id tag’i altında e0904c98-d6fc-4b67-94ab-377c740b4b31 seklinde bir id

döner. Login komutu sonrası dönen session ID parametresi, login sonrası çağırılacak tüm metodlarda

parametre olarak kullanılmalıdır.

**Aşağıdaki Request Parame** treleri ile istek gönderilir:


ADI TİPİ^ AÇIKLAMASI
SESSION_ID STRING Request Header objesi içerisinde bulunan SESSION_ID login
servisinde -1 olarak gönderilmelidir.
USER_NAME STRING Sisteme bağlanacak kullanıcı adı.
PASSWORD STRING Kullanıcı şifresi

Örnek istek:


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:Login>
<!--Optional:-->
<par:userName>park-entegrasyon</par:userName>
<!--Optional:-->
<par:password>cmc2017*!Park</par:password>
</par:Login>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
SESSION_ID Login işlemi kabul edilmiş ise bundan sonraki metod çağrılarında kullanılacak
oturum bilgisi.

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<LoginResponse xmlns="http://parkentegrasyon.com.tr/">
<LoginResult>9a668193- 0619 - 4ab4-b39a-417bc71bcb68</LoginResult>
</LoginResponse>
</soap:Body>
</soap:Envelope>
^

Login()







Sayfa 9 / 86

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string username Kullanıcı Adı

string password Şifre

Dönüş Değeri:

TÜR AÇIKLAMA

string Metot çağrılarında kullanılacak oturum bilgisi

## Örnek Kod:

EFaturaService client = new EFaturaService();
string sessionID = string.Empty;
public void Login()
{
string token = client.Login("park-entegrasyon", "cmc2017*!Park");
sessionID = token;
}

## 8. ÇIK IŞ – LOGOUT

Web servis istemcisinin(client) EFATURA Entegrasyon Platformundan güvenli çıkış yapmasını sağlar.

Park platfromunda dönen cevap başarılı ise return_code 0 döner.

**Aşağıdaki Request Parametreleri ile istek gönderilir:**


ADI TİPİ^ AÇIKLAMASI
REQUEST_HEADER
:SESSION_ID

STRING Sonuçlandırılmak istenen oturumun session IDsi

Örnek istek:


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:Logout>
<!--Optional:-->
<par:sessionId>9a668193- 0619 - 4ab4-b39a-417bc71bcb68</par:sessionId>
</par:Logout>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Logout işleminin internal transaction ID’sidir.

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<LogoutResponse xmlns="http://parkentegrasyon.com.tr/">
<LogoutResult>169997470</LogoutResult>
</LogoutResponse>
</soap:Body>
</soap:Envelope>^
^







Sayfa 10 / 86

Logout()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

long Gönderilen request transcation kaydının id’si

## Örnek Kod:

public void Logout()
{
long txn = client.Logout(sessionID);
}

### 8.1. E- Arşiv XML’inin E - Fatura XML’inden farklılıkları


e- Arşiv ile e - Fatura arasındaki farklılıklar aşağıdaki gibidir:
e-Arşiv faturasında kağıt ve internet olmak üzere ikiye ayrılır.

e- **Arşiv Kağıt faturası:**

1. e-Arşiv fatura fatura tipi EARSIVFATURA olmalıdır.
2. e-arşiv faturasında issue_time zorunlu alanlardır.
3. AdditionalDocumentReference alanında DocumentTypeCode ve DocumentType alanları zorunlu
    alandır.
e- **Arşiv İnternet Faturası:**
1. Normal faturlarda belirtmiş olduğumuz alanlar bu faturada da zorunludur.
2. Delivery alanı doldurulmak zorunludur.
3. Ödeme(PaymentMeans) şekli belirtmilmesi zorunludur.
4. Fatura notlarına “e- **Arşiv İzni kapsamında elektronik ortamda iletilmiştir** ” ibaresinin eklenmesi
    gerekmektedir ve görsel olarak fatura üzerinde gösterilmelidir.


UBL- TR gönderen firmalar için aşağıdaki alanlar kullanılmalıdır:
AdditionalDocumentReference elemanı çoklanarak aşağıdaki cbc:ID standartlarına göre e- Arşiv Fatura
Bilgileri Doldurulacaktır.


<cac:AdditionalDocumentReference>

<cbc:ID>1</cbc:ID>

<cbc:IssueDate>2018- 03 - 21</cbc:IssueDate>

<cbc:DocumentTypeCode>SendingType</cbc:DocumentTypeCode>

<cbc:DocumentType>ELEKTRONIK</cbc:DocumentType>
</cac:AdditionalDocumentReference>


Delivery nodu doldurulacaktır:

<cac:Delivery>

<cac:CarrierParty>

<cac:PartyIdentification>
<cbc:ID schemeID="VKN">98745655</cbc:ID>

</cac:PartyIdentification>

<cac:PartyName>

<cbc:Name>taşıyıcı firma</cbc:Name>







Sayfa 11 / 86

</cac:PartyName>
<cac:PostalAddress>

<cbc:StreetName/>

<cbc:CitySubdivisionName/>

<cbc:CityName/>

<cbc:PostalZone/>
<cbc:Region/>

<cac:Country>

<cbc:Name/>

</cac:Country>

</cac:PostalAddress>
</cac:CarrierParty>

<cac:Despatch>

<cbc:ActualDespatchDate>2018- 03 - 21</cbc:ActualDespatchDate>

</cac:Despatch>

</cac:Delivery>

### 8.2. PAYMENTMEANS KODLARI

e-Arşiv ve e-Fatura ödeme paymentmeans tag’ini fatura içerisinde kullanıyorsanız bu alanın örnek kodları

aşağıdaki gibidir.

Örnek kodlar:


KOD AÇIKLAMASI
48 KREDIKARTI/BANKAKARTI
46 EFT/HAVALE
10 KAPIDAODEME
1 Diğerleri

**Diğer kodlar için aşağıdaki referanstan yararlanabilirsiniz:**

[http://www.unece.org/trade/untdid/d11a/tred/tred4461.htm](http://www.unece.org/trade/untdid/d11a/tred/tred4461.htm)

**Örnek XML yapısı:**

<cac:PaymentMeans>
<cbc:PaymentMeansCode>48</cbc:PaymentMeansCode>

<cbc:PaymentDueDate>2018- 03 - 21</cbc:PaymentDueDate>

<cbc:InstructionNote> Odeme Tipi : KREDIKARTI/BANKAKARTI- Web Adresi :

internet</cbc:InstructionNote>
</cac:PaymentMeans>

## 9. FATURA GÖNDERME - SENDINVOICE

EFATURA Entegrasyon Platformu üzerinden 1 ya da daha fazla faturayı GIB (Gelir İdaresi Başkanlığı)

EFATURA sistemine UBL-TR içeriğe sahip bir xml ile fatura gönderir. Ayrıca fatura gönderim esnasında hatalı

duruma geçen faturalar bu servis ile tekrar gönderilir.

Bu işlemden sonra gönderilen faturaların durumları GetInvoiceStatus servisi ile kontrol edilmelidir. Faturanın

durumu GIB’de hatalı olduğu zaman bu servis ile faturayı aynı ID fakat farklı UUID ile tekrar gönderilir.

### ❖ UBL-TR ILE FATURA GÖNDERME


❖ Aşağıdaki Request Parametreleri ile istek servise gönderilir, eğer dönen cevap başarılı ise servis
return_code 0 döner.


❖ Bu işlemlerden sonra faturanız gelir idaresine iletilir. Gelir idaresi imza kontrolü ve schematron
kontrolünü sagladıktan sonra alıcı firmaya faturayı iletir.


❖ İstek servise gönderilirken birarada kullanılması gereken parametreler SENDER ve RECEIVER
olabilir veya FROM ve TO olabilir. Bu kullanımın haricindeki durumlarda veya iki grubun da birarada
kullanıldığı durumlarda “duplicate association path: ENVELOPE.SENDER” hatası alınır.







Sayfa 12 / 86

**İstek Parametreleri**


ADI AÇIKLAMASI
SENDER Faturayı gönderecek gönderici birimin GIB’de tanımlı urn si
vkn Faturayı gönderecek gönderici birimin GIB’de tanımlı VKN/TCKN si
alias Faturayı gönderecek gönderici birimin GIB’de tanımlı alias’i (urn si)
RECEIVER Faturayı alacak birimin GIB de tanımlı urn’si
vkn Faturayı alacak birimin GIB de tanımlı VKN/TCKN si
alias Faturayı alacak birimin GIB de tanımlı GIB’de tanımlı alias’i (urn si)
INVOICE
:CONTENT


XML faturanın Base64Binary tipinde standart zip yöntemi ile
sıkıştırılmış/sıkıştırılmamış içeriği. Bir istek ile çoklu fatura gönderimi
yapılabilir. Çoklu göndermek için INVOICE elemanı çoklanmalıdır.
REQUEST_HEADER
:COMPRESSED


Binary Fatura içeriği sıkıştırılmış/sıkıştırılmamış bilgisi. Sıkıştırılmış ise Y
olmalıdır.

Örnek **İstek** :


<soapenv:Header/>
<soapenv:Body>
<wsdl:SendInvoiceRequest>
<REQUEST_HEADER>
<SESSION_ID>405bd2ef-4d22-4f99-ae98-08a151317611</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<SENDER vkn=" 7210452742 " alias="urn:mail:defaultgb@parkentegrasyon.com.tr"/>
<RECEIVER vkn=" 7210452742 " alias="urn:mail:defaultpk@parkentegrasyon.com.tr"/>
<INVOICE ID="PRK2017000000008" UUID="CCF959E8-11BA-4A08-B4BB-C6E27F4D546E">
<CONTENT xm:contentType="application/?"></content>
</wsdl:SendInvoiceRequest>
</soapenv:Body>
^

**Beklenen Cevap**

**Fatura başarı ile ulaştırılmış ise aşağıda ki değerleri içeren bir yanıt dönecektir.**


ADI AÇIKLAMASI
INT_TXN_ID Sunucuda işlemin gerçekleştirildiği transaction IDsi. Bu ID istemci tarafında
kaydedilerek oluşabilecek hatalarda referans olarak Park’a verilmelidir.
RETURN CODE RETURN CODE

Örnek Cevap:


<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
< SendInvoiceRequest xmlns="http://schemas.i2i.com/ei/wsdl">
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>1971827</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</ SendInvoiceRequest >
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>^
^

SendInvoice()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string alias GIB’de tanımlı urn

string vkn Vergi Kimlik Numarası veya TC

Dönüş Değeri:







Sayfa 13 / 86

TÜR AÇIKLAMA

int Return Code 0 ise işlem başarılı

long Gönderilen request transcation kaydının id’si

## Örnek Kod:

public void SendInvoice(INVOICE inv)
{
SendInvoiceRequestRECEIVER alici = new SendInvoiceRequestRECEIVER();
alici.vkn = "7210452742";
alici.alias = "urn:mail:defaultpk@parkentegrasyon.com.tr";

SendInvoiceRequestSENDER gonderici = new SendInvoiceRequestSENDER();
gonderici.vkn = "7210452742";
gonderici.alias = "urn:mail:defaultgb@parkentegrasyon.com.tr";

SendInvoiceRequest SReq = new SendInvoiceRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
COMPRESSED = "N",
},
SENDER = gonderici,
RECEIVER = alici,
INVOICE = new INVOICE[]
{
inv
}
};
SendInvoiceResponse SRes = client.SendInvoice(SReq);

if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");

## }

## 10. E-FATURA NESNESI GÖNDER-SENDPARKINVOICEOBJECT

EFatura Entegrasyon Platformu üzerinden fatura / e-arşiv fatura oluşturularak taslak olarak kaydedilir veya

doğrudan müşteriye gönderilir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise return code 0 döner.

**İstek Parametreleri:**


ADI AÇIKLAMASI
CustomerRef Müşterinin veritabanındaki ID’si
PricingExchangeRate Döviz Kuru Oranı
InvoiceDBRef Faturanın veritabanındaki ID’si
IsEArchive E-Arşiv Fatura ise true, değilse false
SendToCustomer Oluşturulan bu fatura taslak olarak kaydedilcekse “false”, direkt alıcıya
gönderilecekse “true” girilir.
TypeCode Fatura Tipi







Sayfa 14 / 86

ProfileId Fatura ait profile bu alan e-arşiv de EARSIVFATURA’dır

ID Fatura No

IssueDate Fatura tarihi

IssueTime Fatura saati

CurrencyCode Para birimi kodu

AllowanceChargeIndicator Iskonto ise “false”, artırım ise “true” girilir.

AllowanceChargeAmount Iskonto tutarı

LineExtensionAmount Mal/hizmet miktarı ile Mal/hizmet birim fiyatının çarpımı ile bulunan tutardır


(varsa iskonto düşülür).

AllowanceTotalAmount Toplam ıskonto tutarı girilir.

ChargeAmount Fiyat artırımı tutarı girilir.

TaxExclusiveAmount Vergiler hariç, ıskonto veya artırım dahil toplam tutar girilir.(Vergi Matrahı).

TaxInclusiveAmount Vergiler, ıskonto ve artırım dahil toplam tutar girilir.

PayableAmount Ödenecek tutar girilir.

CustomerParty Alıcı tarafın bilgilerini tutan elemandır.

SupplierParty Satıcı bilgilerini tutan elemandır.

TaxOrIdNo Vergi Kimlik Numarası

PartyName Taraf eğer kurum ise kurum ismi bu elemana metin olarak girilir.

TaxSchemeName Tarafın vergi kimlik numarası girilmişse bu alana vergi dairesi adı girilir.

WebSiteURI Tarafın web sayfası adresi metin olarak girilir.

Telephone Telefon numarası metin olarak girilecektir.

Telefax Fax numarası metin olarak girilecektir.

ElectronicMail Elektronik posta adresi metin olarak girilecektir.

Country Ülke adı metin olarak girilecek.

CityName Şehir adı metin olarak girilecek.

CitySubDivisionName İlçe/Semt adı bilgileri girilecek.

PostalZone Posta kodu bilgisi girilecek.

ID Vergi kimlik numarası girilecek.

StreetName Meydan/bulvar/cadde/sokak/küme evler/site adı bilgileri girilecektir.

BuildingNumber Bina veya bloğa ait dış kapı numarası girilecektir.

FirstName Şahsın ilk adı girilecek.

FamilyName Şahsın soyadı girilecek.

InvoiceTax Fatura vergileri ile ilgili bilgileri tutan elemandır.

CalculationSequenceNumeric Vergi hesaplamasında belli bir sıra izlenmesi veya birden fazla vergi


hesaplaması yapılması halinde ilgili sıra numarası girilecektir.

InvoiceTypeCode Vergi Tipi Kodu girilecektir. Her türlü mal ve hizmet satışı ile ilgili düzenlenen


faturalar için “SATIS” değerini; bir malın iadesi amacıyla alıcı tarafından
düzenlenen faturalar için “IADE” değerini; tevkifat içeren faturalar için
“TEVKIFAT” değerini; vergi istisnası içeren faturalar için “ISTISNA” değerini,
SGK faturaları için “SGK” değerini ve özel matrah faturaları için
“OZELMATRAH” değerini; ihraç kayıtlı satışlar ile DİİB ve geçici kabul rejimi
kapsamındaki satışlar için düzenlenen faturalarda “IHRACKAYITLI” değerini
alacaktır.

Name Verginin adı girilecek.

TaxableAmount Verginin üzerinden hesaplandığı tutar (matrah) bilgisi girilecektir.

TaxPercent Vergi yüzdesi girilecek.

TaxAmount Hesaplanan Vergi Tutarıdır.

SubTaxAmount Vergi tutarı (Tevkifatlı faturalarda TaxTotal ile TaxSubtotal içerisindeki


TaxAmount alanlarına farklı tutarlar gelebildiği için ayrıldı)

InvoiceLine Belgede geçen mal/hizmete ilişkin bilgilerin girildiği elemandır.

InvLineDBRef Fatura satırının veritabanındaki ID’si

ID Kalem sıra numarası girilir.

SellersItemID Satıcının mal/hizmete verdiği tanımlama bilgisi girilir

BuyersItemID Alıcının mal/hizmete verdiği tanımlama bilgisi girilir.







Sayfa 15 / 86


ManufacturersItemID Üreticinin mal/hizmete verdiği tanımlama bilgisi girilir.
ItemName Mal/hizmet adı serbest metin olarak girilir.
BrandName Mal/hizmet marka adı serbest metin olarak girilir.
ModelName Mal/hizmet model adı serbest metin olarak girilir.
ItemDescription Mal/hizmet açıklaması metin olarak girilir.
InvoicedQuantity Mal/hizmet miktarı birimi ile birlikte girilir.
UnitCode Ölçü birim kodu.
PriceAmount Mal/hizmetin birim fiyatı nümerik olarak girilir.
LineExtensionAmount Mal/hizmet miktarı ile Mal/hizmet birim fiyatının çarpımı ile bulunan tutardır
Currency Para birimi kodu.
ChargeIndicator Iskonto ise “false”, artırım ise “true” girilir.
AllowanceBaseAmount İskonto veya artırımın uygulandığı tutar
MultiplierFactorNumeric Iskonto veya artırım oranı numerik olarak girilir.
AllowanceAmount Iskonto/ Artırım Tutarı.
LineTaxes Satır Vergileri
AdditionalDocumentReference E-Arşiv Faturaya eklenmesi gereken, XSLT dosyası için ve gönderim tipi için
gerekli alanlar.EArşiv Faturada XSLT ve Gönderim tipi için
AdditionalDocumentReference alanı çoklanmalıdır.
ID XSLT için bu alana fatura UUID, Gönderim tipi için herhangi bir şey yazmak
yeterlidir.
IssueDate Fatura Tarihi
DocumentType XSLT için bu alana XSLT yazılacaktır. Gönderim Tipi için bu alana KAGIT
veya ELEKTRONIK yazılacaktır.
DocumentTypeCode Bu alana Gönderim Tipi için SendingType yazılacaktır. XSLT’de bu alan
olmayacaktır.
Attachment XSLT için xslt dosyasının bilgilerini içeren kısımdır. Gönderim tipi için bu alan
olmayacaktır.
EmbeddedDocumentBinaryObject XSLT dosyasının bilgilerini içeren kısım
mimeCode Bu alana application/xml yazılacaktır
fileName Xslt dosyasının dosya adı.
encodingCode Base64 yazılmalıdır
characterSetCode UTF-8 yazılmalıdır
Value XSLT dosyasının Base64Binary tipinde standart zip yöntemi ile
sıkıştırılmış/sıkıştırılmamış içeriği.

**Cevap Parametreleri:**


ADI AÇIKLAMASI
RETURN_CODE
Başarılı ise 0 döner


INTL_TXN_ID İşlemin internal transaction ID’sidir.

### 10.1. E-FATURA NESNESI GÖNDERME

**Örnek İstek** :







Sayfa 16 / 86

**<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">**

**<soapenv:Header/>**

**<soapenv:Body>**

**<par:SendPARKInvoiceObject>**

**<par:invoiceObj>**

**<par:CustomerRef>0</par:CustomerRef>**

**<par:PricingExchangeRate>0</par:PricingExchangeRate>**

**<par:InvoiceDBRef>0</par:InvoiceDBRef>**

**<par:IsEArchive>false</par:IsEArchive>**

**<par:SendToCustomer>true</par:SendToCustomer>**

**<par:TypeCode>SATIS</par:TypeCode>**

**<par:ProfileId>TEMELFATURA</par:ProfileId>**

**<par:ID>TST2018000000066</par:ID>**

**<par:CopyIndicator>false</par:CopyIndicator>**

**<par:IssueDate>2018- 04 - 18</par:IssueDate>**

**<par:IssueTime>15:00:00</par:IssueTime>**

**<par:CurrencyCode>TRY</par:CurrencyCode>**

**<par:AllowanceChargeIndicator>false</par:AllowanceChargeIndicator>**

**<par:AllowanceChargeAmount>0.00</par:AllowanceChargeAmount>**

**<par:LineExtensionAmount>10.00</par:LineExtensionAmount>**

**<par:AllowanceTotalAmount>0.00</par:AllowanceTotalAmount>**

**<par:ChargeAmount>0</par:ChargeAmount>**

**<par:TaxExclusiveAmount>10.00</par:TaxExclusiveAmount>**

**<par:TaxInclusiveAmount>10.10</par:TaxInclusiveAmount>**

**<par:PayableAmount>10.10</par:PayableAmount>**

**<par:CustomerParty>**

**<par:TaxOrIdNo>7210452742</par:TaxOrIdNo>**

**<par:GibAlias>urn:mail:defaultpk@parkentegrasyon.com.tr</par:GibAlias>**

**<par:PartyName>PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI
A.S.</par:PartyName>**

**<par:TaxSchemeName>Gaziosmanpasa</par:TaxSchemeName>**

**<par:WebSiteURI>http://parkentegrasyon.com.tr/</par:WebSiteURI>**

**<par:Telephone>02123223777</par:Telephone>**

**<par:Telefax>02123226777</par:Telefax>**

**<par:ElectronicMail>busra.kaya@parkentegrasyon.com.tr</par:ElectronicMail>**

**<par:Country>Türkiye</par:Country>**

**<par:CityName>Istanbul</par:CityName>**

**<par:CitySubDivisionName>Eyüp</par:CitySubDivisionName>**

**<par:PostalZone>34077</par:PostalZone>**

**<par:ID>7210452742</par:ID>**

**<par:StreetName>Göktürk Merkez Mah. Menekşe Sok.</par:StreetName>**

**<par:BuildingNumber>18</par:BuildingNumber>**

**<par:FirstName>Büşra</par:FirstName>**

**<par:FamilyName>Kaya</par:FamilyName>**

**</par:CustomerParty>**

**<par:SupplierParty>**

**<par:TaxOrIdNo>7210452742</par:TaxOrIdNo>**

**<par:GibAlias>urn:mail:defaultgb@parkentegrasyon.com.tr</par:GibAlias>**

**<par:PartyName>PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI
A.S.</par:PartyName>**

**<par:TaxSchemeName>Gaziosmanpasa</par:TaxSchemeName>**







Sayfa 17 / 86

**<par:WebSiteURI>http://parkentegrasyon.com.tr/</par:WebSiteURI>**

**<par:Telephone>02123223777</par:Telephone>**

**<par:Telefax>02123226777</par:Telefax>**

**<par:ElectronicMail>busra.kaya@parkentegrasyon.com.tr</par:ElectronicMail>**

**<par:Country>Türkiye</par:Country>**

**<par:CityName>Istanbul</par:CityName>**

**<par:CitySubDivisionName>Eyüp</par:CitySubDivisionName>**

**<par:PostalZone>34077</par:PostalZone>**

**<par:ID>7210452742</par:ID>**

**<par:StreetName>Göktürk Merkez Mah. Menekşe Sok.</par:StreetName>**

**<par:BuildingNumber>18</par:BuildingNumber>**

**<par:FirstName>Büşra</par:FirstName>**

**<par:FamilyName>Kaya</par:FamilyName>**

**</par:SupplierParty>**

**<par:InvoiceTaxes>**

**<par:InvoiceTax>**

**<par:CalculationSequenceNumeric>0</par:CalculationSequenceNumeric>**

**<par:TaxTypeCode>0015</par:TaxTypeCode>**

**<par:Name>KDV</par:Name>**

**<par:TaxableAmount>10.00</par:TaxableAmount>**

**<par:TaxPercent>1</par:TaxPercent>**

**<par:TaxAmount>0.10</par:TaxAmount>**

**<par:SubTaxAmount>0.10</par:SubTaxAmount>**

**<par:TaxExemptionReasonCode/>**

**</par:InvoiceTax>**

**</par:InvoiceTaxes>**

**<par:InvoiceLines>**

**<par:InvoiceLine>**

**<par:InvLineDBRef>0</par:InvLineDBRef>**

**<par:ID>1</par:ID>**

**<par:SellersItemID>000278</par:SellersItemID>**

**<par:BuyersItemID>ABC00001</par:BuyersItemID>**

**<par:ManufacturersItemID>DEF00123</par:ManufacturersItemID>**

**<par:ItemName>12 VOLT 105 AMPER MUTLU AKÜ</par:ItemName>**

**<par:BrandName>Mutlu</par:BrandName>**

**<par:ModelName>105</par:ModelName>**

**<par:ItemDescription>Lorem ipsum dolor sit amet</par:ItemDescription>**

**<par:InvoicedQuantity>1</par:InvoicedQuantity>**

**<par:UnitCode>C62</par:UnitCode>**

**<par:PriceAmount>25</par:PriceAmount>**

**<par:LineExtensionAmount>10</par:LineExtensionAmount>**

**<par:Currency>TRY</par:Currency>**

**<par:ChargeIndicator>0</par:ChargeIndicator>**

**<par:AllowanceChargeReason/>**

**<par:AllowanceBaseAmount>10.00</par:AllowanceBaseAmount>**

**<par:MultiplierFactorNumeric>1</par:MultiplierFactorNumeric>**

**<par:AllowanceAmount>10.00</par:AllowanceAmount>**

**<par:Notes>**

**<!--Zero or more repetitions:-->**

**<par:string>Lorem ipsum</par:string>**

**</par:Notes>**

**<par:LineTaxes>**







Sayfa 18 / 86

**<par:InvoiceTax>**

**<par:CalculationSequenceNumeric>0</par:CalculationSequenceNumeric>**

**<par:TaxTypeCode>0015</par:TaxTypeCode>**

**<par:Name>KDV</par:Name>**

**<par:TaxableAmount>10.00</par:TaxableAmount>**

**<par:TaxPercent>1</par:TaxPercent>**

**<par:TaxAmount>0.10</par:TaxAmount>**

**<par:SubTaxAmount>0.10</par:SubTaxAmount>**

**<par:TaxExemptionReasonCode/>**

**</par:InvoiceTax>**

**</par:LineTaxes>**

**</par:InvoiceLine>**

**</par:InvoiceLines>**

**<par:Notes>**

**<par:string>Lorem ipsum dolor</par:string>**

**</par:Notes>**

**<par:AdditionalDocumentReferences>**

**<!--Zero or more repetitions:-->**

**<par:AdditionalDocumentReference>**

**<!--Optional:-->**

**<par:ID>93232ee4-19h0-40b6- 9585 - 88653t9ede93</par:ID>**

**<par:IssueDate>2018- 04 - 04</par:IssueDate>**

**<!--Optional:-->**

**<par:DocumentType>XSLT</par:DocumentType>**

**<!--Optional:-->**

**<par:Attachment>**

**<!--Optional:-->**

**<par:EmbeddedDocumentBinaryObject>**

**<!--Optional:-->**

**<par:mimeCode>application/xml</par:mimeCode>**

**<!--Optional:-->**

**<par:fileName>general.xslt</par:fileName>**

**<!--Optional:-->**

**<par:encodingCode>Base64</par:encodingCode>**

**<!--Optional:-->**

**<par:characterSetCode>UTF-8</par:characterSetCode>**

**<!--Optional:-->**

**<par:Value>PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGl</par:Value>**

**</par:EmbeddedDocumentBinaryObject>**

**</par:Attachment>**

**</par:AdditionalDocumentReference>**

**</par:AdditionalDocumentReferences>**

**</par:invoiceObj>**

**<par:sessionId>d7315a7d-f02d-45b4- 8611 - 08247713b2d0</par:sessionId>**

**</par:SendPARKInvoiceObject>**

**</soapenv:Body>**

**</soapenv:Envelope>**

Örnek Cevap:







Sayfa 19 / 86


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">


<soap:Body>


<SendPARKInvoiceObjectResponse xmlns="http://parkentegrasyon.com.tr/">


<SendPARKInvoiceObjectResult>


<INTL_TXN_ID xmlns="">169915785</INTL_TXN_ID>


<RETURN_CODE xmlns="">0</RETURN_CODE>


</SendPARKInvoiceObjectResult>


</SendPARKInvoiceObjectResponse>


</soap:Body>


</soap:Envelope>

SendParkInvoiceObject()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:

public void SendParkInvoiceObject()
{
var parkObj = new PARKInvoiceType
{
// Taslaklara göndermek için: false, direkt alıcıya göndermek için: true
SendToCustomer = false,
// e-Arşiv fatura için: true, e-Fatura için: false
IsEArchive = false,
// Fatura No
ID = "PRK2017000003028",
// Fatura unique id, ETTN
UUID = Guid.NewGuid().ToString(),
// Fatura tipi.
// UBL-TR Kod Listeleri v1.16, Madde: 2.
TypeCode = "SATIS",
// Fatura senaryosu
// UBL-TR Kod Listeleri v1.16, Madde: 3.
ProfileId = "TICARIFATURA",
// Fatura tarihi
IssueDate = DateTime.Today,
// Fatura saati. Yalnızca e-Arşiv faturalarda zorunludur.
IssueTime = DateTime.Now,
// Para birimi kodu
// UBL-TR Kod Listeleri v1.16, Madde: 2.
CurrencyCode = "TRY",
// Arttırım için: true, indirim için: false
AllowanceChargeIndicator = false,
// Arttırım/İndirim tutarı
AllowanceChargeAmount = 0,
// Toplam tutar







Sayfa 20 / 86

LineExtensionAmount = 10,
// Dip indirim tutarı
AllowanceTotalAmount = 0,
// Dip arttırım tutarı
ChargeAmount = 0,
// Vergiler hariç tutar
TaxExclusiveAmount = 10,
// Vergiler dahil tutar
TaxInclusiveAmount = 10.10m,
// Ödenecek tutar
PayableAmount = 10.10m,
// Alıcı bilgileri
SupplierParty = new PartyDetails
{
// TCKN/VKN
TaxOrIdNo = "7210452742",
//Faturayı gönderecek gönderici birimin GIB’de tanımlı urn’si
GibAlias= "urn:mail:defaultgb@parkentegrasyon.com.tr"
// Firma adı
PartyName = "PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI A.S.",
// Vergi dairesi
TaxSchemeName = "Gaziosmanpasa",
// Web adresi
WebSiteURI = "http://parkentegrasyon.com.tr/",
// Telefon
Telephone = "02123223777",
// Fax
Telefax = "02123226777",
// E-Posta
ElectronicMail = "busra.kaya@parkentegrasyon.com.tr",
// Ülke
Country = "Türkiye",
// Şehir
CityName = "Istanbul",
// İlçe
CitySubDivisionName = "Eyüp",
// Posta kodu
PostalZone = "34077",
// Adres satırı
StreetName = "Göktürk Merkez Mah. Menekşe Sok.",
// Bina numarası
BuildingNumber = "18",
// Şahıs ise adı
FirstName = "Büşra",
// Şahıs ise soyadı
FamilyName = "Kaya",
},
CustomerParty = new PartyDetails
{
// TCKN/VKN
TaxOrIdNo = "7210452742",
//Faturayı alan birimin GIB’de tanımlı urn’si
GibAlias = "urn:mail:defaultpk@parkentegrasyon.com.tr",
// Firma adı
PartyName = "PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI A.S.",
// Vergi dairesi
TaxSchemeName = "Gaziosmanpasa",
// Web adresi
WebSiteURI = "http://parkentegrasyon.com.tr/",
// Telefon
Telephone = "02123223777",
// Fax
Telefax = "02123226777",
// E-Posta
ElectronicMail = "busra.kaya@parkentegrasyon.com.tr",
// Ülke







Sayfa 21 / 86

Country = "Türkiye",
// Şehir
CityName = "Istanbul",
// İlçe
CitySubDivisionName = "Eyüp",
// Posta kodu
PostalZone = "34077",
// Adres satırı
StreetName = "Göktürk Merkez Mah. Menekşe Sok.",
// Bina numarası
BuildingNumber = "18",
// Şahıs ise adı
FirstName = "Büşra",
// Şahıs ise soyadı
FamilyName = "Kaya",
},
// Fatura vergileri
InvoiceTaxes = new InvoiceTax[]
{
new InvoiceTax
{
// Vergi hesaplama sırası
CalculationSequenceNumeric = 0,
// Vergi kodu
TaxTypeCode = "0015",
// Vergi adı
Name = "KDV",
// Vergilenen tutar
TaxableAmount = 10,
// Vergi oranı
TaxPercent = 1,
// Vergi tutarı
TaxAmount = 0.10m,
// Vergi tutarı
// (Tevkifatlı faturalarda TaxTotal ile TaxSubtotal
içerisindeki TaxAmount alanlarına farklı tutarlar gelebildiği için ayrıldı)
SubTaxAmount = 0.10m,
// İstisna kodu
TaxExemptionReasonCode = "",
}
},
// Fatura satırları
InvoiceLines = new InvoiceLine[]
{
new InvoiceLine
{
// Satır sıra numarası
ID = 1,
// Satıcı ürün kodu
SellersItemID = "000278",
// Alıcı ürün kodu
BuyersItemID = "ABC00001",
// Üretici ürün kodu
ManufacturersItemID = "DEF00123",
// Ürün adı
ItemName = "12 VOLT 105 AMPER MUTLU AKÜ",
// Ürün markası
BrandName = "Mutlu",
// Ürün modeli
ModelName = "105",
// Ürün açıklaması
ItemDescription = "Lorem Ipsum, dizgi ve baskı
endüstrisinde kullanılan mıgır metinlerdir.",
// Faturalanan miktar
InvoicedQuantity = 40,
// Birim







Sayfa 22 / 86

// UBL-TR Kod Listeleri v1.16, Madde: 2.5
UnitCode = "C62",
// Birim fiyatı
PriceAmount = 25,
// İndirim uygulanmış satır tutarı
LineExtensionAmount = 10,
// Para birimi kodu
// UBL-TR Kod Listeleri v1.16, Madde: 2.1
Currency = "TRY",
// İndirim matrahı
AllowanceBaseAmount = 10,
// İndirim oranı
MultiplierFactorNumeric = 1,
// İndirim tutarı
AllowanceAmount = 10,
// Satır notları
Notes = new string[]{
"Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz.",
"Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar
uzanan 2000 yıllık bir geçmişi vardır. ",
"Not 3"
},
// Satır vergileri
LineTaxes = new InvoiceTax[]
{
new InvoiceTax
{
// Vergi hesaplama sırası
CalculationSequenceNumeric = 0,
// Vergi kodu
TaxTypeCode = "0015",
// Vergi adı
Name = "KDV",
// Vergilenen tutar
TaxableAmount = 10,
// Vergi oranı
TaxPercent = 1,
// Vergi tutarı
TaxAmount = 0.10m,
// Vergi tutarı
// (Tevkifatlı faturalarda TaxTotal ile
TaxSubtotal içerisindeki TaxAmount alanlarına farklı tutarlar gelebildiği için ayrıldı)
SubTaxAmount = 0.10m,
// İstisna kodu
TaxExemptionReasonCode = "",
}
}
}
},
// Fatura notları
Notes = new string[]
{
"Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir
gerçektir.",
"Lorem Ipsum kullanmanın amacı, sürekli 'buraya metin gelecek, buraya metin
gelecek' ",
"yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu
artırmasıdır."
},

AdditionalDocumentReferences = new AdditionalDocumentReference[]
{
new AdditionalDocumentReference
{
IssueDate = DateTime.Now,
ID=uuId,







Sayfa 23 / 86

DocumentType = "XSLT",
Attachment = new InvoiceService.Attachment
{
EmbeddedDocumentBinaryObject = new EmbeddedDocumentBinaryObject
{
characterSetCode="UTF-8",
encodingCode = "Base64",
fileName ="general.xslt",
mimeCode = "application/xml",
Value=File.ReadAllBytes("general.xslt")
}
}
}
}

};
REQUEST_RETURNType res = client.SendPARKInvoiceObject(parkObj, sessionID);
if (res.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

### 10.2. E-ARŞIV NESNESI GÖNDERME..................................................................................................................................................


Örnek İstek :
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">


<soapenv:Header/>


<soapenv:Body>


<par:SendPARKInvoiceObject>


<par:invoiceObj>


<par:CustomerRef>0</par:CustomerRef>


<par:PricingExchangeRate>0</par:PricingExchangeRate>


<par:InvoiceDBRef>0</par:InvoiceDBRef>


<par:IsEArchive>true</par:IsEArchive>


<par:SendToCustomer>true</par:SendToCustomer>


<par:UUID>9933fa1a-acfd-4ef1-be43-53c434c1d4f8</par:UUID>


<par:TypeCode>SATIS</par:TypeCode>


<par:ProfileId>EARSIVFATURA</par:ProfileId>


<par:ID>ATS2018000000114</par:ID>


<par:CopyIndicator>false</par:CopyIndicator>


<par:IssueDate>2018- 04 - 16</par:IssueDate>


<par:IssueTime>15:00:00</par:IssueTime>


<par:CurrencyCode>TRY</par:CurrencyCode>


<par:AllowanceChargeIndicator>false</par:AllowanceChargeIndicator>


<par:AllowanceChargeAmount>0.00</par:AllowanceChargeAmount>


<par:LineExtensionAmount>10.00</par:LineExtensionAmount>







Sayfa 24 / 86

<par:AllowanceTotalAmount>0.00</par:AllowanceTotalAmount>

<par:ChargeAmount>0</par:ChargeAmount>

<par:TaxExclusiveAmount>10.00</par:TaxExclusiveAmount>

<par:TaxInclusiveAmount>10.10</par:TaxInclusiveAmount>

<par:PayableAmount>10.10</par:PayableAmount>

<par:CustomerParty>

<par:TaxOrIdNo>12345678910</par:TaxOrIdNo>

<par:PartyName>Büşra Kaya</par:PartyName>

<par:TaxSchemeName>Küçükçekmece</par:TaxSchemeName>

<par:WebSiteURI></par:WebSiteURI>

<par:Telephone>02123223777</par:Telephone>

<par:Telefax>02123226777</par:Telefax>

<par:ElectronicMail>busra.kaya@parkentegrasyon.com.tr</par:ElectronicMail>

<par:Country>Türkiye</par:Country>

<par:CityName>Istanbul</par:CityName>

<par:CitySubDivisionName>Küçükçekmece</par:CitySubDivisionName>

<par:PostalZone>34290</par:PostalZone>

<par:ID>12345678910</par:ID>

<par:StreetName></par:StreetName>

<par:BuildingNumber></par:BuildingNumber>

<par:FirstName>Büşra</par:FirstName>

<par:FamilyName>Kaya</par:FamilyName>

</par:CustomerParty>

<par:SupplierParty>

<par:TaxOrIdNo>7210452742</par:TaxOrIdNo>

<par:PartyName>PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI
A.S.</par:PartyName>

<par:TaxSchemeName>Gaziosmanpasa</par:TaxSchemeName>

<par:WebSiteURI>http://parkentegrasyon.com.tr/</par:WebSiteURI>

<par:Telephone>02123223777</par:Telephone>

<par:Telefax>02123226777</par:Telefax>

<par:ElectronicMail>busra.kaya@parkentegrasyon.com.tr</par:ElectronicMail>

<par:Country>Türkiye</par:Country>

<par:CityName>Istanbul</par:CityName>

<par:CitySubDivisionName>Eyüp</par:CitySubDivisionName>

<par:PostalZone>34077</par:PostalZone>

<par:ID>7210452742</par:ID>

<par:StreetName>Göktürk Merkez Mah. Menekşe Sok.</par:StreetName>

<par:BuildingNumber>18</par:BuildingNumber>

<par:FirstName>Büşra</par:FirstName>

<par:FamilyName>Kaya</par:FamilyName>

</par:SupplierParty>







Sayfa 25 / 86

<par:InvoiceTaxes>

<par:InvoiceTax>

<par:CalculationSequenceNumeric>0</par:CalculationSequenceNumeric>

<par:TaxTypeCode>0015</par:TaxTypeCode>

<par:Name>KDV</par:Name>

<par:TaxableAmount>10.00</par:TaxableAmount>

<par:TaxPercent>1</par:TaxPercent>

<par:TaxAmount>0.10</par:TaxAmount>

<par:SubTaxAmount>0.10</par:SubTaxAmount>

<par:TaxExemptionReasonCode></par:TaxExemptionReasonCode>

</par:InvoiceTax>

</par:InvoiceTaxes>

<par:InvoiceLines>

<par:InvoiceLine>

<par:InvLineDBRef>0</par:InvLineDBRef>

<par:ID>1</par:ID>

<par:SellersItemID>000278</par:SellersItemID>

<par:BuyersItemID>ABC00001</par:BuyersItemID>

<par:ManufacturersItemID>DEF00123</par:ManufacturersItemID>

<par:ItemName>12 VOLT 105 AMPER MUTLU AKÜ</par:ItemName>

<par:BrandName>Mutlu</par:BrandName>

<par:ModelName>105</par:ModelName>

<par:ItemDescription>Lorem ipsum dolor sit amet</par:ItemDescription>

<par:InvoicedQuantity>1</par:InvoicedQuantity>

<par:UnitCode>TRY</par:UnitCode>

<par:PriceAmount>25</par:PriceAmount>

<par:LineExtensionAmount>10</par:LineExtensionAmount>

<par:Currency>TRY</par:Currency>

<par:ChargeIndicator>0</par:ChargeIndicator>

<par:AllowanceChargeReason></par:AllowanceChargeReason>

<par:AllowanceBaseAmount>10.00</par:AllowanceBaseAmount>

<par:MultiplierFactorNumeric>1</par:MultiplierFactorNumeric>

<par:AllowanceAmount>10.00</par:AllowanceAmount>

<par:Notes>

<par:string>Lorem ipsum</par:string>

</par:Notes>

<par:LineTaxes>

<par:InvoiceTax>

<par:CalculationSequenceNumeric>0</par:CalculationSequenceNumeric>

<par:TaxTypeCode>0015</par:TaxTypeCode>

<par:Name>KDV</par:Name>







Sayfa 26 / 86

<par:TaxableAmount>10.00</par:TaxableAmount>

<par:TaxPercent>1</par:TaxPercent>

<par:TaxAmount>0.10</par:TaxAmount>

<par:SubTaxAmount>0.10</par:SubTaxAmount>

<par:TaxExemptionReasonCode></par:TaxExemptionReasonCode>

</par:InvoiceTax>

</par:LineTaxes>

</par:InvoiceLine>

</par:InvoiceLines>

<par:Notes>

<par:string>Lorem ipsum</par:string>

</par:Notes>

<par:AdditionalDocumentReferences>

<par:AdditionalDocumentReference>

<par:ID>1</par:ID>

<par:IssueDate>2018- 04 - 16</par:IssueDate>

<par:DocumentTypeCode>SendingType</par:DocumentTypeCode>

<par:DocumentType>KAGIT</par:DocumentType>

</par:AdditionalDocumentReference>

<par:AdditionalDocumentReference>

<par:ID>9933fa1a-acfd-4ef1-be43-53c434c1d4f8</par:ID>

<par:IssueDate>2018- 04 - 16</par:IssueDate>

<par:DocumentType>XSLT</par:DocumentType>

<par:Attachment>

<par:EmbeddedDocumentBinaryObject>

<par:mimeCode>application/xml</par:mimeCode>

<par:fileName>general.xslt</par:fileName>

<par:encodingCode>Base64</par:encodingCode>

<par:characterSetCode>UTF-8</par:characterSetCode>

<par:Value>PD94bWwgdmVyc2lvbj0iMS4</par:Value>

</par:EmbeddedDocumentBinaryObject>

</par:Attachment>

</par:AdditionalDocumentReference>

</par:AdditionalDocumentReferences>

</par:invoiceObj>

<par:sessionId>d7315a7d-f02d-45b4- 8611 - 08247713b2d0</par:sessionId>

</par:SendPARKInvoiceObject>

</soapenv:Body>

</soapenv:Envelope>

Örnek Cevap:







Sayfa 27 / 86


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">


<soap:Body>


<SendPARKInvoiceObjectResponse xmlns="http://parkentegrasyon.com.tr/">


<SendPARKInvoiceObjectResult>


<INTL_TXN_ID xmlns="">170404184</INTL_TXN_ID>


<RETURN_CODE xmlns="">0</RETURN_CODE>


</SendPARKInvoiceObjectResult>


</SendPARKInvoiceObjectResponse>


</soap:Body>


</soap:Envelope>

SendParkInvoiceObject()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:

public void SendParkInvoiceObject(string xsltFilePath)
{
string uuid = Guid.NewGuid().ToString();
string id = "PRK2017000003028”;

var parkObj = new PARKInvoiceType
{
// Taslaklara göndermek için: false, direkt alıcıya göndermek için: true
SendToCustomer = true,
// e-Arşiv fatura için: true, e-Arşiv için: true
IsEArchive = true,
// Fatura No
ID = id,
// Fatura unique id, ETTN
UUID = uuid,
// Fatura tipi.
// UBL-TR Kod Listeleri v1.16, Madde: 2.4
TypeCode = "SATIS",
// Fatura senaryosu
// UBL-TR Kod Listeleri v1.16, Madde: 3.2
ProfileId = "EARSIVFATURA",
// Fatura tarihi
IssueDate = DateTime.Today,
// Fatura saati. Yalnızca e-Arşiv faturalarda zorunludur.
IssueTime = DateTime.Now,
// Para birimi kodu
// UBL-TR Kod Listeleri v1.16, Madde: 2.1
CurrencyCode = "TRY",
// Arttırım için: true, indirim için: false
AllowanceChargeIndicator = false,
// Arttırım/İndirim tutarı
AllowanceChargeAmount = 0,







Sayfa 28 / 86

// Toplam tutar
LineExtensionAmount = 10,
// Dip indirim tutarı
AllowanceTotalAmount = 0,
// Dip arttırım tutarı
ChargeAmount = 0,
// Vergiler hariç tutar
TaxExclusiveAmount = 10,
// Vergiler dahil tutar
TaxInclusiveAmount = 10.10m,
// Ödenecek tutar
PayableAmount = 10.10m,
// Alıcı bilgileri
SupplierParty = new PartyDetails
{
// TCKN/VKN
TaxOrIdNo = "7210452742",
// Firma adı
PartyName = "PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI A.S.",
// Vergi dairesi
TaxSchemeName = "Gaziosmanpasa",
// Web adresi
WebSiteURI = "http://parkentegrasyon.com.tr/",
// Telefon
Telephone = "02123223777",
// Fax
Telefax = "02123226777",
// E-Posta
ElectronicMail = "busra.kaya@parkentegrasyon.com.tr",
// Ülke
Country = "Türkiye",
// Şehir
CityName = "Istanbul",
// İlçe
CitySubDivisionName = "Eyüp",
// Posta kodu
PostalZone = "34077",
// Adres satırı
StreetName = "Göktürk Merkez Mah. Menekşe Sok.",
// Bina numarası
BuildingNumber = "18",
// Şahıs ise adı
FirstName = "Büşra",
// Şahıs ise soyadı
FamilyName = "Kaya",
},
CustomerParty = new PartyDetails
{
// TCKN/VKN
TaxOrIdNo = "7210452742",
// Firma adı
PartyName = "PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI A.S.",
// Vergi dairesi
TaxSchemeName = "Gaziosmanpasa",
// Web adresi
WebSiteURI = "http://parkentegrasyon.com.tr/",
// Telefon
Telephone = "02123223777",
// Fax
Telefax = "02123226777",
// E-Posta
ElectronicMail = "busra.kaya@parkentegrasyon.com.tr",
// Ülke
Country = "Türkiye",
// Şehir
CityName = "Istanbul",







Sayfa 29 / 86

// İlçe
CitySubDivisionName = "Eyüp",
// Posta kodu
PostalZone = "34077",
// Adres satırı
StreetName = "Göktürk Merkez Mah. Menekşe Sok.",
// Bina numarası
BuildingNumber = "18",
// Şahıs ise adı
FirstName = "Büşra",
// Şahıs ise soyadı
FamilyName = "Kaya",
},
// Fatura vergileri
InvoiceTaxes = new InvoiceTax[]
{
new InvoiceTax
{
// Vergi hesaplama sırası
CalculationSequenceNumeric = 0,
// Vergi kodu
TaxTypeCode = "0015",
// Vergi adı
Name = "KDV",
// Vergilenen tutar
TaxableAmount = 10,
// Vergi oranı
TaxPercent = 1,
// Vergi tutarı
TaxAmount = 0.10m,
// Vergi tutarı
// (Tevkifatlı faturalarda TaxTotal ile TaxSubtotal
içerisindeki TaxAmount alanlarına farklı tutarlar gelebildiği için ayrıldı)
SubTaxAmount = 0.10m,
// İstisna kodu
TaxExemptionReasonCode = "",
}
},
// Fatura satırları
InvoiceLines = new InvoiceLine[]
{
new InvoiceLine
{
// Satır sıra numarası
ID = 1,
// Satıcı ürün kodu
SellersItemID = "000278",
// Alıcı ürün kodu
BuyersItemID = "ABC00001",
// Üretici ürün kodu
ManufacturersItemID = "DEF00123",
// Ürün adı
ItemName = "12 VOLT 105 AMPER MUTLU AKÜ",
// Ürün markası
BrandName = "Mutlu",
// Ürün modeli
ModelName = "105",
// Ürün açıklaması
ItemDescription = "Lorem Ipsum, dizgi ve baskı
endüstrisinde kullanılan mıgır metinlerdir.",
// Faturalanan miktar
InvoicedQuantity = 40,
// Birim
// UBL-TR Kod Listeleri v1.16, Madde: 2.5
UnitCode = "C62",
// Birim fiyatı







Sayfa 30 / 86

PriceAmount = 25,
// İndirim uygulanmış satır tutarı
LineExtensionAmount = 10,
// Para birimi kodu
// UBL-TR Kod Listeleri v1.16, Madde: 2.1
Currency = "TRY",
// İndirim matrahı
AllowanceBaseAmount = 10,
// İndirim oranı
MultiplierFactorNumeric = 1,
// İndirim tutarı
AllowanceAmount = 10,
// Satır notları
Notes = new string[]{
"Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz.",
"Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar
uzanan 2000 yıllık bir geçmişi vardır. ",
"Not 3"
},
// Satır vergileri
LineTaxes = new InvoiceTax[]
{
new InvoiceTax
{
// Vergi hesaplama sırası
CalculationSequenceNumeric = 0,
// Vergi kodu
TaxTypeCode = "0015",
// Vergi adı
Name = "KDV",
// Vergilenen tutar
TaxableAmount = 10,
// Vergi oranı
TaxPercent = 1,
// Vergi tutarı
TaxAmount = 0.10m,
// Vergi tutarı
// (Tevkifatlı faturalarda TaxTotal ile
TaxSubtotal içerisindeki TaxAmount alanlarına farklı tutarlar gelebildiği için ayrıldı)
SubTaxAmount = 0.10m,
// İstisna kodu
TaxExemptionReasonCode = "",
}
}
}
},
// Fatura notları
Notes = new string[]
{
"Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir
gerçektir.",
"Lorem Ipsum kullanmanın amacı, sürekli 'buraya metin gelecek, buraya metin
gelecek' ",
"yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu
artırmasıdır."
},
AdditionalDocumentReferences = new AdditionalDocumentReference[]
{

new AdditionalDocumentReference

{

ID = uuId,

IssueDate = DateTime.Now,
DocumentType = "XSLT",

Attachment = new InvoiceService.Attachment

{







Sayfa 31 / 86

EmbeddedDocumentBinaryObject = new EmbeddedDocumentBinaryObject
{

characterSetCode="UTF-8",

encodingCode = "Base64",

fileName =$"{id}.xslt",

mimeCode = "application/xml",
Value=File.ReadAllBytes(xsltFilePath)

}

}

},

new AdditionalDocumentReference
{

ID = "1",

IssueDate = DateTime.Now,

DocumentType ="ELEKTRONIK",

DocumentTypeCode = "SendingType"
}

}

#### };

REQUEST_RETURNType res = client.SendPARKInvoiceObject(parkObj, sessionID);
if (res.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

## 11. TASLAK FATURA YÜKLEME - LOADINVOICE

PARK EFATURA Entegrasyon Platformu üzerinden 1 yada daha fazla faturayı taslak olarak kaydeder.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise return_code 0 döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
INVOICE Fatura
ID Faturanın üzerinde yazılı fatura numarası
UUID Faturanın unique(özgün) id si
HEADER Fatura özet bilgileri
SENDER Faturayı gönderecek birimin GIB’de tanımlı VKN/TCKN si
FROM Faturayı gönderecek birimin GIB’de tanımlı urn’si
RECEIVER Faturayı alacak birimin GIB de tanımlı VKN/TCKN si
TO Faturayı alacak birimin GIB de tanımlı posta kutusu urn’si
CONTENT XML faturanın Base64Binary tipinde standart zip yöntemi ile
sıkıştırılmış/sıkıştırılmamış içeriği.
REQUEST_HEADER
:COMPRESSED


Binary Fatura içeriği sıkıştırılmış/sıkıştırılmamış bilgisi. Sıkıştırılmış ise Y
olmalıdır.

Örnek **İstek** :







Sayfa 32 / 86


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/" xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<par:LoadInvoice>
<!--Optional:-->
<par:LoadInvoiceRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-44624f123e0f</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<INVOICE ID="DMY20171227084537" UUID="D8D4026F-399A- 4225 - 81FA-00AF7B73365E">
<CONTENT
xm:contentType="application/xml">ZW1lPjxjYWM6VGF4U2NoZW1lPjxjYmM6TmFtZT5HYXppb3NtYW5w<CONTENT>
</INVOICE>
</par:LoadInvoiceRequest>
</par:LoadInvoice>
</soapenv:Body>
</soapenv:Envelope>^
^

**Beklenen Cevap**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<LoadInvoiceResponse xmlns="http://parkentegrasyon.com.tr/">
<LoadInvoiceResult>
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997478</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</LoadInvoiceResult>
</LoadInvoiceResponse>
</soap:Body>
</soap:Envelope>^
^

LoadInvoice()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise işlem başarılı

long Gönderilen request transcation kaydının id’si

**Örnek Kod:**

public void LoadInvoice(INVOICE inv)

{

LoadInvoiceRequest LReq = new LoadInvoiceRequest()
{







Sayfa 33 / 86

INVOICE = new INVOICE[]
{
inv
},
REQUEST_HEADER = new REQUEST_HEADERType()
{
SESSION_ID = sessionID,
COMPRESSED = "N",
}
};
LoadInvoiceResponse LRes = client.LoadInvoice(LReq);
if (LRes.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

## 12. E-FATURA OKU - GETINVOICE

GIB (Gelir İdaresi Başkanlığı) EFATURA sisteminden gelen/giden faturalari EFATURA Entegrasyon Platformu üzerinden

getirir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise fatura ait detay ve zip içerisinde xml content’i döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
LIMIT Kaç fatura okunmak istendiği
FROM Faturayı göndereren gönderici birimin GIB’de tanımlı urn si
TO Faturayı alan birimin GIB de tanımlı urn’si
ID Faturanın üzerinde yazılı fatura numarası
UUID Faturanın unique(özgün) id si
START_DATE Getirilmek istenen faturaların geliş tarihi
END_DATE Getirilmek istenen faturaların son tarihi
READ_INCLUDED Okunmuş olarak işaretlenen faturaları da getirsin mi bilgisi

Örnek **İstek** :


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetInvoice>
<!--Optional:-->
<par:GetInvoiceRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-44624f123e0f</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<!--Optional:-->
<INVOICE_SEARCH_KEY>
<ID>PRK2017000003026</ID>
<!--Optional:-->
<UUID>F437195F- 3847 - 48AF- 9033 - 1FD8A6E1AC4E</UUID>
<READ_INCLUDED>false</READ_INCLUDED>
<!--Optional:-->
<DIRECTION>IN</DIRECTION>
</INVOICE_SEARCH_KEY>
<!--Optional:-->
<HEADER_ONLY>N</HEADER_ONLY>
</par:GetInvoiceRequest>
</par:GetInvoice>
</soapenv:Body>







Sayfa 34 / 86


</soapenv:Envelope>


^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INVOICE_ID Faturanın üzerinde yazılı fatura numarası
INVOICE_UUID Faturanın unique(özgün) id si
SENDER Faturayı göndereren birimin VKN’si
RECEIVER Faturayı alan birimin VKN’si
CUSTOMER Faturayı alan firma adı
ISSUE_DATE Fatura tarihi
PAYABLE_AMOUT Fatura toplam ödenecek tutar
FROM Faturayı göndereren birimin GIB’de tanımlı etiketi (urn)
TO Faturayı alan birimin GIB’de tanımlı etiketi (urn)
INVOICE_CONTENT XML faturanın Base64Binary tipinde standart zip yöntemi ile
sıkıştırılmış/sıkıştırılmamış içeriği. Metod çağrılırken COMPRESSED bilgisi Y
ise veya COMPRESSED alanı gönderilmemişse içerik sıkıştırılmıştır.
INVOICE_ID Faturanın üzerinde yazılı fatura numarası

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetInvoiceResponse xmlns="http://parkentegrasyon.com.tr/">
<GetInvoiceResult>
<INVOICE ID="PRK2017000003026" UUID="F437195F- 3847 - 48AF- 9033 - 1FD8A6E1AC4E">
<HEADER xmlns="">
<SENDER>7210452742</SENDER>
<RECEIVER>7210452742</RECEIVER>
<SUPPLIER>PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI ANONIM
SIRKETI</SUPPLIER>
<CUSTOMER>PARK ENTEGRASYON E DÖNÜŞÜM VE BİLİŞİM HİZMETLERİ
A.Ş.</CUSTOMER>
<ISSUE_DATE>2017- 12 - 29</ISSUE_DATE>
<PAYABLE_AMOUNT currencyID="TRY">10.18</PAYABLE_AMOUNT>
<FROM>urn:mail:defaultgb@parkentegrasyon.com.tr</FROM>
<TO>urn:mail:defaultpk@parkentegrasyon.com.tr</TO>
<PROFILEID>TICARIFATURA</PROFILEID>
<INVOICE_TYPE_CODE>TEVKIFAT</INVOICE_TYPE_CODE>
<STATUS>REJECT - FAILED</STATUS>
<STATUS_DESCRIPTION>FAILED</STATUS_DESCRIPTION>
<GIB_STATUS_CODE>1300</GIB_STATUS_CODE>
<GIB_STATUS_DESCRIPTION>BASARIYLA TAMAMLANDI</GIB_STATUS_DESCRIPTION>
<RESPONSE_CODE>REJECT</RESPONSE_CODE>
<RESPONSE_DESCRIPTION>Fatura red edildi.</RESPONSE_DESCRIPTION>
<CDATE>2017- 12 - 29T15:18:49+03:00</CDATE>
<ENVELOPE_IDENTIFIER>021c5350-925a-41e3-ba3d-
2581b16cdbab</ENVELOPE_IDENTIFIER>
</HEADER>
<CONTENT
xmlns="">+CiAgICA8L2NhYzpQcmljZT4KICA8L2NhYzpJbnZvaWNlTGluZT4KPC9JbnZvaWNlPg==</CONTENT>
</INVOICE>







Sayfa 35 / 86


</GetInvoiceResult>
</GetInvoiceResponse>
</soap:Body>
</soap:Envelope>

GetInvoice()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string ID Fatura no

string UUID Faturanın özgün ID

string TO GIB’de tanımlı urn (Alıcı Firmanın)

Dönüş Değeri:

TÜR AÇIKLAMA

INVOICE[] Verilen ID ve UUID ye ait fatura detayları döner.

**Örnek Kod:**

public INVOICE[] GetInvoice(string ID, string UUID)
{

GetInvoiceRequest req = new GetInvoiceRequest();

req.REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
};
req.INVOICE_SEARCH_KEY = new GetInvoiceRequestINVOICE_SEARCH_KEY
{
READ_INCLUDED = false,
DIRECTION = "IN",

ID = ID,
UUID = UUID,

#### };

req.HEADER_ONLY = "N";
var resgelen = client.GetInvoice(req);
return resgelen;
}

## 13. E-FATURA DURUM SORGULAMA - GETINVOICESTATUS

EFATURA Entegrasyon Platformu üzerinden faturaların durumunu sorgulamayı sağlar.


❖ Aşağıdaki Request Parametreleri ile istek PARKe gönderilir.
❖ Park platfromunda dönen cevap başarılı ise fatura ait detay durum detay döner.


ADI AÇIKLAMASI
UUID Faturaya ait UUID
ID Faturaya ait ID







Sayfa 36 / 86

Örnek **İstek** :


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<par:GetInvoiceStatus>
<!--Optional:-->
<par:GetInvoiceStatusRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<!--Optional:-->
<INVOICE ID="PRI2017000000002" UUID="3A90AB05-F963-490C-B3BF-
0E7C0B999B2E">
</INVOICE>
</par:GetInvoiceStatusRequest>
</par:GetInvoiceStatus>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
STATUS Faturanın gelir idaresindeki durumu
STATUS_DESCRIPTION Faturanın gelir idaresinde durumunun açıklaması.
GIB_STATUS_CODE Faturanın gelir idaresinde durumunun
GIB_STATUS_DESCRIPTION Faturanın gelir idaresinde durumunun açıklaması.
CDATE Faturanın oluşturma zamanı
ENVELOPE_IDENTIFIER Faturayı gelir idaresine gönderilirken kullanılan zarf id’si


Örnek Cevap:
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetInvoiceStatusResponse xmlns="http://parkentegrasyon.com.tr/">
<GetInvoiceStatusResult>
<INVOICE_STATUS ID="PRI2017000000002" UUID="3A90AB05-F963-490C-
B3BF-0E7C0B999B2E" xmlns="">
<STATUS>SEND - WAIT_SYSTEM_RESPONSE</STATUS>
<STATUS_DESCRIPTION>WAIT_SYSTEM_RESPONSE</STATUS_DESCRIPTION>
<GIB_STATUS_CODE>1220</GIB_STATUS_CODE>
<GIB_STATUS_DESCRIPTION>HEDEFTEN SISTEM YANITI
GELMEDI</GIB_STATUS_DESCRIPTION>
<CDATE>2017- 12 - 26T11:41:48+03:00</CDATE>
<ENVELOPE_IDENTIFIER>5ce35dc5-faae-44d6-883b-
c91509906ace</ENVELOPE_IDENTIFIER>
<GTB_REFNO></GTB_REFNO>
</INVOICE_STATUS>
</GetInvoiceStatusResult>
</GetInvoiceStatusResponse>
</soap:Body>
</soap:Envelope>^
^

GetInvoiceStatus()

Parametreler:

TÜR PARAMETRE AÇIKLAMA







Sayfa 37 / 86

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

GetInvoiceStatusResponseINVOICE_STATUS Faturaya ait durum detayı

❖ GTB Ref No da bu metot yolu ile çekilir.

❖ Örnek istek ve dönen cevap aşağıdaki gibidir.


❖ Dönen cevapta Status parametresinde yer alan durum bilgileri ve açıklamaları aşağıdaki tabloda
verilmiştir:


STATUS SUBSTATUS PORTAL STATUS DETAYLI AÇIKLAMA


AŞAMA
DURUMU


LOAD SUCCEED


Fatura Yükleme –
Başarılı


Fatura Yükleme Başarılı Nihai Aşama


LOAD FAILED


Fatura Yükleme –
Başarısız Oldu


Fatura Yükleme Hatalı Nihai Aşama


PACKAGE FAILED


Fatura Paketleme -
Başarısız oldu


Fatura paketleme sırasında hata
oluştu. Sistem tarafından tekrar


Ara aşama







Sayfa 38 / 86


paketle işlemi yapılarak
gönderilecektir.

PACKAGE SUCCEED


Fatura Paketleme -
Başarıyla işlendi


Fatura paketleme başarılı


Fatura
paketleme
başarılı

SEND PROCESSING


Fatura Gönderimi -
İşleniyor


Fatura Gönderimi Yapılıyor Ara aşama

SEND SUCCEED Fatura Gönderimi - **Temel Fatura** Gönderimi Başarılı Nihai Aşama

SEND FAILED


Fatura Gönderimi –
Başarısız Oldu


Fatura Gönderiminde Hata Alındı Nihai Aşama

SEND WAIT_GIB_RESPONSE


Fatura Gönderimi -
GIB'e Gönderildi


Fatura GIB e gönderildi ve GIB den
faturanın alındığına dair sistem yanıtı
bekleniyor


Ara aşama

SEND WAIT_SYSTEM_RESPONSE


Fatura Gönderimi -
Sistem Yanıtı
Bekleniyor


Fatura GIB tarafından alıcısına
gönderildi ve alıcı taraftan faturanın
alındığına dair sistem yanıtı
bekleniyor


Ara aşama

SEND WAIT_APPLICATION_RESPONSE


Fatura Gönderimi -
Fatura Onayı
Bekleniyor


Ticari Fatura Alıcıdan Cevap Bekliyor Ara aşama

ACCEPTED SUCCEED


Giden Ticari Fatura
Kabul - Başarıyla
işlendi


Gönderilmiş olan ticari fatura alıcı
tarafından kabul edilmiştir ve alıcının
kabul yanıtı gönderen tarafa başarılı
şekilde ulaşmıştır.


Nihai Aşama

REJECTED SUCCEED


Giden Ticari Fatura
Red - Başarıyla
işlendi


Gönderilmiş olan ticari fatura alıcı
tarafından red edilmiştir ve alıcının
red yanıtı gönderen tarafa başarılı
şekilde ulaşmıştır.


Nihai Aşama

RECEIVE SUCCEED


Fatura Alımı -
Başarıyla işlendi


Temel Fatura Alımı Başarılı Nihai Aşama

RECEIVE WAIT_APPLICATION_RESPONSE


Fatura Alımı -
Fatura Onayı
Bekleniyor


Ticari Faatura Alımı Başarılı Ara Aşama

ACCEPT PROCESSING


Gelen Ticari Fatura
Kabul – İşleniyor


Gelen Ticari Fatura Kabul Edilmiştir
ve kabul yanıtı GİB’e gönderilmek
üzere işlenmektedir. Hala GİB’e
gönderilmemiştir.


Ara aşama

ACCEPT WAIT_GIB_RESPONSE


Gelen Ticari Fatura
Kabul – GIB'e
Gönderildi


Gelen Ticari Fatura Kabul Edilmiştir
ve kabul yanıtı GIB’e gönderildi. GIB
den onayın alındığına dair sistem
yanıtı bekleniyor.


Ara aşama

ACCEPT WAIT_SYSTEM_RESPONSE


Gelen Ticari Fatura
Kabul – Sistem
Yanıtı Bekleniyor


Fatura onayı GIB tarafından alıcısına
gönderildi ve alıcı taraftan onayın
alındığına dair sistem yanıtı
bekleniyor


Ara aşama

ACCEPT FAILED


Gelen Ticari Fatura
Kabul - Başarısız
oldu


Onaylanan Ticari fatura cevabı
gönderiminden hata oluştu. Bu
fatura tekrar onaylanabilir.


Nihai Aşama

ACCEPT SUCCEED


Gelen Ticari Fatura Kabul Edilmiştir
ve kabul yanıtı


Nihai Aşama

REJECT PROCESSING Ara aşama







Sayfa 39 / 86


Gelen Ticari Fatura
Red – İşleniyor


Gelen Ticari Fatura Red Edilmiştir ve
red yanıtı GİB’e gönderilmek üzere
işlenmektedir. Hala GİB’e
gönderilmemiştir.


REJECT WAIT_GIB_RESPONSE


Gelen Ticari Fatura
Red – GIB'e
Gönderildi


Gelen Ticari Fatura reddedilmiştir ve
red yanıtı GIB’e gönderildi. GIB den
onayın alındığına dair sistem yanıtı
bekleniyor.


Ara aşama


REJECT WAIT_SYSTEM_RESPONSE


Gelen Ticari Fatura
Red – Sistem Yanıtı
Bekleniyor


Fatura onayı GIB tarafından alıcısına
gönderildi ve alıcı taraftan onayın
alındığına dair sistem yanıtı
bekleniyor


Ara aşama


REJECT SUCCEED


Gelen Ticari Fatura
Red - Başarıyla
işlendi


Gelen Ticari Fatura Red Edilmiştir ve
red yanıtı göndericiye başarılı bir
şekilde ulaştırılmıştır.


Nihai Aşama


REJECT FAILED


Gelen Ticari Fatura
Red - Başarısız oldu


Gelen Ticari Fatura Red Edilmiştir ve
red yanıtı GİB’de veya alıcı tarafında
oluşan bir sebeple hatalı duruma
ulaşmıştır.


Nihai Aşama

**Örnek Kod:**

public GetInvoiceStatusResponseINVOICE_STATUS GetInvoiceStatus(string ID, string UUID)
{
GetInvoiceStatusRequest req = new GetInvoiceStatusRequest()
{
INVOICE = new INVOICE
{
ID = ID,
UUID = UUID,
},
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
}
};
GetInvoiceStatusResponse res = client.GetInvoiceStatus(req);
return res.INVOICE_STATUS;

}

## 14. E- FATURA İŞARETLEME - MARKINVOICE

Fatura okundu olarak işeretlenir.


❖ Aşağıdaki Request Parametreleri ile istek PARKe gönderilir.
❖ Park platfromunda dönen cevap başarılı ise Return_code 0 olarak döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
MARK Değeri READ olarak yazılmalıdır.
UUID Faturaya ait UUID
ID Faturaya ait ID

Örnek **İstek** :


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<par:MarkInvoice>
<!--Optional:-->
<par:MarkInvoiceRequest>
<!--Optional:-->







Sayfa 40 / 86


<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>


<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<!--Optional:-->
<MARK value="READ">
<!--Zero or more repetitions:-->
<INVOICE ID="TST2018311839909" UUID="26d04328-ee7a- 4332 -
b358-b9c2f3fa64df">
<CONTENT
xm:contentType="application/xml">pofjıgjskgçdvökhjvkx =</CONTENT>
</INVOICE>
</MARK>
</par:MarkInvoiceRequest>
</par:MarkInvoice>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir

MarkInvoice()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise işlem başarılı

long Gönderilen request transcation kaydının id’si

**Örnek Kod:**

public void MarkInvoice(INVOICE inv)
{
MarkInvoiceRequest req = new MarkInvoiceRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
MARK = new MarkInvoiceRequestMARK
{

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<MarkInvoiceResponse xmlns="http://parkentegrasyon.com.tr/">
<MarkInvoiceResult>
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997517</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</MarkInvoiceResult>
</MarkInvoiceResponse>
</soap:Body>
</soap:Envelope>


^







Sayfa 41 / 86

value = MarkInvoiceRequestMARKValue.READ,
INVOICE = new INVOICE[]
{
inv
},
}
};
MarkInvoiceResponse res = client.MarkInvoice(req);
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

## 15. E-FATURA CEVAP HAZIRLAMA - PREPAREINVOICERESPONSE

Alınan Ticari Faturalara kabul yada red cevabı göndermek için kullanılacak imzasız uygulama yanıtını yaratır.

Yaratılan bu uygulama yanıtı müşteri tarfındaki uygulama tarafından müşteri elektronik imzası ile onaylanıp

SendInvoiceResponse metoduyla ticari faturaya kabul yada red cevabı vermek için kullanılır.

Request Header kısmında bulunan Compressed alanı N veya boş gönderilirse, gelen yanıt sıkıştırılmamış XML

dosyası olacaktır. Eğer Compressed alanı Y olarak gönderilirse gelen cevap zip olarak sıkıştırılacaktır.


❖ Aşağıdaki Request Parametreleri ile istek PARKe gönderilir.
❖ Park platfromunda dönen cevap başarılı ise INVOICE_CONTENT zipli şekilde base 64 döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
UUID Faturaya ait UUID
ID Faturaya ait ID
STATUS Fatura ait cevap’da KABUL veya RET durumu yazılır
DESCRIPTION Fatura ait verilen cevap’da ret ve kabul sebebi yazılır.Ret faturalar’da bu alan
zorunludur.


Örnek İstek :
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<par:PrepareInvoiceResponse>
<!--Optional:-->
<par:PrepareInvoiceResponseRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-44624f123e0f</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<!--Optional:-->
<STATUS>RED</STATUS>
<!--Zero or more repetitions:-->
<INVOICE ID="TST2018311839909" UUID="26d04328-ee7a- 4332 - b358-
b9c2f3fa64df">
<CONTENT
xm:contentType="application/xml">PEludm9pY2UgeG1sbnM9InVybjpvYXNpczp</CONTENT>
</INVOICE>
<!--Zero or more repetitions:-->
<DESCRIPTION>?</DESCRIPTION>
</par:PrepareInvoiceResponseRequest>
</par:PrepareInvoiceResponse>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**







Sayfa 42 / 86


ADI AÇIKLAMASI
INVOICE_CONTENT XML faturanın Base64Binary tipinde standart zip yöntemi ile
sıkıştırılmış/sıkıştırılmamış içeriği. Metod çağrılırken COMPRESSED bilgisi Y
ise veya COMPRESSED

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<PrepareInvoiceResponseResponse
xmlns="http://parkentegrasyon.com.tr/">
<PrepareInvoiceResponseResult>


<base64Binary>PHVybjpBcHBsaWNhdGlvblJlc3BvbnNlIHhtb</base64Binary>
</PrepareInvoiceResponseResult>
</PrepareInvoiceResponseResponse>
</soap:Body>
</soap:Envelope>

PrepareInvoiceResponse ()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

INVOICE Invoice Cevap için hazırlanacak fatura

Dönüş Değeri:

TÜR AÇIKLAMA

PrepareInvoiceResponseRequest Metodun Request’i

**Örnek Kod:**

public PrepareInvoiceResponseRequest PrepareInvoice(string status, INVOICE inv)
{
PrepareInvoiceResponseRequest req = new PrepareInvoiceResponseRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,

},
INVOICE = new INVOICE[]
{
inv,
},
STATUS = status,
};
return req;
}

## 16. E-FATURA CEVAP GÖNDERME - SENDINVOICERESPONSE

Alınan Ticari Faturalara kabul yada red cevabı göndermek için kullanılır.


❖ Aşağıdaki Request Parametreleri ile istek PARKe gönderilir.
❖ Park platfromunda dönen cevap başarılı ise INVOICE_CONTENT

**İstek Parametreleri**







Sayfa 43 / 86


ADI AÇIKLAMASI
INVOICE_CONTENT PrepareInvoiceResponse hazırlanan cevap XML değeri eklenerek istek
gönderilir.


Örnek İstek :
<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:wsdl="http://schemas.i2i.com/ei/wsdl"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<wsdl:SendInvoiceResponseRequest>
<REQUEST_HEADER>
<SESSION_ID>caab2943- 4034 - 4b34-97e6-266c81fa8153</SESSION_ID>
</REQUEST_HEADER>
<APPRESPONSE
xm:contentType="application/?">INVOCE_CONTENT</APPRESPONSE>
</wsdl:SendInvoiceResponseRequest>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir

Örnek Cevap:


<SOAP-ENV:Envelope xmlns:SOAP-
ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<MarkInvoiceResponse xmlns="http://schemas.i2i.com/ei/wsdl">
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>1974103</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</MarkInvoiceResponse>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>^
^

SendInvoiceResponse ()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

INVOICE Invoice Cevap için hazırlanacak fatura

Dönüş Değeri:

TÜR AÇIKLAMA

base64Binary[] XML Faturanın base4Binary tipinde içeriği

**Örnek Kod:**

public void SendInvoiceResponse(INVOICE inv,string status)
{
var liste = new List<base64Binary>();
base64Binary[] sonuc = client2.PrepareInvoiceResponse(PrepareInvoice(status,inv));
liste.AddRange(sonuc);
SendInvoiceResponseRequest req = new SendInvoiceResponseRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType







Sayfa 44 / 86

#### {

SESSION_ID = sessionID,
},
};
foreach (base64Binary base64 in liste)
{
base64Binary appres = new base64Binary()
{
Value = base64.Value,
contentType = "application/xml",
};
req.APPRESPONSE = new base64Binary[]
{
appres
};
}
SendInvoiceResponseResponse res = client.SendInvoiceResponse(req);
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

## 17. MÜKELLEF LISTESI ALMA - GETUSERLIST

GIB EFATURA sistemine kayıtlı kullanıcıların listesini ve bilgilerini getirir.


❖ Aşağıdaki Request Parametreleri ile istek PARKe gönderilir.
❖ Park platfromunda dönen cevap başarılı ise Mükellife ait bilgiler CSV formatında gelmektedir.

**İstek Parametreleri**


ADI AÇIKLAMASI
REGISTER_TIME_START Sorgulanacak kayıtlar için GIB Efatura kayıt başlangıç tarihi. Tarih verilmez ise
tüm kullanıcıları getiririr.

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetUserList>
<!--Optional:-->
<par:GetUserListRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>
</REQUEST_HEADER>
<!--Optional:-->
<REGISTER_TIME_START>1975- 01 - 01</REGISTER_TIME_START>
</par:GetUserListRequest>
</par:GetUserList>
</soapenv:Body>
</soapenv:Envelope>^
^







Sayfa 45 / 86

**Cevap Parametreleri**


ADI AÇIKLAMASI
IDENTIFIER Kullanıcının GIB’de tanımlı ID si
ALIAS Kullanıcının GIB’de tanımlı Posta Kutusu urn’si
TITLE Kullanıcının GIB’de tanımlı adı/unvanı
TYPE Kullanıcının tip bilgisi, Kamu yada Özel olarabilir
REGISTER_TIME Kullanıcının GIB E-FATURA Sistemine kayit tarihi
UNIT Kullanıcı kaydının bulundugu birim, PK yada GB olabilir PK(Posta Kutusu ) mu
yoksa GB (Gönderici Birim) için tanımlı oldugunu gösterir
CSV FORMAT olarak CSV verildiginde kullanıcı listesi aşagıdaki formatta base64
ile encode edilerek bu alanda döner.
identifier,"alias ","title.",type,"registerTime"

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetUserListResponse xmlns="http://parkentegrasyon.com.tr/">
<GetUserListResult>
<USER xmlns="">
<IDENTIFIER>1234567802</IDENTIFIER>


<ALIAS>urn:mail:1234567802_15_gb@turktelekom.com.tr</ALIAS>
<TITLE>Test Kurum İki</TITLE>
<TYPE>Özel</TYPE>
<REGISTER_TIME>2013- 06 - 19T20:53:40</REGISTER_TIME>
<UNIT>GB</UNIT>
<ALIAS_CREATION_TIME>2014- 07 -
18T16:07:39</ALIAS_CREATION_TIME>
</USER>


</GetUserListResult>
</GetUserListResponse>
</soap:Body>
</soap:Envelope>^
^

GetUserList()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

DateTime REGISTER_TIME_START Kayıt başlangı tarihi

Dönüş Değeri:

TÜR AÇIKLAMA

GIBUSER[] Gelen kullanıcıların listesi

**Örnek Kod:**

public GIBUSER[] GetUserList()
{
GetUserListRequest req = new GetUserListRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},







Sayfa 46 / 86

REGISTER_TIME_START = Convert.ToDateTime("2013- 11 - 01T20:55:02"),
};
GIBUSER[] list = client2.GetUserList(req);
return list;

}

## 18. MÜKELLEF KONTROLÜ - CHECKUSER

GIB EFATURA sistemine kayıtlı kullanıcı var mı diye kontrol eder, varsa bilgilerini getirir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise Mükellife ait bilgiler gelmektedir.

**İstek Parametreleri**


ADI AÇIKLAMASI
IDENTIFIER Kontrol edilmek istenen kullanicinin GIB’de tanımlı ID si
ALIAS Kontrol edilmek istenen kullanicinin GIB’de tanımlı Posta Kutusu urn’si
TITLE Kontrol edilmek istenen kullanicinin GIB’de tanımlı adı/unvanı
TYPE Kontrol edilmek istenen kullanicinin tip bilgisi
REGISTER_TIME Kontrol edilmek istenen kullanicinin GIB E-FATURA Sistemine kayit tarihi
IDENTIFIER Kontrol edilmek istenen kullanicinin GIB’de tanımlı ID si

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:CheckUser>
<!--Optional:-->
<par:CheckUserRequest>
<!--Optional:-->
<REQUEST_HEADER>
<SESSION_ID>e5a73ea1-27a7- 4170 - 9134 -
61743ed0454b</SESSION_ID>
</REQUEST_HEADER>
<USER>
<IDENTIFIER>7210452742</IDENTIFIER>
</USER>
</par:CheckUserRequest>
</par:CheckUser>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
IDENTIFIER Kullanıcının GIB’de tanımlı ID si
ALIAS Kullanıcının GIB’de tanımlı Posta Kutusu urn’si
TITLE Kullanıcının GIB’de tanımlı adı/unvanı
TYPE Kullanıcının tip bilgisi
REGISTER_TIME Kullanıcının GIB E-FATURA Sistemine kayit tarihi

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<CheckUserResponse xmlns="http://parkentegrasyon.com.tr/">
<CheckUserResult>
<GIBUSER>







Sayfa 47 / 86


<IDENTIFIER xmlns="">7210452742</IDENTIFIER>
<ALIAS
xmlns="">urn:mail:defaultpk@parkentegrasyon.com.tr</ALIAS>
<TITLE xmlns="">PARK ENTEGRASYON E DÖNÜŞÜM VE BİLİŞİM
HİZMETLERİ ANONİM ŞİRKETİ</TITLE>
<TYPE xmlns="">Özel</TYPE>
<REGISTER_TIME xmlns="">2017- 09 -
14T10:33:05</REGISTER_TIME>
<UNIT xmlns="">PK</UNIT>
<ALIAS_CREATION_TIME xmlns="">2017- 09 -
14T10:33:05</ALIAS_CREATION_TIME>
</GIBUSER>
<GIBUSER>
<IDENTIFIER xmlns="">7210452742</IDENTIFIER>
<ALIAS xmlns="">edespatch</ALIAS>
<TITLE xmlns="">PARK ENTEGRASYON E DÖNÜŞÜM VE BİLİŞİM
HİZMETLERİ ANONİM ŞİRKETİ</TITLE>
<TYPE xmlns="">Özel</TYPE>
<REGISTER_TIME xmlns="">2017- 09 -
14T10:33:05</REGISTER_TIME>
<UNIT xmlns="">GB</UNIT>
<ALIAS_CREATION_TIME xmlns="">2017- 12 -
13T15:23:21</ALIAS_CREATION_TIME>
</GIBUSER>
<GIBUSER>
<IDENTIFIER xmlns="">7210452742</IDENTIFIER>
<ALIAS
xmlns="">urn:mail:defaultgb@parkentegrasyon.com.tr</ALIAS>
<TITLE xmlns="">PARK ENTEGRASYON E DÖNÜŞÜM VE BİLİŞİM
HİZMETLERİ ANONİM ŞİRKETİ</TITLE>
<TYPE xmlns="">Özel</TYPE>
<REGISTER_TIME xmlns="">2017- 09 -
14T10:33:05</REGISTER_TIME>
<UNIT xmlns="">GB</UNIT>
<ALIAS_CREATION_TIME xmlns="">2017- 09 -
14T10:33:05</ALIAS_CREATION_TIME>
</GIBUSER>
</CheckUserResult>
</CheckUserResponse>
</soap:Body>
</soap:Envelope>^


^

CheckUser()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string IDENTIFIER Kullanıcının vkn’si

Dönüş Değeri:

TÜR AÇIKLAMA

GIBUSER[] Gelen kullanıcıların listesi

**Örnek Kod:**

public GIBUSER[] CheckUser(string vkn)
{
CheckUserRequest req = new CheckUserRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
USER = new GIBUSER







Sayfa 48 / 86

#### {

IDENTIFIER = vkn,
},
};
GIBUSER[] list = client.CheckUser(req);
return list;
}

## 19. E-FATURA CEVAP VERME - SENDINVOICERESPONSEWITHSERVERSIGN

Gelen ticari faturaları Park sunucuların da imzlayarak onaylamak için kullanılacak servistir.


❖ Aşağıdaki Request Parametreleri ile istek Park gönderilir.
❖ Park platfromunda dönen cevap başarılı ise return code 0 dönmektedir.

**İstek Parametreleri**


ADI AÇIKLAMASI
STATUS Faturaya verilen cevap durumu KABUL veya RET
ID Faturaya ait id
UUID Faturaya ait uuid
STATUS Faturaya verilen cevap durumu KABUL veya RET

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:wsdl="http://schemas.i2i.com/ei/wsdl"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<wsdl:SendInvoiceResponseWithServerSignRequest>
<REQUEST_HEADER>
<SESSION_ID>caab2943- 4034 - 4b34-97e6-266c81fa8153</SESSION_ID>
</REQUEST_HEADER>
<STATUS>KABUL</STATUS>
<INVOICE ID="EFS 2017 000000003" UUID="D5B0BDF1-687B-4CAE-849F-
6B9F6CEC34F3">
</INVOICE>
<DESCRIPTION>?</DESCRIPTION>
</wsdl:SendInvoiceResponseWithServerSignRequest>
</soapenv:Body>
</soapenv:Envelope>^
^

**CevapParametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir

SendInvoiceResponseWithSign()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string status RED veya KABUL

INVOICE inv Red veya kabule dilecek fatura

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı







Sayfa 49 / 86

## Örnek Kod:

public void SendInvoiceResponseWithSign(string status, INVOICE inv)
{
SendInvoiceResponseWithServerSignRequest SIRWSReq = new
SendInvoiceResponseWithServerSignRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
INVOICE = new INVOICE[]
{
inv,
},
STATUS = status,
};

SendInvoiceResponseWithServerSignResponse res =
client.SendInvoiceResponseWithServerSign(SIRWSReq);
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");

## }

## 20. E-FATURA MÜKELLEF LISTESI- GETUSERLISTBINARY- SIKIŞTIRILMIŞ

GetUserListBinary servisi GIB EFATURA sistemine kayıtlı kullanıcıların listesini ve bilgilerini zip dosya içerisinde

getirir.


❖ Aşağıdaki Request Parametreleri ile istek Park gönderilir.
❖ Park platfromunda dönen cevap başarılı ise content içerisin base64 halinde gib kullanıcı listesi döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
TYPE Kullanıcı listesinin dönülmesi istenilen format. XML veya CSV

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetUserListBinary>
<!--Optional:-->
<par:GetUserListBinaryRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>
</REQUEST_HEADER>
<!--Optional:-->
<TYPE>XML</TYPE>
</par:GetUserListBinaryRequest>
</par:GetUserListBinary>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**







Sayfa 50 / 86


ADI AÇIKLAMASI
CONTENT FORMAT olarak CSV veya XML verildiginde kullanıcı listesi base64 ile encode
edilerek bu alanda döner.

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetUserListBinaryResponse
xmlns="http://parkentegrasyon.com.tr/">
<GetUserListBinaryResult>
<CONTENT
xmlns="">UEsDBBQACAgIACN/OEwAAAAAAAAAAAAA==</CONTENT>
</GetUserListBinaryResult>
</GetUserListBinaryResponse>
</soap:Body>
</soap:Envelope>^

GetUserListBinary()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

GetUserListBinaryRequestTYPE TYPE XML veya CSV formatında olabilir

Dönüş Değeri:

TÜR AÇIKLAMA

base64Binary Kullanıcı listesinin sıkıştırılmış hali

## Örnek Kod:

public base64Binary GetUserListBinary()
{
GetUserListBinaryRequest req = new GetUserListBinaryRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
TYPE = GetUserListBinaryRequestTYPE.XML,
};
GetUserListBinaryResponse res = new GetUserListBinaryResponse();
return res.CONTENT;
}

## 21. E-FATURA ZARF GETIR - GETENVELOPE

GIB (Gelir İdaresi Başkanlığı) E-FATURA sisteminden gelen/giden zarfları E-FATURA Entegrasyon Platformu

üzerinden getirir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise sorgulanan zarfa ait alıcı ve gönderici bilgileri ile
eşleşen diğer zarfları ve zarf detaylarını getirir.

**İstek Parametreleri**

ADI AÇIKLAMASI







Sayfa 51 / 86


START_DATE Getirilmek istenen faturaların geliş tarihi
END_DATE Getirilmek istenen faturaların son tarihi
READ_INCLUDED Okunmuş olarak işaretlenen faturaları da getirsin mi bilgisi
TYPE Kullanıcı listesinin dönülmesi istenilen format. XML , HTML veya PDF olabilir
UUID Zarfın unique(özgün) id si

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetEnvelope>
<!--Optional:-->
<par:GetEnvelopeRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<ENVELOPE_SEARCH_KEY>
<START_DATE>1975- 01 - 01</START_DATE>
<END_DATE>2030- 01 - 01</END_DATE>
<READ_INCLUDED>false</READ_INCLUDED>
<DIRECTION>IN</DIRECTION>
<ELEMENT>
<TYPE>?</TYPE>
<UUID>5ce35dc5-faae-44d6-883b-c91509906ace</UUID>
</ELEMENT>
</ENVELOPE_SEARCH_KEY>
<!--Optional:-->
<HEADER_ONLY>N</HEADER_ONLY>
</par:GetEnvelopeRequest>
</par:GetEnvelope>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INSTANCEIDENTIFIER Zarf Numarası, Zarfın unique(özgün) id si
SENDER Faturayı gönderecek gönderici birimin GIB’de tanımlı VKN si
RECEIVER Faturayı alacak alıcı birimin GIB’de tanımlı VKN si
FROM Faturayı gönderecek gönderici birimin GIB’de tanımlı urn si
TO Faturayı alacak alıcı birimin GIB’de tanımlı urn si
DATE Zarf tarihi
STATUS Faturanın Gelir İdaresi Başkanlığı’ndaki durumu
STATUS_DESCRIPTION Faturanın Gelir İdaresi Başkanlığı’ndaki durumunun açıklaması
GIB_STATUS_CODE Faturanın Gelir İdaresi Başkanlığı’ndaki durumunun kodu
GIB_STATUS_DESCRIPTION Faturanın Gelir İdaresi Başkanlığı’ndaki durumunun kodunun açıklaması
TYPE Zarf Tipi
CONTENT XML zarfın Base64Binary tipinde standart zip yöntemi ile
sıkıştırılmış/sıkıştırılmamış içeriği. Metod çağrılırken COMPRESSED bilgisi Y
ise veya COMPRESSED alanı gönderilmemişse içerik sıkıştırılmıştır.

Örnek Cevap:







Sayfa 52 / 86


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetEnvelopeResponse xmlns="http://parkentegrasyon.com.tr/">
<GetEnvelopeResult>
<ENVELOPE INSTANCEIDENTIFIER="99f8b9bc- 7562 - 420e-af15-
4670f8bfede3">
<HEADER xmlns="">
<SENDER>3900383669</SENDER>
<RECEIVER>7210452742</RECEIVER>
<FROM>GIB</FROM>
<TO>urn:mail:defaultpk@parkentegrasyon.com.tr</TO>
<DATE>2017- 12 - 01</DATE>
<STATUS>RECEIVE - FAILED</STATUS>
<STATUS_DESCRIPTION>RECEIVE - Document could not be validated
according the schema</STATUS_DESCRIPTION>
<GIB_STATUS_CODE>2004</GIB_STATUS_CODE>
<GIB_STATUS_DESCRIPTION>ZARF ID
BULUNAMADI</GIB_STATUS_DESCRIPTION>
<TYPE>SENDERENVELOPE</TYPE>
</HEADER>
<CONTENT xmlns="">PD94bWwgdmVyc2lvbj0iMS4wIi</CONTENT>
</ENVELOPE>


</GetEnvelopeResult>
</GetEnvelopeResponse>
</soap:Body>
</soap:Envelope>^
^

GetEnvelope()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string TYPE XML, HTML veya PDF olabilir

string UUID Zarfın özgün ID’si

string DIRECTION IN veya OUT olabilir

Dönüş Değeri:

TÜR AÇIKLAMA

ENVELOPE[] Zarfa ait gönderici bilgileriyle eşleşen diğer zarfların listesi

## Örnek Kod:

public ENVELOPE[] GetEnvelope(string UUID)
{
GetEnvelopeRequest req = new GetEnvelopeRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
COMPRESSED = "N",
},
ENVELOPE_SEARCH_KEY = new GetEnvelopeRequestENVELOPE_SEARCH_KEY
{
START_DATE = Convert.ToDateTime("1975- 01 - 01"),
END_DATE = Convert.ToDateTime("2030- 01 - 01"),
READ_INCLUDED = false,
DIRECTION = "IN",
ELEMENT = new GetEnvelopeRequestENVELOPE_SEARCH_KEYELEMENT
{
TYPE = "XML",
UUID = UUID,
}
},







Sayfa 53 / 86

#### };

ENVELOPE[] list = client.GetEnvelope(req);
return list;

}

## 22. E-FATURA ZARF DURUM SORGULAMA - GETENVELOPESTATUS

E-FATURA Entegrasyon Platformu üzerinden zarfın durumunu sorgular.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise zarfa ait detay durum döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
COMPRESSED Y olarak gönderilirse gelen cevap zip olarak sıkıştırılacaktır.
ENVELOPE
INSTANCEIDENTIFIER


Zarfın unique(özgün) id si, zarf numarası


Örnek İstek :
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetEnvelopeStatus>
<!--Optional:-->
<par:GetEnvelopeStatusRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>e5a73ea1-27a7- 4170 - 9134 - 61743ed0454b</SESSION_ID>
</REQUEST_HEADER>
<!--Zero or more repetitions:-->
<ENVELOPE INSTANCEIDENTIFIER="5fdc5511- 5615 - 4bf1-b1bb-e68654f844f4"/>
</par:GetEnvelopeStatusRequest>
</par:GetEnvelopeStatus>
</soapenv:Body>
</soapenv:Envelope>

**Cevap Parametreleri**


ADI AÇIKLAMASI
SENDER Faturayı gönderecek gönderici birimin GIB’de tanımlı VKN si
RECEIVER Faturayı alacak alıcı birimin GIB’de tanımlı VKN si
FROM Faturayı gönderecek gönderici birimin GIB’de tanımlı urn si
TO Faturayı alacak alıcı birimin GIB’de tanımlı urn si
DATE Zarf tarihi
STATUS Faturanın Gelir İdaresi Başkanlığı’ndaki durumu^
STATUS_DESCRIPTION Faturanın Gelir İdaresi Başkanlığı’ndaki durumunun açıklaması
GIB_STATUS_CODE Faturanın Gelir İdaresi Başkanlığı’ndaki durumunun kodu
GIB_STATUS_DESCRIPTION Faturanın Gelir İdaresi Başkanlığı’ndaki durumunun kodunun açıklaması
TYPE Zarf Tipi


Örnek Cevap:
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetEnvelopeStatusResponse xmlns="http://parkentegrasyon.com.tr/">
<GetEnvelopeStatusResult>
<ENVELOPE INSTANCEIDENTIFIER="5fdc5511- 5615 - 4bf1-b1bb-e68654f844f4">
<HEADER xmlns="">







Sayfa 54 / 86


<SENDER>7210452742</SENDER>
<RECEIVER>7210452742</RECEIVER>
<FROM>urn:mail:defaultgb@parkentegrasyon.com.tr</FROM>
<TO>urn:mail:defaultpk@parkentegrasyon.com.tr</TO>
<DATE>2018- 01 - 26</DATE>
<STATUS>SEND - SUCCEED</STATUS>
<STATUS_DESCRIPTION>SEND</STATUS_DESCRIPTION>
<GIB_STATUS_CODE>1300</GIB_STATUS_CODE>
<GIB_STATUS_DESCRIPTION>BASARIYLA TAMAMLANDI</GIB_STATUS_DESCRIPTION>
<TYPE>SENDERENVELOPE</TYPE>
</HEADER>
</ENVELOPE>
</GetEnvelopeStatusResult>
</GetEnvelopeStatusResponse>
</soap:Body>
</soap:Envelope>

GetEnvelopeStatus()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string INSTANCEIDENTIFIER Zarfın özgün ID’si

Dönüş Değeri:

TÜR AÇIKLAMA

ENVELOPE[] Zarfların durumlarıyla birlikte listesi

## Örnek Kod:

public ENVELOPE[] GetEnvelopeStatus(string UUID)
{
GetEnvelopeStatusRequestENVELOPE env = new GetEnvelopeStatusRequestENVELOPE
{
INSTANCEIDENTIFIER = UUID
};
GetEnvelopeStatusRequest req = new GetEnvelopeStatusRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
ENVELOPE = new GetEnvelopeStatusRequestENVELOPE[]
{
env
},
};
ENVELOPE[] list = client.GetEnvelopeStatus(req);
return list;

}

## 23. E- FATURA ZARF İŞARET LE - MARKENVELOPE

Zarf okundu olarak işaretlenir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise RETURN_CODE 0 döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
ENVELOPE
INSTANCEIDENTIFIER

Zarfın unique(özgün) id si, zarf numarası







Sayfa 55 / 86

**Örnek İstek** :


<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:MarkEnvelope>
<!--Optional:-->
<par:MarkEnvelopeRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-44624f123e0f</SESSION_ID>
</REQUEST_HEADER>
<!--Optional:-->
<MARK value="READ">
<!--Zero or more repetitions:-->
<ENVELOPE INSTANCEIDENTIFIER="7fc559bd-c045- 4253 - ad2f-5fcb7fe0ca6e"/>
</MARK>
</par:MarkEnvelopeRequest>
</par:MarkEnvelope>
</soapenv:Body>
</soapenv:Envelope>
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<MarkEnvelopeResponse xmlns="http://parkentegrasyon.com.tr/">
<MarkEnvelopeResult>
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997569</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</MarkEnvelopeResult>
</MarkEnvelopeResponse>
</soap:Body>
</soap:Envelope>

MarkEnvelope()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string INSTANCEIDENTIFIER Zarfın özgün ID’si

Dönüş Değeri:

TÜR AÇIKLAMA

Int Return Code 0 ise başarılı

## Örnek Kod:







Sayfa 56 / 86

public void MarkEnvelope(string UUID)
{
MarkEnvelopeRequestMARKENVELOPE env = new MarkEnvelopeRequestMARKENVELOPE()
{
INSTANCEIDENTIFIER = UUID,
};
MarkEnvelopeRequest req = new MarkEnvelopeRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
MARK = new MarkEnvelopeRequestMARK
{
value = MarkEnvelopeRequestMARKValue.READ,
ENVELOPE = new MarkEnvelopeRequestMARKENVELOPE[]
{
env
},
}
};
MarkEnvelopeResponse res = client.MarkEnvelope(req);

if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");

}

## 24. E-FATURA TIPIYLE BERABER GETIR - GETINVOICEWITHTYPE

GIB (Gelir İdaresi Başkanlığı) EFATURA sisteminden gelen/giden faturaları EFATURA Entegrasyon

Platformu üzerinden kullanıcının seçtiği tipe göre getirir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise fatura ait detay ve zip içerisinde xml content’i döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
COMPRESSED Y olarak gönderilirse gelen cevap zip olarak sıkıştırılacaktır.
TYPE Kullanıcı listesinin dönülmesi istenilen format. XML, HTML veya PDF olabilir
TO Faturayı alan birimin GIB de tanımlı urn’si
START_DATE Getirilmek istenen faturaların geliş tarihi
END_DATE Getirilmek istenen faturaların son tarihi
READ_INCLUDED Okunmuş olarak işaretlenen faturaları da getirsin mi bilgisi

**Örnek İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:wsdl="http://schemas.i2i.com/ei/wsdl">
<soapenv:Header/>
<soapenv:Body>
<wsdl:GetInvoiceWithTypeRequest>
<REQUEST_HEADER>
<SESSION_ID>e5ef8615-0d5f-4fbb-9a9f-491309fd4e22</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<INVOICE_SEARCH_KEY>
<TYPE>XML</TYPE>







Sayfa 57 / 86


<TO>urn:mail:defaultpk@parkentegrasyon.com.tr</TO>
<START_DATE>1975- 01 - 01</START_DATE>
<END_DATE>2030- 01 - 01</END_DATE>
<READ_INCLUDED>false</READ_INCLUDED>
<DIRECTION>IN</DIRECTION>
</INVOICE_SEARCH_KEY>
<HEADER_ONLY>N</HEADER_ONLY>
</wsdl:GetInvoiceWithTypeRequest>
</soapenv:Body>
</soapenv:Envelope>

**Cevap Parametreleri**


ADI AÇIKLAMASI
SENDER Faturayı göndereren birimin VKN’si
RECEIVER Faturayı alan birimin VKN’si
SUPPLIER Faturayı gönderen firma adı
CUSTOMER Faturayı alan firma adı
ISSUE_DATE Fatura tarihi
PAYABLE_AMOUNT Fatura toplam ödenecek tutar^
FROM Faturayı göndereren birimin GIB’de tanımlı etiketi (urn)
TO Faturayı alan birimin GIB’de tanımlı etiketi (urn)
PROFILEID Fatura tipi
STATUS Faturanın Gelir İdaresi Başkanlığı’ndaki durumu
STATUS_DESCRIPTION Faturanın Gelir İdaresi Başkanlığı’ndaki durumunun açıklaması
GIB_STATUS_CODE Faturanın Gelir İdaresi Başkanlığı’ndaki durum kodu
GIB_STATUS_CODE_DESCRIPTION Faturanın Gelir İdaresi Başkanlığı’ndaki durum kodunun
açıklaması
CDATE Faturanın oluşturulma zamanı
ENVELOPE_IDENTIFIER Faturayı gelir idaresine gönderilirken kullanılan zarf id’si
CONTENT XML faturanın Base64Binary tipinde standart zip yöntemi ile
sıkıştırılmış/sıkıştırılmamış içeriği. Metod çağrılırken
COMPRESSED bilgisi Y ise veya COMPRESSED alanı
gönderilmemişse içerik sıkıştırılmıştır.

Örnek Cevap:


<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<GetInvoiceWithTypeResponse xmlns="http://schemas.i2i.com/ei/wsdl">
<INVOICE ID="PRK2017000003015" UUID="99DD4FFD- 3630 - 44A2-B673-D204D392A7C6" xmlns="">
<HEADER>
<SENDER>7210452742</SENDER>
<RECEIVER>7210452742</RECEIVER>
<SUPPLIER>PARK ENTEGRASYON E DÖNÜSÜM VE BILISIM HIZMETLERI ANONIM
SIRKETI</SUPPLIER>
<CUSTOMER>PARK ENTEGRASYON E DÖNÜŞÜM VE BİLİŞİM HİZMETLERİ A.Ş.</CUSTOMER>
<ISSUE_DATE>2017- 11 - 14+03:00</ISSUE_DATE>
<PAYABLE_AMOUNT currencyID="TRY">177.82</PAYABLE_AMOUNT>
<FROM>urn:mail:defaultgb@parkentegrasyon.com.tr</FROM>
<TO>urn:mail:defaultpk@parkentegrasyon.com.tr</TO>
<PROFILEID>TEMELFATURA</PROFILEID>
<STATUS>RECEIVE - SUCCEED</STATUS>
<STATUS_DESCRIPTION>SUCCEED</STATUS_DESCRIPTION>
<GIB_STATUS_CODE>1300</GIB_STATUS_CODE>
<GIB_STATUS_DESCRIPTION>BASARIYLA TAMAMLANDI</GIB_STATUS_DESCRIPTION>
<CDATE>2017- 11 - 14T16:46:44.000+03:00</CDATE>
<ENVELOPE_IDENTIFIER>94ff7af1-eadc-4f43-beb3-e1da91098efd</ENVELOPE_IDENTIFIER>
</HEADER> <CONTENT>2YbGbQJ5g65aHUs3Fdt0J9jdbV1qxJKXJmK1qqJcaukRNEtrzD</CONTENT>
</INVOICE>
</GetInvoiceWithTypeResponse>







Sayfa 58 / 86


</SOAP-ENV:Body>
</SOAP-ENV:Envelope>

GetInvoiceWithType()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string ID Fatura No

string UUID Faturanın özgün ID’si

string TYPE XML,HTML veya PDF olabilir

Dönüş Değeri:

TÜR AÇIKLAMA

INVOICE[] İstenen formatta fatura listesi döner

## Örnek Kod:

public INVOICE[] GetInvoiceWithType(string ID, string UUID)
{
GetInvoiceWithTypeRequest req = new GetInvoiceWithTypeRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
COMPRESSED = "N",
},
INVOICE_SEARCH_KEY = new GetInvoiceWithTypeRequestINVOICE_SEARCH_KEY
{
ID = ID,
UUID = UUID,
READ_INCLUDED = false,
DIRECTION = "IN",
TYPE = "XML",
},
HEADER_ONLY = "N",
};
INVOICE[] inv = client.GetInvoiceWithType(req);
return inv;

}

## 25. E- FATURA ZARF XML’I - GETAPPLICATIONRESPONSE

GIB (Gelir İdaresi Başkanlığı) E-FATURA sisteminden gelen/giden zarfları E-FATURA Entegrasyon Platformu

üzerinden XML formatında getirir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise zarfın xml hali döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
INSTANCEIDENTIFIER Zarfın unique(özgün) id si, zarf numarası

**Örnek İstek** :







Sayfa 59 / 86


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:efat="http://gib.gov.tr/vedop3/eFatura">
<soapenv:Header/>
<soapenv:Body>
<efat:getAppRespRequest>
<!--Optional:-->
<instanceIdentifier>5ce35dc5-faae-44d6-883b-c91509906ace</instanceIdentifier>
</efat:getAppRespRequest>
</soapenv:Body>
</soapenv:Envelope>

**Cevap Parametreleri**


ADI AÇIKLAMASI
![CDATA[ Bu tag içerisinde zarfın xml I döner.

Örnek Cevap:


<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<getAppRespResponse xmlns="http://gib.gov.tr/vedop3/eFatura">
<applicationResponse
xmlns=""><![CDATA[<sh:StandardBusinessDocument
xsi:schemaLocation="http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader
PackageProxy_1_2.xsd"
xmlns:sh="http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader"
xmlns:ef="http://www.efatura.gov.tr/package-namespace"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<sh:StandardBusinessDocumentHeader>
<sh:HeaderVersion>1.0</sh:HeaderVersion>
<sh:Sender>
<sh:Identifier>GIB</sh:Identifier>
<sh:ContactInformation>
<sh:Contact>3900383669</sh:Contact>
<sh:ContactTypeIdentifier>VKN_TCKN</sh:ContactTypeIdentifier>
</sh:ContactInformation>
<sh:ContactInformation>
<sh:Contact>Gelir İdaresi Başkanlığı</sh:Contact>
<sh:ContactTypeIdentifier>UNVAN</sh:ContactTypeIdentifier>
</sh:ContactInformation>
</sh:Sender>
<sh:Receiver>
<sh:Identifier>urn:mail:defaultgb@parkentegrasyon.com.tr</sh:Identifier>
<sh:ContactInformation>
<sh:Contact>7210452742</sh:Contact>
<sh:ContactTypeIdentifier>VKN_TCKN</sh:ContactTypeIdentifier>
</sh:ContactInformation>
<sh:ContactInformation>
<sh:Contact>null</sh:Contact>
<sh:ContactTypeIdentifier>UNVAN</sh:ContactTypeIdentifier>
</sh:ContactInformation>
</sh:Receiver>
<sh:DocumentIdentification>
<sh:Standard>UBL-TR</sh:Standard>
<sh:TypeVersion>1.0</sh:TypeVersion>
<sh:InstanceIdentifier>dbb6869a-5a4a- 4229 - a723-eacb4b52c542</sh:InstanceIdentifier>
<sh:Type>SYSTEMENVELOPE</sh:Type>
<sh:CreationDateAndTime>2017- 12 - 28T12:44:03</sh:CreationDateAndTime>
</sh:DocumentIdentification>
</sh:StandardBusinessDocumentHeader>
<ef:Package>
<Elements>







Sayfa 60 / 86

<ElementType>APPLICATIONRESPONSE</ElementType>
<ElementCount>1</ElementCount>
<ElementList>
<ApplicationResponse
xsi:schemaLocation="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse- 2
../xsd/maindoc/UBL-ApplicationResponse-2.1.xsd"
xmlns="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"
xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">
<cbc:UBLVersionID>2.1</cbc:UBLVersionID>
<cbc:CustomizationID>TR1.2</cbc:CustomizationID>
<cbc:ProfileID>UBL-TR-PROFILE-1</cbc:ProfileID>
<cbc:ID>088923f3-69f0-4c07- 9208 - 2f93a1d5de10</cbc:ID>
<cbc:UUID>68df2190-c9ef-480a-98ca-c9ee8580afb7</cbc:UUID>
<cbc:IssueDate>2017- 12 - 28</cbc:IssueDate>
<cbc:IssueTime>12:44:03</cbc:IssueTime>
<cac:SenderParty>
<cac:PartyIdentification>
<cbc:ID schemeID="VKN">3900383669</cbc:ID>
</cac:PartyIdentification>
<cac:PartyName>
<cbc:Name>Gelir İdaresi Başkanlığı</cbc:Name>
</cac:PartyName>
<cac:PostalAddress>
<cbc:StreetName>Yeni Ziraat Mahallesi Etlik Cad. No: 16</cbc:StreetName>
<cbc:CitySubdivisionName>Dışkapı</cbc:CitySubdivisionName>
<cbc:CityName>ANKARA</cbc:CityName>
<cbc:PostalZone>06110</cbc:PostalZone>
<cac:Country>
<cbc:IdentificationCode>TR</cbc:IdentificationCode>
<cbc:Name>Türkiye</cbc:Name>
</cac:Country>
</cac:PostalAddress>
</cac:SenderParty>
<cac:ReceiverParty>
<cac:PartyIdentification>
<cbc:ID schemeID="VKN">7210452742</cbc:ID>
</cac:PartyIdentification>
<cac:PostalAddress>
<cbc:CitySubdivisionName/>
<cbc:CityName/>
<cac:Country>
<cbc:IdentificationCode>TR</cbc:IdentificationCode>
<cbc:Name>Türkiye</cbc:Name>
</cac:Country>
</cac:PostalAddress>
</cac:ReceiverParty>
<cac:DocumentResponse>
<cac:Response>
<!--cbc:ReferenceID = Response ID-->
<cbc:ReferenceID>16398163-aab8-4f42-8fda-ebc18948eedc</cbc:ReferenceID>
<!--S_APR = System application response-->
<cbc:ResponseCode>S_APR</cbc:ResponseCode>
<cbc:Description>SystemApplicationResponse</cbc:Description>
</cac:Response>
<cac:DocumentReference>
<!--cbc:ID = Zarf ID-->
<cbc:ID>5ce35dc5-faae-44d6-883b-c91509906ace</cbc:ID>
<cbc:IssueDate>2017- 12 - 28</cbc:IssueDate>
<cbc:DocumentTypeCode>SENDERENVELOPE</cbc:DocumentTypeCode>
<cbc:DocumentType>SENDERENVELOPE</cbc:DocumentType>
</cac:DocumentReference>
<cac:LineResponse>
<cac:LineReference>
<!--cbc:LineID = Giden Zarf.xml satır no-->
<cbc:LineID>0</cbc:LineID>
<cac:DocumentReference>
<!--cbc:ID = Zarf ID-->
<cbc:ID>5ce35dc5-faae-44d6-883b-c91509906ace</cbc:ID>
<cbc:IssueDate>2017- 12 - 28</cbc:IssueDate>
</cac:DocumentReference>







Sayfa 61 / 86


</cac:LineReference>
<cac:Response>
<!--cbc:ReferenceID = Line Response ID-->
<cbc:ReferenceID>310fbf5f-a2ba- 4815 - 9df0-5df1507e7f98</cbc:ReferenceID>
<cbc:ResponseCode>1210</cbc:ResponseCode>
<cbc:Description>HEDEFTEN SISTEM YANITI GELMEDI</cbc:Description>
</cac:Response>
</cac:LineResponse>
</cac:DocumentResponse>
</ApplicationResponse>
</ElementList>
</Elements>
</ef:Package>
</sh:StandardBusinessDocument>]]></applicationResponse>
</getAppRespResponse>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>

GetApplicationResponse()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

string instanceIdentifier Zarfın özgün ID’si

Dönüş Değeri:

TÜR AÇIKLAMA

string Zarfın XML’i döner

## Örnek Kod:

public string GetApplicationResponse(string UUID)
{
getAppRespRequestType req = new getAppRespRequestType()
{
instanceIdentifier = UUID,
};
getAppRespResponseType res = client.GetApplicationResponse(req);
return res.applicationResponse;

}

## 26. E- ARŞIV FATURASI GÖN DERME(WRITETOARCHIVEEXTENDED)

WriteToArchiveExtended servisi ile e-arşiv faturası Park sunucularına gönderilir. e-Arşiv faturası raporlanana

kadar bu servis ile güncellenebilir.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise return code 0 döner.


ADI AÇIKLAMASI
EARSIV_FLAG
Faturanın e-arşiv faturası mı yoksa saklanacak e-fatura mı olduğu bilgisi. Y ise
e-arşiv faturası N ise e-fatura saklama faturası demektir. E-Arşiv için her zaman
Y olmalıdır.
EARSIV_PROPERTIES E-Arşiv faturaları için kullanılabilecek parametreler







Sayfa 62 / 86


EARSIV_TYPE
Gönderilen e-arşiv faturasının tipi: NORMAL veya INTERNET değerleri olabilir.
Internet satış faturalarında e-arşiv tipi INTERNET olacak. Diğerleri için
NORMAL olacak. Zorunludur.
EARSIV_EMAIL_FLAG
E-Arşiv faturasının alıcı tarafa e-posta olarak gönderilmek isteniyorsa Y olarak
gönderilmelidir. Varsayılan değer N dir.
EARSIV_EMAIL
E-Arşiv e-mail flag değeri Y ise bu alan doldurulmak zorundadır. Bu alanda
belirtmiş olduğunu mail adresine earşiv faturası PDF veya Html olarak
gönderilmektedir.
(FOP-XSLT tasarımı olan müşteriler için PDF gönderilmektedir.
SUB_STATUS
Değerleri: NEW/DRAFT olabilir. Konnektörler tarafından NEW olarak
gönderilmelidir. Zorunludur
SERI
Eger faturayı gönderirken seri yönetimi Park platformu üzerinde yönetmek
istiyorsanız burada alanı göndermek zorundasınız Örnek(PRK)
ARCHIVE_NOTE
E-Arşiv faturasına not eklenmek isterse bu alana eklenebilir.


INVOICE_CONTENT
E-Arşiv faturasının Base64 encode edilmiş verisi. Zorunludur.

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:arc="http://schemas.i2i.com/ei/wsdl/archive"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<arc:ArchiveInvoiceExtendedRequest>
<REQUEST_HEADER>
<SESSION_ID>cd6a4fac-34c3- 4768 - b112-180141dac62b</SESSION_ID>
<COMPRESSED>N</COMPRESSED>
</REQUEST_HEADER>
<ArchiveInvoiceExtendedContent>
<INVOICE_PROPERTIES>
<EARSIV_FLAG>Y</EARSIV_FLAG>
<EARSIV_PROPERTIES>
<EARSIV_TYPE>NORMAL</EARSIV_TYPE>
<EARSIV_EMAIL_FLAG>Y</EARSIV_EMAIL_FLAG>
<SUB_STATUS>NEW</SUB_STATUS>
</EARSIV_PROPERTIES>
<ARCHIVE_NOTE>?</ARCHIVE_NOTE>
<INVOICE_CONTENT xm:contentType="application/?">< INVOICE_CONTENT>
</INVOICE_PROPERTIES>
</ArchiveInvoiceExtendedContent>
</arc:ArchiveInvoiceExtendedRequest>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir
INVOICE_ID Furaya ait UUID

Örnek Cevap:







Sayfa 63 / 86


<SOAP-ENV:Envelope xmlns:SOAP-
ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<ArchiveInvoiceExtendedResponse
xmlns="http://schemas.i2i.com/ei/wsdl/archive">
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>1975457</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
<INVOICE_ID xmlns="">DMY 2017 000000285</INVOICE_ID>
</ArchiveInvoiceExtendedResponse>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>^
^

WriteToArchiveExtended()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

EARSIV_TYPE_VALUE EARSIV_TYPE NORMAL veya INTERNET olabilir

FLAG_VALUE EARSIV_FLAG Y veya N olabilir.

FLAG_VALUE EARSIV_EMAIL_FLAG Y veya N olabilir.

SUB_STATUS_VALUE SUB_STATUS NEW veya DRAFT olabilir.

String SERI Göndereceğiniz faturanın serisi

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:

public void WriteToArchiveExtended()
{
string filePath = @"C:\Users\ParkEntegrasyon\Desktop\fatura\EArşiv
Ornek\PEN2017000000005\PEN2017000000005.xml";
var invoice = XMLSerializer<InvoiceType>.DeserializeFromFile(filePath);
byte[] basebinary = XMLSerializer<InvoiceType>.Serialize(invoice).ToByteArray();
ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIESINVOICE_PROPERTIES prop = new
ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIESINVOICE_PROPERTIES
{
EARSIV_FLAG = FLAG_VALUE.Y,
EARSIV_PROPERTIES = new EARSIV_PROPERTIES
{
EARSIV_TYPE = EARSIV_TYPE_VALUE.NORMAL,
EARSIV_EMAIL_FLAG = FLAG_VALUE.Y,
SUB_STATUS = SUB_STATUS_VALUE.NEW,
SERI = "TST",
},
INVOICE_CONTENT = new base64Binary
{
contentType = "application/xml",
Value =basebinary,
}
};
ArchiveInvoiceExtendedRequest req = new ArchiveInvoiceExtendedRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
COMPRESSED = "N",







Sayfa 64 / 86

#### },

ArchiveInvoiceExtendedContent = new
ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIESINVOICE_PROPERTIES[]
{
prop,
}
};
ArchiveInvoiceExtendedResponse res = client.WriteToArchiveExtended(req);

if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

## 27. E- ARŞIV FATURASINI A LMA - READFROMARCHIVE

ReadFromArchive servisi, Park sunucularına gönderilen e-arşiv faturasının imzalı XML veya imzalı PDF

dosyasını almak için kullanılır.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise return code 0 döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
INVOICE_ID Fatura ait UUID
DOCUMENT_TYPE Almak istediğiniz faturanın türünü belirtiyorsunuz.eger imzal xml istiyorsanız
EA_CUST_XML_SIGNED
PDF olarak istiyorsanız : EA_CUST_PDF_SIGNED
HTML olarak istiyorsanız : EA_CUST_HTML_SIGNED
Belirtmeniz gerekir.

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:ReadFromArchive>
<!--Optional:-->
<par:ArchiveInvoiceReadRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>


</REQUEST_HEADER>
<!--Optional:-->
<INVOICEID>3E5CCF35-96CD-4F84-9CCA-
761758050295</INVOICEID>
<!--Optional:-->
<PORTAL_DIRECTION>OUT</PORTAL_DIRECTION>
<PROFILE>EA_CUST_XML_SIGNED</PROFILE>
</par:ArchiveInvoiceReadRequest>
</par:ReadFromArchive>
</soapenv:Body>
</soapenv:Envelope>^
^

**CevapParametreleri**

ADI AÇIKLAMASI







Sayfa 65 / 86


INVOICE Faturanın talep edilen tipte Base64Binary encode edilmiş ve standart zip
yöntemi ile sıkıştırılmış içeriği.

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<ReadFromArchiveResponse xmlns="http://parkentegrasyon.com.tr/">
<ReadFromArchiveResult>
<INVOICE xmlns="">UEsDBBQACAgIAIyCOEwAAAAAAAA</INVOICE>
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997643</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</ReadFromArchiveResult>
</ReadFromArchiveResponse>
</soap:Body>
</soap:Envelope>^

ReadFromArchive()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:

public void ReadFromArchive(string FaturaUUID)
{
ArchiveInvoiceReadRequest req = new ArchiveInvoiceReadRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
INVOICEID = FaturaUUID,
PORTAL_DIRECTION = "OUT",
PROFILE = "EA_CUST_XML_SIGNED",
//PROFILE = "EA_CUST_PDF_SIGNED",
//PROFILE = "EA_CUST_HTML_SIGNED",
};
ArchiveInvoiceReadResponse res = client.ReadFromArchive(req);
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");

}

## 28. E- ARŞIV FATURASINI İ PTAL ETME - CANCELEARCHIVEINVOICE







Sayfa 66 / 86

CancelEArchiveInvoice servisi, Park sunucularına gönderilen e-arşiv faturasının iptal ederek GIBe iptal fatura

durumu olarak raporlanmasını sağlar.

Ancak Park sunuclarına yüklemiş olduğunuz e-Arşiv faturası gelir idaresinde raporlanmış ise bu fatura karşılık

iptal fatura oluşturmanız sağlar.


❖ Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.
❖ Park platfromunda dönen cevap başarılı ise return code 0 döner.

**İptal Fatura Senaryoları**


ALICI SENARYO İPTAL EDİLECEK Mİ?
Vergi Mükellefi Hatalı Fatura Düzenlenmiş Raporun İptal Bölümüne Eklenecek
Vergi Mükellefi Kısmi veya Toplu İade Edilme Alıcı IADE faturası düzenleyecek. GIBe iptal
olarak bildirmeyecek.
Nihai Tüketici Kısmi veya Toplu İade Edilme Gider pusulası ile iade alınacak. Satış olarak
GIBe raporlanacak.


❖ e-Arşivde fatura iptal etme işlemleri aşağıdaki durumlarla yapılmaktadır.
❖ Sistemde bulunana bir e-Arşiv faturasını iptal etmek için aşağıdaki parameterler ile istekte
bulunabilirsiniz.

**İstek Parametreleri**


ADI AÇIKLAMASI
UUID Faturaya ait UUID

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:arc="http://schemas.i2i.com/ei/wsdl/archive"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<arc:CancelEArchiveInvoiceRequest>
<REQUEST_HEADER>
<SESSION_ID>cd6a4fac-34c3- 4768 - b112-180141dac62b1</SESSION_ID>
</REQUEST_HEADER>
<CancelEArsivInvoiceContent>
<FATURA_UUID>112FA3E4- 5541 - 4844 - A215-1E99244B4F38</ FATURA_UUID >
</CancelEArsivInvoiceContent>
</arc:CancelEArchiveInvoiceRequest>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir

Örnek Cevap:


<SOAP-ENV:Envelope xmlns:SOAP-
ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<CancelEArchiveInvoiResponse
xmlns="http://schemas.i2i.com/ei/wsdl/archive">
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>1975527</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</CancelEArchiveInvoiResponse>
</SOAP-ENV:Body>







Sayfa 67 / 86


</SOAP-ENV:Envelope>


^


❖ Sistemde bulunmayan bir earşiv faturasının iptal etmek için aşağıdaki parameterler ile istekde
bulunabilirsiniz.Bu işlem genelde başka entegretörden Park platformuna dahil olan müşterilerde
yapılmaktadır.

**İstek Parametreleri**


ADI AÇIKLAMASI
FATURA_UUID İptal edilecek e-arşiv faturasının UUID’si

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:arc="http://schemas.i2i.com/ei/wsdl/archive"
xmlns:xm="http://www.w3.org/2005/05/xmlmime">
<soapenv:Header/>
<soapenv:Body>
<arc:CancelEArchiveInvoiceRequest>
<REQUEST_HEADER>
<SESSION_ID>f602719d-adc4-4ea5-9d3b-a66c26cdd39b</SESSION_ID>
</REQUEST_HEADER>
<CancelEArsivInvoiceContent>
<FATURA_UUID>f602719d- 0000 - 4ea5-9d3b-a66c26cdd39b</FATURA_UUID>
</CancelEArsivInvoiceContent>
</arc:CancelEArchiveInvoiceRequest>
</soapenv:Body>
</soapenv:Envelope>^
^

Örnek Cevap:


<SOAP-ENV:Envelope xmlns:SOAP-
ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<CancelEArchiveInvoiResponse
xmlns="http://schemas.i2i.com/ei/wsdl/archive">
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>1975527</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</CancelEArchiveInvoiResponse>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>^
^

CancelEArchiveInvoice()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.







Sayfa 68 / 86

## Örnek Kod:

public void CancelEArchiveInvoice(InvoiceType inv)
{
CancelEArchiveInvoiceRequestCancelEArsivInvoiceContent con = new
CancelEArchiveInvoiceRequestCancelEArsivInvoiceContent
{
FATURA_UUID = inv.UUID.Value,
};
CancelEArchiveInvoiceRequest req = new CancelEArchiveInvoiceRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
CancelEArsivInvoiceContent = new
CancelEArchiveInvoiceRequestCancelEArsivInvoiceContent[]
{
con
},
};
CancelEArchiveInvoiceResponse res = client.CancelEArchiveInvoice(req);
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

## 29. E- ARŞIV RAPOR LISTES INI ALMA - GETEARCHIVEREPORT

GetEArchiveReport servisi, Park sunucularında mükellefe ait oluşturulan bir döneme ait rapor listesini almak için
kullanılır. Servisin döndüğü raporlara ait içerikleri almak için ReadEArchiveReport servisi kullanılır.

**İstek Parametreleri**


ADI AÇIKLAMASI
REPORT_PERIOD Rapor listesinin alınmak istenilen dönem bilgisi. Örnek: Ocak 2017 dönemi için
201701
RAPOR_DURUM_FLAG Rapor durumunun sonuca eklenmesi isteniyorsa Y, değilse N olarak
gönderilmelidir.

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetEArchiveReport>
<par:GetEArchiveReportRequest>
<REQUEST_HEADER>
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>
</REQUEST_HEADER>
<REPORT_PERIOD>201801</REPORT_PERIOD>
<REPORT_STATUS_FLAG>N</REPORT_STATUS_FLAG>
</par:GetEArchiveReportRequest>
</par:GetEArchiveReport>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**

ADI AÇIKLAMASI







Sayfa 69 / 86


REPORT_NO Döneme ait rapor’u uuid’si verir.
REPORT_STATUS Repora ait durumu gösterir.

GetEArchiveReport()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:

public void GetEArchiveReport()
{
GetEArchiveReportRequest req = new GetEArchiveReportRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
REPORT_PERIOD = "201701",
REPORT_STATUS_FLAG = "N",
};
GetEArchiveReportResponse res = client.GetEArchiveReport(req);
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");
}

## 30. E- ARŞIV RAPOR DETAYI ALMA - READEARCHIVEREPORT

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetEArchiveReportResponse
xmlns="http://parkentegrasyon.com.tr/">
<GetEArchiveReportResult>
<INVOICE xmlns="">
<INVOICE_ID>TST2015000000001</INVOICE_ID>
<UUID>3E5CCF35-96CD-4F84-9CCA-761758050295</UUID>
<STATUS>130</STATUS>
<STATUS_DESC>RAPORLANDI</STATUS_DESC>
<INVOICE_DATE>2018- 01 - 05</INVOICE_DATE>
<CDATE>2018- 01 - 05T17:26:08+03:00</CDATE>
<PAYABLE_AMOUNT>11</PAYABLE_AMOUNT>
<EMAIL_STATUS>120</EMAIL_STATUS>
<EMAIL_STATUS_DESC>İŞLENDİ</EMAIL_STATUS_DESC>
</INVOICE>


<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997651</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</GetEArchiveReportResult>
</GetEArchiveReportResponse>
</soap:Body>
</soap:Envelope>^
^







Sayfa 70 / 86

ReadEArchiveReport servisi, Park sunucularında mükellefe ait oluşturulan bir dönem raporun detayını verir.

**İstek Parametreleri**


ADI AÇIKLAMASI
REPORT_PERIOD Rapor listesinin alınmak istenilen dönem bilgisi. Örnek: Ocak 2017 dönemi için
201701
RAPOR_DURUM_FLAG Rapor durumunun sonuca eklenmesi isteniyorsa Y, değilse N olarak
gönderilmelidir.


Örnek İstek :
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:ReadEArchiveReport>
<!--Optional:-->
<par:ReadEArchiveReportRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-44624f123e0f</SESSION_ID>
</REQUEST_HEADER>
<!--Optional:-->
<RAPOR_NO>b8777b7c-9e06-4e80-a238-117e6fdc2777</RAPOR_NO>
</par:ReadEArchiveReportRequest>
</par:ReadEArchiveReport>
</soapenv:Body>
</soapenv:Envelope>^

**Cevap Parametreleri**


ADI AÇIKLAMASI
EARCHIVEREPORT Raporun base64Binary tipinde içeriği
RETURN_CODE 0 ise başarılı

ReadEArchiveReport()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:


Örnek Cevap:
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<ReadEArchiveReportResponse xmlns="http://parkentegrasyon.com.tr/">
<ReadEArchiveReportResult>
<EARCHIVEREPORT xmlns="">UEsDBBQACAgIAPOC</EARCHIVEREPORT>
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997655</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</ReadEArchiveReportResult>
</ReadEArchiveReportResponse>
</soap:Body>
</soap:Envelope>^







Sayfa 71 / 86

public void ReadEArchiveReport(string raporno)
{
ReadEArchiveReportRequest req = new ReadEArchiveReportRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
RAPOR_NO = raporno,
};
ReadEArchiveReportResponse res = new ReadEArchiveReportResponse();
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");

}

## 31. E- ARŞIV FATURA DURUM - GETEARCHIVEINVOICESTATUSREQUEST

Park Platfromuna yüklenen e-Arşiv faturasının durumu, email durumu ve raporlanma durumu sorgulama için

bu servisi kullanmaktayız.

Aşağıdaki Request Parametreleri ile istek Park’a gönderilir.

Park platfromunda dönen cevap başarılı ise faturanın durumları header bölümünde döner.

**İstek Parametreleri**


ADI AÇIKLAMASI
UUID Faturaya ait UUID^

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetEArchiveInvoiceStatus>
<!--Optional:-->
<par:GetEArchiveInvoiceStatusRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>


</REQUEST_HEADER>
<!--Zero or more repetitions:-->
<UUID>3E5CCF35-96CD-4F84-9CCA-761758050295</UUID>
</par:GetEArchiveInvoiceStatusRequest>
</par:GetEArchiveInvoiceStatus>
</soapenv:Body>
</soapenv:Envelope>^
^

**Cevap Parametreleri**


ADI AÇIKLAMASI
INVOICE_ID Faturaya ait id
PROFILE Fatura ait profile bu alan e-arşiv de TemeFatura’dır
UUID Faturaya ait uuid
INVOICE_DATE Fatura tarihi
STATUS Fatura durum kodunu içerir.
STATUS_DESC Fatura durum açıklaması







Sayfa 72 / 86


EMAIL_STATUS Fatura email durum kodunu içerir.
EMAIL_STATUS_DESC Fatura e-mail durum açıklaması
REPORT_ID Faturanın rapor id’si gösterir bu id dolu ise fatura gelir idaresinde raporlanmış
olarak belirtmektedir.

Örnek Cevap:


<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetEArchiveInvoiceStatusResponse
xmlns="http://parkentegrasyon.com.tr/">
<GetEArchiveInvoiceStatusResult>
<INVOICE xmlns="">
<HEADER>
<INVOICE_ID>TST2015000000001</INVOICE_ID>
<PROFILE>TEMELFATURA</PROFILE>
<UUID>3E5CCF35-96CD-4F84-9CCA-761758050295</UUID>
<INVOICE_DATE>05- 01 - 2018</INVOICE_DATE>
<STATUS>130</STATUS>
<STATUS_DESC>RAPORLANDI</STATUS_DESC>
<EMAIL_STATUS>120</EMAIL_STATUS>
<EMAIL_STATUS_DESC>İŞLENDİ</EMAIL_STATUS_DESC>
<REPORT_ID>3770</REPORT_ID>
</HEADER>
</INVOICE>
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997659</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</GetEArchiveInvoiceStatusResult>
</GetEArchiveInvoiceStatusResponse>
</soap:Body>
</soap:Envelope>^
^

GetEArchiveInvoiceStatus()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:

public void GetEArchiveInvoiceStatus(string FaturaUUID)
{
GetEArchiveInvoiceStatusRequest req = new GetEArchiveInvoiceStatusRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
UUID = new string[]
{
FaturaUUID
}
};
GetEArchiveInvoiceStatusResponse res = client.GetEArchiveInvoiceStatus(req);







Sayfa 73 / 86

if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");

}

### 31.1. E-ARŞIV FATURA DURUM KODLARI


ADI AÇIKLAMASI
100 KUYRUĞA EKLENDİ
105 TASLAK OLARAK EKLENDİ
110 İŞLENİYOR
115 İŞLENİYOR
120 İŞLENDİ
130 RAPORLANDI
200 FATURA ID BULUNAMADI

### 31.2. E-ARŞIV FATURA E-MAIL DURUM KODLARI


ADI AÇIKLAMASI
100 HENÜZ İŞLENMEDİ
110 İŞLENİYOR
120 İŞLENDİ
130 E-MAIL GÖNDERİM SONLANDI

## 32. E- ARŞIV FATURASI TEK RARDAN MAIL GÖNDERILMESI - GETEMAILEARCHIVEINVOICE

Park plarformuna yüklenen e-arşiv faturanın tekrar’dan mail gönderilmesi veya daha önce yazılan mail

adresini degiştirilmesi için bu servis kullanılır.

**İstek Parametreleri**


ADI AÇIKLAMASI
FATURA_UUID Faturaya ait uuid dönülür.
EMAIL Faturanın yönderilecegi mail adresi

Örnek **İstek** :


<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:par="http://parkentegrasyon.com.tr/">
<soapenv:Header/>
<soapenv:Body>
<par:GetEmailEarchiveInvoice>
<!--Optional:-->
<par:GetEmailEarchiveInvoiceRequest>
<!--Optional:-->
<REQUEST_HEADER>
<!--Optional:-->
<SESSION_ID>710b9836-e33f-4c19-8fc2-
44624f123e0f</SESSION_ID>


</REQUEST_HEADER>
<!--Optional:-->
<FATURA_UUID>3E5CCF35-96CD-4F84-9CCA-
761758050295</FATURA_UUID>







Sayfa 74 / 86


<EMAIL>busra.kaya@parkentegrasyon.com.tr</EMAIL>
</par:GetEmailEarchiveInvoiceRequest>
</par:GetEmailEarchiveInvoice>
</soapenv:Body>
</soapenv:Envelope>

**Cevap Parametreleri**


ADI AÇIKLAMASI
INTL_TXN_ID Gönderilen request transcation kayıtının id’si
RETURN_CODE 0 degeri istegin başarılı sonuca ulaştığını gösterir


Örnek Cevap:
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<soap:Body>
<GetEmailEarchiveInvoiceResponse xmlns="http://parkentegrasyon.com.tr/">
<GetEmailEarchiveInvoiceResult>
<REQUEST_RETURN xmlns="">
<INTL_TXN_ID>169997666</INTL_TXN_ID>
<RETURN_CODE>0</RETURN_CODE>
</REQUEST_RETURN>
</GetEmailEarchiveInvoiceResult>
</GetEmailEarchiveInvoiceResponse>
</soap:Body>
</soap:Envelope>^

GetEmailEarchiveInvoice ()

Parametreler:

TÜR PARAMETRE AÇIKLAMA

string SessionId Session ID

Dönüş Değeri:

TÜR AÇIKLAMA

int Return Code 0 ise başarılı.

## Örnek Kod:

public void GetEmailEarchiveInvoice(string FaturaUUID)
{
GetEmailEarchiveInvoiceRequest req = new GetEmailEarchiveInvoiceRequest()
{
REQUEST_HEADER = new REQUEST_HEADERType
{
SESSION_ID = sessionID,
},
FATURA_UUID = FaturaUUID,
EMAIL = "busra.kaya@parkentegrasyon.com.tr",
};
GetEmailEarchiveInvoiceResponse res = client.GetEmailEarchiveInvoice(req);
if (res.REQUEST_RETURN.RETURN_CODE == 0)
MessageBox.Show("Başarılı");
else
MessageBox.Show("Başarısız");

}

## 33. FAULT HANDLING







Sayfa 75 / 86

WEB Servis Metodu çağrıldığında hata alması durumunda aşağıdaki formatta Exception Fırlatacaktır.

Örnek Cevap:


SOAP-ENV:Envelope xmlns:SOAP-
ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<SOAP-ENV:Fault>
<faultcode>SOAP-ENV:Server</faultcode>
<faultstring>SISTEM HATASI</faultstring>
<detail>
<RequestFault xmlns="http://schemas.i2i.com/ei/wsdl">
<INTL_TXN_ID xmlns="">63851</INTL_TXN_ID>
<CLIENT_TXN_ID xmlns="" />
<ERROR_CODE xmlns="">2005</ERROR_CODE>
<ERROR_SHORT_DES xmlns="">SISTEM HATASI</ERROR_SHORT_DES>
<ERROR_LONG_DES xmlns="">[SISTEM HATASI ]: Aktif Session bulunamadı.
Session
ID:5c637666-e135-4b46-9a2a-ce14ca41ffff</ERROR_LONG_DES>
<STACKTRACE xmlns="">java.lang.RuntimeException: Aktif Session
bulunamadı. Session ID:5c637666-e135-4b46-9a2a-ce14ca41ffff
at com.i2i.efatura.service.EIService.checkSession(EIService.java:215) ...
</STACKTRACE>
</RequestFault>
</detail>
</SOAP-ENV:Fault>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>^

## 34. FAULT HANDLING - GETEMAILEARCHIVEINVOICE

WEB Servis Metodu çağrıldığında hata alması durumunda aşağıdaki formatta Exception Fırlatacaktır.

Örnek Cevap:


<SOAP-ENV:Envelope xmlns:SOAP-
ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Body>
<ArchiveInvoiceReadResponse xmlns="http://schemas.i2i.com/ei/wsdl/archive">
<ERROR_TYPE xmlns="">
<INTL_TXN_ID>1976559</INTL_TXN_ID>
<ERROR_SHORT_DES>Error get PROFILE from Archive Read Request..Read request
ile gelen PROFILE bilgisi yanlış,kontrol ediniz.PROFILE:
EA_CUST_P_SIGNED</ERROR_SHORT_DES>
</ERROR_TYPE>
</ArchiveInvoiceReadResponse>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>^

## 35. FATURA DURUMLARI

### 35.1. GIDEN FATURA DURUMLARI


STATUS SUBSTATUS PORTAL STATUS Detaylı Açıklama
LOAD SUCCEED Fatura Yükleme - Başarılı Fatura Yükleme Başarılı
LOAD FAILED Fatura Yükleme -
Başarısız Oldu

Fatura Yükleme Hatalı


PACKAGE FAILED Fatura Paketleme -
Başarısız oldu


Fatura paketleme sırasında
hata oluştu. Sistem tarafından
tekrar paketle işlemi yapılarak
gönderilecektir.
PACKAGE SUCCEED Fatura Paketleme -
Başarıyla işlendi

Fatura paketleme başarılı







Sayfa 76 / 86


SEND PROCESSING Fatura Gönderimi -
İşleniyor

Fatura Gönderimi Yapılıyor


SEND SUCCEED Fatura Gönderimi - Temel Fatura Gönderimi
Başarılı
SEND FAILED Fatura Gönderimi –
Başarısız Oldu


Fatura Gönderiminde Hata
Alındı
SEND WAIT_GIB_RESPONSE Fatura Gönderimi - GIB'e
Gönderildi


Fatura GIB e gönderildi ve GIB
den faturanın alındığına dair
sistem yanıtı bekleniyor
SEND WAIT_SYSTEM_RESPONSE Fatura Gönderimi -
Sistem Yanıtı Bekleniyor


Fatura GIB tarafından alıcısına
gönderildi ve alıcı taraftan
faturanın alındığına dair sistem
yanıtı bekleniyor
SEND WAIT_APPLICATION_RESPONSE Fatura Gönderimi -
Fatura Onayı Bekleniyor


Ticari Fatura Alıcıdan Cevap
Bekliyor
ACCEPTED SUCCEED Giden Ticari Fatura Kabul

- Başarıyla işlendi


Gönderilmiş olan ticari fatura
alıcı tarafından kabul edilmiştir
ve alıcının kabul yanıtı
gönderen tarafa başarılı şekilde
ulaşmıştır.
REJECTED SUCCEED Giden Ticari Fatura Red -
Başarıyla işlendi


Gönderilmiş olan ticari fatura
alıcı tarafından red edilmiştir ve
alıcının red yanıtı gönderen
tarafa başarılı şekilde
ulaşmıştır.

### 35.2. GELEN FATURA DURUMLARI


STATUS SUBSTATUS PORTAL STATUS Detaylı Açıklama
STATUS SUBSTATUS PORTAL STATUS Detaylı Açıklama


RECEIVE SUCCEED Fatura Alımı - Başarıyla
işlendi

Temel Fatura Alımı Başarılı


RECEIVE WAIT_APPLICATION_RESPONSE Fatura Alımı - Fatura
Onayı Bekleniyor

Ticari Faatura Alımı Başarılı

ACCEPT PROCESSING Gelen Ticari Fatura Kabul

- İşleniyor


Gelen Ticari Fatura Kabul
Edilmiştir ve kabul yanıtı GİB’e
gönderilmek üzere
işlenmektedir. Hala GİB’e
gönderilmemiştir.
ACCEPT WAIT_GIB_RESPONSE Gelen Ticari Fatura Kabul

- GIB'e Gönderildi


Gelen Ticari Fatura Kabul
Edilmiştir ve kabul yanıtı GIB’e
gönderildi. GIB den onayın
alındığına dair sistem yanıtı
bekleniyor.
ACCEPT WAIT_SYSTEM_RESPONSE Gelen Ticari Fatura Kabul

- Sistem Yanıtı
Bekleniyor


Fatura onayı GIB tarafından
alıcısına gönderildi ve alıcı
taraftan onayın alındığına dair
sistem yanıtı bekleniyor







Sayfa 77 / 86

ACCEPT FAILED Gelen Ticari Fatura Kabul

- Başarısız oldu


Onaylanan Ticari fatura cevabı
gönderiminden hata oluştu. Bu
fatura tekrar onaylanabilir.
ACCEPT SUCCEED Gelen Ticari Fatura Kabul
Edilmiştir ve kabul yanıtı

Nihai Aşama


REJECT PROCESSING Gelen Ticari Fatura Red –
İşleniyor


Gelen Ticari Fatura Red
Edilmiştir ve red yanıtı GİB’e
gönderilmek üzere
işlenmektedir. Hala GİB’e
gönderilmemiştir.
REJECT WAIT_GIB_RESPONSE Gelen Ticari Fatura Red –
GIB'e Gönderildi


Gelen Ticari Fatura
reddedilmiştir ve red yanıtı
GIB’e gönderildi. GIB den
onayın alındığına dair sistem
yanıtı bekleniyor.
REJECT WAIT_SYSTEM_RESPONSE Gelen Ticari Fatura Red –
Sistem Yanıtı Bekleniyor


Fatura onayı GIB tarafından
alıcısına gönderildi ve alıcı
taraftan onayın alındığına dair
sistem yanıtı bekleniyor
REJECT SUCCEED Gelen Ticari Fatura Red -
Başarıyla işlendi


Gelen Ticari Fatura Red
Edilmiştir ve red yanıtı
göndericiye başarılı bir şekilde
ulaştırılmıştır.
FAILED Gelen Ticari Fatura Red -
Başarısız oldu


Gelen Ticari Fatura Red
Edilmiştir ve red yanıtı
GİB’de veya alıcı
tarafında oluşan bir
sebeple hatalı duruma
ulaşmıştır.

Nihai Aşama

## 36. İHRACAT E - FATURA

İhracat E-Fatura için gönderimde kullanılan farklı bir metod bulunmamaktadır, İhracat E-Fatura da aynı

zamanda bir E-Fatura olduğundan; gönderim, SendInvoice metodu ile sağlanmaktadır. Fatura senaryosu

ve fatura tipi kullanımı ise aşağıdaki gibi olmalıdır:

Tip: ISTISNA;

Senaryo: IHRACAT;

❖ Gönderilmiş olan faturaya ait GTB Ref No da GetInvoiceStatus metodu ile çekilir.







Sayfa 78 / 86

### 36.1. İHRACAT E-FATURA UBL ÖRNEĞİ

Örnek XML deseni aşağıdaki gibidir. Bu desen sadece bir fikir vermek için sağlanmıştır.

<cbc:UBLVersionID>2.1</cbc:UBLVersionID>

<cbc:CustomizationID>TR1.2</cbc:CustomizationID>
<cbc:ProfileID>IHRACAT</cbc:ProfileID>

<cbc:ID>PRK2017000007263</cbc:ID>

<cbc:CopyIndicator>false</cbc:CopyIndicator>

<cbc:UUID>3e01e9ba-42cc- 4496 - 96eb-ffb2b18cd266</cbc:UUID>

<cbc:IssueDate>2017- 09 - 19</cbc:IssueDate>
<cbc:IssueTime>10:56:39.0000000+03:00</cbc:IssueTime>

<cbc:InvoiceTypeCode>ISTISNA</cbc:InvoiceTypeCode>

<cbc:Note />

<cbc:Note>Ödeme Tarihi : 19- 06 - 2017

</cbc:Note>
<cbc:Note>YALNIZ YEDİYÜZYİRMİ 'DİR</cbc:Note>

<cbc:Note>VELİ</cbc:Note>

<cbc:Note />

<cbc:DocumentCurrencyCode>TRY</cbc:DocumentCurrencyCode>

<cbc:LineCountNumeric>1</cbc:LineCountNumeric>
<cac:AdditionalDocumentReference>

<cbc:ID>PRK2017000007263</cbc:ID>

<cbc:IssueDate>2017- 09 - 19</cbc:IssueDate>

<cbc:DocumentType>XSLT</cbc:DocumentType>

<cac:Attachment>
<cbc:EmbeddedDocumentBinaryObject mimeCode="application/xml" encodingCode="Base64"

characterSetCode="UTF-8" filename="PRK2017000007263.xslt">BASE64 CODE

HERE</cbc:EmbeddedDocumentBinaryObject>

</cac:Attachment>
</cac:AdditionalDocumentReference>

<cac:Signature>

<cbc:ID schemeID="VKN_TCKN"> 7210452742 </cbc:ID>

<cac:SignatoryParty>

<cac:PartyIdentification>
<cbc:ID schemeID="VKN"> 7210452742 </cbc:ID>







Sayfa 79 / 86

</cac:PartyIdentification>
<cac:PostalAddress>

<cbc:Room>Kapı No</cbc:Room>

<cbc:StreetName>Sokak</cbc:StreetName>

<cbc:BuildingName />

<cbc:BuildingNumber />
<cbc:CitySubdivisionName>Şişli</cbc:CitySubdivisionName>

<cbc:CityName>İSTANBUL</cbc:CityName>

<cbc:PostalZone>340000</cbc:PostalZone>

<cbc:Region>Şişli</cbc:Region>

<cac:Country>
<cbc:Name>Türkiye</cbc:Name>

</cac:Country>

</cac:PostalAddress>

</cac:SignatoryParty>

<cac:DigitalSignatureAttachment>
<cac:ExternalReference>

<cbc:URI>#Signature-Id-5392a684-6dcf- 4556 - 9825 - b723da7b2e26</cbc:URI>

</cac:ExternalReference>

</cac:DigitalSignatureAttachment>
</cac:Signature>

<cac:AccountingSupplierParty>

<cac:Party>

<cbc:WebsiteURI>1111111387</cbc:WebsiteURI>

<cac:PartyIdentification>
<cbc:ID schemeID="VKN"> 7210452742 </cbc:ID>

</cac:PartyIdentification>

<cac:PartyIdentification>

<cbc:ID schemeID="MERSISNO">MERS698765</cbc:ID>

</cac:PartyIdentification>
<cac:PartyIdentification>

<cbc:ID schemeID="TICARETSICILNO">TIC123456</cbc:ID>

</cac:PartyIdentification>

<cac:PartyName>

<cbc:Name>PARK ENTEGRASYON E DÖNÜŞÜM VE BİLİŞİM HİZMETLERİ A.Ş.</cbc:Name>
</cac:PartyName>

<cac:PostalAddress>

<cbc:StreetName>Cumhuriyet Mahallesi Arabayolu Caddesi Dönence Sokak</cbc:StreetName>

<cbc:CitySubdivisionName>Sarıyer</cbc:CitySubdivisionName>

<cbc:CityName>İstanbul</cbc:CityName>
<cbc:PostalZone>34457</cbc:PostalZone>

<cac:Country>

<cbc:Name>Türkiye</cbc:Name>

</cac:Country>
</cac:PostalAddress>

<cac:PartyTaxScheme>

<cac:TaxScheme>

<cbc:Name>Sarıyer</cbc:Name>

</cac:TaxScheme>
</cac:PartyTaxScheme>

<cac:Contact>

<cbc:Telephone>2122744635</cbc:Telephone>

<cbc:Telefax />

<cbc:ElectronicMail>6543210104</cbc:ElectronicMail>
</cac:Contact>

</cac:Party>

</cac:AccountingSupplierParty>

<cac:AccountingCustomerParty>







Sayfa 80 / 86

<cac:Party>
<cbc:WebsiteURI />

<cac:PartyIdentification>

<cbc:ID schemeID="VKN"> 7210452742 </cbc:ID>

</cac:PartyIdentification>

<cac:PartyName>
<cbc:Name>Gümrük ve Ticaret Bakanlığı</cbc:Name>

</cac:PartyName>

<cac:PostalAddress>

<cbc:Room />

<cbc:StreetName>Üniversiteler Mahallesi Dumlupınar Bulvarı</cbc:StreetName>
<cbc:BuildingName />

<cbc:BuildingNumber>151</cbc:BuildingNumber>

<cbc:CitySubdivisionName>Çankaya</cbc:CitySubdivisionName>

<cbc:CityName>Ankara</cbc:CityName>

<cbc:PostalZone />
<cbc:Region />

<cac:Country>

<cbc:Name>Türkiye</cbc:Name>

</cac:Country>
</cac:PostalAddress>

<cac:PartyTaxScheme>

<cac:TaxScheme>

<cbc:Name>Ulus</cbc:Name>

</cac:TaxScheme>
</cac:PartyTaxScheme>

</cac:Party>

</cac:AccountingCustomerParty>

<cac:BuyerCustomerParty>

<cac:Party>
<cac:PartyIdentification>

<cbc:ID schemeID="PARTYTYPE">EXPORT</cbc:ID>

</cac:PartyIdentification>

<cac:PartyName>

<cbc:Name>TEST CARI UNVAN</cbc:Name>
</cac:PartyName>

<cac:PostalAddress>

<cbc:CitySubdivisionName>Sarıyer</cbc:CitySubdivisionName>

<cbc:CityName>İstanbul</cbc:CityName>

<cac:Country>
<cbc:Name>Türkiye</cbc:Name>

</cac:Country>

</cac:PostalAddress>

<cac:PartyTaxScheme>
<cac:TaxScheme>

<cbc:TaxTypeCode>VAT</cbc:TaxTypeCode>

</cac:TaxScheme>

</cac:PartyTaxScheme>

<cac:PartyLegalEntity>
<cbc:RegistrationName>TEST CARI UNVAN</cbc:RegistrationName>

<cbc:CompanyID>2222226512121</cbc:CompanyID>

<cac:CorporateRegistrationScheme>

<cbc:ID />

<cbc:Name />
</cac:CorporateRegistrationScheme>

</cac:PartyLegalEntity>

</cac:Party>

</cac:BuyerCustomerParty>







Sayfa 81 / 86

<cac:TaxTotal>
<cbc:TaxAmount currencyID="TRY">0</cbc:TaxAmount>

<cac:TaxSubtotal>

<cbc:TaxableAmount currencyID="TRY">720</cbc:TaxableAmount>

<cbc:TaxAmount currencyID="TRY">0</cbc:TaxAmount>

<cbc:Percent>0</cbc:Percent>
<cac:TaxCategory>

<cbc:TaxExemptionReasonCode>301</cbc:TaxExemptionReasonCode>

<cbc:TaxExemptionReason>11/1-a, Mal İhracatı

11/1-a, Mal İhracatı

</cbc:TaxExemptionReason>
<cac:TaxScheme>

<cbc:Name>KDV</cbc:Name>

<cbc:TaxTypeCode>0015</cbc:TaxTypeCode>

</cac:TaxScheme>

</cac:TaxCategory>
</cac:TaxSubtotal>

</cac:TaxTotal>

<cac:LegalMonetaryTotal>

<cbc:LineExtensionAmount currencyID="TRY">1200.00</cbc:LineExtensionAmount>
<cbc:TaxExclusiveAmount currencyID="TRY">720</cbc:TaxExclusiveAmount>

<cbc:TaxInclusiveAmount currencyID="TRY">720.00</cbc:TaxInclusiveAmount>

<cbc:AllowanceTotalAmount currencyID="TRY">480</cbc:AllowanceTotalAmount>

<cbc:PayableRoundingAmount currencyID="TRY">0.00</cbc:PayableRoundingAmount>

<cbc:PayableAmount currencyID="TRY">720</cbc:PayableAmount>
</cac:LegalMonetaryTotal>

<cac:InvoiceLine>

<cbc:ID>1</cbc:ID>

<cbc:InvoicedQuantity unitCode="PR">12</cbc:InvoicedQuantity>

<cbc:LineExtensionAmount currencyID="TRY">1200</cbc:LineExtensionAmount>
<cac:Delivery>

<cac:DeliveryAddress>

<cbc:ID />

<cbc:CitySubdivisionName>Sarıyer</cbc:CitySubdivisionName>

<cbc:CityName>İstanbul</cbc:CityName>
<cac:Country>

<cbc:Name>Türkiye</cbc:Name>

</cac:Country>

</cac:DeliveryAddress>

<cac:DeliveryTerms>
<cbc:ID schemeID="INCOTERMS">DAP</cbc:ID>

</cac:DeliveryTerms>

<cac:Shipment>

<cbc:ID />
<cac:GoodsItem>

<cbc:RequiredCustomsID>020622000000</cbc:RequiredCustomsID>

</cac:GoodsItem>

<cac:ShipmentStage>

<cbc:TransportModeCode>4</cbc:TransportModeCode>
</cac:ShipmentStage>

</cac:Shipment>

</cac:Delivery>

<cac:TaxTotal>

<cbc:TaxAmount currencyID="TRY">0</cbc:TaxAmount>
<cac:TaxSubtotal>

<cbc:TaxAmount currencyID="TRY">0</cbc:TaxAmount>

<cbc:CalculationSequenceNumeric>1</cbc:CalculationSequenceNumeric>

<cbc:Percent>0</cbc:Percent>







Sayfa 82 / 86

<cac:TaxCategory>
<cbc:TaxExemptionReasonCode>301</cbc:TaxExemptionReasonCode>

<cbc:TaxExemptionReason>11/1-a, Mal İhracatı

11/1-a, Mal İhracatı

</cbc:TaxExemptionReason>

<cac:TaxScheme>
<cbc:Name>KDV</cbc:Name>

<cbc:TaxTypeCode>0015</cbc:TaxTypeCode>

</cac:TaxScheme>

</cac:TaxCategory>

</cac:TaxSubtotal>
</cac:TaxTotal>

<cac:Item>

<cbc:Name>MAMUL</cbc:Name>

</cac:Item>

<cac:Price>
<cbc:PriceAmount currencyID="TRY">100.00</cbc:PriceAmount>

</cac:Price>

</cac:InvoiceLine>

</Invoice>

### 36.2. YOLCUBERABER E-FATURA UBL ÖRNEĞİ

Örnek XML deseni aşağıdaki gibidir. Bu desen sadece bir fikir vermek için sağlanmıştır.
<cbc:UBLVersionID>2.1</cbc:UBLVersionID>

<cbc:CustomizationID>TR1.2</cbc:CustomizationID>

<cbc:ProfileID>YOLCUBERABERFATURA</cbc:ProfileID>

<cbc:ID>PRK2017000000053</cbc:ID>

<cbc:CopyIndicator>false</cbc:CopyIndicator>
<cbc:UUID>54555b14-dfe2-42f2-aa82-f58b352d5e6f</cbc:UUID>

<cbc:IssueDate>2017- 09 - 14 </cbc:IssueDate>

<cbc:IssueTime>14:20:58.0000000+03:00</cbc:IssueTime>

<cbc:InvoiceTypeCode>ISTISNA</cbc:InvoiceTypeCode>

<cbc:Note />
<cbc:Note>YALNIZ ÜÇYÜZ 'DİR</cbc:Note>

<cbc:Note>VELİ</cbc:Note>

<cbc:Note />

<cbc:DocumentCurrencyCode>TRY</cbc:DocumentCurrencyCode>

<cbc:LineCountNumeric>1</cbc:LineCountNumeric>
<cac:AdditionalDocumentReference>

<cbc:ID>PRK2017000000053</cbc:ID>

<cbc:IssueDate>2017- 09 - 14 </cbc:IssueDate>

<cbc:DocumentType>XSLT</cbc:DocumentType>

<cac:Attachment>
<cbc:EmbeddedDocumentBinaryObject mimeCode="application/xml" encodingCode="Base64"

characterSetCode="UTF-8" filename="PRK2017000000053.xslt"> </cbc: EmbeddedDocumentBinaryObject>

</cac:Attachment>

</cac:AdditionalDocumentReference>

<cac:Signature>
<cbc:ID schemeID="VKN_TCKN"> 7210452742 </cbc:ID>

<cac:SignatoryParty>

<cac:PartyIdentification>

<cbc:ID schemeID="VKN"> 7210452742 </cbc:ID>

</cac:PartyIdentification>
<cac:PostalAddress>

<cbc:Room>Kapı No</cbc:Room>

<cbc:StreetName>Sokak</cbc:StreetName>

<cbc:BuildingName />







Sayfa 83 / 86

<cbc:BuildingNumber />
<cbc:CitySubdivisionName>Şişli</cbc:CitySubdivisionName>

<cbc:CityName>İSTANBUL</cbc:CityName>

<cbc:PostalZone>340000</cbc:PostalZone>

<cbc:Region>Şişli</cbc:Region>

<cac:Country>
<cbc:Name>Türkiye</cbc:Name>

</cac:Country>

</cac:PostalAddress>

</cac:SignatoryParty>

<cac:DigitalSignatureAttachment>
<cac:ExternalReference>

<cbc:URI>#Signature-Id-d81246a2-e60e- 4610 - 9b8e-1109d921b3e9</cbc:URI>

</cac:ExternalReference>

</cac:DigitalSignatureAttachment>

</cac:Signature>
<cac:AccountingSupplierParty>

<cac:Party>

<cbc:WebsiteURI>1111111387</cbc:WebsiteURI>

<cac:PartyIdentification>
<cbc:ID schemeID="VKN"> 7210452742 </cbc:ID>

</cac:PartyIdentification>

<cac:PartyIdentification>

<cbc:ID schemeID="MERSISNO">9698765</cbc:ID>

</cac:PartyIdentification>
<cac:PartyIdentification>

<cbc:ID schemeID="TICARETSICILNO"> 145 23456</cbc:ID>

</cac:PartyIdentification>

<cac:PartyName>

<cbc:Name>PARK ENTEGRASYON E DÖNÜŞÜM VE BİLİŞİM HİZMETLERİ A.Ş.</cbc:Name>
</cac:PartyName>

<cac:PostalAddress>

<cbc:StreetName>Cumhuriyet Mahallesi Arabayolu Caddesi Dönence

Sokak</cbc:StreetName>

<cbc:CitySubdivisionName>Sarıyer</cbc:CitySubdivisionName>
<cbc:CityName>İstanbul</cbc:CityName>

<cbc:PostalZone>34457</cbc:PostalZone>

<cac:Country>

<cbc:Name>Türkiye</cbc:Name>

</cac:Country>
</cac:PostalAddress>

<cac:PartyTaxScheme>

<cac:TaxScheme>

<cbc:Name>Sarıyer</cbc:Name>
</cac:TaxScheme>

</cac:PartyTaxScheme>

<cac:Contact>

<cbc:Telephone>2122744635</cbc:Telephone>

<cbc:Telefax />
<cbc:ElectronicMail>6543210104</cbc:ElectronicMail>

</cac:Contact>

</cac:Party>

</cac:AccountingSupplierParty>

<cac:AccountingCustomerParty>
<cac:Party>

<cbc:WebsiteURI />

<cac:PartyIdentification>

<cbc:ID schemeID="VKN"> 7210452742 </cbc:ID>







Sayfa 84 / 86

</cac:PartyIdentification>
<cac:PartyName>

<cbc:Name>Gümrük ve Ticaret Bakanlığı</cbc:Name>

</cac:PartyName>

<cac:PostalAddress>

<cbc:Room />
<cbc:StreetName>Üniversiteler Mahallesi Dumlupınar

Bulvarı</cbc:StreetName>

<cbc:BuildingName />

<cbc:BuildingNumber>151</cbc:BuildingNumber>

<cbc:CitySubdivisionName>Çankaya</cbc:CitySubdivisionName>
<cbc:CityName>Ankara</cbc:CityName>

<cbc:PostalZone />

<cbc:Region />

<cac:Country>

<cbc:Name>Türkiye</cbc:Name>
</cac:Country>

</cac:PostalAddress>

<cac:PartyTaxScheme>

<cac:TaxScheme>
<cbc:Name>Ulus</cbc:Name>

</cac:TaxScheme>

</cac:PartyTaxScheme>

</cac:Party>

</cac:AccountingCustomerParty>
<cac:BuyerCustomerParty>

<cac:Party>

<cac:PartyIdentification>

<cbc:ID schemeID="PARTYTYPE">TAXFREE</cbc:ID>

</cac:PartyIdentification>
<cac:PostalAddress>

<cbc:CitySubdivisionName />

<cbc:CityName>Adıyaman</cbc:CityName>

<cac:Country>

<cbc:Name>Türkiye</cbc:Name>
</cac:Country>

</cac:PostalAddress>

<cac:PartyTaxScheme>

<cac:TaxScheme />

</cac:PartyTaxScheme>
<cac:Person>

<cbc:FirstName />

<cbc:FamilyName />

<cbc:NationalityID>TR</cbc:NationalityID>
<cac:IdentityDocumentReference>

<cbc:ID>u12345678</cbc:ID>

<cbc:IssueDate>2005- 01 - 03</cbc:IssueDate>

</cac:IdentityDocumentReference>

</cac:Person>
</cac:Party>

</cac:BuyerCustomerParty>

<cac:TaxRepresentativeParty>

<cac:PartyIdentification>

<cbc:ID schemeID="ARACIKURUMVKN"> 7210452742 </cbc:ID>
</cac:PartyIdentification>

<cac:PartyIdentification>

<cbc:ID schemeID="ARACIKURUMETIKET">urn:mail:yolcuberaberpk@a.com.tr</cbc:ID>

</cac:PartyIdentification>







Sayfa 85 / 86

<cac:PartyName>
<cbc:Name>urn:mail:yolcuberaberpk@a.com.tr</cbc:Name>

</cac:PartyName>

<cac:PostalAddress>

<cbc:ID />

<cbc:CitySubdivisionName>SDFDSF</cbc:CitySubdivisionName>
<cbc:CityName>SFDSF</cbc:CityName>

<cac:Country>

<cbc:Name>SDFDSF</cbc:Name>

</cac:Country>

</cac:PostalAddress>
<cac:Contact>

<cbc:Telephone />

</cac:Contact>

</cac:TaxRepresentativeParty>

<cac:TaxTotal>
<cbc:TaxAmount currencyID="TRY">22.22</cbc:TaxAmount>

<cac:TaxSubtotal>

<cbc:TaxableAmount currencyID="TRY">277.75</cbc:TaxableAmount>

<cbc:TaxAmount currencyID="TRY">22.22</cbc:TaxAmount>
<cbc:Percent>8</cbc:Percent>

<cac:TaxCategory>

<cac:TaxScheme>

<cbc:Name>KDV</cbc:Name>

<cbc:TaxTypeCode>0015</cbc:TaxTypeCode>
</cac:TaxScheme>

</cac:TaxCategory>

</cac:TaxSubtotal>

</cac:TaxTotal>

<cac:LegalMonetaryTotal>
<cbc:LineExtensionAmount currencyID="TRY">277.78</cbc:LineExtensionAmount>

<cbc:TaxExclusiveAmount currencyID="TRY">277.78</cbc:TaxExclusiveAmount>

<cbc:TaxInclusiveAmount currencyID="TRY">300</cbc:TaxInclusiveAmount>

<cbc:AllowanceTotalAmount currencyID="TRY">0</cbc:AllowanceTotalAmount>

<cbc:PayableAmount currencyID="TRY">300</cbc:PayableAmount>
</cac:LegalMonetaryTotal>

<cac:InvoiceLine>

<cbc:ID>1</cbc:ID>

<cbc:InvoicedQuantity unitCode="PR">1</cbc:InvoicedQuantity>

<cbc:LineExtensionAmount currencyID="TRY">277.777777777778</cbc:LineExtensionAmount>
<cac:TaxTotal>

<cbc:TaxAmount currencyID="TRY">22.2222222222222</cbc:TaxAmount>

<cac:TaxSubtotal>

<cbc:TaxAmount currencyID="TRY">22.2222222222222</cbc:TaxAmount>
<cbc:CalculationSequenceNumeric>1</cbc:CalculationSequenceNumeric>

<cbc:Percent>8</cbc:Percent>

<cac:TaxCategory>

<cbc:TaxExemptionReasonCode>235</cbc:TaxExemptionReasonCode>

<cbc:TaxExemptionReason>16/1-c Transit ve Gümrük Antrepo Rejimleri
İle Geçici Depolama ve Serbest Bölge Hükümlerinin Uygulandığiı Malların

Teslimi</cbc:TaxExemptionReason>

<cac:TaxScheme>

<cbc:Name>KDV</cbc:Name>

<cbc:TaxTypeCode>0015</cbc:TaxTypeCode>
</cac:TaxScheme>

</cac:TaxCategory>

</cac:TaxSubtotal>

</cac:TaxTotal>







Sayfa 86 / 86

<cac:Item>
<cbc:Name>MAMUL</cbc:Name>

</cac:Item>

<cac:Price>

<cbc:PriceAmount currencyID="TRY">277.777778</cbc:PriceAmount>

</cac:Price>
</cac:InvoiceLine>

</Invoice>



