unit uIniUtils;

interface
Uses SysUtils,IniFiles
  ,Classes
  {$IFDEF FMX}
  ,FMX.Forms
  {$ELSE}
  ,Vcl.Forms
  {$ENDIF}
  {$IFNDEF ANDROID}
  ,WinApi.Windows
  ,WinApi.WinSock
  {$ENDIF}
  ;

Type
  COMPUTER_NAME_FORMAT = (
    ComputerNameNetBIOS,
    ComputerNameDnsHostname,
    ComputerNameDnsDomain,
    ComputerNameDnsFullyQualified,
    ComputerNamePhysicalNetBIOS,
    ComputerNamePhysicalDnsHostname,
    ComputerNamePhysicalDnsDomain,
    ComputerNamePhysicalDnsFullyQualified,
    ComputerNameMax);


Function GetTFString(B:Boolean):String;
Function GetStringTF(St:String):Boolean;
procedure LoadSectionINI(INICat:string;aStrings : TStrings; IniFileName : string='');
function SectionExist(INICat:string;IniFileName : string=''):boolean;
Function LoadINI(INICat,Name,DefDataStr : String; IniFileName : string=''):String;overload;
Function LoadINI(INICat,Name:String;DefDataInteger : Integer; IniFileName : string=''):Integer;overload;
Function LoadINIDouble(INICat,Name:String;DefDataFloat : Double; IniFileName : string=''):Double;overload;
Function LoadINI(INICat,Name:String;DefDataDateTime : TDateTime; IniFileName : string=''):TdateTime;overload;
Function LoadINI(INICat,Name:String;DefDataBoolean : Boolean; IniFileName : string=''):Boolean;overload;

Procedure SaveINI(INICat,Name:String;DefDataBoolean : Boolean; IniFileName : string='');overload;
Procedure SaveINI_bool(INICat,Name:String;DefDataBoolean : Boolean; IniFileName : string='');

Procedure SaveINI(INICat,Name,DataStr : String; IniFileName : string='');overload;
Procedure SaveINI(INICat,Name:String;DefDataInteger : Integer; IniFileName : string='');overload;
Procedure SaveINIDouble(INICat,Name:String;DefDataFloat : Double; IniFileName : string='');overload;
//Procedure SaveINI(INICat,Name:String; DefDataDateTime : TDateTime; IniFileName : string='');overload;


function VarToInt(V : Variant):Integer;
function VarToString(V : Variant):String;
function VarToBool(V : Variant):Boolean;

Function GetIniName:String;
Function GetAddfileName(AddName : String):String;

Function GetUserINI : String;

Function GetMachineUser : String;
Function GetWindowsUserName:String;
function AppIniName:String;
Function IniGetComputerName:String;
function GetDomainName:String;
function Int32toIPAddress(IPaddr : Integer) : string;
{$IFNDEF ANDROID}
function GetComputerNameExW(NameType: COMPUTER_NAME_FORMAT; lpBuffer: LPWSTR; var nSize: DWORD): BOOL;
                                                             stdcall; external kernel32 name 'GetComputerNameExW';
function SendARP(DestIp: DWORD; SrcIP: DWORD; pMacAddr: Pointer; PhyAddrLen: Pointer): DWORD;
                                                             stdcall; external 'iphlpapi.dll';


{$ENDIF}
function GetIPAddress: string;
function GetMacddress: string;
function GetIPFromHostExt(var HostName, IPaddr, WSAErr: string): Boolean;
function GetRemoteMacAddress(IPAddress: String; var sMacAddress: String): Boolean;

Function GetAppExeName:string;

Var
  WinUserName : String;
  vDomainName : String;
  vHostName   : String;
  cSystemINI  : string ='SYSTEM.INI';
  AyarlarINI  : string;

const tf : array[false..true] of String =('False','True');

implementation
{$IFDEF AUTOINI}
Uses uUtility;
{$ENDIF}

{$IFDEF ANDROID}
 uses
    androidapi.jni,
    Androidapi.JNIBridge,
    Androidapi.JNI.GraphicsContentViewText,
    Androidapi.JNI.JavaTypes,
    FMX.Helpers.Android,
    Androidapi.Helpers;

