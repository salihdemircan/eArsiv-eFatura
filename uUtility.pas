//
// 10-04-2014 
// Çeþitli ihtiyaçlara cevap vermesi amacýyla
// oLuþturuldu.
// Windows dýþýnda kullanýlmasý durumunda
// ilgili DEFINITION tanýmlarý yapýlmalýdýr

unit uUtility;
interface
Uses Classes,SysUtils,
   IniFiles,
   DB
   {$IFNDEF ANDROID}
   ,WinApi.Windows
   ,Winapi.ShellAPI
   {$ENDIF}
   {$IFDEF FMX}
   ,Fmx.Forms {$ELSE}
    {$IFNDEF CONSOLE}
     ,Vcl.Forms
     {$ENDIF}
   {$ENDIF}
   ,Math
   ,System.IOUtils
   ,Variants,Types, TypInfo
  //, uIniUtils
  ;

 Type
   TFileTypes = (ftPdf,ftHtml,ftBinary,ftText,ftNone,ftNotFound);

   fDecodeResult= record
     Day,Month,Year : Word;
     Hour,Min,Sec,mSec : Word;
   end;

   {.$IFNDEF CONSOLE}
   /// <author></author>
   /// <version>1</version>
   tAppHandleProc = procedure(Sender: TObject);
   {$M+}
   tAppExcept = class(TObject)
     private
      {$IFNDEF CONSOLE}fOldAppExcept : TExceptionEvent;{$endif}
      fExMessage : String;
      function GetLastMessage : string;
     public
       procedure AppException(Sender: TObject; E: Exception);
     published
      {$IFNDEF CONSOLE}property OldAppEvent : TExceptionEvent read fOldAppExcept write fOldAppExcept;{$endif}
      property LastMessage : string read GetLastMessage;
   end;

   EFakeException = class(Exception);
   {.$ENDIF}


type
  TDateHelper = record helper for TDateTime
   public
    //function ToString : string;
    function ToString(_formatSt : string = 'yyyyMMdd'):string;
    function Yil : Integer;
    function Ay : Integer;
    function Gun : Integer;
  end;

function Qs(st:String=''):string;
function Qd(_d : TDateTime; _format : string='yyyy-MM-dd'):string;

function IngUpperCase(Stt : string):string;
function TrkUpperCase(Stt : string):string; inline;

Function FDecodeDate(Date : TDateTime): fDecodeResult;
function CopyData(Source,Target : TDataset):Integer;
function DecStr(vStr : String):Integer;
function IncStr(vStr : String):Integer;
function FillSt(CNo:Char;Len:Integer):string;
Function FormatString(St:String;C:Char;Max:Integer;Left:Boolean):String;
function OneSpc(St:String):String;
function TrimOneSpc(St : string): string;
function cCount(C:Char;S:String):Integer;

function FldFloatStr(dt : Extended;const _Yuvarla:Integer=2) : string;
function FldFloatStrRound(dt : Extended;const _Yuvarla:Integer=2) : string;
function HaveParam( Strprm : string):Integer;
function GetParamValue(paramS , Ayrac : string):string;
function GetParam(paramS , Ayrac : string):string;
procedure LogApp(st:string;FileName:string='');
/// <summary>
///   String içeriði Belirtilen Dosyaya Yazar
/// </summary>
/// <param name="St">
///   Log içeriði (Text)
/// </param>
/// <param name="FileName">
///   DosyaAdý
/// </param>
/// <remarks>
///   Tek Pararametreyle kullanýldýðýnda Varsayýlan $ProgramName.log dosyasýna kaydeder
/// </remarks>
/// <example>
///   <b>LogAppLog</b>('Bu metni LOG kaydýna Yaz', '\logs_dosyalar\log1.log');
/// </example>
/// <seealso cref="LogAppLog(string)">
///   LogAppLog()
/// </seealso>
/// <seealso cref="LogAppLog(TStringLis)">
///   LogAppLog(Liststr)
/// </seealso>
Procedure LogAppLog(St : String;FileName:String);overload;
/// <summary>
///   Verilen String içeriði Varsayýlan Log Dosyasýna Yazar
/// </summary>
/// <param name="St">
///   Text Ýçerik(string)
/// </param>
/// <remarks>
///   Tek parametreli LogAppLog ProgramAdýna göre log dosyasý oluþturur. $ProgramName veya $ModuleName e göre log
///   dosyasý adýný alýr
/// </remarks>
/// <example>
///   LogAppLog('Test');
/// </example>
Procedure LogAppLog(St : String);overload;
/// <summary>
///   TStrings liste içeriðini Belirtilen Dosyaya Yazar
/// </summary>
/// <param name="List">
///   TStrings türünden liste
/// </param>
/// <param name="FileName">
///   Hedef Log Dosyasyý adýdýr
/// </param>
/// <example>
///   LogAppLog(Memo1.Lines,'\logs_klasor\list_log.log');
/// </example>
procedure LogAppLog(List:TStrings;FileName:String)overload;
procedure LogAppLog(List:TStrings)overload;

function GetLogFileName : string;

function GetCheckDigit(bc: String): string;
Function CheckSum_EAN(data : String):Integer;

function getAyýnSonGünü(Yýl,Ay : Word):Integer;
function DateString(Year : integer;Month: byte;day : byte):String;overload;
function DateString(Year : integer;Month: byte):String;overload;
function DateString(Date : TDate):String;overload;
function DateStringQuoted(Date : TDate):String;overload;
function DateStringQuoted(Year : integer;Month: byte;day : byte):String;overload;
function DateStringQuoted(Year : integer;Month: byte):String;overload;
function DateToString(Date :TDate; Format : String ='yyyy-MM-dd'):String;
function DateTimeStringQuoted(DateTime : TDateTime):String;
function DateTimeStringSql(DateTime : TDateTime):String;
function DateStringSql(DateTime : TDateTime):String;

function StringToDate(inStr : string; Format : String ='yyyy-MM-dd'):TDate;
function StringToDateTime(inStr : string; Format : String ='yyyy-MM-dd hh:mm:ss:nn'):TDateTime;
function StringToByteArray(const S: UTF8String): TByteDynArray;
function StringToBytes(const S: UTF8String) : TBytes;
function BytesToString(const B : TBytes) : UTF8String;
function ByteDynArrayToString( const B : TByteDynArray) : UTF8String;
procedure WriteText(S : string; FileName:string);
procedure TextSaveToFile(Self : string; FileName : string;  Encoding : TEncoding = NIL; UseStringStream : Boolean = FALSE);
function TextLoadFromFile(FileName : string; Encoding : TEncoding = NIL; UseStringStream : Boolean = FALSE):string;

function VarNor(V : Variant):Variant;

/// Blob Alanlarý NTEXT Unicode Stream olarak oku ve stringe dönüþtür.
/// var
///   memStream : TmemoryStream;
///  string1    : string;
///
///  memStream:=TMemoryStream.Create;
///  (afield as TBlobField).SaveToStream(memStream)
///  string1 := MemoryStreamToString(memStream);
///  memStream.Free;
///
function MemoryStreamToString(M: TMemoryStream): string;

{$IFNDEF ANDROID}
function WinExec32(FileName: string; Visibility: integer; DoWait : boolean = false ): NativeInt{Integer};
function Base64Decoded(const Base64 : System.UTF8String):AnsiString;
procedure SaveBase64Decoded(const Base64 : System.UTF8String; Const FileName : String);
procedure ByteArrayToFile(const ByteArray : TByteDynArray;const FileName : string );
procedure SaveByteArrayToFile(bArr : TByteDynArray;FileName : String;Size : integer=0);
//
function FileAsBase64 (_fileName: string): String;
function FileAsBytes (_fileName: string): Tbytes;
function BytesToDynArray (tby: TBytes): TByteDynArray;

//
procedure SplitNoteToStringList(st: AnsiString;List : TStrings);
function GetModulePathName: String;
procedure GetVersionInfo(var V1, V2, V3, V4: word;const ParamThis : string='');
function GetBuildInfo(const Infolar : array of string;ParamThis : string=''):String;
function GetVersionInfoAsString(const ParamThis : string=''): string;
function WinFileSize(const aFilename: String): Int64;
{$ENDIF}

