unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  const
  LockWork='User32.dll';

implementation
  procedure LockWorkStation();  external LockWork;



{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  LockWorkStation();
end;

end.