type
  JWifiManagerClass = interface(JObjectClass)
  ['{69F35EA7-3EB9-48AA-B7FC-4FFD0E7D712F}']
    function _GetACTION_PICK_WIFI_NETWORK: JString;
    function _GetEXTRA_WIFI_INFO: JString;
    function _GetWIFI_STATE_CHANGED_ACTION: JString;
    property ACTION_PICK_WIFI_NETWORK: JString read _GetACTION_PICK_WIFI_NETWORK;
    property EXTRA_WIFI_INFO: JString read _GetEXTRA_WIFI_INFO;
    property WIFI_STATE_CHANGED_ACTION: JString read _GetWIFI_STATE_CHANGED_ACTION;
  end;

  [JavaSignature('android.net.wifi.WifiInfo')]
  JWifiInfo = interface(JObject)
  ['{4F09E865-DB04-4E64-8C81-AEFB36DABC45}']
    function getBSSID:jString; cdecl;
    function getHiddenSSID:Boolean; cdecl;
    function getIpAddress:Integer; cdecl;
    function getLinkSpeed:integer; cdecl;
    function getMacAddress:JString; cdecl;
    function getNetworkId:integer; cdecl;
    function getRssi:integer; cdecl;
    function GetSSID:jString; cdecl;
  end;

  JWifiInfoClass = interface(JObjectClass)
  ['{2B1CE79F-DE4A-40D9-BB2E-7F9F118D8C08}']
    function _GetLINK_SPEED_UNITS:JString;
    property LINK_SPEED_UNITS: JString read _GetLINK_SPEED_UNITS;
  end;

  TJWifiInfo= class(TJavaGenericImport<JWifiInfoClass, JWifiInfo>) end;

  [JavaSignature('android.net.wifi.WifiManager')]
  JWifiManager = interface(JObject)
  ['{DA7107B9-1FAD-4A9E-AA09-8D5B84614E60}']
    function isWifiEnabled:Boolean;cdecl;
    function setWifiEnabled(enabled:Boolean):Boolean; cdecl;
    function getConnectionInfo :JWifiInfo; cdecl;
    function getWifiState :Integer; cdecl;
    function disconnect :Boolean; cdecl;
  end;

  TJWifiManager = class(TJavaGenericImport<JWifiManagerClass, JWifiManager>) end;


function GetWiFiManager: JWifiManager;
var
  ConnectivityServiceNative: JObject;
begin
  ConnectivityServiceNative := SharedActivityContext.getSystemService(TJContext.JavaClass.WIFI_SERVICE);
  if not Assigned(ConnectivityServiceNative) then
    raise Exception.Create('Could not locate Connectivity Service');
  Result := TJWifiManager.Wrap(
    (ConnectivityServiceNative as ILocalObject).GetObjectID);
  if not Assigned(Result) then
    raise Exception.Create('Could not access Connectivity Manager');
end;

 {$ENDIF}

Function GetAppExeName:string;
Begin
  Result:=ParamStr(0);
End;

Function GetAddfileName(AddName : String):String;
Begin
  if Trim(AddName)='' then AddName:='.Add';
  if AddName[1]<>'.' then AddName:='.'+AddName;
  Result:=ExtractFilePath(GetAppExeName) +ChangeFileExt( ExtractFileName(GetAppExeName), AddName );
end;

Function GetIniName:String;
Begin
   Result:=ExtractFilePath(GetAppExeName) +ChangeFileExt( ExtractFileName(GetAppExeName), '.INI' );
End;

Function GetUserINI : String;
Var ExeName : String;
Begin
 Result:='';
  ExeName:=ExtractFileName(GetAppExeName);
  Result:= ExtractFilePath(GetAppExeName) +WinUserName+'_'+ChangeFileExt( ExeName, '.INI' )
end;

Function GetMachineUser : String;
Var ExeName : String;
Begin
 Result:='';
  ExeName:=ExtractFileName(GetAppExeName);
  Result:= vHostName + '_' +WinUserName+'_'+ChangeFileExt( ExeName, '' )
