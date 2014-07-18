program MarioCRMProgram;

uses
  Forms,
  MarioCRM in 'MarioCRM.pas' {Form1},
  simv in 'simv.pas',
  NewAddress in 'NewAddress.pas' {Form2},
  ChangeWhatAddress in 'ChangeWhatAddress.pas' {Form3},
  Spende in 'Spende.pas' {Form4},
  FindPerson in 'FindPerson.pas' {Form5},
  PersonInfoForm in 'PersonInfoForm.pas' {PersonInfo},
  DonationAndMembershipForm in 'DonationAndMembershipForm.pas' {DonationAndMembership},
  MemberShipFormUnit in 'MemberShipFormUnit.pas' {MemberShipForm},
  PersonFormUnit in 'PersonFormUnit.pas' {PersonForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'MarioCRM';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TPersonInfo, PersonInfo);
  Application.CreateForm(TDonationAndMembership, DonationAndMembership);
  Application.CreateForm(TMemberShipForm, MemberShipForm);
  Application.CreateForm(TPersonForm, PersonForm);
  Application.Run;
end.
