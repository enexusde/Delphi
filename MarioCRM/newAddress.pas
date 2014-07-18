unit newAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,simv;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Label7: TLabel;
    ComboBox3: TComboBox;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function a2pa(a2p:pAddress2person):boolean;
    function fillCombos(a:pAddress):boolean;
  public
    { Public declarations }
    data:TDAOsimv;
    personid,addressid:int64;
    function open(oldaddr:TAddress; data:TDAOsimv;person:tperson): Integer;

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function TFOrm2.fillCombos(a:pAddress):boolean;
begin
  if ComboBox1.Items.IndexOf(a.city) = -1 then combobox1.AddItem(a.city,nil);
  if ComboBox2.Items.IndexOf(a.county) = -1 then combobox2.AddItem(a.county,nil);
  if ComboBox3.Items.IndexOf(a.country) = -1 then combobox3.AddItem(a.country,nil);

end;

procedure TForm2.Button1Click(Sender: TObject);
var addid:int64;
begin
  addid := data.insertAddress(edit1.Text,edit2.Text,edit3.Text,combobox2.Text,combobox3.text,combobox1.Text);
  data.insertAddress2person(personid,addid,checkbox1.Checked,edit4.text);
  close;
end;

function tform2.a2pa(a2p:pAddress2person):boolean; 
begin
  result := (a2p.person = personid) and (a2p.address = addressid);
end;

function TForm2.open(oldaddr:TAddress; data:TDAOsimv; person: tperson): Integer;
begin

  combobox1.Clear;
  data.countAddress(fillCombos);

  edit1.Text := oldaddr.street;
  edit2.text := oldaddr.streetNumber;
  edit3.Text := oldaddr.zip;
  combobox1.Text := oldaddr.city;
  combobox2.Text := oldaddr.county;
  combobox3.text := oldaddr.country;
  self.addressid := oldaddr.address;
  self.data := data;
  self.personid := person.person;




  // Den alten übernehmen wenn vorhanden.
  if data.countAddress2person(a2pa) > 0 then
    with data.getAddress2person(0,a2pa) do
    begin
      edit4.Text := addressappendix;
      CheckBox1.Checked := main;
    end;
  result := self.ShowModal();
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
