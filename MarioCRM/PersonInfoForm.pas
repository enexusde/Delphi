unit PersonInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,simv, membershipformunit,DonationAndMembershipForm,IBANandBIC;

type
  TPersonInfo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListView1: TListView;
    Label6: TLabel;
    Label7: TLabel;
    ListView2: TListView;
    Label8: TLabel;
    ListView3: TListView;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure ListView1AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure ListView3AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    person:tperson;
    ddata:TDAOsimv;
    asocPayment:int64;
  public
    { Public declarations }
    function modalShow(ddata:TDAOsimv; personid:int64):int64;
    function accepterA2P(p:pAddress2person):boolean;
    function myPayments(p:pPayment):boolean;
    function paymentAsoc(p:pPaymentAssociation):boolean;
    function donations(p:pDonation):boolean;
  end;

var
  PersonInfo: TPersonInfo;

implementation

{$R *.dfm}

function TPersonInfo.paymentAsoc(p:pPaymentAssociation):boolean;
begin
  result := p.payment = asocPayment;
end;

function TPersonInfo.donations(p:pDonation):boolean;
begin
  result := p.person = person.person;
end;

function TPersonInfo.modalShow(ddata:TDAOsimv; personid:int64):int64;
var i,j:integer;
begin
  self.ddata := ddata;
  person := ddata.findPersonByPK(personid);
  label1.Caption := ddata.findTitleByPK(person.title).name;
  label2.Caption := person.firstname;
  label3.Caption := person.lastname;
  label4.Caption := person.memberno;
  label6.Caption := 'Mitglied seit '+datetimetostr(person.since);
  caption := caption + ' ' + label1.Caption + ' ' + label2.caption + ' '+label3.Caption;


  for i := 1 to ddata.countAddress2person(accepterA2P) do
    with listview1.Items.Add do
    begin
      with ddata.getAddress2person(i, accepterA2P) do
      begin
        Data := pointer (address);
        SubItems.Add (addressappendix);
        Checked := main;
      end;
    end;

  for i := 1 to ddata.countPayment(myPayments) do
    with ddata.getPayment(i, myPayments) do
    begin
      asocPayment := payment;
      with listview2.Items.Add do
      begin
        Caption := ftos(amountCentEuro / 100);
        if dateAndTime <> 0 then
          SubItems.Add(datetimetostr(dateAndTime))
        else
          SubItems.Add('Unbekannt');
        SubItems.Add(description);

      end;
      for j := 1 to ddata.countPaymentAssociation(paymentAsoc) do
      begin
        with listview3.items.Add do
          with ddata.getPaymentAssociation(j, paymentAsoc) do
          begin
            Caption := ftos(amountCent/100);
            ImageIndex := 1;
            Data := pointer(paymentAssociation);
          end;
      end;
      for j := 1 to ddata.countDonation(donations) do
      begin
        with listview3.items.Add do
          with ddata.getDonation(j, donations) do
          begin
            Caption := ftos(amountCent/100);
            ImageIndex := 2;
            Data := pointer(donation);
          end;
      end;
    end;

  ShowModal;
end;

function TPersonInfo.accepterA2P(p:pAddress2person):boolean;
begin
  result := p.person = person.person;
end;

function TPersonInfo.myPayments(p:pPayment):boolean;
begin
  result := p.person = person.person;
end;

procedure TPersonInfo.ListView1AdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
var a:TAddress;
begin
  DefaultDraw :=true;
  if item.SubItems.Count = 1 then
  begin
    a := ddata.findAddressByPK(int64(item.data));
    item.SubItems.Add  (a.street + ' ' + a.streetNumber);
    item.SubItems.Add  (a.zip + ' ' + a.city);
  end;
end;

procedure TPersonInfo.ListView3AdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);

var k: TMembershipMonth;
    p: TPerson;
    t: TTitle;
    m: TCalculationMonth;
    a: TPaymentAssociation;
    d: TDonation;
begin
  DefaultDraw:=true;
  if item.SubItems.Count = 0 then
  begin
    if item.ImageIndex = 1 then
    begin
      a := ddata.findPaymentAssociationByPK(int64(item.Data));
      k := ddata.findMembershipMonthByPK(a.forMembershipMonth);
      p := ddata.findPersonByPK(k.person);
      t := ddata.findTitleByPK(p.title);
      m := ddata.findCalculationMonthByPK(k.memberMonth);
      item.SubItems.Add(p.firstname + ' ' + p.lastname);
      item.SubItems.Add(inttostr(m.calculationMonth)+'-'+IntToStr(m.currentYear));
      item.SubItems.Add(p.memberno);
    end
    else if item.ImageIndex = 2 then
    begin
      d := ddata.findDonationByPK(int64(item.data));
      p := ddata.findPersonByPK(d.person);
      t := ddata.findTitleByPK(p.title);
      item.SubItems.Add(t.name + ' ' + p.firstname + ' ' + p.lastname);
      if ddata.findPaymentByPK(d.payment).description <> '' then
      begin
        item.SubItems.Add(ddata.findPaymentByPk(d.payment).description);
      end else if d.attested then
        item.SubItems.Add('Spende Rückerstattet')
      else
        item.SubItems.Add('Spende');
      item.SubItems.Add(p.memberno);
    end
    else ShowMessage('Interner fehler!');
  end;
end;

procedure TPersonInfo.BitBtn2Click(Sender: TObject);
begin
  with TMemberShipForm.Create(self) do
  begin
    ddata := self.ddata;
    pid:=self.person.person;
    ShowModal;
  end;
end;

procedure TPersonInfo.BitBtn3Click(Sender: TObject);
var miban,mbic:string;
    i,j:integer;
begin
  with TIBANandBICForm.Create(self) do
  begin
    data := self.ddata;
    for i := 1 to ddata.countBankAccount2Person() do
    begin
      if ddata.getBankAccount2Person(i).person = person.person then
        with ddata.findBankAccountbypk(ddata.getBankAccount2Person(i).bankAccount) do
        addOld(iban,bic);
    end;


    if ShowModal() = mrOk then
    begin
      miban := iban;
      mbic := bic;
    end
    else
    begin
      exit;
    end;
  end;

  if MessageDlg('Möchten Sie das Bankkonto hinzufügen (Es wird automatisch bei Einzug ausgewählt)',mtConfirmation,[mbYes,mbCancel],0)=mryes then
  begin
    ddata.insertBankAccount2Person(ddata.insertBankAccount(miban,mbic),person.person);

  end;
end;

end.
