unit keys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Bevel1: TBevel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

function fsql(x: string): string;
begin
DataModule1.ADOQuery1.Active:=false;
DataModule1.ADOQuery1.SQL.Clear;
DataModule1.ADOQuery1.SQL.Add('SELECT *');
DataModule1.ADOQuery1.SQL.Add('FROM keis');
DataModule1.ADOQuery1.SQL.Add('WHERE ');
DataModule1.ADOQuery1.SQL.Add(' keislog LIKE '''+'%'+x+'%'+'''');
DataModule1.ADOQuery1.Active:=true;
//result:=5;
end;

procedure gamego();
var
x:integer;
begin
  x:=Random(DataModule1.ADOQuery1.RecordCount)+1;   // выбираем случайную задачу из отсорированного списка
  DataModule1.ADOQuery1.RecNo:=x;
  x:=DataModule1.ADOQuery1.FieldValues['keys'];
  DataModule1.ADOTable2.Locate('keys', x, []); // находим эту задачу в табле 2
  DataModule1.ADOTable1.Locate('keisname;nodenum', VarArrayOf([x,1]), []);
  //DataModule1.ADOTable1.Locate('nodenum', 1, []); ////Нада проверить ищет ли правильно или в локате надо два аргумента указываеть еще на другую таблицу!!
  //DataModule1.ADOTable1.Locate(VarArrayOf(['nodenum', 'keisname']), VarArrayOf([1, x]), []); ////Нада проверить ищет ли правильно или в локате надо два аргумента указываеть еще на другую таблицу!!
  Form4.Caption:=Form4.Caption+', '+DataModule1.ADOTable2.FieldValues['keisname'];
  Form4.Show;
  Form4.Button2.Click;
  //Form4.Button2.Visible:=False;
  Form4.Close;
  Form4.ShowModal;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
{
Form1.TabControl1.TabIndex:=Form1.TabControl1.TabIndex+1;
  begin
    Panel4.Visible:=false;
    Panel5.Visible:=false;

  case TabControl1.TabIndex of
    0: Panel4.Visible:=true;
    1: Panel5.Visible:=true;
  end;
end;
}
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
// При запуске программы из Табла 3 выбираем названия разделов
// В редакторе названия можно менять нажав кнопку настройки

DataModule1.ADOTable3.RecNo:=1;
Form1.SpeedButton1.Caption:=DataModule1.ADOTable3.FieldValues['name_razdela'];
DataModule1.ADOTable3.RecNo:=2;
Form1.SpeedButton5.Caption:=DataModule1.ADOTable3.FieldValues['name_razdela'];
DataModule1.ADOTable3.RecNo:=3;
Form1.SpeedButton6.Caption:=DataModule1.ADOTable3.FieldValues['name_razdela'];
DataModule1.ADOTable3.RecNo:=4;
Form1.SpeedButton7.Caption:=DataModule1.ADOTable3.FieldValues['name_razdela'];
DataModule1.ADOTable3.RecNo:=5;
Form1.SpeedButton8.Caption:=DataModule1.ADOTable3.FieldValues['name_razdela'];
DataModule1.ADOTable3.RecNo:=6;
Form1.SpeedButton9.Caption:=DataModule1.ADOTable3.FieldValues['name_razdela'];
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
fsql('1');   // выбираем все задачи с темой похожей на цифру 1 (тут косяк т.к. может быть и 11 и 21)
Form4.Caption:='Тема: '+SpeedButton1.Caption; // зачемто сохраняем эту инфу
gamego();

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
fsql('2');
Form4.Caption:='Тема: '+SpeedButton5.Caption;
gamego();

end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
fsql('3');
Form4.Caption:='Тема: '+SpeedButton6.Caption;
gamego();
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
fsql('4');
Form4.Caption:='Тема: '+SpeedButton7.Caption;
gamego();
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
fsql('5');
Form4.Caption:='Тема: '+SpeedButton8.Caption;
gamego();
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin

{
var
x: integer;
begin
Form4.Show;
x:=DataModule1.ADOTable2.RecordCount;
x:=Random(x)+1;
//DataModule1.ADOTable2.Locate('keys', IntToStr(x), []);
DataModule1.ADOTable2.Locate('keys', IntToStr(1), []);
Form4.Caption:='Тема: случайный мини-кейс';
Form4.Button2.Click;
Form4.Button2.Visible:=False;
Form4.Close;
Form4.ShowModal;
}
fsql('6');
Form4.Caption:='Тема: '+SpeedButton9.Caption;
gamego();

end;

end.