/// <summary>
///   <para>
///     Variant'ýn <b>varEmpty</b> veya <b>varNull</b> olmasý durumunda : TRUE ,
///   </para>
///   <para>
///     Deðer içermesi durumunda : FALSE döndürür
///   </para>
/// </summary>
function IsEmptyVar(V : Variant) : Boolean;
function VarToInt(V:Variant) : Integer;
Function GetTrueFalseString(B:Boolean):String;
function OnlyNumeric(St : String) : String;
function DegerdenVariant(degerStr : String; degerType :TFieldType) : Variant;

function PointerToStr( P : Pointer):String;

{$IFNDEF ANDROID}
function SetToString(Info: PTypeInfo; const SetParam; Brackets: Boolean= TRUE): AnsiString;
procedure StringToSet(Info: PTypeInfo; var SetParam; const Value: AnsiString);
{$ENDIF}

// 03-07-2017 M.Yaðmur Dakika Saniye fonsiyonlarý
function AySayaç( i : Integer) : Cardinal;
function HaftaSayaç( i : Integer) : Cardinal;
function GünSayaç( i : Integer) : Cardinal;
function SaatSayaç( i : Integer) : Cardinal;
function DakikaSayaç( i : Integer) : Cardinal;
function SaniyeSayaç( i : Integer) : Cardinal;
function MsSecToTime(ms: Cardinal): string;

Procedure SetExceptionAddr;

// Bileþen hafýzada oluþmuþ mu? 12/09/2017 GE
function FindExistsComponent(Parent: TComponent; Name: string): TComponent;
function CheckFileType(FileName: string):TFileTypes;
procedure AppendTexttoFile(Text : String; FileName : String = 'Data.txt');
// DBGrid fontsize'ý kaydeden ve okuyan procedure ve fonksiyon 09/10/2017 GE
procedure SaveGridFont(FileName : string; GridFontSize : integer = 7; UserCode : string = '');
function GetGridFont(FileName : string; GridFontSize : integer = 7; UserCode : string = ''):integer;
function ClearUnWantedChars(Data : string) : string;
function GetExeDir(_DirStr : string) : string;

function ToVirgul(st :string):string;



Var
  Logger       : TStrings=NIL;
  AppModuleName: string;
  ProgramPath  : String;
  LogCount     : Integer;
  WinUserName  : String;
  vDomainName  : String;
  vHostName    : String;
  AppExceptObj : tAppExcept;
  DoLogApp     : Boolean;
Const
   _LF_     = #10;
   _CR_     = #13;
   _CRLF_   = #13#10;
   __       = #13#10;
   ____     = __ + __;
   _null_   = '';
   _spc_    = ' ';
   c_TekTýrnak = #39;
   c_NULL      = #0;

implementation


uses DateUtils
 {$IFDEF EDEVLET}
 ,Soap.EncdDecd
 {$ENDIF}
 {$if CompilerVersion >= 28}// Delphi XE7 ve sonrasý
 , System.NetEncoding
 {$endif}
 {$IFDEF CODESITE}
 , CodeSiteLogging
 {$ENDIF}
{$IFDEF DOLOGERROR}
 {$IFDEF DEBUGSTACK}
 ,StackTrace
 ,JclSysInfo
 {$ENDIF}
{$ENDIF}
;

{$IFNDEF ANDROID}
//  WinExec32 Parametre tanýmlarý
//  FileName   : çalýþtýrýlacak Executable dosya Tam yol\adý ve parametreler örn: "c:\Windows\notepad.exe /p1 p2 45 -aa"
//  Visibility : "1" ise çalðrýlan Executable'in görsel öðeleri varsa görünür yapar.
//               "0" ise çaðrýlan Executable görsel öðeleri olsa bile görünmez yapar.
//  DoWait     : "TRUE" çalýþtýrýlacak program bitene kadar çaðýran yordama dönüþ yapmaz
//               "FALSE" aksi halde ayrý bir process gibi çalýþtýrýp onu çaðýran yordama anýnda dönüþ yapar
//
//  Dönüþ deðeri Integer olup Çaðýrýlan Executable Return Exit(xx) veya Halt(X) gibi deðerler döndürdüyse
//  Sonuç deðer olarak elde edilebilir.

function WinExec32(FileName: string; Visibility: integer; DoWait : boolean = false ): NativeInt{Integer};
var
    zAppName: array[0..512] of char;
    StartupInfo: TStartupInfo;
    ProcessInfo: TProcessInformation;
    Res : DWORD;
begin
  StrPCopy(zAppName, FileName);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);
  StartupInfo.cb := Sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  if CreateProcess (nil,
        zAppName, { Komut satýrý string adresi Pointer}
        nil, { iþlem(process) güvenlik attributleri }
        nil, { parça(thread) güvenlik attributleri }
        false, { handle inheritance flag }
        CREATE_NEW_CONSOLE or { ayrý bir console }
        NORMAL_PRIORITY_CLASS,
        nil, { pointer yeni environment block }
        nil, { pointer mevcut klasör adý }
        StartupInfo, { pointer STARTUPINFO }
        ProcessInfo)
  then
       begin { pointer PROCESS_INF }
        if DoWait then
          begin
            WaitforSingleObject(ProcessInfo.hProcess, INFINITE);
            Res:=0;
            GetExitCodeProcess(ProcessInfo.hProcess, Res);
            Result:=Res;
          end
        else
        begin
          Result:=0;
        end;
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
    end
  else
    begin
      Result := -1
    end;
end;

// Base64 string içeriði Decode eder. örneðin XML text ise
function Base64Decoded(const Base64 : UTF8String):AnsiString;
var
  stream: TBytesStream;
begin
  stream := TBytesStream.Create(TNetEncoding.Base64.DecodeStringToBytes(base64));
  try
    SetString(Result,PAnsiChar(stream.Memory),stream.Size);
  finally
    stream.Free;
  end;
end;

procedure ByteArrayToFile(const ByteArray : TByteDynArray;const FileName : string );
var Count : integer;
 F : File of Byte;
 pTemp : Pointer;
begin
 AssignFile( F, FileName );
 Rewrite(F);
 try
  Count := Length( ByteArray );
  pTemp := @ByteArray[0];
  BlockWrite(F, pTemp^, Count );
 finally
  CloseFile( F );
 end;
end;


procedure SaveByteArrayToFile(bArr : TByteDynArray;FileName : String;Size : integer=0);
Var I : Integer;
    F : File of Byte;
    pTemp : Pointer;
Begin
  Assign(F,FileName);
  Rewrite(F);
  try
    I:=0;
    I :=SizeOf(bArr);
    I := Length( bArr );
    pTemp := @bArr[0];
    BlockWrite(F, pTemp^, I );
  finally
    Close(F);
  end;
End;

procedure SaveBase64Decoded(const Base64 : UTF8String;Const FileName : String);
var
  stream: TBytesStream;
begin
  stream := TBytesStream.Create(TNetEncoding.Base64.DecodeStringToBytes(base64));
  try
    stream.SaveToFile(Filename);
  finally
    stream.Free;
  end;
end;

//******************
  function FileAsBase64 (_fileName: string): String;
    var
      stream: TMemoryStream;
      tby: TBytes;
      resBytes: Tbytes;
    begin
      stream := TMemoryStream.Create;
      try
        stream.LoadFromFile (_filename);
        stream.Position := 0;
      // SetLength(Buffer,stream.Size);
      // stream.Read(Buffer,stream.Size);
        SetLength (tby, stream.Size);
        stream.Read (tby, stream.Size);
        resBytes := TBase64Encoding.Base64.Encode (tby); // EncodeBase64(stream,stream.Size);
        Result := BytesToString (resBytes);
      // Write(Result,_fileName+'.RAW.txt');
        SetLength (tby, 0);
        SetLength (resBytes, 0);
      finally
        stream.Free;
      end;
    end;

  function FileAsBytes (_fileName: string): Tbytes;
    var
      stream: TMemoryStream;
      tby: TBytes;
    begin
      stream := TMemoryStream.Create;
      try
        stream.LoadFromFile (_filename);
        stream.Position := 0;
        SetLength (tby, stream.Size);
        stream.Read (tby, stream.Size);
        Result := tby;
      // Write(Result,_fileName+'.RAW.txt');
        SetLength (tby, 0);
      finally
        stream.Free;
      end;
    end;

  function BytesToDynArray (tby: TBytes): TByteDynArray;
    begin
      SetLength (Result, Length(TBy));
      Move (Tby[0], Result[0], Length(TBy));
    end;

