unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    Button1: TButton;
    Button2: TButton;
    DBCheckBox3: TDBCheckBox;
    DBEdit7: TDBEdit;
    Button3: TButton;
    procedure DBCheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TNode = class(TObject)
    name: string;
    text: string;
    qlegend: string;

  end;


var
  Form2: TForm2;

implementation

uses keys, Unit3, Unit4, Unit5;

{$R *.dfm}



{
unit diseases;

interface

type
  TSindrom = class(TObject)
  name: string;

    //сферы психики
    //восприятие
    hyper_hypostesia_anestesia: integer;

    parestesia: integer;
    senestopatia: integer;

    illusions: integer;
    hallutination_true: integer;
    hallutination_false: integer;

    derealisacia: integer;
    depersonalisacia: integer;

    // мышление
    hyper_hypomentzia: integer;
    bessvaznost: integer;

    rigidnost: integer;
    obstoyatelnost: integer;

    paralogichnost: integer;
    rezonerstvo: integer;

    mentizm: integer;
    shperrung: integer;

    obsesion_compulsion: integer;
    sverhcenniost: integer;
    bred_sistema: integer;
    tema_idei: string;
    avtomatizm: integer;

    // память и интеллект
    hyper_hypomnesia: integer;

    amnesia_retro: integer;
    amnesia_antero: integer;
    amnesia_congrad: integer;

    amnesia_fiks: integer;

    pseudoreminiscencii: integer;
    confabulacii: integer;
    cryptomnesii: integer;

    intellect: integer;

    // эмоции
    hyper_hypotimia: integer;
    hyperpatia_apatia: integer;

    trevoga_spocoistvie: integer;

    emo_uploshenie: integer;

    eiforia_disforia: integer;

    emotion_labilnost: integer;

    ammbivalentnost: integer;

    anestezia_psihica: integer;


    // воля и активность
    hyper_hypobulia: integer;
    vozbugdenie_stupor: integer;

    katatonia: boolean;
    // сознание - Синдромы отдельно!
    hyper_oglushenie_sopor_coma: integer;

    parkinson, hyperkinez, dyskinez, adrenolit, holinolit, endo, sexi: Real;



  procedure CreateSindrom(name: string; sila: integer = 1); //определяем имя синдрома и его создаем
  procedure CreateBSindrom;
  end;

  TDisease = class(TObject)
  name: string;
  sindroms: array[0..5] of TSindrom;

 // procedure AddSindrom(name: TSindrom);
  //procedure CreateDisease(name: string);
  end;


implementation
  procedure TSindrom.CreateBSindrom;
  begin
    self.hyper_hypostesia_anestesia:=0;
    self.parestesia:=0;
    self.senestopatia:=0;
    self.illusions:=0;
    self.hallutination_true:=0;
    self.hallutination_false:=0;
    self.derealisacia:=0;
    self.depersonalisacia:=0;
    // мышление
    self.hyper_hypomentzia:=0;
    self.bessvaznost:=0;
    self.rigidnost:=0;
    self.obstoyatelnost:=0;
    self.paralogichnost:=0;
    self.rezonerstvo:=0;
    self.mentizm:=0;
    self.shperrung:=0;
    self.obsesion_compulsion:=0;
    self.sverhcenniost:=0;
    self.bred_sistema:=0;
    self.tema_idei:='';
    self.avtomatizm:=0;
     // память и интеллект
    self.hyper_hypomnesia:=0;
    self.amnesia_retro:=0;
    self.amnesia_antero:=0;
    self.amnesia_congrad:=0;
    self.amnesia_fiks:=0;
    self.pseudoreminiscencii:=0;
    self.confabulacii:=0;
    self.cryptomnesii:=0;
    self.intellect:=0;
    // эмоции
    self.hyper_hypotimia:=0;
    self.hyperpatia_apatia:=0;
    self.trevoga_spocoistvie:=0;
    self.emo_uploshenie:=0;
    self.eiforia_disforia:=0;
    self.emotion_labilnost:=0;
    self.ammbivalentnost:=0;
    self.anestezia_psihica:=0;
    // воля и активность
    self.hyper_hypobulia:=0;
    self.vozbugdenie_stupor:=0;
    self.katatonia:=false;
    // сознание - Синдромы отдельно!
    self.hyper_oglushenie_sopor_coma:=0;

    self.parkinson:=0;
    self.hyperkinez:=0;
    self.dyskinez:=0;
    self.adrenolit:=0;
    self.holinolit:=0;
    self.endo:=0;
    self.sexi:=0;

  end;


  procedure TSindrom.CreateSindrom(name: string; sila: integer = 1);
  const
   DEISTVIE: integer = 11;
   EFFECT: integer = 16;
   OS_EFFECT: integer = 32;
  begin
    self.CreateBSindrom;
    self.name:=name;
    if name = 'Астенический' then begin
    self.hyper_hypostesia_anestesia:=OS_EFFECT*sila;
    self.senestopatia:=DEISTVIE*sila;
    self.illusions:=DEISTVIE*sila;
    // мышление
    self.obsesion_compulsion:=EFFECT*sila;
    self.sverhcenniost:=DEISTVIE*sila;
    // память и интеллект
    self.hyper_hypomnesia:=-DEISTVIE*sila;
    self.amnesia_fiks:=DEISTVIE*sila;
    // emotion
    self.hyper_hypotimia:=-EFFECT*sila;
    self.hyperpatia_apatia:=-OS_EFFECT*sila;
    self.trevoga_spocoistvie:=EFFECT*sila;
    self.eiforia_disforia:=EFFECT*sila;
    self.emotion_labilnost:=OS_EFFECT*sila;
    // воля и активность
    self.hyper_hypobulia:=-EFFECT*sila;
    self.vozbugdenie_stupor:=-DEISTVIE*sila;
    self.katatonia:=false;
    // сознание - Синдромы отдельно!
    end;
    if name = 'Обсессивный' then begin
    self.obsesion_compulsion:=OS_EFFECT*sila;
    self.trevoga_spocoistvie:=EFFECT*sila;
    self.hyper_hypotimia:=-EFFECT*sila;
    self.hyperpatia_apatia:=-DEISTVIE*sila;
    self.hyper_hypomnesia:=-DEISTVIE*sila;
    end;

//    if name = 'Компульсивный' then begin
//    end;
    if name = 'Депрессивный' then begin
    self.hyper_hypotimia:=-OS_EFFECT*sila;
    self.hyper_hypomentzia:=-OS_EFFECT*sila;
    self.hyper_hypomnesia:=-DEISTVIE*sila;
    self.hyperpatia_apatia:=-EFFECT*sila;
    self.hyper_hypobulia:=-OS_EFFECT*sila;
    self.vozbugdenie_stupor:=-EFFECT*sila;
    self.rigidnost:=EFFECT*sila;
    end;
    if name = 'Маниакальный' then begin
    self.hyper_hypotimia:=OS_EFFECT*sila;
    self.hyper_hypomentzia:=OS_EFFECT*sila;
    self.hyper_hypomnesia:=DEISTVIE*sila;
    self.hyperpatia_apatia:=EFFECT*sila;
    self.hyper_hypobulia:=OS_EFFECT*sila;
    self.vozbugdenie_stupor:=EFFECT*sila;
    self.rigidnost:=-EFFECT*sila;
    end;
    if name = 'Апатико-абулический' then begin
    self.hyperpatia_apatia:=-OS_EFFECT*sila;
    self.vozbugdenie_stupor:=-OS_EFFECT*sila-20;
    self.hyper_hypobulia:=-OS_EFFECT*sila;
    self.hyper_hypotimia:=-EFFECT*sila;
    self.hyper_hypomentzia:=-EFFECT*sila;
    if self.trevoga_spocoistvie>30 then
    self.trevoga_spocoistvie:=-DEISTVIE*sila;
    end;
    if name = 'Галлюциноз' then begin
    self.hallutination_true:=OS_EFFECT*sila;
    self.trevoga_spocoistvie:=EFFECT*sila;
    self.hyper_hypostesia_anestesia:=EFFECT*sila;
    self.vozbugdenie_stupor:=OS_EFFECT*sila;
    self.eiforia_disforia:=EFFECT*sila;
    end;

    if name = 'Сенестопатический' then begin
    self.senestopatia:=OS_EFFECT*sila;
    self.trevoga_spocoistvie:=EFFECT*sila;
    self.hyper_hypotimia:=-EFFECT*sila;
    self.hyper_hypostesia_anestesia:=DEISTVIE*sila;
    end;
    if name = 'Оглушение' then begin
    self.hyper_hypostesia_anestesia:=-OS_EFFECT*sila;
    self.hyper_hypomentzia:=-OS_EFFECT*sila;
    self.hyper_hypobulia:=-OS_EFFECT*sila;
    self.hyperpatia_apatia:=-OS_EFFECT*sila;
    self.bessvaznost:=OS_EFFECT*sila;
    self.vozbugdenie_stupor:=-OS_EFFECT*sila;
    // как-то надо исключить влияние личности
    end;

    if name = 'Возбуждение' then begin
    self.hyper_hypostesia_anestesia:=OS_EFFECT*sila;
    self.hyper_hypomentzia:=OS_EFFECT*sila;
    self.hyper_hypobulia:=OS_EFFECT*sila;
    self.hyperpatia_apatia:=OS_EFFECT*sila;
    self.vozbugdenie_stupor:=OS_EFFECT*sila;
    // как-то надо исключить влияние личности
    end;

    if name = 'Психоорганический' then begin
    self.hyper_hypomentzia:=-EFFECT*sila;
    self.hyper_hypomnesia:=-OS_EFFECT*sila;
    self.amnesia_fiks:=EFFECT*sila;
    self.rigidnost:=OS_EFFECT*sila;
    self.obstoyatelnost:=OS_EFFECT*sila;
    self.bessvaznost:=EFFECT*sila;
    self.emotion_labilnost:=DEISTVIE*sila;
    self.hyper_hypotimia:=-DEISTVIE*sila;
    end;

//    if name = 'Псевдопаралитический' then begin
//    end;

    if name = 'Корсаковский' then begin
    self.hyper_hypomnesia:=-EFFECT*sila;
    self.amnesia_fiks:=OS_EFFECT*sila;
    self.pseudoreminiscencii:=OS_EFFECT*sila;
    self.confabulacii:=EFFECT*sila;
    end;

    if name = 'Паранойяльный' then begin
    self.obstoyatelnost:=EFFECT*sila;
    self.rigidnost:=EFFECT*sila;
    self.hyper_hypotimia:=DEISTVIE*sila;
    self.hyperpatia_apatia:=DEISTVIE*sila;
    self.hyper_hypomentzia:=DEISTVIE*sila;
    self.sverhcenniost:=OS_EFFECT*sila;
    self.bred_sistema:=OS_EFFECT*sila;
    end;

    if name = 'Параноидный' then begin
    self.derealisacia:=EFFECT*sila;
    self.depersonalisacia:=DEISTVIE*sila;
    self.paralogichnost:=OS_EFFECT*sila;
    self.bred_sistema:=-OS_EFFECT*sila;
    self.sverhcenniost:=EFFECT*sila;
    end;

//    if name = 'Галлюцинаторно-параноидный' then begin
//    end;
//    if name = 'Парафренный' then begin
//    end;

    if name = 'Кандинского-Клерамбо' then begin
    self.hallutination_false:=OS_EFFECT*sila;
    self.derealisacia:=EFFECT*sila;
    self.depersonalisacia:=EFFECT*sila;
    self.paralogichnost:=EFFECT*sila;
    self.bred_sistema:=-EFFECT*sila;
    self.sverhcenniost:=-DEISTVIE*sila;
    self.avtomatizm:=OS_EFFECT*sila;
    self.hyper_hypotimia:=-DEISTVIE*sila;
    self.hyperpatia_apatia:=-DEISTVIE*sila;
    end;

  end;



end.

}
{
function checkcontrol(): integer;
var
x:integer;
begin
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
if x<=1 then begin
  Form2.DBEdit6.Visible:=True;
  Form2.DBEdit7.Visible:=True;
  Form2.DBEdit8.Visible:=True;
  Form2.DBEdit9.Visible:=True;
  Form2.DBEdit10.Visible:=True;
end else begin
  Form2.DBEdit7.Visible:=False;
  Form2.DBEdit7.Text:='0';
  Form2.DBEdit8.Visible:=False;
  Form2.DBEdit8.Text:='0';
  Form2.DBEdit9.Visible:=False;
  Form2.DBEdit9.Text:='0';
  Form2.DBEdit10.Visible:=False;
  Form2.DBEdit10.Text:='0';
  //ShowMessage('При множественном выборе переход не работает!');
end;
// result
end;
}
procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
x:integer;
begin
{
  x:=DataModule1.ADOQuery1.RecordCount;
  DataModule1.ADOQuery1.RecNo:=x;
  x:=DataModule1.ADOQuery1.FieldValues['keys'];
  DataModule1.ADOTable2.Locate('keys', x, []);
}
  Form4.Caption:='';
  Form4.Caption:=Form4.Caption+', '+DataModule1.ADOTable2.FieldValues['keisname'];
  Form4.Show;
  Form4.Button2.Click;
  //Form4.Button2.Visible:=False;
  Form4.Close;
  Form4.ShowModal;




end;

procedure TForm2.Button3Click(Sender: TObject);
begin
DataModule1.ADOTable1.Active:=False;
//DataModule1.ADOTable1.Edit;
//DataModule1.ADOTable1.Post;
DataModule1.ADOTable1.Active:=True;
end;

procedure TForm2.DBCheckBox1Click(Sender: TObject);
begin
{
if DBCheckBox1.Checked then
checkcontrol()
//Caption:='Чекед'
else begin
//Caption:='Не чекад';
  Form2.DBEdit7.Visible:=False;
  Form2.DBEdit7.Text:='0';
  Form2.DBEdit8.Visible:=False;
  Form2.DBEdit8.Text:='0';
  Form2.DBEdit9.Visible:=False;
  Form2.DBEdit9.Text:='0';
  Form2.DBEdit10.Visible:=False;
  Form2.DBEdit10.Text:='0';
  DBCheckBox1.Checked:=False;

end;
  }


end;

end.
