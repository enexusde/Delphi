unit FindPerson;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons,simv;

type
  TForm5 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    Label123: TLabel;
    Edit1: TEdit;
    RadioButton2: TRadioButton;
    Edit2: TEdit;
    Edit3: TEdit;
    RadioButton3: TRadioButton;
    ListView1: TListView;
    procedure Edit1Change(Sender: TObject);
    procedure ListView1AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    data:TDAOsimv;
  public
    needBankAccount: boolean;
    { Public declarations }
    function modalShow(data:TDAOsimv):int64;
    function accepter(p:PPerson):boolean;
    function addressAcceptor(p:pAddress):boolean;
    procedure updateSearch();
    function toAddress(p:pAddress2person):boolean;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.updateSearch();
var i :integer;
begin
  ListView1.Clear;
  for i := 1 to data.countPerson(accepter) do
    ListView1.items.Add.Data:=pointer(data.getPerson(i,accepter).person);
  listview1.ClearSelection;
  if listview1.Items.Count = 1 then
  begin
     listview1.SelectAll;
     BitBtn1.SetFocus;
  end;
end;


function TForm5.modalShow(data:TDAOsimv):int64;
begin
  self.data := data;
  result := 0;
  if ShowModal = mrOK then
  begin
    result:=int64(ListView1.Selected.Data);
  end;
end;

function TForm5.addressAcceptor(p:pAddress):boolean;
begin
  result := pos(edit2.text,p.zip) > 0;
end;

function TForm5.toAddress(p:pAddress2person):boolean;
begin
  result := p.person = int64(ListView1.Selected.Data)
end;

function TForm5.accepter(p:pPerson):boolean;
var i: integer;
    ok:boolean;
begin
  ok := false;
  if needBankAccount then
    for i := 1 to data.countBankAccount2Person() do
    begin
      if data.getBankAccount2Person(i).bankAccount2person = p.person then
      begin
        ok := true;
        break;
      end;
    end
  else ok := true;

  if not ok then
    result := false
  else
  begin
    if RadioButton1.Checked then
      result := pos(edit1.Text,p.firstname+' '+p.lastname) <> 0
    else if RadioButton2.Checked then
      result:=data.countAddress(addressAcceptor) > 0
    else if RadioButton3.Checked then
      result := pos(edit3.text,p.memberno) > 0
    else
      result := true;
  end;
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
  RadioButton1.Checked := true;
  updateSearch;
end;

procedure TForm5.ListView1AdvancedCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
var p:TPerson;
begin
  DefaultDraw := true;
  p := data.findPersonByPK(int64(item.data));
  item.Caption := data.getTitle(p.title).name;
  item.SubItems.Add (p.firstname);
  item.SubItems.Add (p.lastname);
end;

procedure TForm5.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  bitbtn1.Enabled := ListView1.Selected <> nil;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TForm5.Edit2Change(Sender: TObject);
begin
  RadioButton2.Checked := true;
  updateSearch;
end;

procedure TForm5.Edit3Change(Sender: TObject);
begin
  RadioButton3.Checked := true;
  updateSearch;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  needBankAccount:=false;
end;

end.