//********************************

procedure SplitNoteToStringList(st: AnsiString;List : TStrings);
Begin
   if Length(st)>1 then
    if Copy(st,Length(st)-1,2)=#13#10 then
       st:=st+#13#10;
   List.Text:=st;
End;


{$ENDIF}


function TDateHelper.ToString(_formatSt : string ):string;
begin
  Result := DateToString(Self,_formatSt);
end;

function TDateHelper.Yil : Integer;
begin
  Result := FDecodeDate(Self).Year;
end;

function TDateHelper.Ay : Integer;
begin
  Result := FDecodeDate(Self).Month;
end;

function TDateHelper.Gun : Integer;
begin
  Result := FDecodeDate(Self).Day
end;



function Qs(st:String=''):string;
begin
  Result:=QuotedStr(st);
end;

function Qd(_d : TDateTime; _format : string='yyyy-MM-dd'):string;
begin
  if _d=0 then Result :=Qs('')
   else
  Result:=Qs(DateToString(_d,_format));
end;

function IngUpperCase(Stt : string):string;
Var X : Integer;
Begin
   for X:=1 to Length(Stt) do
   begin
     case Stt[x] of
     'ð','Ð' : stt[x]:='G';
     'i','Ý','ý' : stt[x]:='I';
     'þ','Þ' : stt[x]:='S';
     'ö','Ö' : stt[x]:='O';
     'ç','Ç' : stt[x]:='C';
     'ü','Ü' : stt[x]:='U';
    else stt[x]:=UpCase(stt[x]);
   end;
  end;
  Result:=Stt;
end;


function _trk_intUpper(c : Char):Char;inline;
begin
    Result:=C;
  Case C Of
    'a'..'h',
    'j'..'z' : Result:=Char(Byte(C)-32);
    'i'      : Result:='Ý';
    'ý'      : Result:='I';
    'ç'      : Result:='Ç';
    'ð'      : Result:='Ð';
    'ö'      : Result:='Ö';
    'þ'      : Result:='Þ';
    'ü'      : Result:='Ü';
  end;
end;

function TrkUpperCase(Stt : string):string;
Var Len : Integer;
    Ch  : Char;//PChar;
    Source , Dest : PChar; // PAnsiCHar
begin
  Len:=Length(Stt);
  SetLength(Result, Len);
  Source := Pointer(Stt);
  Dest := Pointer(Result);
  while Len <> 0 do
  begin
    Ch := Source^;
    Ch:=_trk_intUpper(Ch);
    Dest^ := Ch;
    Inc(Source);
    Inc(Dest);
    Dec(Len);
  end;

end;

Function FDecodeDate(Date : TDateTime): fDecodeResult;
Begin
  DecodeTime(Date,Result.Hour,Result.Min,Result.Sec,Result.mSec);
  DecodeDate(Date,Result.Year,Result.Month,Result.Day);
End;

function getAyýnSonGünü(Yýl,Ay : Word):Integer;
//var tmpDate : TDateTime;
begin
    //tmpDate:=EncodeDate(Yýl,Word,1);
    Result:=FDecodeDate(EndOfAMonth(Yýl,Ay)).Day;
end;

function DateString(Year : integer; Month: byte; Day : byte):String;
Begin
   Result:=Format('%.4d',[Year])+'-';
   Result:=Result+Format('%.2d',[Month])+'-';
   Result:=Result+Format('%.2d',[Day]);
End;

function DateString(Year : integer; Month: byte):String;
Begin
   Result:=Format('%.4d',[Year])+'-';
   Result:=Result+Format('%.2d',[Month]);
End;

function DateString(Date : TDate):String;
begin
  Result:=Format('%.4d',[FDecodeDate(Date).Year])+'-'+
          Format('%.2d',[FDecodeDate(Date).Month])+'-'+
          Format('%.2d',[FDecodeDate(Date).Day]);
end;

function DateStringQuoted(Date : TDate):String;overload;
Begin
  Result:=Format('%.4d',[FDecodeDate(Date).Year])+'-'+
          Format('%.2d',[FDecodeDate(Date).Month])+'-'+
          Format('%.2d',[FDecodeDate(Date).Day]);
  Result:=#39+Result+#39;
End;

function DateStringQuoted(Year : integer; Month: byte; Day : byte):String;
Begin
   Result:=Format('%.4d',[Year])+'-';
   Result:=Result+Format('%.2d',[Month])+'-';
   Result:=Result+Format('%.2d',[Day]);
   Result:=#39+Result+#39;
End;

function DateStringQuoted(Year : integer; Month: byte):String;
Begin
   Result:=Format('%.4d',[Year])+'-';
   Result:=Result+Format('%.2d',[Month]);
   Result:=#39+Result+#39;
End;

