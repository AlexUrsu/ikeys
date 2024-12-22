object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1090#1072#1073#1083#1080#1094#1072
  ClientHeight = 579
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  DesignSize = (
    701
    579)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button2: TButton
      Left = 8
      Top = 10
      Width = 105
      Height = 25
      Caption = #1048#1075#1088#1072#1090#1100
      TabOrder = 0
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 136
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 1
      Visible = False
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 360
    Width = 701
    Height = 219
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      701
      219)
    object DBText1: TDBText
      Left = 52
      Top = 19
      Width = 625
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question1'
      DataSource = DataModule1.DataSource1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = DBText1Click
    end
    object DBText2: TDBText
      Left = 52
      Top = 53
      Width = 625
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question2'
      DataSource = DataModule1.DataSource1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = DBText2Click
    end
    object DBText3: TDBText
      Left = 52
      Top = 84
      Width = 625
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question3'
      DataSource = DataModule1.DataSource1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = DBText3Click
    end
    object DBText4: TDBText
      Left = 51
      Top = 116
      Width = 626
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question4'
      DataSource = DataModule1.DataSource1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = DBText4Click
    end
    object DBText5: TDBText
      Left = 52
      Top = 148
      Width = 625
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      DataField = 'question5'
      DataSource = DataModule1.DataSource1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = DBText5Click
    end
    object Panel5: TPanel
      Left = 0
      Top = 6
      Width = 45
      Height = 202
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object CheckBox1: TCheckBox
        Left = 25
        Top = 19
        Width = 97
        Height = 17
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 25
        Top = 50
        Width = 97
        Height = 17
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 25
        Top = 81
        Width = 97
        Height = 17
        TabOrder = 2
      end
      object CheckBox4: TCheckBox
        Left = 25
        Top = 114
        Width = 97
        Height = 17
        TabOrder = 3
      end
      object CheckBox5: TCheckBox
        Left = 25
        Top = 146
        Width = 97
        Height = 17
        TabOrder = 4
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 6
      Width = 45
      Height = 200
      BevelOuter = bvNone
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 25
        Top = 17
        Width = 113
        Height = 17
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 25
        Top = 49
        Width = 113
        Height = 17
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 25
        Top = 79
        Width = 113
        Height = 17
        TabOrder = 2
      end
      object RadioButton4: TRadioButton
        Left = 25
        Top = 112
        Width = 113
        Height = 17
        TabOrder = 3
      end
      object RadioButton5: TRadioButton
        Left = 25
        Top = 144
        Width = 113
        Height = 17
        TabOrder = 4
      end
    end
    object Button4: TButton
      Left = 594
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Test'
      TabOrder = 2
      Visible = False
      OnClick = Button4Click
    end
  end
  object Button1: TButton
    Left = 51
    Top = 538
    Width = 214
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 41
    Width = 701
    Height = 319
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    Lines.Strings = (
      #1047#1076#1088#1072#1074#1089#1090#1074#1091#1081#1090#1077'. '
      #1044#1086#1073#1088#1086' '#1087#1086#1078#1072#1083#1086#1074#1072#1090#1100' '#1074' '#1080#1075#1088#1091' '#1084#1080#1085#1080'-'#1082#1077#1081#1089#1099'. '
      #1063#1090#1086#1073#1099' '#1085#1072#1095#1072#1090#1100' '#1080#1075#1088#1091' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' "'#1048#1075#1088#1072#1090#1100'".')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
