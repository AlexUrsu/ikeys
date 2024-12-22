unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses keys, Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// ѕри закрытии формы вносим изменени€ на титульнике

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

end.
