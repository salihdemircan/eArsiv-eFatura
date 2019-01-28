unit Unit2;

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
  EArchiveService,
  EFaturaService,
  Vcl.Buttons,
  Soap.XSBuiltIns, // TXSDate class
  System.Types, Vcl.ComCtrls, Data.DB, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client // TByteDynArray type
    ; // Web Service E-Fatura

type
  TForm2 = class(TForm)
    Button7: TButton;
    Button9: TButton;
    Button10: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    KA: TEdit;
    PA: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    OturumID: string;
    procedure Log(const Value: string);
    function MakeLoginParam(const _username, _password: string): EFaturaService.Login;

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.Button7Click(Sender: TObject);
var
  Ticks: Cardinal;
  RIOArsiv: THTTPRIO;
  RIOFatura: THTTPRIO;
  ServisFatura: EFaturaService.EFaturaServiceSoap;
  ServisArsiv: EArchiveService.EArchiveServiceSoap;

  LoginParam: EFaturaService.Login;
  LoginCevap: EFaturaService.LoginResponse;

  EArchiveInvoiceListSorgu: GetEArchiveInvoiceListRequest; // E-Arþiv Fatura Durum- GetEArchiveInvoiceStatusRequest
  EArchiveInvoiceListCevap: GetEArchiveInvoiceListResponse;

begin

  Memo1.Clear();
  Ticks := GetTickCount();
  RIOFatura := THTTPRIO.Create(nil);
  RIOFatura.URL := 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  ServisFatura := GetEFaturaServiceSoap(True, '', RIOFatura);

  RIOArsiv := THTTPRIO.Create(nil);
  RIOArsiv.URL := 'https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL';
  ServisArsiv := GetEArchiveServiceSoap(True, '', RIOArsiv);

  try
    if OturumID = '' then
    begin
      LoginParam := MakeLoginParam(KA.Text, PA.Text);
      LoginCevap := ServisFatura.Login(LoginParam);
      if LoginCevap.LoginResult.IsSuccessLogin then
      begin
        OturumID := LoginCevap.LoginResult.sessionId;
        Log('** Giriþ Baþarýlý : ' + LoginCevap.LoginResult.sessionId);
      end;
    end;

    if OturumID <> '' then
      try

        EArchiveInvoiceListSorgu := GetEArchiveInvoiceListRequest.Create();
         EArchiveInvoiceListSorgu.REQUEST_HEADER := EArchiveService.REQUEST_HEADERType.Create();
         EArchiveInvoiceListSorgu.REQUEST_HEADER.SESSION_ID := OturumID;

         EArchiveInvoiceListCevap := GetEArchiveServiceSoap().GetEArchiveInvoiceList(EArchiveInvoiceListSorgu);


      except
        on ExcLogCev001: Exception do
        begin
          Log('** Hata ExcLogCev001 : ' + ExcLogCev001.Message);
        end;
      end;




  finally
    Ticks := GetTickCount() - Ticks;
    Log('Zaman: ' + FormatFloat('#,##0 ms', Ticks));
    Log(EmptyStr);
  end;

end;

procedure TForm2.Log(const Value: string);
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

function TForm2.MakeLoginParam(const _username, _password: string): EFaturaService.Login;
begin
  Result := Login.Create;
  Result.username := KA.Text; // 01/2019
  Result.password := PA.Text; // 01/2019;
end;

end.
