unit Unit1;
//作者QQ:1090929192
//开源协议：GPL
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  EditBtn, ExtCtrls,Process, LazUTF8,DefaultTranslator, LCLTranslator;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    EditButton1: TEditButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure EditButton1ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  PMoFile:String;
  PPoFile:String;
  AProcess:TProcess;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.EditButton1ButtonClick(Sender: TObject);
begin

  If OpenDialog1.Execute Then
     EditButton1.Text:=OpenDialog1.FileName;
     //pchar(UTF8ToConsole())用于处理非拉丁文
     PMoFile:=pchar(UTF8ToConsole(OpenDialog1.FileName));
     //StringReplace(字符串,'替换前的子字符串','替换后的子字符串',[rfReplaceAll])  将.mo替换成.po
     PPoFile:=pchar(UTF8ToConsole(StringReplace(PMoFile,'.mo','.po',[rfReplaceAll])));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetDefaultLang('zh_CN');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AProcess:=TProcess.Create(nil);
  AProcess.Executable:='msgunfmt\msgunfmt.exe';     //跨平台时,注意路径的写法
    AProcess.Parameters.Add(PMoFile);
    AProcess.Parameters.Add('-o');
    AProcess.Parameters.Add(PPoFile);
    AProcess.Options:=AProcess.Options+[poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
    ShowMessage('转换完成，生成的*.po文件在*.mo所在文件夹下');
end;

end.

