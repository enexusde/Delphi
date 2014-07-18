unit ChangeWhatAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, simv;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CheckListBox1: TCheckListBox;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
    data:TDAOsimv;
    person:int64;
    function k(a:pAddress2person):boolean ;
  public
    { Public declarations }
    function open(data:TDAOsimv; person:int64):integer;
  end;

var
  Form3: TForm3;

implementation

function tform3.open(data:TDAOsimv; person:int64):integer;
var i:integer;
    a2p:tAddress2person;
begin
  self.data:=data;
  self.person:=person;
  for i := 1 to data.countAddress2person(k) do
  begin
    a2p := data.getAddress2person(i,k);
    CheckListBox1.items.Add(inttostr(a2p.address2person));
  end;
  result := self.ShowModal();
end;
{$R *.dfm}

function tform3.k(a:pAddress2person):boolean;
begin
  result := a.main and (a.person = person);
end;
end.
