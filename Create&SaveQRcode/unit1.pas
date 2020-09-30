unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtDlgs,
  ubarcodes;

type

  { TForm1 }

  TForm1 = class(TForm)
    BarcodeQR1: TBarcodeQR;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    SavePictureDialog1: TSavePictureDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
   BarcodeQR1.Text:=Edit1.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  If SavePictureDialog1.Execute Then
  BarcodeQR1.SaveToFile(SavePictureDialog1.FileName);
end;

end.

