unit Unit5;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOTable2keisname: TWideStringField;
    ADOTable1nodenum: TIntegerField;
    ADOTable1nodename: TWideStringField;
    ADOTable1key: TAutoIncField;
    ADOTable1textkeysa: TWideMemoField;
    ADOTable1checkbox: TBooleanField;
    ADOTable1question1: TWideStringField;
    ADOTable1question2: TWideStringField;
    ADOTable1question3: TWideStringField;
    ADOTable1question4: TWideStringField;
    ADOTable1question5: TWideStringField;
    ADOTable1path1: TIntegerField;
    ADOTable1path2: TIntegerField;
    ADOTable1path3: TIntegerField;
    ADOTable1path4: TIntegerField;
    ADOTable1path5: TIntegerField;
    ADOTable1question1true: TBooleanField;
    ADOTable1question2true: TBooleanField;
    ADOTable1question3true: TBooleanField;
    ADOTable1question4true: TBooleanField;
    ADOTable1question5true: TBooleanField;
    ADOTable1path6back: TIntegerField;
    ADOTable1clear: TBooleanField;
    ADOTable2otl: TIntegerField;
    ADOTable2hor: TIntegerField;
    ADOTable2yd: TIntegerField;
    ADOTable2neyd: TIntegerField;
    ADOTable2keys: TAutoIncField;
    ADOTable2keislog: TIntegerField;
    ADOQuery1: TADOQuery;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    DataSource4: TDataSource;
    ADOTable3name_razdela: TWideStringField;
    ADOTable1keisname: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses keys, Unit2, Unit3, Unit4;

{$R *.dfm}

end.