end;

function AppIniName:String;
Begin
  {$IFDEF AUTOINI}
  Result:={$IFDEF USEAPPINI}GetIniName;
  {$ELSE}
   GetMachineUser+'.INI';
   Result:=ProgramPath+'\'+Result;
   {$ENDIF}

  {$ELSE}
  if (pos(':',cSystemINI)>0) or (pos('\\',cSystemINI)>0) then
   Result:=cSystemINI
    else
      Result:=ExtractFilePath(GetAppExeName)+cSystemINI;
  {$ENDIF}
End;

Function GetTFString(B:Boolean):String;
Begin
   If B Then Result:='TRUE' else Result:='FALSE';
End;

Function GetStringTF(St:String):Boolean;
Begin
  If UpperCase(St)='TRUE' Then Result:=True Else Result:=False;
End;

Procedure SaveINI(INICat,Name,DataStr : String; IniFileName : string='');
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Reg.WriteString(IniCat,Name,DataStr);
    Reg.UpdateFile;
   finally
    Reg.Free;
   end;
End;

Procedure SaveINI(INICat,Name:String;DefDataInteger : Integer; IniFileName : string='');
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Reg.WriteInteger(IniCat,Name,DefDataInteger);
    Reg.UpdateFile;
   finally
    Reg.Free;
   end;
End;

Procedure SaveINIDouble(INICat,Name:String;DefDataFloat : Double; IniFileName : string='');
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Reg.WriteFloat(IniCat,Name,DefDataFloat);
    Reg.UpdateFile;
   finally
    Reg.Free;
   end;
End;

{
Procedure SaveINI(INICat,Name:String; DefDataDateTime : TDateTime; IniFileName : string='');
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Reg.WriteDateTime(IniCat,Name, DefDataDateTime);
    Reg.UpdateFile;
   finally
    Reg.Free;
   end;
End;
}

Procedure SaveINI(INICat,Name:String;DefDataBoolean : Boolean; IniFileName : string='');
Begin
  SaveINI_bool(INICat,Name,DefDataBoolean,IniFileName);
End;

Procedure SaveINI_bool(INICat,Name:String;DefDataBoolean : Boolean; IniFileName : string='');
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Reg.WriteBool(IniCat,Name,DefDataBoolean);
    Reg.UpdateFile;
   finally
    Reg.Free;
   end;
end;

procedure LoadSectionINI(INICat:string;aStrings : TStrings; IniFileName : string='');
Var Reg : TIniFile;
    IniName : String;
begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Reg.ReadSection(INICat,aStrings);
   finally
    Reg.Free;
   end;
end;

function SectionExist(INICat:string;IniFileName : string=''):Boolean;
Var Reg : TIniFile;
    IniName : String;
begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Result :=Reg.SectionExists(INICat);
   finally
    Reg.Free;
   end;
end;

Function LoadINI(INICat,Name,DefDataStr : String; IniFileName : string=''):String;
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;

   //OutputDebugString(PChar(IniName));

   Reg:=TIniFile.Create(IniName);
   try
    Result:=Reg.ReadString(INICat,Name,DefDataStr);
   finally
    Reg.Free;
   end;
End;

Function LoadINI(INICat,Name:String;DefDataInteger : Integer; IniFileName : string=''):Integer;
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Result:=Reg.ReadInteger(INICat,Name,DefDataInteger);
   finally
    Reg.Free;
   end;
End;

Function LoadINIDouble(INICat,Name:String;DefDataFloat : Double; IniFileName : string=''):Double;
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Result:=Reg.ReadFloat(INICat,Name,DefDataFloat);
   finally
    Reg.Free;
   end;
End;

Function LoadINI(INICat,Name:String;DefDataDateTime : TDateTime; IniFileName : string=''):TdateTime;
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
   IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Result:=Reg.ReadDateTime(INICat,Name,DefDataDateTime);
   finally
    Reg.Free;
   end;
End;


