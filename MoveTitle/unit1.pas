//作者QQ:1090929192
//开源协议：GPL
unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  SystemSecond,CopySecond,SpaceString:String;
  IntegerSecond :Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //定义空格（当作标题的占位符）
  SpaceString:='     ';
  //获取系统时间的秒钟，并格式化秒钟数为2位数（所得数，即00...60）
  SystemSecond:= FormatDatetime('ss',now);
   //截取格式化为2位数的秒钟数的第2位（所得数，即0...9）
  CopySecond:=Copy(SystemSecond,2);
  //把字符串数字格式化为整数值
  IntegerSecond:=StrToInt(CopySecond);
  //以下由Case语句实现，窗口标题从左向右依次移动
    Case  IntegerSecond of
      0:  Form1.Caption:=SpaceString+'滚动标题';
      1:  Form1.Caption:=SpaceString+SpaceString+'滚动标题';
      2:  Form1.Caption:=SpaceString+SpaceString+SpaceString+'滚动标题';
      3:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      4:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      5:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      6:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      7:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      8:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      9:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
    end;

{    //以下由Case语句实现，窗口标题从右向左依次移动
     Case  IntegerSecond of
      9:  Form1.Caption:=SpaceString+'滚动标题';
      8:  Form1.Caption:=SpaceString+SpaceString+'滚动标题';
      7:  Form1.Caption:=SpaceString+SpaceString+SpaceString+'滚动标题';
      6:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      5:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      4:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      3:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      2:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      1:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      0:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
    end;
}
      //以下由Case语句实现，窗口标题从左右往复移动
{    Case  IntegerSecond of
      0:  Form1.Caption:=SpaceString+'滚动标题';
      1:  Form1.Caption:=SpaceString+SpaceString+'滚动标题';
      2:  Form1.Caption:=SpaceString+SpaceString+SpaceString+'滚动标题';
      3:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      4:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      5:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      6:  Form1.Caption:=SpaceString+SpaceString+SpaceString+SpaceString+'滚动标题';
      7:  Form1.Caption:=SpaceString+SpaceString+SpaceString+'滚动标题';
      8:  Form1.Caption:=SpaceString+SpaceString+'滚动标题';
      9:  Form1.Caption:=SpaceString+'滚动标题';
    end;
}
end;

end.

