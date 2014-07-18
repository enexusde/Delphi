unit MemberShipFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,simv, Menus,DonationAndMembershipForm;

type
  TMemberShipForm = class(TForm)
    Label1: TLabel;
    ListView1: TListView;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    NeuenAbrechnungszyklus1: TMenuItem;
    arifzuordnen1: TMenuItem;
    N1: TMenuItem;
    function acceptMM(p:PMembershipMonth):boolean;
    function acceptP(p:PPaymentAssociation):boolean;
    function currentMonth(p:PCalculationMonth):boolean;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NeuenAbrechnungszyklus1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure ListView1AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    pid:int64;
    ddata:TDAOsimv;
    procedure ChangeTarif(Sender: TObject);
  end;

var
  MemberShipForm: TMemberShipForm;

implementation

uses DateUtils;

{$R *.dfm}


function TMemberShipForm.acceptMM(p:PMembershipMonth):boolean;
begin
  result := p.person = pid;
end;

function TMemberShipForm.acceptP(p:PPaymentAssociation):boolean;
begin
  result := ddata.findMembershipMonthByPK(p.forMembershipMonth).person = pid;
end;

function TMemberShipForm.currentMonth(p:PCalculationMonth):boolean;
begin
  result := (p.currentYear = CurrentYear) and (p.currentMonth = monthof(now));
end;

procedure TMemberShipForm.FormShow(Sender: TObject);
var i,j,amount:integer;
    m:TMembershipMonth;
    c:TCalculationMonth;
    mc:TMembershipCalculation;
    eing:string;
    calculated:boolean;
    sum:int64;
begin
  sum:=0;
  calculated:=false;
  for i := 1 to ddata.countMembershipMonth(acceptMM) do
  begin
    with listview1.Items.Add do
    begin
      m := ddata.getMembershipMonth(i, acceptMM);
      data:=Pointer(m.membershipMonth);
      c := ddata.findCalculationMonthByPK(m.membershipMonth);
      Caption := inttostr(c.currentYear) + '-';
      if c.currentMonth < 10 then
       caption := caption + '0';
      caption := caption + inttostr(c.currentMonth);
      mc := ddata.findMembershipCalculationByPK(m.membershipCalculation);
      if (c.currentYear = CurrentYear) and (c.currentMonth = MonthOf(now())) then
        calculated:=true;
      sum :=  sum - ddata.findMembershipCalculationByPK(m.membershipCalculation).costsInCent;

      for j := 1 to ddata.countPaymentAssociation() do
        sum := sum + ddata.getPaymentAssociation(j).amountCent;
    end;
  end;

  if ddata.countMembershipMonth(acceptMM) = 0 then
  begin
    if ddata.countMembershipCalculation() > 0 then
    begin
      mc := ddata.getMembershipCalculation(1);
    end
    else
    begin
      mc.membershipCalculation := 0;
    end;
  end;
  if not calculated then
    case (MessageDlg('Die Abrechnung ist noch nicht vollständig. Wenn die Person noch Mitglied ist möchte ich gerne die Abrechnung beginnen.',mtConfirmation,[mbYes,mbNo,mbCancel],0)) of
      mrYes:
        begin
          if ddata.countCalculationMonth(currentMonth) = 0 then
            i := ddata.insertCalculationMonth(CurrentYear,MonthOf(now()))
          else
            i := ddata.getCalculationMonth(1, currentMonth).calculationMonth;
          ddata.insertMembershipMonth(pid,i,false,mc.membershipCalculation);
        end;
    end;



  if sum < 0 then label9.Font.Color := clRed
  else label9.Font.Color := clGreen;
  Label9.Caption := ftos(sum/100);
end;

procedure TMemberShipForm.BitBtn1Click(Sender: TObject);
begin
  ModalResult:=mrok;
end;

procedure TMemberShipForm.NeuenAbrechnungszyklus1Click(Sender: TObject);
var m,d,a:word;
    n:string;
    i:integer;
begin
  n := inputbox('Neuer Tarif','Wie soll der Tarif heißen?','Standart');
  for i := 0 to ddata.countMembershipCalculation() do
  begin
    with ddata.getMembershipCalculation(i,nil) do
      if n = name then
        if MessageDlg('Dieser Name ist schon vergeben!',mtWarning,[mbCancel, mbIgnore],0) = mrcancel then
          exit;
  end;
  m:=strtoint(inputbox('Neuer Tarif', 'Welcher Monatsinterval soll ' + n + ' haben(0 für keinen)?','1'));
  d:=strtoint(inputbox('Neuer Tarif', 'Welcher Tagesinterval soll ' + n + ' haben(0 für keinen)?','0'));
  a:=round(stof(inputbox('Neuer Tarif', 'Wie hoch ist der Preis für ' + n + '?','0,00 EURO'))*100);

  for i := 0 to ddata.countMembershipCalculation() do
  begin
    with ddata.getMembershipCalculation(i) do
      if (m = intervalMonth) and (d = intervalDay) then
        if MessageDlg('Dieser Tarif existiert schon unter dem Namen ' + name + ' in der höhe von ' + ftos(costsInCent / 100) + '. ',mtWarning,[mbCancel, mbIgnore],0) = mrcancel then
          exit;
  end;

  if MessageDlg('Sind Sie sicher dass der Tarif ' + n + ' in höhe von ' + ftos(a/100) + ' erstellt werden soll?',mtConfirmation,[mbYes,mbCancel],0) <> mrYes then
    exit;
  ddata.insertMembershipCalculation(n, d, a, m);

end;

procedure TMemberShipForm.PopupMenu1Popup(Sender: TObject);
var i:integer;
    f:TMenuItem;
begin

  PopupMenu1.Items.Items[2].Clear;
  for i := 1 to ddata.countMembershipCalculation() do
  begin
    f := TMenuItem.create(self);
    with ddata.getMembershipCalculation(i) do
    begin
      f.tag := membershipCalculation;
      f.Caption := name + ' ('+ftos(costsInCent / 100)+')';
    end;
    f.OnClick := ChangeTarif;
    PopupMenu1.Items.Items[2].Add(f);
  end;
end;

procedure TMemberShipForm.ChangeTarif(Sender: TObject);
var mi: TMenuItem absolute sender;
    c: TMembershipCalculation;
begin
  c := ddata.findMembershipCalculationByPK (mi.Tag);
  if c.membershipCalculation = 0 then
    ShowMessage('Keinen solchen Tarif gefunden!')
  else
  begin
    ddata.updatemembershipCalculationOfMembershipMonth(int64(listview1.Selected.data),c.membershipCalculation);
     listview1.Selected.SubItems.Clear;
     listview1.Repaint;
  end

end;

procedure TMemberShipForm.ListView1AdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
var costs:int64;
    j:integer;
    payed:int64;
begin
  DefaultDraw:=true;
  if item.SubItems.Count=0 then
  begin
    payed:=0;
    costs:=0;
    with ddata.findMembershipMonthByPK(int64(item.data)) do
    begin
      with ddata.findMembershipCalculationByPK(membershipCalculation) do
      begin
        ShowMessage(name);
        item.SubItems.Add(name);
        item.SubItems.Add(ftos(costsInCent / 100));
        costs:=costs+costsInCent;
      end;
      for j:= 1 to ddata.countPaymentAssociation() do
      begin
        with ddata.getPaymentAssociation(j) do
        begin
          if forMembershipMonth =membershipMonth then
          begin
            payed := payed + amountCent;
          end;
        end;
      end;
    end;
    item.SubItems.Add(ftos(payed/100));
    item.SubItems.Add(ftos((payed-costs)/100))
  end;
end;

end.
