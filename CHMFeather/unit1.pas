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
  PCHMFile:String;
  PCHMPath:String;
  AProcess:TProcess;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.EditButton1ButtonClick(Sender: TObject);
begin

  If OpenDialog1.Execute Then
     EditButton1.Text:=OpenDialog1.FileName;
     PCHMFile:=pchar(UTF8ToConsole(OpenDialog1.FileName));
     PCHMPath:=ExtractFileDir(pchar(UTF8ToConsole(OpenDialog1.FileName)));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetDefaultLang('zh_CN');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AProcess:=TProcess.Create(nil);
  AProcess.Executable:='hh.exe';
    AProcess.Parameters.Add('-decompile');
    AProcess.Parameters.Add(PCHMPath);
    AProcess.Parameters.Add(PCHMFile);
    AProcess.Options:=AProcess.Options+[poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
    ShowMessage('完成');
end;

end.