/// yyyy-AA-gg SS:DD yani....
/// yyyy-mm-dd hh:nn yani.... YIL - AY - GÜN SAAT:DAKÝKA ShortDate olduðundan (Saniye Yok)
function DateTimeStringSql(DateTime : TDateTime):String;
begin
  {Result:='CONVERT(DATETIME, ''' + Format('%.4d',[FDecodeDate(DateTime).Year])+'-'+
          Format('%.2d',[FDecodeDate(DateTime).Month])+'-'+
          Format('%.2d',[FDecodeDate(DateTime).Day])+' '+
          Format('%.2d',[FDecodeDate(DateTime).Hour])+':'+
          Format('%.2d',[FDecodeDate(DateTime).Min]);}

  Result:='CONVERT(DATETIME, ''' +
          Format('%.2d',[FDecodeDate(DateTime).Day]) + '.' +
          Format('%.2d',[FDecodeDate(DateTime).Month])+'.'+
          Format('%.4d',[FDecodeDate(DateTime).Year])+' '+
          Format('%.2d',[FDecodeDate(DateTime).Hour])+':'+
          Format('%.2d',[FDecodeDate(DateTime).Min])+':'+
          Format('%.2d',[FDecodeDate(DateTime).Sec]) + ''', 104)';
end;

/// yyyy-AA-gg SS:DD yani....
/// yyyy-mm-dd hh:nn yani.... YIL - AY - GÜN ShortDate olduðundan (Saniye Yok)
function DateStringSql(DateTime : TDateTime):String;
begin
  {Result:='CONVERT(DATETIME, ''' + Format('%.4d',[FDecodeDate(DateTime).Year])+'-'+
          Format('%.2d',[FDecodeDate(DateTime).Month])+'-'+
          Format('%.2d',[FDecodeDate(DateTime).Day])+' '+
          Format('%.2d',[FDecodeDate(DateTime).Hour])+':'+
          Format('%.2d',[FDecodeDate(DateTime).Min]);}

  Result:='CONVERT(DATE, ''' +
          Format('%.2d',[FDecodeDate(DateTime).Day]) + '.' +
          Format('%.2d',[FDecodeDate(DateTime).Month])+'.'+
          Format('%.4d',[FDecodeDate(DateTime).Year])+''', 104)';
end;

function DateTimeStringQuoted(DateTime : TDateTime):String;
begin
  Result:=Format('%.4d',[FDecodeDate(DateTime).Year])+'-'+
          Format('%.2d',[FDecodeDate(DateTime).Month])+'-'+
          Format('%.2d',[FDecodeDate(DateTime).Day])+' '+
          Format('%.2d',[FDecodeDate(DateTime).Hour])+':'+
          Format('%.2d',[FDecodeDate(DateTime).Min]);
  Result:=#39+Result+#39;
end;

function DateToString(Date :TDate; Format : String ='yyyy-MM-dd'):String;
var asett : TFormatSettings;
Begin
  aSett.ShortDateFormat:=Format;
  if (pos('/MM',Format)>0)or(Pos('MM/',Format)>0) Then
    aSett.DateSeparator :='/'
  else
  if (pos('-MM',Format)>0)or(Pos('MM-',Format)>0) Then
    aSett.DateSeparator :='-'
     else
    aSett.DateSeparator :=#0;

  if (pos('HH:',Format)>0) then
   asett.TimeSeparator :=':'
    else
  if (pos('HH.',Format)>0) then
   asett.TimeSeparator :='.'
     else
  if (pos('HH-',Format)>0) then
   asett.TimeSeparator :='-'
     else
   asett.TimeSeparator :=#0;

   Result:=DateToStr(Date,asett);
End;

function InvalidDateStr(st : string):boolean;
begin
  if (Trim(St)='') or
     (UpperCase(st)='NULL') or
     (UpperCase(st)='NIL')
  then
     Result:=True
  else
    Result := False;
end;

function StringToDate(inStr : string; Format : String ='yyyy-MM-dd'):TDate;
var asett : TFormatSettings;
    E : TDateTime;
begin
  Result:=-1;
  if InvalidDateStr(inStr) then Exit;
  aSett.ShortDateFormat:=Format;
  if (pos('/MM',Format)>0)or(Pos('MM/',Format)>0) Then
    aSett.DateSeparator :='/'
  else
   if pos('-',Format)<>0 then
    aSett.DateSeparator :='-'
     else
      aSett.DateSeparator :=#0;
  TryStrToDate(inStr,E,asett);
  Result:=E;
end;

function StringToDateTime(inStr : string; Format : String ='yyyy-MM-dd hh:mm:ss:nn'):TDateTime;
var asett : TFormatSettings;
begin
  Result:=-1;
  if InvalidDateStr(inStr) then Exit;

  aSett.ShortDateFormat:=Format;
  aSett.LongDateFormat:= Format;
  if (pos('/MM',Format)>0)or(Pos('MM/',Format)>0) Then
    aSett.DateSeparator :='/'
  else
    aSett.DateSeparator :='-';
  aSett.TimeSeparator:=':';
  TryStrToDateTime(inStr,Result,asett);
end;

function CopyData(Source,Target : TDataset):Integer;
var
    CopyCount,
    I       : Integer;
    FieldName : String;

    function FieldIndex(fName : String ;DS : TDataSet):Integer;
    var I : Integer;
    begin
      Result:=-1;
       for I:=0 to DS.FieldList.Count-1 do
       begin
         if DS.FieldList[I].FieldName=fName then
          begin
            result:=I;
            Exit;
          end;
       end;
    end;

Begin
  Result:=-1;
  if Not Source.Active then Exit;
  Result:=-2;
  if Source.RecordCount<1 then Exit;
//  Result:=-3;
  if Not Target.Active then Target.Active:=True;
  if not(Target.State in [dsEdit,dsInsert]) then Target.Edit;

  CopyCount:=0;
  for I := 0 to Source.FieldCount-1  do
  Begin
   try
    FieldName:=Source.Fields[I].FieldName;
    if FieldIndex(FieldName,Target)>-1 Then
    Begin
     if Not (VarIsNull(Source.FieldByName(FieldName).Value)) then
       begin
        Target.FieldByName(FieldName).Value:=Source.FieldByName(FieldName).Value;
        Inc(CopyCount);
       End;
    End
   finally
   end;
  End; // For I = 0 to FieldCount;
  Result:=CopyCount;

  if CopyCount=Source.FieldCount then
   Result:=0;
End;

function DecStr(vStr : String):Integer;
begin
  try
    Result:=StrToInt(vStr);
    Dec(Result);
  except
    Result:=0;
  end;
end;

function IncStr(vStr : String):Integer;
begin
  try
    Result:=StrToInt(vStr);
    Inc(Result);
  except
    Result:=0;
  end;
end;

Function FillSt(CNo:Char;Len:Integer):String;
Var x : Integer;
Begin
  Result:='';
  If Len<1 then Exit;
  For x:=1 to Len do Result:=Result+Cno;
  SetLength(Result,Len);
end;


/// <summary>
/// String Veriyi Karakterle
/// Saða veya Sola Hizalar
/// </summary>
/// <param name="St">Düzenlenecek Kaynak String</param>
/// <param name="C">Hangi Karakterle biçimlendirilecek</param>
/// <param name="Max">Üretilecek Stringin Azami uzunluðu</param>
/// <param name="Left">Sola Dayalý mý olacak'True', Saða dayalý olacaksa 'False'</param>
/// <returns></returns>
Function  FormatString(St:String;C:Char;Max:Integer;Left:Boolean):String;
Begin
  If Left Then Result:=St+FillSt(C,Max-Length(St)) Else
                Result:=FillSt(C,Max-Length(St))+St;
 //FormatString:=St;
end;


function  OneSpc(St:String):String;
Var X:Byte;
Begin
    X:=0;
    Result:=St;
    If Length(St)=0 Then Exit;
    While(X<=Length(Result)) do
      Begin
         Inc(x);
         If Result[x]=' ' Then
           If X<Length(Result) then
             If Result[x+1]=' ' Then
               Begin
                 Dec(x);
                 Delete(Result,X+1,1);
               end;
      end;
end;

function TrimOneSpc(St : string): string;
begin
  Result:=St;
  while Pos('  ',Result)>0 do
   Result:=StringReplace(Result,'  ',' ',[rfReplaceAll]);
  Result:=TrimLeft(TrimRight(Result));
end;

function  cCount(C:Char;S:String):Integer;
Var X  : Byte;
Begin
   Result:=0;X:=255;
   While(Length(S)>0)and(X>0) do
    Begin
      X:=Pos(C,S);
      If X<>0 Then
          Begin
            Result:=Result+1;
            Delete(S,X,1);
          end;
    end;
end;


function FldFloatStr(dt : Extended;const _Yuvarla:Integer=2) : string;
var res : String;
begin
  if (dt = 0.0) then
  begin
   Result := '0';
   exit;
  end;
  Result:=StringReplace(FldFloatStrRound(dt,_Yuvarla), ',', '.', [rfReplaceAll]);
  if (Pos('e',Result)<1)and(Pos('E',Result)<1) then
  Exit;
  res := StringReplace(FormatFloat('0.0000000000000000',dt),',','.', [rfReplaceAll]);
  while res[Length(res)]='0' do
   delete(res,Length(res),1);
  if res[Length(res)]='.' then
   delete(res,Length(res),1);
  Result := res;//StringReplace(FloatToStr(dt), ',', '.', [rfReplaceAll]);
end;

function FldFloatStrRound(dt : Extended;const _Yuvarla:Integer=2) : string;
begin
  if (dt = 0) then Result := '0'
  //dt:=RoundTo(dt,Round);
  //Result := StringReplace(FloatToStr(dt), ',', '.', [rfReplaceAll]);
  else
  begin
    Result:=Format('%.'+_Yuvarla.ToString+'f', [dt]);
    Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
  end;
end;

function HaveParam( Strprm : string):Integer;
Var X : Integer;
begin
  Result:=-1;
  for x:=1 to ParamCount do
  If Pos(UpperCase(Strprm),UpperCase(ParamStr(X)))>0 then
   begin
     Result:=X;
     Break;
   end;
end;

function GetParam(paramS , Ayrac : string):string;
var
  i : Integer;
  Tmp : String;
begin
    Result :='';
    i:=HaveParam(paramS);
    if i<1 then
    i := HaveParam(AnsiUpperCase(paramS));
    if i<1 then Exit;
    Tmp := ParamStr(i);
    Result := GetParamValue(Tmp,Ayrac);
    if Result='' then
      Result := GetParamValue(AnsiUpperCase(Tmp),Ayrac);
end;


function GetParamValue(paramS , Ayrac : string):string;
var posAyrac : Integer;
begin
  Result :='';
  if Trim(paramS)='' then Exit;
  if Trim(Ayrac)='' then Exit;

  posAyrac := Pos(Ayrac,paramS);
  if posAyrac>0 then
  begin
    Result := Copy(paramS,posAyrac+1,256);
  end;
end;

  {$IFNDEF ANDROID}
  function WinFileSize(const aFilename: String): Int64;
  var
    info: TWin32FileAttributeData;
  begin
    result := -1;

    if NOT GetFileAttributesEx(PWideChar(aFileName), GetFileExInfoStandard, @info) then
      EXIT;

    result := Int64(info.nFileSizeLow) or Int64(info.nFileSizeHigh shl 32);
  end;
  {$ENDIF}

procedure LogApp(st:string;FileName:string='');
begin
  if Not DoLogApp then
   Exit;
  if FileName<>'' then
    LogAppLog(st,FileName)
  else
    LogAppLog(St);
end;


Procedure LogAppLog(St : String;FileName:String);
Var T : TextFile;
    dNow  : TDateTime;
    //spaceStr,
    tST   : String;
    ofs : Int64;
Begin
    {$IFNDEF ANDROID}
    ofs := WinFileSize(FileName);
    {$ELSE}

    {$ENDIF}

    dNow:=Now;
    LogCount:=LogCount+1;
    tSt:=
        Formatstring(IntToStr(LogCount),' ',6,false)+' : '+
        FormatString( IntToStr(FDecodeDate(dNow).Day),'0',2,False)+'.'+
        FormatString( IntToStr(FDecodeDate(dNow).Month),'0',2,False)+'.'+
        FormatString( IntToStr(FDecodeDate(dNow).Year),'0',4,False)+
        ' '+
        FormatString( IntToStr(FDecodeDate(dNow).Hour),'0',2,False)+':'+
        FormatString( IntToStr(FDecodeDate(dNow).Min),'0',2,False)+':'+
        FormatString( IntToStr(FDecodeDate(dNow).Sec),'0',2,False)+'| ';
    St:=St.Replace(#13#10,#10);
    St:=St.Replace(#10,#13#10+FormatString(' ',' ',tST.Length,false));
    St:=tSt+St;
    If Assigned(Logger) Then Logger.Add(St);

    AssignFile( T , FileName);
    If Not FileExists(FileName) Then
      Rewrite(T) else
      begin
      Reset(T);
        {$IFNDEF ANDROID}
        {$ELSE}
        ofs := FileSize(T);
        {$ENDIF}

        if ofs>1024*1024-1024 then
        // Dosya 1 MB i aþýyor
        // Yedekle ve dosyayý yeniden oluþtur
        begin
           CloseFile(T);
           RenameFile(FileName,ChangeFileExt(FileName,'.'+DateToString(Now,'yyyy-MM-dd-hh-mm')+ '.backup.log'));
           Rewrite(T);

        end;
      end;

    Append(T);
    WriteLn(T,St);
    Closefile(T);
End;

procedure LogAppLog(List:TStrings;FileName:String);
var i : Integer;
begin
   for I := 0 to List.Count-1 do
    LogAppLog(List[i],FileName);
end;


function GetLogFileName : string;
Var
    FName : String;
    logDir : string;
begin
    try
     logDir:=ProgramPath+'\logs';
     try
      If not ForceDirectories(logDir) then
       logDir:='' else
       logDir:=LogDir+'\';
     except
       logDir:=ProgramPath+'\';
     end;
    finally
    end;

    FName:=ChangeFileExt( AppModuleName, '.LOG' );
    FName:=vHostName + '_' +WinUserName+'_'+FName;
    FName:=logDir+FName;
    Result:=FName;
end;

Procedure LogAppLog(St : String);
Var
    FName : String;
Begin
    FName:=GetLogFileName;
    LogAppLog(St,FName);
    {$IFDEF CODESITE}
    CodeSite.Send(St);
    {$ENDIF}
End;

procedure LogAppLog(List:TStrings);
var i : Integer;
begin
   for I := 0 to List.Count-1 do
   begin
     LogAppLog(List[i]);
     {$IFDEF CODESITE}
     CodeSite.Send(List[i]);
     {$ENDIF}
   end;
end;

function GetCheckDigit(bc: String): string;
var
  y,z,i:integer;
  x : Byte;
begin
y:=0;z:=0;
case length(bc)of
  11:for i:=2 to 11 do if odd(i)then inc(z,strtoint(bc[i]))else inc(y,strtoint(bc[i]));
  12:for i:=1 to 12 do if odd(i)then inc(y,strtoint(bc[i]))else inc(z,strtoint(bc[i]));
   7:if(strtoint(copy(bc,1,2))in[21,28])=false then
     for i:=1 to  7 do if odd(i)then inc(z,strtoint(bc[i]))else inc(y,strtoint(bc[i]));
end;
  x := byte(((y+3*z)mod 10)<>0)*(10-((y+3*z)mod 10));
  Result := IntToStr(x);
end;

Function CheckSum_EAN(data : String):Integer;
Var Len : Integer;
    Sum, Sayac,digit,
    I   : Integer;
    //mod_  : Integer;
Begin
   {
   digit:=1;
    // Test string for correct length
    Len:=Length(data);
    if (Len <> 7) AND (Len <> 8) AND (Len <> 12) AND (Len <> 13) then
    begin
      Result:= -1;
      Exit;
    end;

    // Test string for being numeric
    for i := 1 to Len  do
    begin
      if (data[i] < #$30) or (data[i] > #$39) then
       begin
        result:= -1;
        exit;
       end;
    end;

    sum := 0;
    Sayac := 6;
    if (Len = 12) OR (Len = 13) Then Sayac := 11;
    for i := Sayac+1 downto 1 do
    begin
      digit := Byte(data[i]) - $30;
      if ((i and 1) = 1) then
        sum := sum + digit
      else
        sum := sum + digit * 3;
    end;
    //mod_ := sum mod 10;
   // Result:= Byte(  0 ? 0 : 10 - mod_;
   // TEST Edilmesi lazým ????
   Result:= Byte(((Sum+digit) mod 10)<>0) * (10 - ((sum+digit) mod 10));
   }
   Result :=1;
end;



/// <summary>
/// Ondalýk ayracý ve sayýlar dýþýndaki tüm deðerleri siler.
/// </summary>
/// <param name="varSt"></param>
/// <returns></returns>
function YalnizcaSayisal(varSt :string):string;
var x : Integer;
begin
  X:=1;
  While X<=Length(varSt) do
  begin
     if varSt[x] in ['0'..'9',FormatSettings.DecimalSeparator] then Inc(X)
      else
       begin
	  Delete(varSt,x,1);
       end;
  end;
  Result:=varSt;
end;


/// <summary>
/// Panodan yapýþtýrma veya Stringden Veri dönüþümü
/// için kullanýlan altYordam(Fonksiyon)
/// </summary>
/// <param name="degerStr">Dizi string türden içerik</param>
/// <param name="degerType">Veri türü (ftBoolean,ftInteger,ftString...)</param>
/// <returns>Variant</returns>
function DegerdenVariant(degerStr : String; degerType :TFieldType) : Variant;
begin
  if degerType=ftBoolean then
   begin
    if degerStr='' then
      Result := False
	else
      begin
	 if (UpperCase(degerStr)='EVET') or
         (UpperCase(degerStr)='TRUE') or
	    (UpperCase(degerStr)='1') or
	    (UpperCase(degerStr)='X')
	   then
	 Result:=True
	  else
	Result :=False;
      end;
    end
      else
      if degerType in [ftInteger,ftWord,ftSmallint,ftLargeint,ftFloat, ftCurrency] then
      begin
	// sayýsal bilgiler ve ayraçlar dýþýndaki tüm karakterleri sil.
	// Binlik ayraç varsa bir siliver lütfen,
	// Bölgesel ayarlardan Ondalýk ayracýna bak ve Float'a çevir
	while (Pos(FormatSettings.ThousandSeparator,degerStr)>0 ) do
	    Delete(degerStr,Pos(FormatSettings.ThousandSeparator,degerStr),1);

	degerStr:=YalnizcaSayisal(degerStr);

	if degerType in [ftInteger,ftWord,ftSmallint,ftLargeint] then
	begin
	   if Pos(FormatSettings.DecimalSeparator,degerStr)>0 then
	    Delete(degerStr,Pos(FormatSettings.DecimalSeparator,degerStr),1024);
	   Result:=StrtoInt(degerStr);
	end
	  else
	if degerType in [ftFloat, ftCurrency] then
	begin
	  Result:=StrToFloat(degerStr);
	end
    end
      else
    Result:=String(degerStr);

end;

/// <summary>
///   <para>
///     Variant'ýn <b>varEmpty</b> veya <b>varNull</b> olmasý durumunda : TRUE ,
///   </para>
///   <para>
///     Deðer içermesi durumunda : FALSE döndürür
///   </para>
/// </summary>

function IsEmptyVar(V : Variant) : Boolean;
begin
  Result:=False;
  If VarIsNull(V) or
   VarIsEmpty(V) or
    VarIsClear(V) then
    Result:=True;
end;

function VarToInt(V:Variant) : Integer;
begin
   if IsEmptyVar(V) then Exit(0);
   Result := StrToIntDef(Trim(VarToStr(V)), 0);
end;

Function GetTrueFalseString(B:Boolean):String;
Begin
   If B Then Result:='TRUE' else Result:='FALSE';
End;

function OnlyNumeric(St : String) : String;
var
  X: Integer;
Begin
  X:=1;
  While X<=Length(St) do
  begin
     if St[X] in ['0'..'9'] then Inc(X)
      else
       begin
         Delete(St,x,1);
       end;
  end;
  Result:=St;
End;



function PointerToStr(P:Pointer):String;
Begin
{$IFDEF WIN64}
   Result:=IntToHex(Int64(P),16);
{$ELSE}
   Result:=IntToHex(Int64(P),8);
{$ENDIF}
   //If Result='0' Then Result:='NIL' //else Result:='$'+Result;
end;


//------------------------------------------------------------------------
// Example Usage
{
var
  A: TAlignSet;
  S: AnsiString;
begin
  // set to string
  A := [alClient, alLeft, alTop];
  S := SetToString(TypeInfo(TAlignSet), A, True);
  ShowMessage(Format('%s ($%x)', [S, Byte(A)]));

  // string to set
  S := '[alNone, alRight, alCustom]';
  StringToSet(TypeInfo(TAlignSet), A, S);
}
//-------------------------------- Type Info -----------------------------

function GetOrdValue(Info: PTypeInfo; const SetParam): Integer;
begin
  Result := 0;

  case GetTypeData(Info)^.OrdType of
    otSByte, otUByte:
      Result := Byte(SetParam);
    otSWord, otUWord:
      Result := Word(SetParam);
    otSLong, otULong:
      Result := Integer(SetParam);
  end;
end;

procedure SetOrdValue(Info: PTypeInfo; var SetParam; Value: Integer);
begin
  case GetTypeData(Info)^.OrdType of
    otSByte, otUByte:
      Byte(SetParam) := Value;
    otSWord, otUWord:
      Word(SetParam) := Value;
    otSLong, otULong:
      Integer(SetParam) := Value;
  end;
end;

{$IFNDEF ANDROID}
function SetToString(Info: PTypeInfo; const SetParam; Brackets: Boolean= TRUE): AnsiString;
var
  S: TIntegerSet;
  TypeInfo: PTypeInfo;
  I: Integer;
begin
  Result := '';

  Integer(S) := GetOrdValue(Info, SetParam);
  TypeInfo := GetTypeData(Info)^.CompType^;
  for I := 0 to SizeOf(Integer) * 8 - 1 do
    if I in S then
    begin
      if Result <> '' then
        Result := Result + ',';
      Result := Result + GetEnumName(TypeInfo, I);
    end;
  if Brackets then
    Result := '[' + Result + ']';
end;

procedure StringToSet(Info: PTypeInfo; var SetParam; const Value: AnsiString);
var
  P: PAnsiChar;
  EnumInfo: PTypeInfo;
  EnumName: AnsiString;
  EnumValue, SetValue: Longint;

  function NextWord(var P: PAnsiChar): AnsiString;
  var I: Integer;
  begin
    I := 0;
    // scan til whitespace
    while not (P[I] in [',', ' ', #0,']']) do Inc(I);
    SetString(Result, P, I);
    // skip whitespace
    while P[I] in [',', ' ',']'] do Inc(I);
    Inc(P, I);
  end;

begin
  SetOrdValue(Info, SetParam, 0);
  if Value = '' then Exit;

  SetValue := 0;
  P := PAnsiChar(Value);
  // skip leading bracket and whitespace
  while P^ in ['[',' '] do Inc(P);
  EnumInfo := GetTypeData(Info)^.CompType^;
  EnumName := NextWord(P);
  while EnumName <> '' do
  begin
    EnumValue := GetEnumValue(EnumInfo, EnumName);
    if EnumValue < 0 then
    begin
      SetOrdValue(Info, SetParam, 0);
      Exit;
    end;
    Include(TIntegerSet(SetValue), EnumValue);
    EnumName := NextWord(P);
  end;
  SetOrdValue(Info, SetParam, SetValue);
end;


// Example Usage
{
var
  A: TAlignSet;
  S: AnsiString;
begin
  // set to string
  A := [alClient, alLeft, alTop];
  S := SetToString(TypeInfo(TAlignSet), A, True);
  ShowMessage(Format('%s ($%x)', [S, Byte(A)]));

  // string to set
  S := '[alNone, alRight, alCustom]';
  StringToSet(TypeInfo(TAlignSet), A, S);
}
//------------------------------------------------------------------------

{$ENDIF}

function StringToByteArray(const S: UTF8String): TByteDynArray;
var
  len: Integer;
begin
  len := Length(S);
  SetLength(Result, len);
  Move(S[1], Result[0], len);
end;

function StringToBytes(const S: UTF8String) : TBytes;
var
  len: Integer;
begin
  len := Length(S);
  SetLength(Result, len);
  Move(S[1], Result[0], len);
end;



function BytesToString(const B : TBytes) : UTF8String;
var
  len: Integer;
begin
  len := Length(B);
  SetLength(Result, len);
  Move(B[0], Result[1], len);
end;

function ByteDynArrayToString( const B : TByteDynArray) : UTF8String;
var len : Integer;
begin
  len := Length(B);
  SetLength(Result, len);
  Move(B[0], Result[1], len);
end;

procedure WriteText(S : string; FileName:string);
Var
   FileStream: TFileStream;
   Writer : TWriter;
   Reader: TReader;
   StringBuilder: TStringBuilder;

Begin
  Reader := Nil;
  if Not FileExists(FileName) then
   FileStream := TFileStream.Create
     ( FileName, fmCreate or fmOpenWrite or fmShareDenyNone )
   else
   begin
     FileStream := TFileStream.Create
       ( FileName, fmOpenReadWrite or fmShareDenyNone );
     Reader := TReader.Create(FileStream, 1024);
     StringBuilder := TStringBuilder.Create;
     Try
     Reader.ReadListBegin;
     while not Reader.EndOfList do
       StringBuilder.Append(Reader.ReadString);
     Reader.ReadListEnd;
     except

     End;
   end;

   Writer := TWriter.Create(FileStream, 1024);
   Writer.WriteListBegin;
   if StringBuilder <> Nil then
   begin
     StringBuilder.Append(S);
     Writer.WriteString(StringBuilder.ToString);
   end else Writer.WriteString(S);
   Writer.WriteListEnd;

   if Reader <> Nil then Reader.Destroy;

   Writer.Destroy;
   FileStream.Destroy;
End;

procedure TextSaveToFile(Self : string; FileName : string;  Encoding : TEncoding = NIL; UseStringStream : Boolean = FALSE);
var
  LFileStream: TFileStream;
  Stringtream : TStringStream;
  LBuffer: TBytes;
  LByteOrderMark: TBytes;
begin
  if UseStringStream then
  begin
    try
      Stringtream := TStringStream.Create({$IFDEF EDEVLET}DecodeBase64(Self){$ELSE}Self{$ENDIF});
      Stringtream.Position := 0;
      Stringtream.SaveToFile(FileName);
    finally
      FreeAndNil(Stringtream);
    end;
  end else
  begin
     if Encoding=NIL then
        Encoding:=TEncoding.ANSI;
     begin
     LFileStream := TFileStream.Create(FileName, fmCreate);
     try
       SetLength(LBuffer,Length(Self));
       LBuffer := Encoding.GetBytes(Self);
       try
       // Write an encoding byte-order mark and buffer to output file.
         LByteOrderMark := Encoding.GetPreamble;
         if Length(LByteOrderMark)>0 then
           LFileStream.Write(LByteOrderMark[0], Length(LByteOrderMark));
         LFileStream.Write(LBuffer[0], Length(LBuffer));
       except
       end;

     finally
         LFileStream.Free;
     end;
     end;
  end;
end;

function TextLoadFromFile(FileName : string; Encoding : TEncoding = NIL; UseStringStream : Boolean = FALSE):string;
var
  (*
  FileStream: TFileStream;
  LBuffer: TBytes;
  len : Integer;
  *)
  //strl : TStrings;
  LBufferStream: TBytesStream;
   FPreambleLength : Integer;
   isUtf  : boolean;
begin
  (* //v1.
  FileStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    SetLength(LBuffer,FileStream.Size);
    len := Length(LBuffer);
    FileStream.ReadBuffer(Pointer(LBuffer)^,len);
    // Identify encoding and convert buffer to UTF8.
     //if Encoding=NIL then
     //    Encoding:=TEncoding.ANSI;

     //LOffset := TEncoding.GetBufferEncoding(LBuffer, LEncoding);
     // LBuffer := LEncoding.Convert(LEncoding, DestEncoding, LBuffer, LOffset, Length(LBuffer) - LOffset);
    Result := BytesToString(LBuffer);
    {
    SetLength(Result,len);
    Move( LBuffer[0], Result[1], len);
    }
  finally
    FileStream.Free;
  end;
  *)
  (* v2
  Result :='';
  strl := TStrings.Create;

  try
   strl.LoadFromFile(FileName);
   Result := strl.Text;
  finally
   strl.Free;
  end;
  *)
  if Encoding=nil then
   Encoding := TEncoding.ANSI;

  LBufferStream := TBytesStream.Create;

  //with TBytesStream.Create do
  try
    LBufferStream.LoadFromFile(filename);

    isUtf := (LBufferStream.Bytes[0]=$EF) and (LBufferStream.Bytes[1]=$BB) and (LBufferStream.Bytes[2]=$BF);
    if (Not isUTF) and (Encoding = TEncoding.UTF8) then
       Encoding := TEncoding.ANSI;
    FPreambleLength := TEncoding.GetBufferEncoding(LBufferStream.Bytes, Encoding);
    Result := Encoding.GetString(LBufferStream.Bytes, FPreambleLength, LBufferStream.Size - FPreambleLength);

  finally
    LBufferStream.Free;
  end;

end;


procedure tAppExcept.AppException(Sender: TObject; E: Exception);
Var S : String;
  Details : string;
  StackTrace : String;
  Buffer: array[ 0..1023 ] of Char;
begin
     ExceptionErrorMessage( E, ExceptAddr, Buffer, Length( Buffer ) );
     Details := Buffer;

     S := E.Message;
     S:=S+#13#10+'[Class ]: '+E.ClassName;
     S:=S+#13#10+'[Detail]: '+Details;
     StackTrace:=PChar(E.StackInfo);
     S:=S+#13#10+StackTrace+#13#10
     +'--------------------------------------------------------'
     ;
     fExMessage := S;
     LogAppLog(S);
     {$IFNDEF CONSOLE}
     if Assigned(OldAppEvent) then
       OldAppEvent(Sender,E);
     {$endif}
end;

Function _GetComputerName:String;
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

function _GetDomainName:String;
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

{$IF CompilerVersion>= 28}
Function _GetWindowsUserName:String;
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
Function _GetWindowsUserName:String;
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

function GetModulePathName: String;
var
  Path: array[0..MAX_PATH] of Char;
begin
  //if IsLibrary then
    SetString(Result, Path, GetModuleFileName(HInstance, Path, SizeOf(Path)))
  //else Result := ParamStr(0);
end;

procedure GetVersionInfo(var V1, V2, V3, V4: word;const ParamThis : string='');
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  {$IFNDEF ANDROID}
  VerValue: PVSFixedFileInfo;
  {$ENDIF}
  param_str : string;
begin
  param_str:=GetModulePathName;
  if ParamThis<>'' Then param_str:=ParamThis;
  {$IFNDEF ANDROID}
  VerInfoSize := GetFileVersionInfoSize(PChar(param_str), Dummy);
  if VerInfoSize > 0 then
  begin
      GetMem(VerInfo, VerInfoSize);
      try
        if GetFileVersionInfo(PChar(Param_Str), 0, VerInfoSize, VerInfo) then
        begin
          //            Pointer, PWideChar, Pointer(PVSFixedFileInfo) , DWord
          VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
          with VerValue^ do
          begin
            V1 := dwFileVersionMS shr 16;
            V2 := dwFileVersionMS and $FFFF;
            V3 := dwFileVersionLS shr 16;
            V4 := dwFileVersionLS and $FFFF;
          end;
        end;
      finally
        FreeMem(VerInfo, VerInfoSize);
      end;
  end;
  {$ELSE}
  V1:=1;V2:=2;V3:=3;V4:=4;
  {$ENDIF}
end;

type
  PLongInt = ^Longint;

{
const
  fInfo : array[0..12] of string = ('Comments','CompanyName','FileDescription','FileVersion','InternalName',
                                    'LegalCopyright','LegalTrademarks','OriginalFilename','PrivateBuild',
                                    'ProductName','ProductVersion','SpecialBuild','BuildInfo');
}

function GetBuildInfo(const Infolar : array of string;ParamThis : string=''):String;

  procedure AddWriteln(st : string;P :  String);
  begin
    Result := Result + Format('%-16s', [st])+': '+P+ __;
  end;

var
  VSize, VHandle: DWord;
  Buffer, P : Pointer;//PChar;
  Length  : DWord;
  param_str : string;
  LangS,
  s : string;
  I : Integer;
begin
  param_str:=GetModulePathName;
  if ParamThis<>'' Then param_str:=ParamThis;
  VSize := GetFileVersionInfoSize(PChar(param_str), VHandle);
  GetMem(Buffer, VSize + 1);
  Result := '';
  if GetFileVersionInfo(PChar(param_str), VHandle, VSize, Buffer) then
    if VerQueryValue(Buffer, '\VarFileInfo\Translation', P, Length) then
    begin
      AddWriteln('LangId', IntToStr(LoWord(Integer(P^)))+'-'+IntToStr(HiWord(Integer(P^))) );
      LangS := Format('%.8x', [Integer(P^)]);
      for I := 0 to High(Infolar) do
      begin
        S := Format('\StringFileInfo\%s%s\%s', [Copy(LangS, 5, 4), Copy(LangS, 1, 4), Infolar[I]]);
        if VerQueryValue(Buffer, PChar(S), P, Length) then
        begin
          param_str := PChar(P);
          AddWriteln(Infolar[I], param_str);
        end else
          AddWriteln(Infolar[I],'(null)');
      end;
    end;
  FreeMem(Buffer, VSize + 1);
end;

/// <summary>
///
/// </summary>
/// <param name="ParamThis"></param>
/// <example>
/// <code>
///   GetVersionInfoAsString();       --> Lib dll ise dll(Module sürümü döndürr)
///   GetVersionInfoAsString(Application.ExeName); --> bu DLL i çaðýran Uygulamanýn sürümünü döndürür
/// </code>
/// </example>
/// <returns>(String) 1.2.3.4 notasyonunda Sürüm bilgisi döndürür</returns>

function GetVersionInfoAsString(const ParamThis : string=''): string;
var
  V1, V2, V3, V4: word;
begin
  GetVersionInfo(V1, V2, V3, V4,ParamThis);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' +
    IntToStr(V3) + '.' + IntToStr(V4);
    {$IFDEF WIN64}
    Result:=Result+' (x64)';
    {$ENDIF}
end;

function VarNor(V : Variant):Variant;
begin
   if VarIsNull(V) then
   Result:='' else
   Result:=V;
end;

function MemoryStreamToString(M: TMemoryStream): string;
begin
  SetString(Result, PChar(M.Memory), M.Size div SizeOf(Char));
end;

//-----------------

function AySayaç( i : Integer) : Cardinal;
begin
  Result := GünSayaç(30) * i ;
end;

function HaftaSayaç( i : Integer) : Cardinal;
begin
  Result := GünSayaç(7) * i ;
end;

function GünSayaç( i : Integer) : Cardinal;
begin
  Result := SaatSayaç(24) * i ;
end;

function SaatSayaç( i : Integer) : Cardinal;
begin
  Result := DakikaSayaç(60) * i ;
end;

function DakikaSayaç( i : Integer) : Cardinal;
begin
   Result := SaniyeSayaç(60) * i ;
end;

function SaniyeSayaç( i : Integer) : Cardinal;
begin
  Result := i * 1000;
end;

// ******************************************************** //
function MsSecToTime(ms: Cardinal): string;
// ******************************************************** //
var
   H, M, S, mSt : string;
   ZH, ZM, ZS, Zms : cardinal;
begin
   
   ZH := ms div 3600000;
   ZM := ms div 60000 - ZH * 60000;
   ZS := ms - (ZH * 3600000 + ZM * 60000) ;
   Zms := (ms div 10000000) -(ZH * 3600000 + ZM * 60000);
   H := IntToStr(ZH) ;
   M := IntToStr(ZM) ;
   S := IntToStr(ZS) ;
   mSt := IntToStr(Zms);
   Result := H + ':' + M + ':' + S +':'+ mSt;
end;


// Bu yordamý çaðýrdýðýmýzda Hata Yaklama tetikleyicisi yeniden adreslenmiþ olur
// AppException yordamýna yönlendirilmiþ olur.

 Procedure SetExceptionAddr;
 begin
  {$IF Defined(DOLOG) and Defined(DOLOGERROR)}
   AppExceptObj := tAppExcept.Create;
   AppExceptObj.OldAppEvent := Application.OnException;//ApplicationHandleException;
   Application.OnException :=AppExceptObj.AppException;
   LogAppLog('Exception Address : '+ PointerToStr(@Application.OnException));
   // ExceptINCDetail:= cExceptINCProcLineOffset or cExceptINCProcLineOffset or cExceptINCAddressOffset; // or cExceptINCModuleName
   {$ELSE}
     raise Exception.Create('SetExceptionAddr Kullanabilmek için DOLOG ve DOLOGERROR Definition yapýlmýþ olmalý');
   {$ENDIF}
 end;


{******************************************************************}
{* Bir bileþenin hafýzada oluþturulup oluþturulmadýðýný           *}
{* kontrol eder ve þayet mevcut ise bileþenin kendisi geri döner. *}
{* Bileþen oluþturulmamýþsa, dönen deðer Nil dir. GE 12/09/2017   *}
{******************************************************************}
function FindExistsComponent(Parent: TComponent; Name: string): TComponent;
var
  i: integer;
begin
  if Parent.ComponentCount = 0 then exit(Nil);
  Result:= Parent.FindComponent(Name);
  if Assigned(Result) then Exit;
  for i:= 0 to Parent.ComponentCount - 1 do begin
    Result:= FindExistsComponent(Parent.Components[i], Name);
    if Assigned(Result) then Exit;
  end;
  Result := Nil;
end;

{*****************************************************}
{*                                                   *}
{* Bir dosyanýn tipini belirlemek için kullanýlýr.   *}
{* Bu tipler text, html, pdf veya binary dir.        *}
{* GE 03/10/2017                                     *}
{*                                                   *}
{*****************************************************}
function CheckFileType(FileName: string):TFileTypes;
var FileText : textfile;
    Line     : string;

  function DetectFileType(const sFile: TFileName): TFileTypes;
  var
   oIn      : TFileStream;
   iRead    : Integer;
   iMaxRead : Integer;
   iData    : Byte;
  begin
   Result := ftText;
   if Not FileExists(FileName) then Exit(ftNotFound);
   oIn := TFileStream.Create(sFile, fmOpenRead or fmShareDenyNone);
   try
     iMaxRead := 1000;
     if iMaxRead > oIn.Size then
       iMaxRead := oIn.Size;
     for iRead := 1 to iMaxRead do
     begin
       oIn.Read(iData, 1);
       if (idata) > 127 then Result := ftBinary;
     end;
   finally
     FreeAndNil(oIn);
   end;
  end;

begin
  Result := DetectFileType(FileName);
  case Result of
       ftBinary,
       ftText:
       begin
         AssignFile(FileText, FileName);
         Reset(FileText);
         Readln(FileText,Line);
         Line := Line.ToLower;
         if Pos('%pdf-', Line) > 0 then Result := ftPdf
           else if (Pos('<!doctype html', Line) > 0) or (Pos('<html>', Line) > 0) then Result := ftHtml
               else if Result <> ftText then Result := ftNone;
         CloseFile(FileText);
       end
  end;

end;

procedure AppendTexttoFile(Text : String; FileName : String = 'Data.txt');
var FileText : TextFile;
begin
  AssignFile(FileText, FileName);
  if Not FileExists(FileName) then ReWrite(FileText) else Append(FileText);
  WriteLn(FileText, Text);
  CloseFile(FileText);
end;

procedure SaveGridFont(FileName : string; GridFontSize : integer = 7; UserCode : string = '');
var
  AppIniFile : TIniFile;
begin
  AppIniFile := TIniFile.Create(FileName);
  AppIniFile.WriteInteger('Grid','DefaultFontSize_' + UserCode, GridFontSize);
  AppIniFile.Destroy;
end;

function GetGridFont(FileName : string; GridFontSize : integer = 7; UserCode : string = ''):integer;
var
  AppIniFile : TIniFile;
begin
  AppIniFile := TIniFile.Create(FileName);
  Result := AppIniFile.ReadInteger('Grid','DefaultFontSize_' + UserCode, GridFontSize);
  AppIniFile.Destroy;
end;

function ClearUnWantedChars(Data : string) : string;

var i : integer;

Const
  UnWantedChars : array[0..6] of char = ('/','\',':','?','*','<','>');
begin

  for i := 0 to 6 do
    Data := StringReplace(Data, UnWantedChars[i], '', [rfReplaceAll]);

  Result := Data;
end;

function GetExeDir(_DirStr : string) : string;
begin
  Result:=_DirStr;//ExtractFilePath(_DirStr);
  while Pos('\',Result)>0 do
   begin
     Delete(Result,1,Pos('\',Result));
   end;
end;

//--------------------
function StringValue(S:String):String;
Var X : Integer;
const numerics : set of char=['0'..'9','.','+','-'];
Begin
   X:=1 ;
   While (X<=Length(S))and(Length(S)>0) do
   Begin
     If Not (S[x] in numerics) then Delete(S,x,1);
     Inc(X);
   end;

   If Pos('-',S)>0 Then
    If Pos('-',S)>1 Then S:='';
   If (S='-') or (S='+') Then S:='';
   If Length(S)>0 Then
     If S[1]='.' Then S:='0'+S;
   Result:=S;
   If Result='' Then Result:='0';
end;

Function ToVirgul(St:String):String;
Var  S            : Array[1..5] Of String[4];
     St6,Start    : String;
     x,y          : Byte;
begin
  If St='' Then Exit;
  Start:=St;
  St:=StringValue(St);
  X:=Pos('.',St);
  If x<>0 Then
     Begin
       St6:=Copy(St,x+1,19);
       If Length(St6)>3 Then Delete(St6,3,19);
       Delete(St,x,(Length(St)-x)+1);
       St6:='.'+StringValue(St6);
     end
      Else St6:='';
  Start:=St;
  X:=Length(St) div 3;
  If Length(ST)>x*3 Then X:=X+1;
  For y:=x Downto 1 do
   begin
     If Length(Start)>=3 Then
      begin
       S[y]:=Copy(Start,Length(Start)-2,3);
       Delete(Start,Length(Start)-2,3);
      end
       Else S[y]:=Start;
   end;
 Start:='';
 For Y:=1 to x-1 do Start:=Start+S[y]+',';Start:=Start+S[x];
 Result:=Start+St6;
end;


function tAppExcept.GetLastMessage: string;
begin
   Result := fExMessage;
   fExMessage :='';
end;

initialization

  LogCount:=0;
  DoLogApp := True;
  ProgramPath:=GetModulePathName;//ParamStr(0);
  AppModuleName:=ExtractFileName(ProgramPath);
  ProgramPath:=ExtractFilePath(ProgramPath);
  if (ProgramPath[Length(ProgramPath)])='\' then Delete (ProgramPath,Length(ProgramPath),1);

  WinUserName:=_GetWindowsUserName;
  vHostName:=_GetComputerName;
  vDomainName:=_GetDomainName;

finalization
//{$IFDEF DOLOGERROR}
// Application.OnException:= Set etme burda iþelvsiz kalýr.
// Program Ana Bloðundan Sonra Set edilmesi durumunda Anlamlý olacaktýr.
// O Yüzden "SetExceptionAddr" Yordamý Program ana Begininden sonra çaðrýlmalýdýr..
//  Application.OnException:=AppExceptObj.OldAppEvent;
//  AppExceptObj.Free;
//{$ENDIF}
end.
