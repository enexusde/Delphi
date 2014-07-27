unit Spende;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask,Simv,strutils,findperson;

type
  TForm4 = class(TForm)
    Label11: TLabel;
    MaskEdit1: TMaskEdit;
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Memo2: TMemo;
    MaskEdit2: TMaskEdit;
    CheckBox2: TCheckBox;
    Edit2: TEdit;
    BitBtn4: TBitBtn;
    MaskEdit3: TMaskEdit;
    CheckBox3: TCheckBox;
    MaskEdit4: TMaskEdit;
    Edit3: TEdit;
    BitBtn5: TBitBtn;
    CheckBox4: TCheckBox;
    MaskEdit5: TMaskEdit;
    Edit4: TEdit;
    BitBtn6: TBitBtn;
    procedure RadioButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    data: TDAOsimv;
    personid:Int64;
    donator1,donator2,donator3,donator4: int64;
    function parse(str:string):integer;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
function TForm4.parse(str:string):integer;
var i:integer;
begin
  result:=0;

  i := strtoint('0'+trim(leftstr(str,pos(',', str)-1)));
  i:=i*100;
  i := i + strtoint('0'+trim(copy(str,pos(',', str)+1,pos(' ', str)+1)));
  result:=i;
end;

procedure TForm4.RadioButton2Click(Sender: TObject);
begin
checkbox1.Enabled:=radiobutton2.Checked;
maskedit2.Enabled:=radiobutton2.Checked;
edit1.Enabled:=radiobutton2.Checked;
bitbtn3.Enabled:=radiobutton2.Checked;

checkbox2.Enabled:=radiobutton2.Checked;
maskedit3.Enabled:=radiobutton2.Checked;
edit2.Enabled:=radiobutton2.Checked;
bitbtn4.Enabled:=radiobutton2.Checked;

checkbox3.Enabled:=radiobutton2.Checked;
maskedit4.Enabled:=radiobutton2.Checked;
edit3.Enabled:=radiobutton2.Checked;
bitbtn5.Enabled:=radiobutton2.Checked;

checkbox4.Enabled:=radiobutton2.Checked;
maskedit5.Enabled:=radiobutton2.Checked;
edit4.Enabled:=radiobutton2.Checked;
bitbtn6.Enabled:=radiobutton2.Checked;
end;

procedure TForm4.FormShow(Sender: TObject);
var p:tperson;
    t:TTitle;
begin
  DateTimePicker1.DateTime:=now();
  MonthCalendar1.Date:=now();
  p:=data.findPersonByPK(personid);
  t:=data.findTitleByPK(p.title);
  memo1.Lines.Clear;
  memo1.Lines.Add(t.name + ' ' + p.firstname + ' ' + p.lastname);
  if p.since <> 0 then
  memo1.Lines.Add(' Mitglied Seit ' + DateTimeToStr(p.since) + ' mit der No.'+p.memberno);
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
var i, left: integer;
    dt: tdatetime;
    pk: int64;
begin
  i:=parse(MaskEdit1.Text);
  if i = 0 then
  begin
    ShowMessage('Sie müssen einen Betrag eingeben!');
    maskedit1.SetFocus;
    exit;
  end;
  left:=0;
  if RadioButton2.Checked then
  begin
    left:=i;
    if CheckBox1.Checked then left := left - parse(maskedit2.text);
    if CheckBox2.Checked then left := left - parse(maskedit3.text);
    if CheckBox3.Checked then left := left - parse(maskedit4.text);
    if CheckBox4.Checked then left := left - parse(maskedit5.text);
  end;

  if left > 0 then
    ShowMessage('Es müssen noch '+inttostr(left)+' Cent vergeben werden!')
  else if left < 0 then
    ShowMessage('Es haben '+inttostr(-left)+' Cent ZUVIEL vergeben!')
  else
  begin
    if MessageDlg('Sind Sie sicher?', mtConfirmation, [mbYes, mbCancel], 0) = mrYes then
    begin
      dt:=DateTimePicker1.DateTime;
      ReplaceDate(dt,MonthCalendar1.Date);

      pk := data.insertPayment(0, i, dt, personid, memo2.Text);
      if RadioButton2.Checked then
      begin
        if CheckBox1.Checked then
          data.insertDonation(pk,donator1,parse(maskedit2.text), false);
        if Checkbox2.Checked then
          data.insertDonation(pk,donator2,parse(maskedit3.text), false);
        if Checkbox3.Checked then
          data.insertDonation(pk,donator3,parse(maskedit4.text), false);
        if Checkbox4.Checked then
          data.insertDonation(pk,personid,parse(maskedit5.text), false);
      end
      else
      begin
        data.insertDonation(data.countPayment(nil),donator1,parse(maskedit2.text),false);
      end;
      close;
    end;
  end;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
var p:int64;
    d:TPerson;
begin
  p:=TForm5.Create(self).modalShow(data);
  if p<>0 then
  donator1:=p;
  d:=data.findPersonByPK(p);

  edit1.Text:=data.findTitleByPK(d.title).name + ' ' +d.firstname + ' ' + d.lastname + '('+d.memberno+')';
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
var p:int64;
    d:TPerson;
begin
  p:=TForm5.Create(self).modalShow(data);
  if p<>0 then
  donator2:=p;
  d:=data.findPersonByPK(p);

  edit2.Text:=data.findTitleByPK(d.title).name + ' ' +d.firstname + ' ' + d.lastname + '('+d.memberno+')';
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
var p:int64;
    d:TPerson;
begin
  p:=TForm5.Create(self).modalShow(data);
  if p<>0 then
  donator3:=p;
  d:=data.findPersonByPK(p);

  edit3.Text:=data.findTitleByPK(d.title).name + ' ' +d.firstname + ' ' + d.lastname + '('+d.memberno+')';
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
var p:int64;
    d:TPerson;
begin
  p:=TForm5.Create(self).modalShow(data);
  if p<>0 then
  donator4:=p;
  d:=data.findPersonByPK(p);

  edit4.Text:=data.findTitleByPK(d.title).name + ' ' +d.firstname + ' ' + d.lastname + '('+d.memberno+')';
end;


procedure TForm4.CheckBox1Click(Sender: TObject);
begin
  BitBtn3.Enabled := CheckBox1.Checked and RadioButton2.Checked;
  MaskEdit2.Enabled := CheckBox1.Checked and RadioButton2.Checked;
  Edit1.Enabled := CheckBox1.Checked and RadioButton2.Checked;
end;


procedure TForm4.CheckBox2Click(Sender: TObject);
begin
  BitBtn4.Enabled := CheckBox2.Checked and RadioButton2.Checked;
  MaskEdit3.Enabled := CheckBox2.Checked and RadioButton2.Checked;
  Edit2.Enabled := CheckBox2.Checked and RadioButton2.Checked;

end;

procedure TForm4.CheckBox3Click(Sender: TObject);
begin
  BitBtn5.Enabled := CheckBox3.Checked and RadioButton2.Checked;
  MaskEdit4.Enabled := CheckBox3.Checked and RadioButton2.Checked;
  Edit3.Enabled := CheckBox3.Checked and RadioButton2.Checked;

end;

procedure TForm4.CheckBox4Click(Sender: TObject);
begin
  BitBtn6.Enabled := CheckBox4.Checked and RadioButton2.Checked;
  MaskEdit5.Enabled := CheckBox4.Checked and RadioButton2.Checked;
  Edit4.Enabled := CheckBox4.Checked and RadioButton2.Checked;

end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

end.
