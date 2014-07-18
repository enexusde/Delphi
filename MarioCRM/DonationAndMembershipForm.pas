unit DonationAndMembershipForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Buttons,simv,findperson,strutils;

type
  TDonationAndMembership = class(TForm)
    Label1: TLabel;
    Payer: TEdit;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    MaskEdit1: TMaskEdit;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    Memo1: TMemo;
    Bevel3: TBevel;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Amount1: TLabel;
    Bevel2: TBevel;
    Note1: TLabel;
    Donation1: TMaskEdit;
    Find1: TBitBtn;
    Fee1: TMaskEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Amount2: TLabel;
    Bevel1: TBevel;
    Note2: TLabel;
    Donation2: TMaskEdit;
    Find2: TBitBtn;
    Fee2: TMaskEdit;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Amount3: TLabel;
    Bevel4: TBevel;
    Note3: TLabel;
    Donation3: TMaskEdit;
    Find3: TBitBtn;
    Fee3: TMaskEdit;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Amount4: TLabel;
    Bevel5: TBevel;
    Note4: TLabel;
    Donation4: TMaskEdit;
    Find4: TBitBtn;
    Fee4: TMaskEdit;
    Panel5: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Amount5: TLabel;
    Bevel6: TBevel;
    Note5: TLabel;
    Donation5: TMaskEdit;
    Find5: TBitBtn;
    Fee5: TMaskEdit;
    Panel6: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Amount6: TLabel;
    Bevel7: TBevel;
    Note6: TLabel;
    Donation6: TMaskEdit;
    Find6: TBitBtn;
    Fee6: TMaskEdit;
    Panel7: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Amount7: TLabel;
    Bevel8: TBevel;
    Note7: TLabel;
    Donation7: TMaskEdit;
    Find7: TBitBtn;
    Fee7: TMaskEdit;
    Panel8: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Amount8: TLabel;
    Bevel9: TBevel;
    Note8: TLabel;
    Donation8: TMaskEdit;
    Find8: TBitBtn;
    Fee8: TMaskEdit;
    Panel9: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Amount9: TLabel;
    Bevel10: TBevel;
    Note9: TLabel;
    Donation9: TMaskEdit;
    Find9: TBitBtn;
    Fee9: TMaskEdit;
    Panel10: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Amount10: TLabel;
    Bevel11: TBevel;
    Note10: TLabel;
    Donation10: TMaskEdit;
    Find10: TBitBtn;
    Fee10: TMaskEdit;
    Panel11: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Amount11: TLabel;
    Bevel12: TBevel;
    Note11: TLabel;
    Donation11: TMaskEdit;
    Find11: TBitBtn;
    Fee11: TMaskEdit;
    Panel12: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Amount12: TLabel;
    Bevel13: TBevel;
    Note12: TLabel;
    Donation12: TMaskEdit;
    Find12: TBitBtn;
    Fee12: TMaskEdit;
    Panel13: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Amount13: TLabel;
    Bevel14: TBevel;
    Note13: TLabel;
    Donation13: TMaskEdit;
    Find13: TBitBtn;
    Fee13: TMaskEdit;
    Panel14: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Amount14: TLabel;
    Bevel15: TBevel;
    Note14: TLabel;
    Donation14: TMaskEdit;
    Find14: TBitBtn;
    Fee14: TMaskEdit;
    Panel15: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Amount15: TLabel;
    Bevel16: TBevel;
    Note15: TLabel;
    Donation15: TMaskEdit;
    Find15: TBitBtn;
    Fee15: TMaskEdit;
    Panel16: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Amount16: TLabel;
    Bevel17: TBevel;
    Note16: TLabel;
    Donation16: TMaskEdit;
    Find16: TBitBtn;
    Fee16: TMaskEdit;
    Panel17: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Amount17: TLabel;
    Bevel18: TBevel;
    Note17: TLabel;
    Donation17: TMaskEdit;
    Find17: TBitBtn;
    Fee17: TMaskEdit;
    Panel18: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Amount18: TLabel;
    Bevel19: TBevel;
    Note18: TLabel;
    Donation18: TMaskEdit;
    Find18: TBitBtn;
    Fee18: TMaskEdit;
    Panel19: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    Amount19: TLabel;
    Bevel20: TBevel;
    Note19: TLabel;
    Donation19: TMaskEdit;
    Find19: TBitBtn;
    Fee19: TMaskEdit;
    Panel20: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Amount20: TLabel;
    Bevel21: TBevel;
    Note20: TLabel;
    Donation20: TMaskEdit;
    Find20: TBitBtn;
    Fee20: TMaskEdit;
    Panel21: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Amount21: TLabel;
    Bevel22: TBevel;
    Note21: TLabel;
    Donation21: TMaskEdit;
    Find21: TBitBtn;
    Fee21: TMaskEdit;
    Panel22: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    Amount22: TLabel;
    Bevel23: TBevel;
    Note22: TLabel;
    Donation22: TMaskEdit;
    Find22: TBitBtn;
    Fee22: TMaskEdit;
    Panel23: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Amount23: TLabel;
    Bevel24: TBevel;
    Note23: TLabel;
    Donation23: TMaskEdit;
    Find23: TBitBtn;
    Fee23: TMaskEdit;
    Panel24: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Amount24: TLabel;
    Bevel25: TBevel;
    Note24: TLabel;
    Donation24: TMaskEdit;
    Find24: TBitBtn;
    Fee24: TMaskEdit;
    Panel25: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    Amount25: TLabel;
    Bevel26: TBevel;
    Note25: TLabel;
    Donation25: TMaskEdit;
    Find25: TBitBtn;
    Fee25: TMaskEdit;
    Panel26: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    Amount26: TLabel;
    Bevel27: TBevel;
    Note26: TLabel;
    Donation26: TMaskEdit;
    Find26: TBitBtn;
    Fee26: TMaskEdit;
    Panel27: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Amount27: TLabel;
    Bevel28: TBevel;
    Note27: TLabel;
    Donation27: TMaskEdit;
    Find27: TBitBtn;
    Fee27: TMaskEdit;
    Panel28: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Amount28: TLabel;
    Bevel29: TBevel;
    Note28: TLabel;
    Donation28: TMaskEdit;
    Find28: TBitBtn;
    Fee28: TMaskEdit;
    Panel29: TPanel;
    Label60: TLabel;
    Label61: TLabel;
    Amount29: TLabel;
    Bevel30: TBevel;
    Note29: TLabel;
    Donation29: TMaskEdit;
    Find29: TBitBtn;
    Fee29: TMaskEdit;
    Panel30: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    Amount30: TLabel;
    Bevel31: TBevel;
    Note30: TLabel;
    Donation30: TMaskEdit;
    Find30: TBitBtn;
    Fee30: TMaskEdit;
    Panel31: TPanel;
    Label64: TLabel;
    Label65: TLabel;
    Amount31: TLabel;
    Bevel32: TBevel;
    Note31: TLabel;
    Donation31: TMaskEdit;
    Find31: TBitBtn;
    Fee31: TMaskEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure Find1Click(Sender: TObject);
    procedure FeeChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    pid:int64;
    ddata:TDAOsimv;
    procedure refresh();
  end;

