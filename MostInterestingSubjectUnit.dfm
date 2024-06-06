object MostInterestingSubjectForm: TMostInterestingSubjectForm
  Left = 0
  Top = 0
  Caption = ' MostInterestingSubject'
  ClientHeight = 162
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object StatisticsLbl: TLabel
    Left = 16
    Top = 127
    Width = 31
    Height = 15
    Caption = 'Total: '
    Visible = False
  end
  object SubjectsRadioG: TRadioGroup
    Left = 8
    Top = 16
    Width = 217
    Height = 105
    Caption = 'Choose One'
    Items.Strings = (
      'Math'
      'Physics'
      'Chemistry'
      'ICT')
    TabOrder = 0
    OnClick = SubjectsRadioGClick
  end
  object SubmitBtn: TButton
    Left = 239
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Submit'
    Enabled = False
    TabOrder = 1
    OnClick = SubmitBtnClick
  end
  object StatisticsBtn: TButton
    Left = 239
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Statistics'
    Enabled = False
    TabOrder = 2
    OnClick = StatisticsBtnClick
  end
end
