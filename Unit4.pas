unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DBCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Panel4: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure DBText3Click(Sender: TObject);
    procedure DBText4Click(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  Form4: TForm4;
  score: array [1..50] of boolean;
  path: array [1..50] of integer;
  step: integer;
implementation

uses keys, Unit2, Unit3, Unit5;

{$R *.dfm}


function calk_result(): integer;
// считаем процент правильных ответов
var
i, rez: integer;
begin
rez:=0;
for i:=1 to step-1 do begin
  if score[i] then
    rez:=rez+1;
end;
result:=Round(rez/(step-1)*100);
end;


procedure radiokontrol();
begin
  Form4.RadioButton1.Checked:=False;
  Form4.RadioButton2.Checked:=False;
  Form4.RadioButton3.Checked:=False;
  Form4.RadioButton4.Checked:=False;
  Form4.RadioButton5.Checked:=False;
  Form4.CheckBox1.Checked:=False;
  Form4.CheckBox2.Checked:=False;
  Form4.CheckBox3.Checked:=False;
  Form4.CheckBox4.Checked:=False;
  Form4.CheckBox5.Checked:=False;

if Form4.Panel4.Visible=True then begin
  Form4.RadioButton1.Visible:=True;
  Form4.RadioButton2.Visible:=True;
  Form4.RadioButton3.Visible:=True;
  Form4.RadioButton4.Visible:=True;
  Form4.RadioButton5.Visible:=True;
  if Form4.DBText1.Field.Text='' then
  Form4.RadioButton1.Visible:=False;
  if Form4.DBText2.Field.Text='' then
  Form4.RadioButton2.Visible:=False;
  if Form4.DBText3.Field.Text='' then
  Form4.RadioButton3.Visible:=False;
  if Form4.DBText4.Field.Text='' then
  Form4.RadioButton4.Visible:=False;
  if Form4.DBText5.Field.Text='' then
  Form4.RadioButton5.Visible:=False;
end;
if Form4.Panel5.Visible=True then begin
  Form4.CheckBox1.Visible:=true;
  Form4.CheckBox2.Visible:=true;
  Form4.CheckBox3.Visible:=true;
  Form4.CheckBox4.Visible:=true;
  Form4.CheckBox5.Visible:=true;
  if Form4.DBText1.Field.Text='' then
  Form4.CheckBox1.Visible:=False;
  if Form4.DBText2.Field.Text='' then
  Form4.CheckBox2.Visible:=False;
  if Form4.DBText3.Field.Text='' then
  Form4.CheckBox3.Visible:=False;
  if Form4.DBText4.Field.Text='' then
  Form4.CheckBox4.Visible:=False;
  if Form4.DBText5.Field.Text='' then
  Form4.CheckBox5.Visible:=False;
end;
end;


function checkcontrol(): Boolean;
var
x: Boolean;
begin
x:=False;
if (Form4.RadioButton1.Checked=False) and (Form4.RadioButton2.Checked=False) and
(Form4.RadioButton3.Checked=False) and (Form4.RadioButton4.Checked=False) and
 (Form4.RadioButton5.Checked=False) then
 x:=False else
 x:=True;
if (Form4.CheckBox1.Checked=False) and (Form4.CheckBox2.Checked=False) and
(Form4.CheckBox3.Checked=False) and (Form4.CheckBox4.Checked=False) and
(Form4.CheckBox5.Checked=False) and (x=False) then
 x:=False else
 x:=True;
 result:=x;
end;



procedure TForm4.Button1Click(Sender: TObject);
var
s, ss: string;
i: boolean;
begin
// ≈сли единичный выбор то переходим так
if checkcontrol then begin

if Form4.Panel4.Visible=True then begin
  if Form4.RadioButton1.Checked then
    s:=DataModule1.ADOTable1.FieldValues['path1'];
  if Form4.RadioButton2.Checked then
    s:=DataModule1.ADOTable1.FieldValues['path2'];
  if Form4.RadioButton3.Checked then
    s:=DataModule1.ADOTable1.FieldValues['path3'];
  if Form4.RadioButton4.Checked then
    s:=DataModule1.ADOTable1.FieldValues['path4'];
  if Form4.RadioButton5.Checked then
    s:=DataModule1.ADOTable1.FieldValues['path5'];

// оцениваем правильность ответа конкретного вопроса и заносим данные в score
// провер€ем на правильность единичный ответ
  if (Form4.RadioButton1.Checked) and (DataModule1.ADOTable1.FieldValues['question1true']) or
(Form4.RadioButton2.Checked) and (DataModule1.ADOTable1.FieldValues['question2true']) or
(Form4.RadioButton3.Checked) and (DataModule1.ADOTable1.FieldValues['question3true']) or
(Form4.RadioButton4.Checked) and (DataModule1.ADOTable1.FieldValues['question4true']) or
(Form4.RadioButton5.Checked) and (DataModule1.ADOTable1.FieldValues['question5true']) then
    i:=True else
    i:=False;
  end else begin
  // если множественный то так
  if (Form4.CheckBox1.Checked) and (DataModule1.ADOTable1.FieldValues['question1true']) or
(Form4.CheckBox1.Checked=False) and (DataModule1.ADOTable1.FieldValues['question1true']<>True) then
  i:=True else i:=False;
  if (i) and (Form4.CheckBox2.Checked) and (DataModule1.ADOTable1.FieldValues['question2true']) or
(i) and (Form4.CheckBox2.Checked=False) and (DataModule1.ADOTable1.FieldValues['question2true']<>True) then
  i:=True else i:=False;
  if (i) and (Form4.CheckBox3.Checked) and (DataModule1.ADOTable1.FieldValues['question3true']) or
(i) and (Form4.CheckBox3.Checked=False) and (DataModule1.ADOTable1.FieldValues['question3true']<>True) then
  i:=True else i:=False;
  if (i) and (Form4.CheckBox4.Checked) and (DataModule1.ADOTable1.FieldValues['question4true']) or
(i) and (Form4.CheckBox4.Checked=False) and (DataModule1.ADOTable1.FieldValues['question4true']<>True) then
  i:=True else i:=False;
  if (i) and (Form4.CheckBox5.Checked) and (DataModule1.ADOTable1.FieldValues['question5true']) or
(i) and (Form4.CheckBox5.Checked=False) and (DataModule1.ADOTable1.FieldValues['question5true']<>True) then
  i:=True else i:=False;
  if i then
   s:=DataModule1.ADOTable1.FieldValues['path1'] else
   s:=DataModule1.ADOTable1.FieldValues['path2'];
// ≈сли ответ верный  то идем по первому пути если нет то по второму
  end;
// записываем результат
score[step]:=i;
// «аписываем в меню ответ(ы)
Memo1.Lines.Add('------------------------------------------------ ');
Memo1.Lines.Add('¬аш ответ: ');
  if Form4.RadioButton1.Checked or Form4.CheckBox1.Checked then
    Memo1.Lines.Add(DBText1.Caption);
  if Form4.RadioButton2.Checked or Form4.CheckBox2.Checked then
    Memo1.Lines.Add(DBText2.Caption);
  if Form4.RadioButton3.Checked or Form4.CheckBox3.Checked then
    Memo1.Lines.Add(DBText3.Caption);
  if Form4.RadioButton4.Checked or Form4.CheckBox4.Checked then
    Memo1.Lines.Add(DBText4.Caption);
  if Form4.RadioButton5.Checked or Form4.CheckBox5.Checked then
    Memo1.Lines.Add(DBText5.Caption);
// ѕровер€ем если путь 0 то никуда не идем и завершаем работу с тестом и выдаем результат

if StrToInt(s)<>0 then begin
ss:=DataModule1.ADOTable1.FieldValues['keisname'];
DataModule1.ADOTable1.Locate('keisname;nodenum', VarArrayOf([ss,s]), []);
Memo1.Lines.Add('------------------------------------------------ ');
Memo1.Lines.Add(DataModule1.ADOTable1.FieldValues['textkeysa']);
//ShowMessage(s);

step:=step+1;     // —читаем шаги без учета повторных нод!
// записываем весь путь
path[step]:=StrToInt(s);
Button3.Click;
end else
  begin // завершаем работу с тестом и выдаем результат (надо доделать сборс и т.п.)
    ShowMessage('¬аш результат - '+IntToStr(calk_result)+'%');
  end;
end else
ShowMessage('¬ыберите какой-либо вариант ответа.');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Memo1.Lines.Clear;
Memo1.Lines.Add(DataModule1.ADOTable1.FieldValues['textkeysa']);
step:=1;      //ѕервый шаг
path[step]:=DataModule1.ADOTable1.FieldValues['nodenum'];
Button3.Click;
end;

procedure TForm4.Button3Click(Sender: TObject);
var
x:integer;
begin
// “ема множественного выбора (если ответов больше одного то тогда будет друга€ панелька видна)
x:=0;
if DataModule1.ADOTable1.FieldValues['question1true'] = True then
x:=x+1;
if DataModule1.ADOTable1.FieldValues['question2true'] = True then
x:=x+1;
if DataModule1.ADOTable1.FieldValues['question3true'] = True then
x:=x+1;
if DataModule1.ADOTable1.FieldValues['question4true'] = True then
x:=x+1;
if DataModule1.ADOTable1.FieldValues['question5true'] = True then
x:=x+1;
if x>1 then begin
Panel4.Visible:=False;
Panel5.Visible:=True;
end;
if x<=1 then begin
Panel4.Visible:=True;
Panel5.Visible:=False;
end;
radiokontrol;

//Panel1.Caption:=IntToStr(x);

end;

procedure TForm4.Button4Click(Sender: TObject);
var
i: integer;
begin
// checkcontrol=True then  ShowMessage ('Try!!') else ShowMessage ('False!!');

// делаем расчет правильных ответов в процентках выводим всего ответов и процент
//Showmessage(intToStr(step));
i:=calk_result();
Showmessage(IntToStr(i));

end;

procedure TForm4.DBText1Click(Sender: TObject);
begin
if Form4.RadioButton1.Checked then
Form4.RadioButton1.Checked:=false else
Form4.RadioButton1.Checked:=true;
end;

procedure TForm4.DBText2Click(Sender: TObject);
begin
if Form4.RadioButton2.Checked then
Form4.RadioButton2.Checked:=false else
Form4.RadioButton2.Checked:=true;
end;

procedure TForm4.DBText3Click(Sender: TObject);
begin
if Form4.RadioButton3.Checked then
Form4.RadioButton3.Checked:=false else
Form4.RadioButton3.Checked:=true;
end;

procedure TForm4.DBText4Click(Sender: TObject);
begin
if Form4.RadioButton4.Checked then
Form4.RadioButton4.Checked:=false else
Form4.RadioButton4.Checked:=true;
end;

procedure TForm4.DBText5Click(Sender: TObject);
begin
if Form4.RadioButton5.Checked then
Form4.RadioButton5.Checked:=false else
Form4.RadioButton5.Checked:=true;
end;

end.