var
  DonationAndMembership: TDonationAndMembership;

function sToF(s:string):extended;
function fToS(f:extended):string;
implementation

uses DateUtils;

{$R *.dfm}

procedure TDonationAndMembership.BitBtn4Click(Sender: TObject);
begin
  with TForm5.Create(self) do
  begin
     pid:=modalShow(self.ddata);
     with ddata.findPersonByPK(pid) do
     begin
       payer.Text:= ddata.findTitleByPk(title).name+' '+firstname +' '+ lastname;
     end;
  end;  refresh();
end;

procedure TDonationAndMembership.Find1Click(Sender: TObject);
var btn:TBitBtn absolute Sender;
begin
  with TForm5.Create(self) do
  begin
     with ddata.findPersonByPK(modalShow(self.ddata)) do
     begin
       btn.Tag := person;
       btn.Caption := ddata.findTitleByPK(title).name + ' ' + firstname + ' ' + lastname;
     end;
  end;
  refresh();
end;

function sToF(s:string):extended;
begin
  s := trim(s);
  if rightstr(s,4)=' EUR' then
    s := leftstr(s,length(s)-4);
  if rightstr(s,5)=' EURO' then
    s := leftstr(s,length(s)-4);
  if rightstr(s,2)='--' then
    s := leftstr(s,length(s) - 2) + '00';
  result := strtofloat(s);
end;

