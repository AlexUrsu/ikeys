object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 423
  Width = 611
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'keisname'
    MasterFields = 'keys'
    MasterSource = DataSource2
    TableName = 'nodes'
    Left = 144
    Top = 40
    object ADOTable1nodenum: TIntegerField
      DisplayLabel = #8470' '#1091#1079#1083#1072
      FieldName = 'nodenum'
    end
    object ADOTable1nodename: TWideStringField
      DisplayLabel = #1048#1084#1103' '#1091#1079#1083#1072
      DisplayWidth = 30
      FieldName = 'nodename'
      Size = 50
    end
    object ADOTable1key: TAutoIncField
      FieldName = 'key'
      ReadOnly = True
      Visible = False
    end
    object ADOTable1textkeysa: TWideMemoField
      FieldName = 'textkeysa'
      Visible = False
      BlobType = ftWideMemo
    end
    object ADOTable1checkbox: TBooleanField
      FieldName = 'checkbox'
      Visible = False
    end
    object ADOTable1question1: TWideStringField
      FieldName = 'question1'
      Visible = False
      Size = 255
    end
    object ADOTable1question2: TWideStringField
      FieldName = 'question2'
      Visible = False
      Size = 255
    end
    object ADOTable1question3: TWideStringField
      FieldName = 'question3'
      Visible = False
      Size = 255
    end
    object ADOTable1question4: TWideStringField
      FieldName = 'question4'
      Visible = False
      Size = 255
    end
    object ADOTable1question5: TWideStringField
      FieldName = 'question5'
      Visible = False
      Size = 255
    end
    object ADOTable1path1: TIntegerField
      FieldName = 'path1'
      Visible = False
    end
    object ADOTable1path2: TIntegerField
      FieldName = 'path2'
      Visible = False
    end
    object ADOTable1path3: TIntegerField
      FieldName = 'path3'
      Visible = False
    end
    object ADOTable1path4: TIntegerField
      FieldName = 'path4'
      Visible = False
    end
    object ADOTable1path5: TIntegerField
      FieldName = 'path5'
      Visible = False
    end
    object ADOTable1question1true: TBooleanField
      FieldName = 'question1true'
      Visible = False
    end
    object ADOTable1question2true: TBooleanField
      FieldName = 'question2true'
      Visible = False
    end
    object ADOTable1question3true: TBooleanField
      FieldName = 'question3true'
      Visible = False
    end
    object ADOTable1question4true: TBooleanField
      FieldName = 'question4true'
      Visible = False
    end
    object ADOTable1question5true: TBooleanField
      FieldName = 'question5true'
      Visible = False
    end
    object ADOTable1path6back: TIntegerField
      FieldName = 'path6back'
      Visible = False
    end
    object ADOTable1clear: TBooleanField
      FieldName = 'clear'
      Visible = False
    end
    object ADOTable1keisname: TIntegerField
      FieldName = 'keisname'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 216
    Top = 40
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Dbk.mdb;Persist Sec' +
      'urity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 40
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'keis'
    Left = 144
    Top = 112
    object ADOTable2keislog: TIntegerField
      DisplayLabel = #1058#1077#1084#1072
      DisplayWidth = 6
      FieldName = 'keislog'
    end
    object ADOTable2keisname: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1077#1081#1089#1072
      DisplayWidth = 20
      FieldName = 'keisname'
      Size = 50
    end
    object ADOTable2otl: TIntegerField
      DisplayLabel = #1054#1090#1083#1080#1095#1085#1086
      DisplayWidth = 8
      FieldName = 'otl'
    end
    object ADOTable2hor: TIntegerField
      DisplayLabel = #1061#1086#1088#1086#1096#1086
      DisplayWidth = 8
      FieldName = 'hor'
    end
    object ADOTable2yd: TIntegerField
      DisplayLabel = #1059#1076#1086#1074#1083
      DisplayWidth = 8
      FieldName = 'yd'
    end
    object ADOTable2neyd: TIntegerField
      DisplayLabel = #1053#1077#1091#1076
      DisplayWidth = 8
      FieldName = 'neyd'
    end
    object ADOTable2keys: TAutoIncField
      FieldName = 'keys'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 216
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM keis')
    Left = 144
    Top = 184
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 216
    Top = 184
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'options'
    Left = 144
    Top = 256
    object ADOTable3name_razdela: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1088#1072#1079#1076#1077#1083#1086#1074
      DisplayWidth = 30
      FieldName = 'name_razdela'
      Size = 50
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable3
    Left = 216
    Top = 256
  end
end
