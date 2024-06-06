unit MostInterestingSubjectUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMostInterestingSubjectForm = class(TForm)
    SubjectsRadioG: TRadioGroup;
    SubmitBtn: TButton;
    StatisticsBtn: TButton;
    StatisticsLbl: TLabel;
    procedure SubmitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SubjectsRadioGClick(Sender: TObject);
    procedure StatisticsBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MostInterestingSubjectForm: TMostInterestingSubjectForm;
  n: array[0..4] of integer;

implementation

{$R *.dfm}

procedure TMostInterestingSubjectForm.FormCreate(Sender: TObject);
  var i: integer;
begin
  for i := 0 to 4 do n[i] := 0;
end;

procedure TMostInterestingSubjectForm.StatisticsBtnClick(Sender: TObject);
begin
  // Check for recursiveness, If its the current button running the procedure then Toggle the visibility
  if (Sender as TButton).Name = 'StatisticsBtn' then
    StatisticsLbl.Visible := not(StatisticsLbl.Visible);

  StatisticsLbl.Caption := 'Total: ' + IntToStr(n[0]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', Math: ' + IntToStr(n[1]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', Physics: ' + IntToStr(n[2]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', Chemistery: ' + IntToStr(n[3]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', ICT: ' + IntToStr(n[4]);
end;

procedure TMostInterestingSubjectForm.SubjectsRadioGClick(Sender: TObject);
begin
  SubmitBtn.Enabled := SubjectsRadioG.ItemIndex >= 0;
end;

procedure TMostInterestingSubjectForm.SubmitBtnClick(Sender: TObject);
  var i: integer;
begin
  n[0] := n[0] + 1;

  i := SubjectsRadioG.ItemIndex; n[i+1]:=n[i+1] + 1;
  SubjectsRadioG.ItemIndex := -1; SubmitBtn.Enabled := False;

  if StatisticsLbl.Visible then StatisticsBtnClick(Sender);
  StatisticsBtn.Enabled := n[0] <> 0;
end;

end.