function fToS(f:extended):string;
var i:integer;
begin
  CurrencyDecimals:=2;
  if f = round(f) then
  begin
    if f < 0 then result := floattostr(f)+',00 EUR'
    else result := floattostr(f)+',-- EUR';
  end
  else if f*10=round(f*10) then
    result := floattostr(f)+'0 EUR'
  else
    result := floattostr(f)+' EUR';
  for i := length(result) to 12 do
  begin
    result := ' ' + result;
  end;
end;


procedure TDonationAndMembership.refresh();
var i:integer;
    a:double;
    fee,donation:TMaskEdit;
    note, amount :TLabel;
    p:TPanel;
begin
  a := 0;
  for i := 1 to 31 do
  begin
    p := TPanel(ScrollBox1.FindChildControl('Panel' + inttostr(i)));
    if p <> nil then
    begin
      amount := TLabel(self.FindComponent('Amount' + inttostr(i)));
      note := TLabel(self.FindComponent('Note' + inttostr(i)));
      fee := TMaskEdit(self.FindComponent('Fee' + inttostr(i)));
      donation := TMaskEdit(self.FindComponent('Donation' + inttostr(i)));
      if fee <> nil then
        if amount <> nil then
        begin
          amount.Caption := ftos(stof(donation.text) + stof(fee.text));
          a := a + round(stof(donation.text) + stof(fee.text))
        end;
    end;
  end;
  maskedit1.Text := ftos(a);
end;



procedure TDonationAndMembership.FeeChange(Sender: TObject);
begin
  refresh();
end;

procedure TDonationAndMembership.BitBtn2Click(Sender: TObject);
var i,j:integer;
    b:TBitBtn;
    lastMonth: TMembershipMonth;
    foundLastMonth:boolean;
    pm:TPayment;
    donation,fee:TMaskEdit;
begin
  if pid = 0 then
  begin
    MessageDlg('Bitte wählen Sie einen Einzahler.',mtError,[mbOK],0);
    BitBtn4.Click;
    exit;
  end;
  pm := ddata.findPaymentByPK(ddata.insertPayment(0,round(stof(maskedit1.Text)*100),now(),pid, memo1.Text));
  foundLastMonth := false;
  for i := 1 to 31 do
  begin
    b := TBitBtn(self.FindComponent('Find' + inttostr(i)));
    donation := TMaskEdit(self.FindComponent('Donation' + inttostr(i)));
    fee := TMaskEdit(self.FindComponent('Fee' + inttostr(i)));
    if b.Tag <> 0 then
    begin

      if fee = nil then
        continue;
      if b = nil then
        continue;
      if donation = nil then
        continue;

      with ddata.findPersonByPK(int64(b.Tag)) do
      begin
        for j := 1 to ddata.countMembershipMonth(nil) do
        begin
          if ddata.getMembershipMonth(j).person = person then
          begin
            foundLastMonth := true;
            lastMonth := ddata.getMembershipMonth(j);
          end;
        end;
        if not foundLastMonth then
          showmessage('Kein gültiger Abrechnungsmonat für '+ddata.findTitleByPK(title).name + ' ' +firstname + ' ' + lastname + '! Die Person ist vielleicht kein Mitglied mehr.')
        else
        begin
          if stof(fee.Text) > 0 then
            with ddata.findCalculationMonthByPK(lastMonth.memberMonth) do
            begin
              if YearOf(now()) <> currentYear then
                ShowMessage('Wir haben ' + inttostr(YearOf(now())) + ' aber die aktuellste Abrechnung ist vom '+inttostr(currentYear))
              else if monthof(now()) <> currentMonth then
                ShowMessage('Es ist der Monat ' + inttostr(MonthOf(now())) + ' aber die letzte Abrechnung ist vom '+inttostr(currentMonth))
              else
              begin
                ddata.insertPaymentAssociation(pm.payment, lastMonth.membershipMonth,round(stof(fee.Text) * 100));
              end;
            end;
          if stof(donation.Text) > 0 then
          begin
            ddata.insertDonation(pm.payment,person,round(stof(donation.Text)*100),false)
          end;
        end;
      end;
    end;
  end;
  ModalResult:=mrOk;
end;

procedure TDonationAndMembership.FormShow(Sender: TObject);
begin
  memo1.Text:='Bareinzahlung vom '+DateTimeToStr(now());
end;

end.
