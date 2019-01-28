program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  EFaturaService in 'EFaturaService.pas',
  uUtility in 'uUtility.pas',
  uIniUtils in 'uIniUtils.pas',
  EArchiveService in 'EArchiveService.pas',
  Unit2 in 'Unit2.pas' {Form2},
  UBLContract in 'UBLContract.pas',
  uNullabletypes in 'uNullabletypes.pas',
  uHelperClass in 'uHelperClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