Function LoadINI(INICat,Name:String;DefDataBoolean : Boolean; IniFileName : string=''):boolean;
Var Reg : TIniFile;
    IniName : String;
Begin
   if IniFileName<>'' then
    IniName:=IniFileName else
    IniName:=AppIniName;
   Reg:=TIniFile.Create(IniName);
   try
    Result:=Reg.ReadBool(INICat,Name,DefDataBoolean);
   finally
    Reg.Free;
   end;
end;



Function IniGetComputerName:String;
var
  Size                        : Cardinal;
Begin
  Result := StringOfChar(#0, 256);
  Size := 256;
  {$IFNDEF ANDROID}
  if not GetComputerName(PChar(Result), Size) then
    Size := 0;
  {$ELSE}
    Result:='Device';
  {$ENDIF}
  SetLength(Result, Size);
End;


function GetDomainName:String;
var
  vlDomainName : array[0..127] of char;
  vlSize : Cardinal;
begin
  {$IFNDEF ANDROID}
  vlSize := 128;
  ExpandEnvironmentStrings(PChar('%USERDNSDOMAIN%'), vlDomainName, vlSize);
  if vlDomainName='%USERDNSDOMAIN%' then Result:=''
   else Result := vlDomainName;
   {$ELSE}
   Result:='Android';
   {$ENDIF}
end;



//25-08-2014 -PChar PAnsiChar uyuþmazlýðý giderildi.
{$IF CompilerVersion>= 28}
Function GetWindowsUserName:String;
{$IFNDEF ANDROID}
var
  dwI  : DWORD;
  cPos : Integer;
begin
   dwI :=128;
  SetLength(Result,dWI);
  cPos:=0;
  if WNetGetUser( Nil, PChar(Result), dwI) = NO_ERROR then
    while Result[cPos+1]<>#0 do inc(cPos);
  SetLength(Result,cPos);
End;
{$ELSE}
 begin
  Result:='User';
 end;
{$ENDIF}
{$ELSE}
Function GetWindowsUserName:String;
var
  Res  : AnsiString;
  dwI  : DWord;
  cPos : Integer;
begin
  dwI := MAX_PATH;
  SetLength (Res, dwI + 1);
  if WNetGetUser(Nil, PChar (Res), dwI) = NO_ERROR then
    SetLength (Res, StrLen (PChar (Res)))
  else
    SetLength (Res, 0);
  Result:=String(Res);
End;
{$ENDIF}


function Int32toIPAddress(IPaddr : Integer) : string;
var
  octet : array[0..3] of Byte;
  x : Integer;
Begin
  Result:='';
  for x:=0  to 3 do
   begin
     octet[x] := ( ipAddr or (x*8) ) and $FF;
     Result:=Result+octet[x].ToString;
     if x<3 then
      Result:=Result+'.';
   end;
End;

function GetIPAddress: string;
var
  //BilgAdý : String;
  HostName : String;
  WSAerr   : String;
begin
  GetIPFromHostExt(HostName, Result, WSAErr);
end;

function GetMacddress: string;
begin

end;



//GetAdaptersAddresses

function GetRemoteMacAddress(IPAddress: String; var sMacAddress: String): Boolean;
var
  DestIP: Integer;
  MacAddr: array[0..5] of Byte;
  PhLen, i: Integer;
  BufferDestIpAddr : PansiChar;
begin
  Result := False;
  sMacAddress := '';

  BufferDestIpAddr:=AllocMem(256);
  try
    StrPCopy(BufferDestIpAddr,IPAddress);
    DestIP := Inet_addr(BufferDestIpAddr);
          if DestIP <> INADDR_NONE then
          begin
            PhLen := SizeOf(MacAddr);
            ZeroMemory(@MacAddr[0], PhLen);
            //send arp packet and wait for response with mac address
            if SendARP(DestIP, 0, Pointer(@MacAddr[0]), @PhLen) = NO_ERROR then
            begin
              if (PhLen <> 0) then
              begin
                for i := 0 to PhLen-1 do
                  sMacAddress := sMacAddress + IntToHex(MacAddr[i], 2) + '-';
                SetLength(sMacAddress, Length(sMacAddress) - 1); //Son "-" karakteri sil
                Result := True;
              end;
            end;
          end;
  finally
    FreeMem(BufferDestIpAddr);
  end;
end;




{$IF CompilerVersion>=28}

function GetIPFromHostExt(var HostName, IPaddr, WSAErr: string): Boolean;
var
  {$IFNDEF ANDROID}
  HEnt: pHostEnt;
  // Mücahit Yaðmur Delphi XE 7
  // Memory Leak veya Pointer Karmaþasýna neden Olan
  // PansiChar Dönüþümü için AloocMem kullanýldý
  // Server 2012 de rapor edilen bu hata'nýn önüne geçildi.
  // 26-12-2014
  Buffer : PansiChar;
  WSAData: TWSAData;
  i: Integer;
  {$ELSE}
  wifimanager: jwifimanager;
  info: jwifiinfo;
  ip: integer;
  {$ENDIF}

begin

  Result := False;
  {$IFNDEF ANDROID}
  if WSAStartup($0101, WSAData) <> 0 then
  begin
    WSAErr := 'Winsock cevap vermedi."';
    Exit;
  end;

  IPaddr := '';
  // Uzun Bilgisayar Adý'yla ilgili rapor edilen sorun
  Buffer:=AllocMem(256);

  if GetHostName(Buffer, 256) = 0 then
  begin
    HostName :=String(Buffer);
    HEnt := GetHostByName(Buffer);
    for i := 0 to HEnt^.h_length - 1 do
      IPaddr := IPaddr + IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.';
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := True;
  end
  else
  begin
   case WSAGetLastError of
    WSANOTINITIALISED:WSAErr:='WSANotInitialised';
    WSAENETDOWN      :WSAErr:='WSAENetDown';
    WSAEINPROGRESS   :WSAErr:='WSAEInProgress';
   end;
  end;
  FreeMem(Buffer);
  WSACleanup;
  {$ELSE}
   wifimanager := getwifimanager;
   info := wifimanager.getconnectioninfo; // <- ***** hata yoksa... ip := info.getipaddress;
   IPaddr:= Int32toIPAddress(info.getIpAddress);
   HostName:=JstringToString(info.getBSSID);
   Result:=True;
  {$ENDIF}
end;

 {$REGION GetIpOldDelphi}
 {$ELSE}
 // Eski sürüm muhtemelen Delphi 7 - 2007 arasý
function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
type
  Name = array[0 .. 100] of Char;
  PName = ^Name;
var
  HEnt: pHostEnt;
  HName: PAnsiChar;
  WSAData: TWSAData;
  i: Integer;
begin
  Result := False;
  if WSAStartup($0101, WSAData) <> 0 then
  begin
    WSAErr := 'Winsock is not responding."';
    Exit;
  end;
  IPaddr := '';
  New(HName);
  if GetHostName(HName, SizeOf(Name)) = 0 then
  begin
    HostName := StrPas(HName);
    HEnt := GetHostByName(HName);
    for i := 0 to HEnt^.h_length - 1 do
     IPaddr := Concat(IPaddr, IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := True;
  end
  else begin
   case WSAGetLastError of
    WSANOTINITIALISED: WSAErr:='WSANotInitialised';
    WSAENETDOWN      : WSAErr:='WSAENetDown';
    WSAEINPROGRESS   : WSAErr:='WSAEInProgress';
   end;
  end;
  //Dispose(HName);
  WSACleanup;
end;

{$ENDIF}
 {$ENDREGION GetIpOldDelphi}

function VarToInt(V : Variant):Integer;
begin
  Result:=V;
end;
function VarToString(V : Variant):String;
begin
  Result:=V;
end;
function VarToBool(V : Variant):Boolean;
begin
  Result:=V;
end;

initialization
  WinUserName:=GetWindowsUserName;
  vHostName:=IniGetComputerName;
  vDomainName:=GetDomainName;
  AyarlarINI := 'Settings\'+vHostName+'_'+ WinUserName+'_Ayarlar.ini';
end.

