program MostInterestingSubject;

uses
  Vcl.Forms,
  MostInterestingSubjectUnit in 'MostInterestingSubjectUnit.pas' {MostInterestingSubjectForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMostInterestingSubjectForm, MostInterestingSubjectForm);
  Application.Run;
end.
