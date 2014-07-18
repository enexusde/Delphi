unit MarioCRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, simv, StdCtrls, ComCtrls, Math, newAddress, changewhataddress,
  Buttons, Spende, PersonInfoForm, DonationAndMembershipForm, PersonFormUnit,findperson;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Persons: TListView;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    Button1: TBitBtn;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    BitBtn3: TBitBtn;
    SEPA: TBitBtn;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    function  accepter(p:PPerson):boolean;
    procedure Button2Click(Sender: TObject);
    procedure PersonsAdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure PersonsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure PersonsDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SEPAClick(Sender: TObject);
  private
    { Private declarations }
    function selectedPerson(p:PPerson):boolean;
    function selectedAddresses(p:pAddress2person):boolean;
  public
    { Public declarations }
    data: TDAOsimv;
  end;

var
  Form1: TForm1;

  function generateObfuscator(prefix:string=''):String;
implementation

uses DateUtils, StrUtils;

{$R *.dfm}

function tform1.selectedPerson(p:PPerson):boolean;
begin
  result := p.person = int64(persons.selected.data);
end;
function tform1.selectedAddresses(p:pAddress2person):boolean;
begin
  result := p.address = int64(persons.selected.data);
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
    fruehestJahr,spaetestJahr:integer;
    k:string;
begin
  k:=leftstr(Application.ExeName, PosEx('.',Application.ExeName,1)-1);

  data :=TDAOsimv.create(k+'person.dat',k+'titles.dat',k+'months.dat',k+'membership.dat',k+'payment.dat',k+'bankaccount.dat',k+'bankaccount2person.dat',k+'paymentAssociation.dat',k+'donation.dat',k+'address.dat',k+'address2person.dat',k+'membershipComment.dat',k+'membershipCalculation.dat',k+'exportIdentification.dat',k+'exportPersonIdentification.dat');
  for i := 1 to data.countPerson() do
    persons.Items.Add().Data := pointer(i);
  statusbar1.Panels[0].Text := inttostr(data.countPerson())+' Personen';
  statusbar1.Panels[1].Text := inttostr(data.countAddress())+' Addressen';
  statusbar1.Panels[2].Text := inttostr(data.countBankAccount())+' Bankverbindungen';
  fruehestJahr := data.getCalculationMonth(0).currentYear;
  spaetestJahr := data.getCalculationMonth(0).currentYear;
  for i := 0 to data.countCalculationMonth() do
  begin
    with data.getCalculationMonth(i) do
    begin
      if spaetestJahr < currentYear then spaetestJahr := currentYear;
      if fruehestJahr > currentYear then fruehestJahr := currentYear;
    end;
  end;
  if spaetestJahr <>0 then
  StatusBar1.Panels[3].Text := IntToStr(fruehestJahr) + ' - ' + IntToStr(spaetestJahr);

end;

procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
    m:TAddress2person;
begin
  if data.countAddress2person(selectedAddresses) > 1 then
  begin
    with TForm3.Create(self) do
      open(data,int64(persons.Selected.data));

  end
  else
  begin
    m := data.getAddress2person(1, selectedAddresses);

    tform2.Create(self).open(data.findAddressByPK(m.address),data,data.findPersonByPK(int64(persons.Selected.data)));
  end;
end;

function TForm1.accepter(p:pPerson):boolean;
begin
  result := (edit1.text='') or (pos(edit1.Text,p.firstname+' '+p.lastname)<>0) or SoundexSimilar(edit1.Text,p.lastname) or SoundexSimilar(edit1.Text,p.firstname + ' ' + p.lastname);
end;

procedure TForm1.Edit1Change(Sender: TObject);
var i:integer;
begin
  persons.Clear;
  for i := 1 to data.countPerson(accepter) do
    persons.Items.Add().Data := pointer(i);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j,b :integer;
    vorname, iban, nachname:string;
    str,strf:array[0..8]of String;
