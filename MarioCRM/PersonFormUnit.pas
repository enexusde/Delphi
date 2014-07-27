unit PersonFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons,simv;

type
  TPersonForm = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    ListView1: TListView;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function title(t:PTitle):boolean;
    function titleSnd(t:PTitle):boolean;
  private
    { Private declarations }


  public
    pid:int64;
    data:TDAOsimv;
    { Public declarations }
  end;

var
  PersonForm: TPersonForm;

implementation

uses StrUtils;

{$R *.dfm}

procedure TPersonForm.FormShow(Sender: TObject);
var i:integer;
    t:TTitle;
begin
  ComboBox1.Clear;
  if pid = 0 then
    BitBtn1.Caption := 'Hinzufügen'
  else
    BitBtn1.Caption := 'Speichern';


  ComboBox1.Clear;
  for i := 1 to data.countTitle() do
  begin
    t := data.getTitle(i);
    combobox1.Items.AddObject(t.name, pointer(t.title));
  end;
end;

function TPersonForm.title(t:PTitle):boolean;
begin
  result := t.name = trim(ComboBox1.Text);
end;
function TPersonForm.titleSND(t:PTitle):boolean;
begin
  result := SoundexSimilar(t.name, trim(ComboBox1.Text));
end;
procedure TPersonForm.BitBtn1Click(Sender: TObject);
var changedTitle:int64;
begin
  if pid=0 then
  begin
    if data.countTitle(title) = 0 then
    begin
      if data.countTitle(titleSND) > 0 then
      begin
        case (MessageDlg('Die Anrede ' + combobox1.text + ' klinkt wie ' + data.getTitle(1, titleSND).name + '. Möchten Sie die Anrede ' + data.getTitle(1, titleSND).name + ' in ' + combobox1.text + ' ändern anstatt eine neue Hinzuzufügen?',mtWarning,[mbYes, mbNo,mbCancel],0)) of
          mrCancel:exit;
          mrYes:exit;
          mrNo:changedTitle:=data.insertTitle(trim(ComboBox1.text));
        end;
      end
      else
      begin
        changedTitle := data.insertTitle(ComboBox1.Text);
      end;
    end;
    data.insertPerson(0,edit3.Text,edit1.Text,edit2.Text,changedTitle,now());
    ModalResult := mrOk;


  end;
end;

end.
