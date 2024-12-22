object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088
  ClientHeight = 582
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  DesignSize = (
    792
    582)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 159
    Width = 160
    Height = 19
    Caption = #1058#1077#1082#1089#1090' '#1082#1077#1081#1089#1072' '#1080' '#1074#1086#1087#1088#1086#1089#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 34
    Top = 263
    Width = 102
    Height = 19
    Anchors = [akLeft, akBottom]
    Caption = #1058#1077#1082#1089#1090' '#1074#1086#1087#1088#1086#1089#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 34
    Top = 8
    Width = 439
    Height = 147
    DataSource = DataModule1.DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 495
    Top = 8
    Width = 289
    Height = 328
    Anchors = [akTop, akRight, akBottom]
    DataSource = DataModule1.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBMemo1: TDBMemo
    Left = 34
    Top = 184
    Width = 439
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'textkeysa'
    DataSource = DataModule1.DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 792
    Height = 206
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      792
      206)
    object Label5: TLabel
      Left = 34
      Top = 7
      Width = 136
      Height = 19
      Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1086#1074
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 739
      Top = 8
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #8470' '#1091#1079#1083#1072
      ExplicitLeft = 689
    end
    object Label8: TLabel
      Left = 672
      Top = 4
      Width = 59
      Height = 19
      Anchors = [akTop, akRight]
      Caption = #1055#1077#1088#1077#1093#1086#1076
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 35
      Top = 165
      Width = 218
      Height = 13
      Caption = #1054#1089#1090#1072#1074#1080#1074#1083#1103#1090#1100' '#1073#1077#1079' '#1075#1072#1083#1086#1082' '#1074#1089#1077' '#1086#1090#1074#1077#1090#1099' '#1085#1077#1083#1100#1079#1103
    end
    object Label4: TLabel
      Left = 35
      Top = 184
      Width = 537
      Height = 13
      Caption = 
        #1042#1085#1080#1084#1072#1085#1080#1077'! '#1055#1077#1088#1077#1093#1086#1076' '#1087#1088#1080' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1086#1084' '#1074#1099#1073#1086#1088#1077' '#1077#1089#1083#1080' '#1077#1088#1085#1086' '#1090#1086' '#1087#1086' 1 '#1087#1091#1090 +
        #1080' '#1085#1077#1090' '#1087#1086' 2'#1086#1084#1091'  (0 - '#1101#1090#1086' '#1082#1086#1085#1077#1094' '#1090#1077#1089#1090#1072')'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 35
      Top = 114
      Width = 23
      Height = 17
      DataField = 'question4true'
      DataSource = DataModule1.DataSource1
      TabOrder = 11
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 34
      Top = 86
      Width = 31
      Height = 17
      DataField = 'question3true'
      DataSource = DataModule1.DataSource1
      TabOrder = 10
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 86
      Width = 671
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question3'
      DataSource = DataModule1.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 56
      Top = 113
      Width = 671
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question4'
      DataSource = DataModule1.DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 56
      Top = 140
      Width = 671
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question5'
      DataSource = DataModule1.DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 735
      Top = 32
      Width = 43
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'path1'
      DataSource = DataModule1.DataSource1
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 733
      Top = 86
      Width = 44
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'path3'
      DataSource = DataModule1.DataSource1
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 733
      Top = 113
      Width = 44
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'path4'
      DataSource = DataModule1.DataSource1
      TabOrder = 7
    end
    object DBEdit10: TDBEdit
      Left = 733
      Top = 140
      Width = 44
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'path5'
      DataSource = DataModule1.DataSource1
      TabOrder = 8
    end
    object DBCheckBox2: TDBCheckBox
      Left = 34
      Top = 34
      Width = 31
      Height = 17
      DataField = 'question1true'
      DataSource = DataModule1.DataSource1
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox6: TDBCheckBox
      Left = 34
      Top = 142
      Width = 23
      Height = 17
      DataField = 'question5true'
      DataSource = DataModule1.DataSource1
      TabOrder = 12
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 32
      Width = 671
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question1'
      DataSource = DataModule1.DataSource1
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 640
      Top = 181
      Width = 124
      Height = 17
      Anchors = [akRight, akBottom]
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1087#1077#1088#1077#1093#1086#1076
      Ctl3D = True
      DataField = 'clear'
      DataSource = DataModule1.DataSource1
      ParentCtl3D = False
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
      OnClick = DBCheckBox1Click
    end
    object Button1: TButton
      Left = 696
      Top = 176
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1053#1072#1089#1090#1088#1081#1086#1082#1080
      TabOrder = 14
      OnClick = Button1Click
    end
    object DBCheckBox3: TDBCheckBox
      Left = 35
      Top = 61
      Width = 31
      Height = 17
      DataField = 'question2true'
      DataSource = DataModule1.DataSource1
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit7: TDBEdit
      Left = 733
      Top = 59
      Width = 45
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'path2'
      DataSource = DataModule1.DataSource1
      TabOrder = 16
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 59
      Width = 671
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question2'
      DataSource = DataModule1.DataSource1
      TabOrder = 1
    end
  end
  object Button2: TButton
    Left = 735
    Top = 342
    Width = 49
    Height = 19
    Anchors = [akRight, akBottom]
    Caption = #1058#1077#1089#1090
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 497
    Top = 342
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button3Click
  end
end