begin
  str[0]:='Berliner';
  str[1]:='Karl';
  str[2]:='Wunder';
  str[3]:='Super';
  str[4]:='Wald';
  str[5]:='Sommer';
  str[6]:='Turm';
  str[7]:='Berg';
  str[8]:='Herrmann';
  strf[0]:=' Str.';
  strf[1]:=' Strasse';
  strf[2]:=' Allee';
  strf[3]:='weg';
  strf[4]:=' Platz';
  strf[5]:='kamp';
  strf[6]:='damm';
  strf[7]:=' Straße';
  strf[8]:=' Strasse';

  if data.countMembershipCalculation() < 3 then
  begin
    data.insertMembershipCalculation('Calculation Month',0,500,1);
    data.insertMembershipCalculation('Calculation Quartal',0,280 * 4,4);
    data.insertMembershipCalculation('Calculation Year',0,450 * 12,12);
  end;

  if data.countTitle() = 0 then
  begin
    data.insertTitle('Herr');
    data.insertTitle('Frau');
    data.insertTitle('Doktor');
    data.insertTitle('Dr. Prof. ');
    data.insertTitle('Familie');
    data.insertTitle('Firma');
  end;

  for j := 1 to randomrange(0,13) do
  data.insertCalculationMonth(2013,j);

  for i := 1 to 20 do
  begin
    case RandomRange(1,9)
    of 1: vorname := 'Sidney';
       2: vorname := 'Joe';
       3: vorname := 'Uli';
       4: vorname := 'Patty';
       5: vorname := 'Frider';
       6: vorname := 'Patty';
       7: vorname := 'Jasmin';
       8: vorname := 'Sascha';
    end;

    case RandomRange(1,7)
    of 1: nachname := 'Kryzkistoff';
       2: nachname := 'Campana';
       3: nachname := 'Fernett';
       4: nachname := 'Weber';
       5: nachname := 'Meyer';
       6: nachname := 'Mustermann';
    end;

    data.insertPerson(0,'TEST'+inttostr(i),vorname,nachname,RandomRange(1,6),now());

    for j := 1 to randomrange(0,13) do
    begin
      data.insertMembershipMonth(data.countPerson(),j,false,randomrange(0,4));
      data.insertMembershipComment('Kommentar eins', EncodeDateTime(2014,j,RandomRange(1,28),RandomRange(8,22),RandomRange(0,60),RandomRange(0,60),0),data.countMembershipMonth());
      data.insertMembershipComment('Kommentar zwei', EncodeDateTime(2014,j,RandomRange(1,28),RandomRange(8,22),RandomRange(0,60),RandomRange(0,60),0),data.countMembershipMonth());
      data.insertMembershipComment('Kommentar Drei', EncodeDateTime(2014,j,RandomRange(1,28),RandomRange(8,22),RandomRange(0,60),RandomRange(0,60),0),data.countMembershipMonth());

    end;

    for j := 1 to randomrange(0, 4) do
    begin
      iban:='DE';
      for b := 0 to 12 do
        iban := iban + IntToStr(RandomRange(0,10));
      data.insertBankAccount(iban,iban);
      for b := 0 to RandomRange(1,3) do
      begin
        data.insertBankAccount2Person(data.countBankAccount(),data.countPerson());
      end;
    end;

    // Spenden
    for j := 0 to RandomRange(0,5) do
    begin
      b:=RandomRange(100,1000);
      data.insertPayment(0,b,EncodeDateTime(2014,j+1,RandomRange(1,28),RandomRange(8,22),RandomRange(0,60),RandomRange(0,60),0),data.countPerson(),'Spende');
      data.insertDonation(data.countPayment(),data.countPerson(),b,false);
    end;

    // Payments
    for j := 0 to RandomRange(0, 5) do
    begin
      b:=RandomRange(100,1000);
      data.insertPayment(0,b,EncodeDateTime(2014,j+1,RandomRange(1,28),RandomRange(8,22),RandomRange(0,60),RandomRange(0,60),0),data.countPerson(),'Beitrag');
      data.insertPaymentAssociation(data.countPayment(),RandomRange(1,data.countMembershipMonth()+1), b);
      for b := 0 to RandomRange(0, 4) do
      begin
        data.insertMembershipComment('Kommentar ' + inttostr(b), EncodeDateTime(2014, j+1, RandomRange(1, 28), RandomRange(8, 22), RandomRange(0, 60), RandomRange(0, 60), 0),RandomRange(1, data.countMembershipMonth() + 1));
      end;
    end;

    //

    // Addresses
    for j := 0 to RandomRange(0,4) do
    begin
      data.insertAddress(str[randomrange(0,9)]+strf[randomrange(0,9)],inttostr(randomrange(1,60)),inttostr(randomrange(10000,99999)),'Deutschland', 'Berlin', 'Berlin');
      data.insertAddress2person(data.countAddress(),data.countPerson(),true,'c/o ' + nachname);
    end;
  end;

end;

procedure TForm1.PersonsAdvancedCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
var p:TPerson;
    i,c:integer;
