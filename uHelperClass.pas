unit uHelperClass;
interface

uses System.SysUtils,System.Classes;

type
  TTextHelper = record helper for string
   public
     function LoadfromFile(FileName : string; Encoding : TEncoding = NIL):String;
     procedure SaveToFile(FileName : string;  Encoding : TEncoding = NIL);
  end;

  TAnsiTextHelper = record helper for AnsiString
   public
   procedure SaveToFile(FileName : string;  Encoding : TEncoding = NIL);
  end;

  TUTF8TextHelper = record helper for UTF8String
   public
   function LoadfromFile(FileName : string; Encoding : TEncoding = NIL):UTF8String;
   procedure SaveToFile(FileName : string;  Encoding : TEncoding = NIL);
  end;

implementation

function TTextHelper.LoadfromFile(FileName : string; Encoding : TEncoding = NIL):String;
var
  LFileStream: TFileStream;
  LBuffer: TBytes;
  LByteOrderMark: TBytes;
begin
  if Encoding=NIL then
   Encoding:=TEncoding.ANSI;
 try
   LFileStream := TFileStream.Create(FileName, fmOpenRead);

   SetLength(Result,LFileStream.Size);
   LBuffer := Encoding.GetBytes(Self);
   try
     LByteOrderMark := Encoding.GetPreamble;
     if Length(LByteOrderMark)>0 then
       LFileStream.Read(LByteOrderMark[0], Length(LByteOrderMark));
     LFileStream.Read(Result[1], LFileStream.Size);

   except

   end;

 finally
     LFileStream.Free;
 end;
end;

procedure TTextHelper.SaveToFile(FileName : string;  Encoding : TEncoding = NIL);
var
  LFileStream: TFileStream;
  LBuffer: TBytes;
  LByteOrderMark: TBytes;
begin
  if Encoding=NIL then
   Encoding:=TEncoding.ANSI;

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

procedure TAnsiTextHelper.SaveToFile(FileName : string;  Encoding : TEncoding = NIL);
var
  LFileStream: TFileStream;
  LBuffer: TBytes;
  LByteOrderMark: TBytes;

begin
  if Encoding=NIL then
   Encoding:=TEncoding.ANSI;

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

function TUTF8TextHelper.LoadfromFile(FileName : string; Encoding : TEncoding = NIL):UTF8String;
var
  LFileStream: TFileStream;
  LBuffer: TBytes;
  LByteOrderMark: TBytes;
begin
  if Encoding=NIL then
   Encoding:=TEncoding.ANSI;

  LFileStream := TFileStream.Create(FileName, fmOpenRead);

  try
   SetLength(Result,LFileStream.Size);
   LBuffer := Encoding.GetBytes(Self);
   try
     LByteOrderMark := Encoding.GetPreamble;
    // if Length(LByteOrderMark)>0 then
    //   LFileStream.Read(LByteOrderMark[0], Length(LByteOrderMark));
     LFileStream.Read(Result[1], LFileStream.Size);
   except

   end;

  finally
     LFileStream.Free;
  end;
end;

procedure TUTF8TextHelper.SaveToFile(FileName : string;  Encoding : TEncoding = NIL);
var
  LFileStream: TFileStream;
  LBuffer: TBytes;
  LByteOrderMark: TBytes;

begin
  if Encoding=NIL then
   Encoding:=TEncoding.ANSI;
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


end.
