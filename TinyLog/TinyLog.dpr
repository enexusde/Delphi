program TinyLog;

uses
  Forms,
  TinyLogWindow in 'TinyLogWindow.pas' {TinyLogForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTinyLogForm, TinyLogForm);
  Application.Run;
end.