begin
  p:=data.getPerson(int64(item.data), accepter);
  item.caption := p.firstname;
  item.SubItems.Add(p.lastname);
  item.SubItems.Add(p.memberno);
  c := 0;
  for i := 1 to data.countBankAccount2Person(nil) do
    with data.getBankAccount2Person(i) do
    begin
      if person = p.person then
        inc(c);
    end;
  item.SubItems.Add(inttostr(c));

  defaultDraw:=true;
end;
procedure TForm1.PersonsSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  bitbtn1.Enabled:=selected;
  button3.Enabled:=selected;
  button4.Enabled:=selected;
  button1.Enabled:=selected;
  BitBtn3.Enabled:=selected;
  if not selected then exit;

  if data.countAddress2person(selectedAddresses) > 0 then
    button1.Caption:='Umzug eintragen'
  else
    button1.Caption:='Addresse setzen';
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
   with TForm4.Create(self) do begin
   data:=self.data;
   personid:=Int64(persons.Selected.data);
   ShowModal;
   end;
end;

procedure TForm1.PersonsDblClick(Sender: TObject);
begin
  if persons.selected <> nil then
    TPersonInfo.Create(self).modalShow(data,int64(persons.selected.data));
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  with TPersonForm.Create(self) do
  begin
    data := self.data;
    pid:=0;
    ShowModal;
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  with TDonationAndMembership.Create(self) do
  begin
    ddata := self.data;
    pid:=0;
    ShowModal();
  end;
end;

function generateObfuscator(prefix:string=''):String;
var s:string;
    i:integer;
begin
  randomize;
  Result := prefix;
  for i := length(prefix) to 32 do
  begin
    Result:=Result + inttostr(RandomRange(1,10)-1);
  end;
end;

procedure TForm1.SEPAClick(Sender: TObject);
var date:String;
var k: TPerson;
    a: TAddress;
    sum: double;
    i,j,m,txs: integer;
    ba2p: TBankAccount2Person;
    sd: TSaveDialog;
    ex: TExportentification;
    exp: TExportPersonentification;
    amountInCent: longint;
    comment: boolean;
    ba: TBankAccount;
begin
  comment := false;
  txs := 0;
  sum := 0;
  // OK now we have all the informations we need. Now we need to generate a obfuscated unique id for export
  ex := data.findExportentificationByPK (data.insertExportentification(k.person, now(), generateObfuscator('999')));

  DateTimeToString(date, 'yyyy-mm-dd', now());
  memo1.Clear;
  memo1.lines.Add   ('<?xml version="1.0" encoding="utf-8" ?>');
  memo1.lines.Add   ('<?valid true?>');
  memo1.lines.Add   ('<?description Export Mario-System?>');
  memo1.lines.Add   ('<Document xmlns="urn:iso:std:iso:20022:tech:xsd:pain.008.002.02" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">');
  memo1.lines.Add   ('  <CstmrDrctDbtInitn>');
  memo1.lines.Add   ('    <GrpHdr>');
  memo1.lines.Add   ('      <MsgId>'+ex.obfuscator+'</MsgId>');
  memo1.lines.Add   ('      <CreDtTm>'+date+'</CreDtTm>');
  FillChar(a,sizeof(a),0);
  while (a.address = 0) or ((i = data.countBankAccount2Person()) and (ba2p.person <> k.person)) do
  begin
    with TForm5.Create(self) do begin
      Caption := 'Wer soll das Geld bekommen?';
      k := data.findPersonByPK(modalShow(data));
      for i := 1 to data.countAddress2person(toAddress) do
      begin
        if data.getAddress2person(i, toAddress).main then
          a := data.findAddressByPK(data.getAddress2person(i, toAddress).address);
      end;
      for i := 0 to data.countBankAccount2Person() do
      begin
        ba2p := data.getBankAccount2Person(i);
        if ba2p.person = k.person then
           break;
      end;
      if a.address = 0 then
      begin
        if MessageDlg('Diese Person hat keine Hauptaddresse, möchten Sie jemand anderes finden?',mtError,[mbYes,mbCancel],0)=mrCancel then
          exit;
      end;
      memo1.lines.Add   ('      <InitgPty><Nm>' + k.firstname + ' ' + k.lastname + '</Nm></InitgPty>');
      if (i = data.countBankAccount2Person()) and (ba2p.person <> k.person) then
      begin
        if MessageDlg(k.firstname+' ' + k.lastname+' besitzt leider kein Empfängerkonto. Eine Lastschrift ist nicht möglich!',mtError,[mbYes,mbCancel],0) = mrCancel then
           exit;
      end;
    end;
  end;


  ShowMessage('Die Übertragung wird mit der ID ' + ex.obfuscator + ' referenziert, damit nicht zurückverfolgt werden kann um was es sich konkret handelt!');

  


  if MessageDlg('Möchten Sie genaue informationen über die Initiatorgesellschaft mitgeben? (empfohlen)',mtConfirmation,[mbYes,mbNo],0)=mryes then
  begin
    memo1.lines.Add ('      <InitgPty>');
    memo1.lines.Add ('        <Nm>' + k.firstname+ ' ' + k.lastname + '</Nm>');
    memo1.lines.Add ('        <PstlAdr>');

    memo1.lines.Add ('          <StrtNm>' + a.street + '</StrtNm>');
    memo1.lines.Add ('          <BldgNb>' + a.streetNumber + '</BldgNb>');
    memo1.lines.Add ('          <PstCd>' + a.zip + '</PstCd>');
    memo1.lines.Add ('          <TwnNm>' + a.city + '</TwnNm>');
    memo1.lines.Add ('          <Ctry>' + a.country + '</Ctry>');
    memo1.lines.Add ('        </PstlAdr>');
    memo1.lines.Add ('      </InitgPty>');
  end;

  comment := MessageDlg('Soll ich den Export kommentieren?', mtCustom, [mbYesToAll,mbNoToAll], 0) = mrYesToAll;

  memo1.lines.Add   ('    </GrpHdr>');

  
  memo1.lines.Add   ('    <PmtInf>');
  memo1.lines.Add   ('      <PmtInfId>' + InputBox('Interne ID','Bitte eine interne ID eingeben.','ID'+date) + '</PmtInfId>');
  //memo1.lines.Add   ('      <PmtMtd>DD</PmtMtd>');
  memo1.lines.Add   ('      <BtchBookg>false</BtchBookg>');
  memo1.lines.Add   ('      <NbOfTxs>0</NbOfTxs>');
  memo1.lines.Add   ('      <CtrlSum>0</CtrlSum>');
  //memo1.lines.Add   ('      <PmtTpInf>');
  //memo1.lines.Add   ('        <SvcLvl><Cd>SEPA</Cd></SvcLvl>');
  //memo1.lines.Add   ('        <LclInstrm><Cd>CORE</Cd></LclInstrm>');
  //memo1.lines.Add   ('        <SeqTp>RCUR</SeqTp>');
  //memo1.lines.Add   ('      </PmtTpInf>');
  memo1.lines.Add   ('      <ReqdColltnDt>'+date+'</ReqdColltnDt>');
  memo1.lines.Add   ('      <Cdtr><Nm>' + k.firstname+ ' ' + k.lastname + '</Nm></Cdtr>');
  memo1.lines.Add   ('      <CdtrAcct><Id><IBAN>' + data.findBankAccountByPK(ba2p.bankAccount).iban + '</IBAN></Id></CdtrAcct>');
  memo1.lines.Add   ('      <CdtrAgt><FinInstnId><BIC>' + data.findBankAccountByPK(ba2p.bankAccount).iban + '</BIC></FinInstnId></CdtrAgt>');
  memo1.lines.Add   ('      <CdtrSchmeId><Id><PrvtId><Othr><Id>' + ex.obfuscator + '</Id></Othr></PrvtId></Id></CdtrSchmeId>');
  memo1.lines.Add   ('    </PmtInf>');

  for i := 1 to data.countPerson() do
  begin
    k := data.getPerson(i);

    // skip duplicates.
    if k.duplicate <> 0 then
      continue;

    for m := data.countBankAccount2Person() downto 1 do
      if data.getBankAccount2Person(m).person = k.person then
        break;

    // skip those who have no bankaccount.
    if m = 1 then
      continue;
    ba := data.findBankAccountByPK(data.getBankAccount2Person(m).bankAccount);

    exp := data.findExportPersonentificationByPK(data.insertExportPersonentification(k.person, generateObfuscator('999'), ex.exportentificationId));

    amountInCent:=0;

    // costs
    for j := 0 to data.countMembershipMonth() do
    begin
      with data.getMembershipMonth(j) do
      begin
        if person = k.person then
        begin
          amountInCent := amountInCent + data.findMembershipCalculationByPK(membershipCalculation).costsInCent;
          // payments already did
          for m := 0 to data.countPaymentAssociation() do
          begin
            with data.findPaymentAssociationByPK(m) do
            begin
              if forMembershipMonth = membershipMonth then
              begin
                with data.findMembershipCalculationByPK(membershipCalculation) do
                begin
                  if intervalMonth = 0 then
                  begin
                    if intervalDay = 0 then
                    begin
                      if comment then ShowMessage('Lustig, ' + data.findTitleByPK(k.title).name + ' ' + k.firstname + ' ' + k.lastname + ' braucht nicht bezahlen weil kein Zahlinterval existiert!');
                      Continue;
                    end;
                  end;

                  with data.findCalculationMonthByPK(memberMonth) do
                  begin

                    if costsIncent <= 0 then
                      if comment then ShowMessage('Lustig, ' + data.findTitleByPK(k.title).name + ' ' + k.firstname + ' ' + k.lastname + ' bezahlt keine Mitgliedskosten!');

                    if intervalDay = 0 then
                    begin
                      if intervalMonth mod currentMonth = 0 then
                      begin
                        amountInCent := amountInCent - amountCent;
                      end;
                    end
                    else if intervalMonth <> 0 then
                    begin
                      ShowMessage('Schade, ' + data.findTitleByPK(k.title).name + ' ' + k.firstname + ' ' + k.lastname + ' kann nicht abgerechnet werden weil der Interval sowohl Tage, alsauch Monate überspringt. Keine Ahnung wie ich das berechnen sollte.');
                    end;

                  end;
                end;

                if amountInCent > 2000 then
                  if comment then ShowMessage('Krass, ' + data.findTitleByPK(k.title).name + ' ' + k.firstname + ' ' + k.lastname + ' bezahlt ganze ' + FormatFloat('#,##0.00', amountincent / 100) + ' EURO');
              end;
            end;
          end;
        end;
      end;
    end;

    if amountInCent > 0 then
    begin
      memo1.lines.Add ('    <DrctDbtTxInf>');
      memo1.lines.Add ('      <PmtId>');
      memo1.lines.Add ('        <EndToEndId>' + ex.obfuscator + '</EndToEndId>');
      memo1.lines.Add ('      </PmtId>');
      memo1.lines.Add ('      <InstdAmt Ccy="EUR">'+FormatFloat('0.00', amountincent / 100)+'</InstdAmt>');
      sum := sum + amountincent/100;
      memo1.lines.Add ('      <DrctDbtTx>');
      memo1.lines.Add ('        <MndtId>' + exp.internal + '</MndtId>');
      memo1.lines.Add ('        <DtOfSgntr>' + date + '</DtOfSgntr>');
      memo1.lines.Add ('        <AmdmntInd>true</AmdmntInd>');
      memo1.lines.Add ('      </DrctDbtTx>');

      inc(txs);

      memo1.lines.Add ('      <DbtrAgt>');
      memo1.lines.Add ('        <FinInstnId>');
      memo1.lines.Add ('          <BIC>');
      memo1.lines.Add ('            '+ba.bic);
      memo1.lines.Add ('          </BIC>');
      memo1.lines.Add ('        </FinInstnId>');
      memo1.lines.Add ('      </DbtrAgt>');

      memo1.lines.Add ('      <DbtrAcct>');
      memo1.lines.Add ('        <Id>');
      memo1.lines.Add ('          <IBAN>');
      memo1.lines.Add ('            '+ba.iban);
      memo1.lines.Add ('          </IBAN>');
      memo1.lines.Add ('        </Id>');
      memo1.lines.Add ('      </DbtrAcct>');
      memo1.lines.Add ('    </DrctDbtTxInf>');
    end;
  end;


  memo1.lines.Add   ('  </CstmrDrctDbtInitn>');
  memo1.lines.Add   ('</Document>');
  memo1.lines.Insert(8,'      <CtrlSum>'+FormatFloat('0.00', sum)+'</CtrlSum>');
  memo1.lines.Insert(8,'      <NbOfTxs>'+inttostr(txs)+'</NbOfTxs>');


  sd := TSaveDialog.Create(self);
  i := 0;
  while fileexists(sd.FileName) do
  begin
    inc(i);
    sd.FileName:='ID' + date + '(' + inttostr(i) + ').xml';
  end;
  sd.Filter :='XML-Dateien|*.XML';
  sd.DefaultExt := 'XML';
  sd.Title := 'Speichern der SEPA-Lastschrift';
  if sd.Execute then
  begin
    if FileExists(sd.FileName) then
      if MessageDlg('Die Datei existiert bereits, möchten Sie die Datei überschreiben?', mtConfirmation, [mbYes,mbCancel], 0) = mrCancel then
        exit;
    memo1.lines.SaveToFile(sd.FileName);
    ShowMessage('Export erfolgreich.');
  end;
  sd.Free;
end;

end.
