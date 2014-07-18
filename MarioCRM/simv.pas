{NOTE: This file has been generated automatically 
 by eNexus DataBase Designer grade:12
 (cpuid:-4617319919904955457). 

 Please do not change this file by manual, 
 it may cause get in conflict in later generations.
}
unit simv;
interface
uses SysUtils;
const assert=false;
type Pk = Int64;
type Firstname = String[128];
type Lastname = String[128];
type Foreginkey = Int64;
type ForeginkeyNullable = Int64;
type String1to64 = String[64];
type Year = Word;
type Month = Smallint;
type Complete = Boolean;
type AmountInCent = Word;
type DateAndTime = TDateTime;
type Addressline = String[255];
type Number = Word;
type pPerson = ^TPerson;
     TPerson = Packed Record
       person: Int64;
       duplicate: Int64;
       memberno: String[128];
       firstname: String[128];
       lastname: String[128];
       title: Int64;
       since: TDateTime;
     end;
     APerson = function(accept:pPerson):boolean of object;

type pTitle = ^TTitle;
     TTitle = Packed Record
       title: Int64;
       name: String[64];
     end;
     ATitle = function(accept:pTitle):boolean of object;

type pCalculationMonth = ^TCalculationMonth;
     TCalculationMonth = Packed Record
       calculationMonth: Int64;
       currentYear: Word;
       currentMonth: Smallint;
     end;
     ACalculationMonth = function(accept:pCalculationMonth):boolean of object;

type pMembershipMonth = ^TMembershipMonth;
     TMembershipMonth = Packed Record
       membershipMonth: Int64;
       person: Int64;
       memberMonth: Int64;
       complete: Boolean;
       membershipCalculation: Int64;
     end;
     AMembershipMonth = function(accept:pMembershipMonth):boolean of object;

type pPayment = ^TPayment;
     TPayment = Packed Record
       payment: Int64;
       bankAccount: Int64;
       amountCentEuro: Int64;
       dateAndTime: TDateTime;
       person: Int64;
       description: String[64];
     end;
     APayment = function(accept:pPayment):boolean of object;

type pBankAccount = ^TBankAccount;
     TBankAccount = Packed Record
       bankAccount: Int64;
       iban: String[64];
       bic: String[64];
     end;
     ABankAccount = function(accept:pBankAccount):boolean of object;

type pBankAccount2Person = ^TBankAccount2Person;
     TBankAccount2Person = Packed Record
       bankAccount2person: Int64;
       bankAccount: Int64;
       person: Int64;
     end;
     ABankAccount2Person = function(accept:pBankAccount2Person):boolean of object;

type pPaymentAssociation = ^TPaymentAssociation;
     TPaymentAssociation = Packed Record
       paymentAssociation: Int64;
       payment: Int64;
       forMembershipMonth: Int64;
       amountCent: Int64;
     end;
     APaymentAssociation = function(accept:pPaymentAssociation):boolean of object;

type pDonation = ^TDonation;
     TDonation = Packed Record
       donation: Int64;
       payment: Int64;
       person: Int64;
       amountCent: Int64;
       attested: Boolean;
     end;
     ADonation = function(accept:pDonation):boolean of object;

type pAddress = ^TAddress;
     TAddress = Packed Record
       address: Int64;
       street: String[255];
       streetNumber: String[255];
       zip: String[255];
       county: String[255];
       country: String[255];
       city: String[255];
     end;
     AAddress = function(accept:pAddress):boolean of object;

type pAddress2person = ^TAddress2person;
     TAddress2person = Packed Record
       address2person: Int64;
       person: Int64;
       address: Int64;
       main: Boolean;
       addressappendix: String[64];
     end;
     AAddress2person = function(accept:pAddress2person):boolean of object;

type pMembershipComment = ^TMembershipComment;
     TMembershipComment = Packed Record
       membershipComment: Int64;
       text: String[64];
       created: TDateTime;
       membershipMonth: Int64;
     end;
     AMembershipComment = function(accept:pMembershipComment):boolean of object;

type pMembershipCalculation = ^TMembershipCalculation;
     TMembershipCalculation = Packed Record
       membershipCalculation: Int64;
       name: String[64];
       intervalDay: Word;
       costsInCent: Word;
       intervalMonth: Word;
     end;
     AMembershipCalculation = function(accept:pMembershipCalculation):boolean of object;

type pExportentification = ^TExportentification;
     TExportentification = Packed Record
       exportentificationId: Int64;
       recivient: Int64;
       dateAndTime: TDateTime;
       obfuscator: String[64];
     end;
     AExportentification = function(accept:pExportentification):boolean of object;

type pExportPersonentification = ^TExportPersonentification;
     TExportPersonentification = Packed Record
       exportPersonentificationId: Int64;
       exportentificationId: Int64;
       internal: String[64];
       person: Int64;
     end;
     AExportPersonentification = function(accept:pExportPersonentification):boolean of object;

     TPersonPK = Int64;
     TTitlePK = Int64;
     TCalculationMonthPK = Int64;
     TMembershipMonthPK = Int64;
     TPaymentPK = Int64;
     TBankAccountPK = Int64;
     TBankAccount2PersonPK = Int64;
     TPaymentAssociationPK = Int64;
     TDonationPK = Int64;
     TAddressPK = Int64;
     TAddress2personPK = Int64;
     TMembershipCommentPK = Int64;
     TMembershipCalculationPK = Int64;
     TExportentificationPK = Int64;
     TExportPersonentificationPK = Int64;
type TDAOsimv = class
       constructor Create(filenamePerson:String; filenameTitle:String; filenameCalculationMonth:String; filenameMembershipMonth:String; filenamePayment:String; filenameBankAccount:String; filenameBankAccount2Person:String; filenamePaymentAssociation:String; filenameDonation:String; filenameAddress:String; filenameAddress2person:String; filenameMembershipComment:String; filenameMembershipCalculation:String; filenameExportentification:String; filenameExportPersonentification:String);
      public
       // Person
       function countPerson(acceptor: aPerson=nil):Int64;
       function getPerson(i:Int64; acceptor: aPerson=nil):TPerson;
function findPersonByPK(pk:TPersonPK):TPerson;
function updateDuplicateOfPerson(pk:TPersonPK;duplicate:ForeginkeyNullable):boolean;
function updateMembernoOfPerson(pk:TPersonPK;memberno:Lastname):boolean;
function updateFirstnameOfPerson(pk:TPersonPK;firstname:Firstname):boolean;
function updateLastnameOfPerson(pk:TPersonPK;lastname:Lastname):boolean;
function updateTitleOfPerson(pk:TPersonPK;title:ForeginkeyNullable):boolean;
function updateSinceOfPerson(pk:TPersonPK;since:DateAndTime):boolean;
       function insertPerson( duplicate: ForeginkeyNullable; memberno: Lastname; firstname: Firstname; lastname: Lastname; title: ForeginkeyNullable; since: DateAndTime):TPersonPK;
       // Title
       function countTitle(acceptor: aTitle=nil):Int64;
       function getTitle(i:Int64; acceptor: aTitle=nil):TTitle;
function findTitleByPK(pk:TTitlePK):TTitle;
function updateNameOfTitle(pk:TTitlePK;name:String1to64):boolean;
       function insertTitle( name: String1to64):TTitlePK;
       // CalculationMonth
       function countCalculationMonth(acceptor: aCalculationMonth=nil):Int64;
       function getCalculationMonth(i:Int64; acceptor: aCalculationMonth=nil):TCalculationMonth;
function findCalculationMonthByPK(pk:TCalculationMonthPK):TCalculationMonth;
function updateCurrentYearOfCalculationMonth(pk:TCalculationMonthPK;currentYear:Year):boolean;
function updateCurrentMonthOfCalculationMonth(pk:TCalculationMonthPK;currentMonth:Month):boolean;
       function insertCalculationMonth( currentYear: Year; currentMonth: Month):TCalculationMonthPK;
       // MembershipMonth
       function countMembershipMonth(acceptor: aMembershipMonth=nil):Int64;
       function getMembershipMonth(i:Int64; acceptor: aMembershipMonth=nil):TMembershipMonth;
function findMembershipMonthByPK(pk:TMembershipMonthPK):TMembershipMonth;
function updatePersonOfMembershipMonth(pk:TMembershipMonthPK;person:Foreginkey):boolean;
function updateMemberMonthOfMembershipMonth(pk:TMembershipMonthPK;memberMonth:Foreginkey):boolean;
function updateCompleteOfMembershipMonth(pk:TMembershipMonthPK;complete:Complete):boolean;
function updateMembershipCalculationOfMembershipMonth(pk:TMembershipMonthPK;membershipCalculation:Foreginkey):boolean;
       function insertMembershipMonth( person: Foreginkey; memberMonth: Foreginkey; complete: Complete; membershipCalculation: Foreginkey):TMembershipMonthPK;
       // Payment
       function countPayment(acceptor: aPayment=nil):Int64;
       function getPayment(i:Int64; acceptor: aPayment=nil):TPayment;
function findPaymentByPK(pk:TPaymentPK):TPayment;
function updateBankAccountOfPayment(pk:TPaymentPK;bankAccount:ForeginkeyNullable):boolean;
function updateAmountCentEuroOfPayment(pk:TPaymentPK;amountCentEuro:Foreginkey):boolean;
function updateDateAndTimeOfPayment(pk:TPaymentPK;dateAndTime:DateAndTime):boolean;
function updatePersonOfPayment(pk:TPaymentPK;person:Foreginkey):boolean;
function updateDescriptionOfPayment(pk:TPaymentPK;description:String1to64):boolean;
       function insertPayment( bankAccount: ForeginkeyNullable; amountCentEuro: Foreginkey; dateAndTime: DateAndTime; person: Foreginkey; description: String1to64):TPaymentPK;
       // BankAccount
       function countBankAccount(acceptor: aBankAccount=nil):Int64;
       function getBankAccount(i:Int64; acceptor: aBankAccount=nil):TBankAccount;
function findBankAccountByPK(pk:TBankAccountPK):TBankAccount;
function updateIbanOfBankAccount(pk:TBankAccountPK;iban:String1to64):boolean;
function updateBicOfBankAccount(pk:TBankAccountPK;bic:String1to64):boolean;
       function insertBankAccount( iban: String1to64; bic: String1to64):TBankAccountPK;
       // BankAccount2Person
       function countBankAccount2Person(acceptor: aBankAccount2Person=nil):Int64;
       function getBankAccount2Person(i:Int64; acceptor: aBankAccount2Person=nil):TBankAccount2Person;
function findBankAccount2PersonByPK(pk:TBankAccount2PersonPK):TBankAccount2Person;
function updateBankAccountOfBankAccount2Person(pk:TBankAccount2PersonPK;bankAccount:Foreginkey):boolean;
function updatePersonOfBankAccount2Person(pk:TBankAccount2PersonPK;person:Foreginkey):boolean;
       function insertBankAccount2Person( bankAccount: Foreginkey; person: Foreginkey):TBankAccount2PersonPK;
       // PaymentAssociation
       function countPaymentAssociation(acceptor: aPaymentAssociation=nil):Int64;
       function getPaymentAssociation(i:Int64; acceptor: aPaymentAssociation=nil):TPaymentAssociation;
function findPaymentAssociationByPK(pk:TPaymentAssociationPK):TPaymentAssociation;
function updatePaymentOfPaymentAssociation(pk:TPaymentAssociationPK;payment:Foreginkey):boolean;
function updateForMembershipMonthOfPaymentAssociation(pk:TPaymentAssociationPK;forMembershipMonth:Foreginkey):boolean;
function updateAmountCentOfPaymentAssociation(pk:TPaymentAssociationPK;amountCent:Foreginkey):boolean;
       function insertPaymentAssociation( payment: Foreginkey; forMembershipMonth: Foreginkey; amountCent: Foreginkey):TPaymentAssociationPK;
       // Donation
       function countDonation(acceptor: aDonation=nil):Int64;
       function getDonation(i:Int64; acceptor: aDonation=nil):TDonation;
function findDonationByPK(pk:TDonationPK):TDonation;
function updatePaymentOfDonation(pk:TDonationPK;payment:Foreginkey):boolean;
function updatePersonOfDonation(pk:TDonationPK;person:Foreginkey):boolean;
function updateAmountCentOfDonation(pk:TDonationPK;amountCent:Foreginkey):boolean;
function updateAttestedOfDonation(pk:TDonationPK;attested:Complete):boolean;
       function insertDonation( payment: Foreginkey; person: Foreginkey; amountCent: Foreginkey; attested: Complete):TDonationPK;
       // Address
       function countAddress(acceptor: aAddress=nil):Int64;
       function getAddress(i:Int64; acceptor: aAddress=nil):TAddress;
function findAddressByPK(pk:TAddressPK):TAddress;
function updateStreetOfAddress(pk:TAddressPK;street:Addressline):boolean;
function updateStreetNumberOfAddress(pk:TAddressPK;streetNumber:Addressline):boolean;
function updateZipOfAddress(pk:TAddressPK;zip:Addressline):boolean;
function updateCountyOfAddress(pk:TAddressPK;county:Addressline):boolean;
function updateCountryOfAddress(pk:TAddressPK;country:Addressline):boolean;
function updateCityOfAddress(pk:TAddressPK;city:Addressline):boolean;
       function insertAddress( street: Addressline; streetNumber: Addressline; zip: Addressline; county: Addressline; country: Addressline; city: Addressline):TAddressPK;
       // Address2person
       function countAddress2person(acceptor: aAddress2person=nil):Int64;
       function getAddress2person(i:Int64; acceptor: aAddress2person=nil):TAddress2person;
function findAddress2personByPK(pk:TAddress2personPK):TAddress2person;
function updatePersonOfAddress2person(pk:TAddress2personPK;person:Foreginkey):boolean;
function updateAddressOfAddress2person(pk:TAddress2personPK;address:Foreginkey):boolean;
function updateMainOfAddress2person(pk:TAddress2personPK;main:Complete):boolean;
function updateAddressappendixOfAddress2person(pk:TAddress2personPK;addressappendix:String1to64):boolean;
       function insertAddress2person( person: Foreginkey; address: Foreginkey; main: Complete; addressappendix: String1to64):TAddress2personPK;
       // MembershipComment
       function countMembershipComment(acceptor: aMembershipComment=nil):Int64;
       function getMembershipComment(i:Int64; acceptor: aMembershipComment=nil):TMembershipComment;
function findMembershipCommentByPK(pk:TMembershipCommentPK):TMembershipComment;
function updateTextOfMembershipComment(pk:TMembershipCommentPK;text:String1to64):boolean;
function updateCreatedOfMembershipComment(pk:TMembershipCommentPK;created:DateAndTime):boolean;
function updateMembershipMonthOfMembershipComment(pk:TMembershipCommentPK;membershipMonth:Foreginkey):boolean;
       function insertMembershipComment( text: String1to64; created: DateAndTime; membershipMonth: Foreginkey):TMembershipCommentPK;
       // MembershipCalculation
       function countMembershipCalculation(acceptor: aMembershipCalculation=nil):Int64;
       function getMembershipCalculation(i:Int64; acceptor: aMembershipCalculation=nil):TMembershipCalculation;
function findMembershipCalculationByPK(pk:TMembershipCalculationPK):TMembershipCalculation;
function updateNameOfMembershipCalculation(pk:TMembershipCalculationPK;name:String1to64):boolean;
function updateIntervalDayOfMembershipCalculation(pk:TMembershipCalculationPK;intervalDay:Number):boolean;
function updateCostsInCentOfMembershipCalculation(pk:TMembershipCalculationPK;costsInCent:Number):boolean;
function updateIntervalMonthOfMembershipCalculation(pk:TMembershipCalculationPK;intervalMonth:Number):boolean;
       function insertMembershipCalculation( name: String1to64; intervalDay: Number; costsInCent: Number; intervalMonth: Number):TMembershipCalculationPK;
       // Exportentification
       function countExportentification(acceptor: aExportentification=nil):Int64;
       function getExportentification(i:Int64; acceptor: aExportentification=nil):TExportentification;
function findExportentificationByPK(pk:TExportentificationPK):TExportentification;
function updateRecivientOfExportentification(pk:TExportentificationPK;recivient:Foreginkey):boolean;
function updateDateAndTimeOfExportentification(pk:TExportentificationPK;dateAndTime:DateAndTime):boolean;
function updateObfuscatorOfExportentification(pk:TExportentificationPK;obfuscator:String1to64):boolean;
       function insertExportentification( recivient: Foreginkey; dateAndTime: DateAndTime; obfuscator: String1to64):TExportentificationPK;
       // ExportPersonentification
       function countExportPersonentification(acceptor: aExportPersonentification=nil):Int64;
       function getExportPersonentification(i:Int64; acceptor: aExportPersonentification=nil):TExportPersonentification;
function findExportPersonentificationByPK(pk:TExportPersonentificationPK):TExportPersonentification;
function updateExportentificationIdOfExportPersonentification(pk:TExportPersonentificationPK;exportentificationId:Foreginkey):boolean;
function updateInternalOfExportPersonentification(pk:TExportPersonentificationPK;internal:String1to64):boolean;
function updatePersonOfExportPersonentification(pk:TExportPersonentificationPK;person:Foreginkey):boolean;
       function insertExportPersonentification( exportentificationId: Foreginkey; internal: String1to64; person: Foreginkey):TExportPersonentificationPK;
      private
       fperson:file of TPerson;
       ftitle:file of TTitle;
       fcalculation_month:file of TCalculationMonth;
       fmembership_month:file of TMembershipMonth;
       fpayment:file of TPayment;
       fbank_account:file of TBankAccount;
       fbank_account2Person:file of TBankAccount2Person;
       fpayment_association:file of TPaymentAssociation;
       fdonation:file of TDonation;
       faddress:file of TAddress;
       faddress2person:file of TAddress2person;
       fmembership_comment:file of TMembershipComment;
       fmembership_calculation:file of TMembershipCalculation;
       fexport_identification:file of TExportentification;
       fexport_person_identification:file of TExportPersonentification;
     end;
implementation
constructor TDAOsimv.Create(filenamePerson:String; filenameTitle:String; filenameCalculationMonth:String; filenameMembershipMonth:String; filenamePayment:String; filenameBankAccount:String; filenameBankAccount2Person:String; filenamePaymentAssociation:String; filenameDonation:String; filenameAddress:String; filenameAddress2person:String; filenameMembershipComment:String; filenameMembershipCalculation:String; filenameExportentification:String; filenameExportPersonentification:String);
begin
  AssignFile(fperson, filenamePerson);
  if not FileExists(filenamePerson) then Rewrite(fperson) else ReSet(fperson); Close(fperson);
  AssignFile(ftitle, filenameTitle);
  if not FileExists(filenameTitle) then Rewrite(ftitle) else ReSet(ftitle); Close(ftitle);
  AssignFile(fcalculation_month, filenameCalculationMonth);
  if not FileExists(filenameCalculationMonth) then Rewrite(fcalculation_month) else ReSet(fcalculation_month); Close(fcalculation_month);
  AssignFile(fmembership_month, filenameMembershipMonth);
  if not FileExists(filenameMembershipMonth) then Rewrite(fmembership_month) else ReSet(fmembership_month); Close(fmembership_month);
  AssignFile(fpayment, filenamePayment);
  if not FileExists(filenamePayment) then Rewrite(fpayment) else ReSet(fpayment); Close(fpayment);
  AssignFile(fbank_account, filenameBankAccount);
  if not FileExists(filenameBankAccount) then Rewrite(fbank_account) else ReSet(fbank_account); Close(fbank_account);
  AssignFile(fbank_account2Person, filenameBankAccount2Person);
  if not FileExists(filenameBankAccount2Person) then Rewrite(fbank_account2Person) else ReSet(fbank_account2Person); Close(fbank_account2Person);
  AssignFile(fpayment_association, filenamePaymentAssociation);
  if not FileExists(filenamePaymentAssociation) then Rewrite(fpayment_association) else ReSet(fpayment_association); Close(fpayment_association);
  AssignFile(fdonation, filenameDonation);
  if not FileExists(filenameDonation) then Rewrite(fdonation) else ReSet(fdonation); Close(fdonation);
  AssignFile(faddress, filenameAddress);
  if not FileExists(filenameAddress) then Rewrite(faddress) else ReSet(faddress); Close(faddress);
  AssignFile(faddress2person, filenameAddress2person);
  if not FileExists(filenameAddress2person) then Rewrite(faddress2person) else ReSet(faddress2person); Close(faddress2person);
  AssignFile(fmembership_comment, filenameMembershipComment);
  if not FileExists(filenameMembershipComment) then Rewrite(fmembership_comment) else ReSet(fmembership_comment); Close(fmembership_comment);
  AssignFile(fmembership_calculation, filenameMembershipCalculation);
  if not FileExists(filenameMembershipCalculation) then Rewrite(fmembership_calculation) else ReSet(fmembership_calculation); Close(fmembership_calculation);
  AssignFile(fexport_identification, filenameExportentification);
  if not FileExists(filenameExportentification) then Rewrite(fexport_identification) else ReSet(fexport_identification); Close(fexport_identification);
  AssignFile(fexport_person_identification, filenameExportPersonentification);
  if not FileExists(filenameExportPersonentification) then Rewrite(fexport_person_identification) else ReSet(fexport_person_identification); Close(fexport_person_identification);
end;
function TDAOsimv.countPerson(acceptor: aPerson):Int64;
var e: TPerson;
begin
  result := 0;
  Reset (fperson);
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fperson);
end;
function TDAOsimv.getPerson(i:Int64; acceptor: aPerson=nil):TPerson;
var e: TPerson;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fperson);
        exit;
      end;
    end;
  end;
  CloseFile(fperson);
end;
function TDAOsimv.findPersonByPK(pk:Pk):TPerson;
var e: TPerson;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if e.person = pk then
    begin
      result := e;
      CloseFile(fperson);
      exit;
    end;
  end;
  CloseFile(fperson);
end;
function TDAOsimv.updateDuplicateOfPerson(pk:Pk;duplicate:ForeginkeyNullable):boolean;
var e: TPerson;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  result := false;
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if e.person=pk then
    begin
      Seek(fperson, no);
      e.duplicate := duplicate;
      Write(fperson, e);
      CloseFile(fperson);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fperson);
end;
function TDAOsimv.updateMembernoOfPerson(pk:Pk;memberno:Lastname):boolean;
var e: TPerson;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  result := false;
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if e.person=pk then
    begin
      Seek(fperson, no);
      e.memberno := memberno;
      Write(fperson, e);
      CloseFile(fperson);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fperson);
end;
function TDAOsimv.updateFirstnameOfPerson(pk:Pk;firstname:Firstname):boolean;
var e: TPerson;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  result := false;
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if e.person=pk then
    begin
      Seek(fperson, no);
      e.firstname := firstname;
      Write(fperson, e);
      CloseFile(fperson);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fperson);
end;
function TDAOsimv.updateLastnameOfPerson(pk:Pk;lastname:Lastname):boolean;
var e: TPerson;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  result := false;
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if e.person=pk then
    begin
      Seek(fperson, no);
      e.lastname := lastname;
      Write(fperson, e);
      CloseFile(fperson);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fperson);
end;
function TDAOsimv.updateTitleOfPerson(pk:Pk;title:ForeginkeyNullable):boolean;
var e: TPerson;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  result := false;
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if e.person=pk then
    begin
      Seek(fperson, no);
      e.title := title;
      Write(fperson, e);
      CloseFile(fperson);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fperson);
end;
function TDAOsimv.updateSinceOfPerson(pk:Pk;since:DateAndTime):boolean;
var e: TPerson;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fperson);
  result := false;
  while not Eof(fperson) do
  begin
    BlockRead(fperson, e, 1);
    if e.person=pk then
    begin
      Seek(fperson, no);
      e.since := since;
      Write(fperson, e);
      CloseFile(fperson);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fperson);
end;
function TDAOsimv.insertPerson( duplicate: ForeginkeyNullable; memberno: Lastname; firstname: Firstname; lastname: Lastname; title: ForeginkeyNullable; since: DateAndTime):Pk;
var n: TPerson;
begin
  Result := countPerson() + 1;
  ReSet(fperson);
  Seek(fperson, Result - 1); // index = number - 1
  n.person := Result;
  n.duplicate := duplicate;
  n.memberno := memberno;
  n.firstname := firstname;
  n.lastname := lastname;
  n.title := title;
  n.since := since;
  Write(fperson,n);
  CloseFile(fperson);
end;
function TDAOsimv.countTitle(acceptor: aTitle):Int64;
var e: TTitle;
begin
  result := 0;
  Reset (ftitle);
  while not Eof(ftitle) do
  begin
    BlockRead(ftitle, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(ftitle);
end;
function TDAOsimv.getTitle(i:Int64; acceptor: aTitle=nil):TTitle;
var e: TTitle;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (ftitle);
  while not Eof(ftitle) do
  begin
    BlockRead(ftitle, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(ftitle);
        exit;
      end;
    end;
  end;
  CloseFile(ftitle);
end;
function TDAOsimv.findTitleByPK(pk:Pk):TTitle;
var e: TTitle;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (ftitle);
  while not Eof(ftitle) do
  begin
    BlockRead(ftitle, e, 1);
    if e.title = pk then
    begin
      result := e;
      CloseFile(ftitle);
      exit;
    end;
  end;
  CloseFile(ftitle);
end;
function TDAOsimv.updateNameOfTitle(pk:Pk;name:String1to64):boolean;
var e: TTitle;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (ftitle);
  result := false;
  while not Eof(ftitle) do
  begin
    BlockRead(ftitle, e, 1);
    if e.title=pk then
    begin
      Seek(ftitle, no);
      e.name := name;
      Write(ftitle, e);
      CloseFile(ftitle);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(ftitle);
end;
function TDAOsimv.insertTitle( name: String1to64):Pk;
var n: TTitle;
begin
  Result := countTitle() + 1;
  ReSet(ftitle);
  Seek(ftitle, Result - 1); // index = number - 1
  n.title := Result;
  n.name := name;
  Write(ftitle,n);
  CloseFile(ftitle);
end;
function TDAOsimv.countCalculationMonth(acceptor: aCalculationMonth):Int64;
var e: TCalculationMonth;
begin
  result := 0;
  Reset (fcalculation_month);
  while not Eof(fcalculation_month) do
  begin
    BlockRead(fcalculation_month, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fcalculation_month);
end;
function TDAOsimv.getCalculationMonth(i:Int64; acceptor: aCalculationMonth=nil):TCalculationMonth;
var e: TCalculationMonth;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fcalculation_month);
  while not Eof(fcalculation_month) do
  begin
    BlockRead(fcalculation_month, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fcalculation_month);
        exit;
      end;
    end;
  end;
  CloseFile(fcalculation_month);
end;

function TDAOsimv.findCalculationMonthByPK(pk:Pk):TCalculationMonth;
var e: TCalculationMonth;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fcalculation_month);
  while not Eof(fcalculation_month) do
  begin
    BlockRead(fcalculation_month, e, 1);
    if e.calculationMonth = pk then
    begin
      result := e;
      CloseFile(fcalculation_month);
      exit;
    end;
  end;
  CloseFile(fcalculation_month);
end;
function TDAOsimv.updateCurrentYearOfCalculationMonth(pk:Pk;currentYear:Year):boolean;
var e: TCalculationMonth;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fcalculation_month);
  result := false;
  while not Eof(fcalculation_month) do
  begin
    BlockRead(fcalculation_month, e, 1);
    if e.calculationMonth=pk then
    begin
      Seek(fcalculation_month, no);
      e.currentYear := currentYear;
      Write(fcalculation_month, e);
      CloseFile(fcalculation_month);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fcalculation_month);
end;
function TDAOsimv.updateCurrentMonthOfCalculationMonth(pk:Pk;currentMonth:Month):boolean;
var e: TCalculationMonth;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fcalculation_month);
  result := false;
  while not Eof(fcalculation_month) do
  begin
    BlockRead(fcalculation_month, e, 1);
    if e.calculationMonth=pk then
    begin
      Seek(fcalculation_month, no);
      e.currentMonth := currentMonth;
      Write(fcalculation_month, e);
      CloseFile(fcalculation_month);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fcalculation_month);
end;
function TDAOsimv.insertCalculationMonth( currentYear: Year; currentMonth: Month):Pk;
var n: TCalculationMonth;
begin
  Result := countCalculationMonth() + 1;
  ReSet(fcalculation_month);
  Seek(fcalculation_month, Result - 1); // index = number - 1
  n.calculationMonth := Result;
  n.currentYear := currentYear;
  n.currentMonth := currentMonth;
  Write(fcalculation_month,n);
  CloseFile(fcalculation_month);
end;
function TDAOsimv.countMembershipMonth(acceptor: aMembershipMonth):Int64;
var e: TMembershipMonth;
begin
  result := 0;
  Reset (fmembership_month);
  while not Eof(fmembership_month) do
  begin
    BlockRead(fmembership_month, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fmembership_month);
end;
function TDAOsimv.getMembershipMonth(i:Int64; acceptor: aMembershipMonth=nil):TMembershipMonth;
var e: TMembershipMonth;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_month);
  while not Eof(fmembership_month) do
  begin
    BlockRead(fmembership_month, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fmembership_month);
        exit;
      end;
    end;
  end;
  CloseFile(fmembership_month);
end;
function TDAOsimv.findMembershipMonthByPK(pk:Pk):TMembershipMonth;
var e: TMembershipMonth;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_month);
  while not Eof(fmembership_month) do
  begin
    BlockRead(fmembership_month, e, 1);
    if e.membershipMonth = pk then
    begin
      result := e;
      CloseFile(fmembership_month);
      exit;
    end;
  end;
  CloseFile(fmembership_month);
end;
function TDAOsimv.updatePersonOfMembershipMonth(pk:Pk;person:Foreginkey):boolean;
var e: TMembershipMonth;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_month);
  result := false;
  while not Eof(fmembership_month) do
  begin
    BlockRead(fmembership_month, e, 1);
    if e.membershipMonth=pk then
    begin
      Seek(fmembership_month, no);
      e.person := person;
      Write(fmembership_month, e);
      CloseFile(fmembership_month);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_month);
end;
function TDAOsimv.updateMemberMonthOfMembershipMonth(pk:Pk;memberMonth:Foreginkey):boolean;
var e: TMembershipMonth;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_month);
  result := false;
  while not Eof(fmembership_month) do
  begin
    BlockRead(fmembership_month, e, 1);
    if e.membershipMonth=pk then
    begin
      Seek(fmembership_month, no);
      e.memberMonth := memberMonth;
      Write(fmembership_month, e);
      CloseFile(fmembership_month);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_month);
end;
function TDAOsimv.updateCompleteOfMembershipMonth(pk:Pk;complete:Complete):boolean;
var e: TMembershipMonth;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_month);
  result := false;
  while not Eof(fmembership_month) do
  begin
    BlockRead(fmembership_month, e, 1);
    if e.membershipMonth=pk then
    begin
      Seek(fmembership_month, no);
      e.complete := complete;
      Write(fmembership_month, e);
      CloseFile(fmembership_month);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_month);
end;
function TDAOsimv.updateMembershipCalculationOfMembershipMonth(pk:Pk;membershipCalculation:Foreginkey):boolean;
var e: TMembershipMonth;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_month);
  result := false;
  while not Eof(fmembership_month) do
  begin
    BlockRead(fmembership_month, e, 1);
    if e.membershipMonth=pk then
    begin
      Seek(fmembership_month, no);
      e.membershipCalculation := membershipCalculation;
      Write(fmembership_month, e);
      CloseFile(fmembership_month);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_month);
end;
function TDAOsimv.insertMembershipMonth( person: Foreginkey; memberMonth: Foreginkey; complete: Complete; membershipCalculation: Foreginkey):Pk;
var n: TMembershipMonth;
begin
  Result := countMembershipMonth() + 1;
  ReSet(fmembership_month);
  Seek(fmembership_month, Result - 1); // index = number - 1
  n.membershipMonth := Result;
  n.person := person;
  n.memberMonth := memberMonth;
  n.complete := complete;
  n.membershipCalculation := membershipCalculation;
  Write(fmembership_month,n);
  CloseFile(fmembership_month);
end;
function TDAOsimv.countPayment(acceptor: aPayment):Int64;
var e: TPayment;
begin
  result := 0;
  Reset (fpayment);
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.getPayment(i:Int64; acceptor: aPayment=nil):TPayment;
var e: TPayment;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment);
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fpayment);
        exit;
      end;
    end;
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.findPaymentByPK(pk:Pk):TPayment;
var e: TPayment;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment);
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if e.payment = pk then
    begin
      result := e;
      CloseFile(fpayment);
      exit;
    end;
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.updateBankAccountOfPayment(pk:Pk;bankAccount:ForeginkeyNullable):boolean;
var e: TPayment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment);
  result := false;
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if e.payment=pk then
    begin
      Seek(fpayment, no);
      e.bankAccount := bankAccount;
      Write(fpayment, e);
      CloseFile(fpayment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.updateAmountCentEuroOfPayment(pk:Pk;amountCentEuro:Foreginkey):boolean;
var e: TPayment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment);
  result := false;
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if e.payment=pk then
    begin
      Seek(fpayment, no);
      e.amountCentEuro := amountCentEuro;
      Write(fpayment, e);
      CloseFile(fpayment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.updateDateAndTimeOfPayment(pk:Pk;dateAndTime:DateAndTime):boolean;
var e: TPayment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment);
  result := false;
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if e.payment=pk then
    begin
      Seek(fpayment, no);
      e.dateAndTime := dateAndTime;
      Write(fpayment, e);
      CloseFile(fpayment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.updatePersonOfPayment(pk:Pk;person:Foreginkey):boolean;
var e: TPayment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment);
  result := false;
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if e.payment=pk then
    begin
      Seek(fpayment, no);
      e.person := person;
      Write(fpayment, e);
      CloseFile(fpayment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.updateDescriptionOfPayment(pk:Pk;description:String1to64):boolean;
var e: TPayment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment);
  result := false;
  while not Eof(fpayment) do
  begin
    BlockRead(fpayment, e, 1);
    if e.payment=pk then
    begin
      Seek(fpayment, no);
      e.description := description;
      Write(fpayment, e);
      CloseFile(fpayment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment);
end;
function TDAOsimv.insertPayment( bankAccount: ForeginkeyNullable; amountCentEuro: Foreginkey; dateAndTime: DateAndTime; person: Foreginkey; description: String1to64):Pk;
var n: TPayment;
begin
  Result := countPayment() + 1;
  ReSet(fpayment);
  Seek(fpayment, Result - 1); // index = number - 1
  n.payment := Result;
  n.bankAccount := bankAccount;
  n.amountCentEuro := amountCentEuro;
  n.dateAndTime := dateAndTime;
  n.person := person;
  n.description := description;
  Write(fpayment,n);
  CloseFile(fpayment);
end;
function TDAOsimv.countBankAccount(acceptor: aBankAccount):Int64;
var e: TBankAccount;
begin
  result := 0;
  Reset (fbank_account);
  while not Eof(fbank_account) do
  begin
    BlockRead(fbank_account, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fbank_account);
end;
function TDAOsimv.getBankAccount(i:Int64; acceptor: aBankAccount=nil):TBankAccount;
var e: TBankAccount;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account);
  while not Eof(fbank_account) do
  begin
    BlockRead(fbank_account, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fbank_account);
        exit;
      end;
    end;
  end;
  CloseFile(fbank_account);
end;
function TDAOsimv.findBankAccountByPK(pk:Pk):TBankAccount;
var e: TBankAccount;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account);
  while not Eof(fbank_account) do
  begin
    BlockRead(fbank_account, e, 1);
    if e.bankAccount = pk then
    begin
      result := e;
      CloseFile(fbank_account);
      exit;
    end;
  end;
  CloseFile(fbank_account);
end;
function TDAOsimv.updateIbanOfBankAccount(pk:Pk;iban:String1to64):boolean;
var e: TBankAccount;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account);
  result := false;
  while not Eof(fbank_account) do
  begin
    BlockRead(fbank_account, e, 1);
    if e.bankAccount=pk then
    begin
      Seek(fbank_account, no);
      e.iban := iban;
      Write(fbank_account, e);
      CloseFile(fbank_account);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fbank_account);
end;
function TDAOsimv.updateBicOfBankAccount(pk:Pk;bic:String1to64):boolean;
var e: TBankAccount;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account);
  result := false;
  while not Eof(fbank_account) do
  begin
    BlockRead(fbank_account, e, 1);
    if e.bankAccount=pk then
    begin
      Seek(fbank_account, no);
      e.bic := bic;
      Write(fbank_account, e);
      CloseFile(fbank_account);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fbank_account);
end;
function TDAOsimv.insertBankAccount( iban: String1to64; bic: String1to64):Pk;
var n: TBankAccount;
begin
  Result := countBankAccount() + 1;
  ReSet(fbank_account);
  Seek(fbank_account, Result - 1); // index = number - 1
  n.bankAccount := Result;
  n.iban := iban;
  n.bic := bic;
  Write(fbank_account,n);
  CloseFile(fbank_account);
end;
function TDAOsimv.countBankAccount2Person(acceptor: aBankAccount2Person):Int64;
var e: TBankAccount2Person;
begin
  result := 0;
  Reset (fbank_account2Person);
  while not Eof(fbank_account2Person) do
  begin
    BlockRead(fbank_account2Person, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fbank_account2Person);
end;
function TDAOsimv.getBankAccount2Person(i:Int64; acceptor: aBankAccount2Person=nil):TBankAccount2Person;
var e: TBankAccount2Person;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account2Person);
  while not Eof(fbank_account2Person) do
  begin
    BlockRead(fbank_account2Person, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fbank_account2Person);
        exit;
      end;
    end;
  end;
  CloseFile(fbank_account2Person);
end;
function TDAOsimv.findBankAccount2PersonByPK(pk:Pk):TBankAccount2Person;
var e: TBankAccount2Person;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account2Person);
  while not Eof(fbank_account2Person) do
  begin
    BlockRead(fbank_account2Person, e, 1);
    if e.bankAccount2person = pk then
    begin
      result := e;
      CloseFile(fbank_account2Person);
      exit;
    end;
  end;
  CloseFile(fbank_account2Person);
end;
function TDAOsimv.updateBankAccountOfBankAccount2Person(pk:Pk;bankAccount:Foreginkey):boolean;
var e: TBankAccount2Person;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account2Person);
  result := false;
  while not Eof(fbank_account2Person) do
  begin
    BlockRead(fbank_account2Person, e, 1);
    if e.bankAccount2person=pk then
    begin
      Seek(fbank_account2Person, no);
      e.bankAccount := bankAccount;
      Write(fbank_account2Person, e);
      CloseFile(fbank_account2Person);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fbank_account2Person);
end;
function TDAOsimv.updatePersonOfBankAccount2Person(pk:Pk;person:Foreginkey):boolean;
var e: TBankAccount2Person;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fbank_account2Person);
  result := false;
  while not Eof(fbank_account2Person) do
  begin
    BlockRead(fbank_account2Person, e, 1);
    if e.bankAccount2person=pk then
    begin
      Seek(fbank_account2Person, no);
      e.person := person;
      Write(fbank_account2Person, e);
      CloseFile(fbank_account2Person);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fbank_account2Person);
end;
function TDAOsimv.insertBankAccount2Person( bankAccount: Foreginkey; person: Foreginkey):Pk;
var n: TBankAccount2Person;
begin
  Result := countBankAccount2Person() + 1;
  ReSet(fbank_account2Person);
  Seek(fbank_account2Person, Result - 1); // index = number - 1
  n.bankAccount2person := Result;
  n.bankAccount := bankAccount;
  n.person := person;
  Write(fbank_account2Person,n);
  CloseFile(fbank_account2Person);
end;
function TDAOsimv.countPaymentAssociation(acceptor: aPaymentAssociation):Int64;
var e: TPaymentAssociation;
begin
  result := 0;
  Reset (fpayment_association);
  while not Eof(fpayment_association) do
  begin
    BlockRead(fpayment_association, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fpayment_association);
end;
function TDAOsimv.getPaymentAssociation(i:Int64; acceptor: aPaymentAssociation=nil):TPaymentAssociation;
var e: TPaymentAssociation;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment_association);
  while not Eof(fpayment_association) do
  begin
    BlockRead(fpayment_association, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fpayment_association);
        exit;
      end;
    end;
  end;
  CloseFile(fpayment_association);
end;
function TDAOsimv.findPaymentAssociationByPK(pk:Pk):TPaymentAssociation;
var e: TPaymentAssociation;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment_association);
  while not Eof(fpayment_association) do
  begin
    BlockRead(fpayment_association, e, 1);
    if e.paymentAssociation = pk then
    begin
      result := e;
      CloseFile(fpayment_association);
      exit;
    end;
  end;
  CloseFile(fpayment_association);
end;
function TDAOsimv.updatePaymentOfPaymentAssociation(pk:Pk;payment:Foreginkey):boolean;
var e: TPaymentAssociation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment_association);
  result := false;
  while not Eof(fpayment_association) do
  begin
    BlockRead(fpayment_association, e, 1);
    if e.paymentAssociation=pk then
    begin
      Seek(fpayment_association, no);
      e.payment := payment;
      Write(fpayment_association, e);
      CloseFile(fpayment_association);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment_association);
end;
function TDAOsimv.updateForMembershipMonthOfPaymentAssociation(pk:Pk;forMembershipMonth:Foreginkey):boolean;
var e: TPaymentAssociation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment_association);
  result := false;
  while not Eof(fpayment_association) do
  begin
    BlockRead(fpayment_association, e, 1);
    if e.paymentAssociation=pk then
    begin
      Seek(fpayment_association, no);
      e.forMembershipMonth := forMembershipMonth;
      Write(fpayment_association, e);
      CloseFile(fpayment_association);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment_association);
end;
function TDAOsimv.updateAmountCentOfPaymentAssociation(pk:Pk;amountCent:Foreginkey):boolean;
var e: TPaymentAssociation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fpayment_association);
  result := false;
  while not Eof(fpayment_association) do
  begin
    BlockRead(fpayment_association, e, 1);
    if e.paymentAssociation=pk then
    begin
      Seek(fpayment_association, no);
      e.amountCent := amountCent;
      Write(fpayment_association, e);
      CloseFile(fpayment_association);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fpayment_association);
end;
function TDAOsimv.insertPaymentAssociation( payment: Foreginkey; forMembershipMonth: Foreginkey; amountCent: Foreginkey):Pk;
var n: TPaymentAssociation;
begin
  Result := countPaymentAssociation() + 1;
  ReSet(fpayment_association);
  Seek(fpayment_association, Result - 1); // index = number - 1
  n.paymentAssociation := Result;
  n.payment := payment;
  n.forMembershipMonth := forMembershipMonth;
  n.amountCent := amountCent;
  Write(fpayment_association,n);
  CloseFile(fpayment_association);
end;
function TDAOsimv.countDonation(acceptor: aDonation):Int64;
var e: TDonation;
begin
  result := 0;
  Reset (fdonation);
  while not Eof(fdonation) do
  begin
    BlockRead(fdonation, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fdonation);
end;
function TDAOsimv.getDonation(i:Int64; acceptor: aDonation=nil):TDonation;
var e: TDonation;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fdonation);
  while not Eof(fdonation) do
  begin
    BlockRead(fdonation, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fdonation);
        exit;
      end;
    end;
  end;
  CloseFile(fdonation);
end;
function TDAOsimv.findDonationByPK(pk:Pk):TDonation;
var e: TDonation;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fdonation);
  while not Eof(fdonation) do
  begin
    BlockRead(fdonation, e, 1);
    if e.donation = pk then
    begin
      result := e;
      CloseFile(fdonation);
      exit;
    end;
  end;
  CloseFile(fdonation);
end;
function TDAOsimv.updatePaymentOfDonation(pk:Pk;payment:Foreginkey):boolean;
var e: TDonation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fdonation);
  result := false;
  while not Eof(fdonation) do
  begin
    BlockRead(fdonation, e, 1);
    if e.donation=pk then
    begin
      Seek(fdonation, no);
      e.payment := payment;
      Write(fdonation, e);
      CloseFile(fdonation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fdonation);
end;
function TDAOsimv.updatePersonOfDonation(pk:Pk;person:Foreginkey):boolean;
var e: TDonation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fdonation);
  result := false;
  while not Eof(fdonation) do
  begin
    BlockRead(fdonation, e, 1);
    if e.donation=pk then
    begin
      Seek(fdonation, no);
      e.person := person;
      Write(fdonation, e);
      CloseFile(fdonation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fdonation);
end;
function TDAOsimv.updateAmountCentOfDonation(pk:Pk;amountCent:Foreginkey):boolean;
var e: TDonation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fdonation);
  result := false;
  while not Eof(fdonation) do
  begin
    BlockRead(fdonation, e, 1);
    if e.donation=pk then
    begin
      Seek(fdonation, no);
      e.amountCent := amountCent;
      Write(fdonation, e);
      CloseFile(fdonation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fdonation);
end;
function TDAOsimv.updateAttestedOfDonation(pk:Pk;attested:Complete):boolean;
var e: TDonation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fdonation);
  result := false;
  while not Eof(fdonation) do
  begin
    BlockRead(fdonation, e, 1);
    if e.donation=pk then
    begin
      Seek(fdonation, no);
      e.attested := attested;
      Write(fdonation, e);
      CloseFile(fdonation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fdonation);
end;
function TDAOsimv.insertDonation( payment: Foreginkey; person: Foreginkey; amountCent: Foreginkey; attested: Complete):Pk;
var n: TDonation;
begin
  Result := countDonation() + 1;
  ReSet(fdonation);
  Seek(fdonation, Result - 1); // index = number - 1
  n.donation := Result;
  n.payment := payment;
  n.person := person;
  n.amountCent := amountCent;
  n.attested := attested;
  Write(fdonation,n);
  CloseFile(fdonation);
end;
function TDAOsimv.countAddress(acceptor: aAddress):Int64;
var e: TAddress;
begin
  result := 0;
  Reset (faddress);
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(faddress);
end;
function TDAOsimv.getAddress(i:Int64; acceptor: aAddress=nil):TAddress;
var e: TAddress;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(faddress);
        exit;
      end;
    end;
  end;
  CloseFile(faddress);
end;
function TDAOsimv.findAddressByPK(pk:Pk):TAddress;
var e: TAddress;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if e.address = pk then
    begin
      result := e;
      CloseFile(faddress);
      exit;
    end;
  end;
  CloseFile(faddress);
end;
function TDAOsimv.updateStreetOfAddress(pk:Pk;street:Addressline):boolean;
var e: TAddress;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  result := false;
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if e.address=pk then
    begin
      Seek(faddress, no);
      e.street := street;
      Write(faddress, e);
      CloseFile(faddress);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress);
end;
function TDAOsimv.updateStreetNumberOfAddress(pk:Pk;streetNumber:Addressline):boolean;
var e: TAddress;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  result := false;
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if e.address=pk then
    begin
      Seek(faddress, no);
      e.streetNumber := streetNumber;
      Write(faddress, e);
      CloseFile(faddress);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress);
end;
function TDAOsimv.updateZipOfAddress(pk:Pk;zip:Addressline):boolean;
var e: TAddress;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  result := false;
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if e.address=pk then
    begin
      Seek(faddress, no);
      e.zip := zip;
      Write(faddress, e);
      CloseFile(faddress);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress);
end;
function TDAOsimv.updateCountyOfAddress(pk:Pk;county:Addressline):boolean;
var e: TAddress;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  result := false;
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if e.address=pk then
    begin
      Seek(faddress, no);
      e.county := county;
      Write(faddress, e);
      CloseFile(faddress);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress);
end;
function TDAOsimv.updateCountryOfAddress(pk:Pk;country:Addressline):boolean;
var e: TAddress;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  result := false;
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if e.address=pk then
    begin
      Seek(faddress, no);
      e.country := country;
      Write(faddress, e);
      CloseFile(faddress);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress);
end;
function TDAOsimv.updateCityOfAddress(pk:Pk;city:Addressline):boolean;
var e: TAddress;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress);
  result := false;
  while not Eof(faddress) do
  begin
    BlockRead(faddress, e, 1);
    if e.address=pk then
    begin
      Seek(faddress, no);
      e.city := city;
      Write(faddress, e);
      CloseFile(faddress);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress);
end;
function TDAOsimv.insertAddress( street: Addressline; streetNumber: Addressline; zip: Addressline; county: Addressline; country: Addressline; city: Addressline):Pk;
var n: TAddress;
begin
  Result := countAddress() + 1;
  ReSet(faddress);
  Seek(faddress, Result - 1); // index = number - 1
  n.address := Result;
  n.street := street;
  n.streetNumber := streetNumber;
  n.zip := zip;
  n.county := county;
  n.country := country;
  n.city := city;
  Write(faddress,n);
  CloseFile(faddress);
end;
function TDAOsimv.countAddress2person(acceptor: aAddress2person):Int64;
var e: TAddress2person;
begin
  result := 0;
  Reset (faddress2person);
  while not Eof(faddress2person) do
  begin
    BlockRead(faddress2person, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(faddress2person);
end;
function TDAOsimv.getAddress2person(i:Int64; acceptor: aAddress2person=nil):TAddress2person;
var e: TAddress2person;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress2person);
  while not Eof(faddress2person) do
  begin
    BlockRead(faddress2person, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(faddress2person);
        exit;
      end;
    end;
  end;
  CloseFile(faddress2person);
end;
function TDAOsimv.findAddress2personByPK(pk:Pk):TAddress2person;
var e: TAddress2person;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (faddress2person);
  while not Eof(faddress2person) do
  begin
    BlockRead(faddress2person, e, 1);
    if e.address2person = pk then
    begin
      result := e;
      CloseFile(faddress2person);
      exit;
    end;
  end;
  CloseFile(faddress2person);
end;
function TDAOsimv.updatePersonOfAddress2person(pk:Pk;person:Foreginkey):boolean;
var e: TAddress2person;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress2person);
  result := false;
  while not Eof(faddress2person) do
  begin
    BlockRead(faddress2person, e, 1);
    if e.address2person=pk then
    begin
      Seek(faddress2person, no);
      e.person := person;
      Write(faddress2person, e);
      CloseFile(faddress2person);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress2person);
end;
function TDAOsimv.updateAddressOfAddress2person(pk:Pk;address:Foreginkey):boolean;
var e: TAddress2person;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress2person);
  result := false;
  while not Eof(faddress2person) do
  begin
    BlockRead(faddress2person, e, 1);
    if e.address2person=pk then
    begin
      Seek(faddress2person, no);
      e.address := address;
      Write(faddress2person, e);
      CloseFile(faddress2person);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress2person);
end;
function TDAOsimv.updateMainOfAddress2person(pk:Pk;main:Complete):boolean;
var e: TAddress2person;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress2person);
  result := false;
  while not Eof(faddress2person) do
  begin
    BlockRead(faddress2person, e, 1);
    if e.address2person=pk then
    begin
      Seek(faddress2person, no);
      e.main := main;
      Write(faddress2person, e);
      CloseFile(faddress2person);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress2person);
end;
function TDAOsimv.updateAddressappendixOfAddress2person(pk:Pk;addressappendix:String1to64):boolean;
var e: TAddress2person;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (faddress2person);
  result := false;
  while not Eof(faddress2person) do
  begin
    BlockRead(faddress2person, e, 1);
    if e.address2person=pk then
    begin
      Seek(faddress2person, no);
      e.addressappendix := addressappendix;
      Write(faddress2person, e);
      CloseFile(faddress2person);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(faddress2person);
end;
function TDAOsimv.insertAddress2person( person: Foreginkey; address: Foreginkey; main: Complete; addressappendix: String1to64):Pk;
var n: TAddress2person;
begin
  Result := countAddress2person() + 1;
  ReSet(faddress2person);
  Seek(faddress2person, Result - 1); // index = number - 1
  n.address2person := Result;
  n.person := person;
  n.address := address;
  n.main := main;
  n.addressappendix := addressappendix;
  Write(faddress2person,n);
  CloseFile(faddress2person);
end;
function TDAOsimv.countMembershipComment(acceptor: aMembershipComment):Int64;
var e: TMembershipComment;
begin
  result := 0;
  Reset (fmembership_comment);
  while not Eof(fmembership_comment) do
  begin
    BlockRead(fmembership_comment, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fmembership_comment);
end;
function TDAOsimv.getMembershipComment(i:Int64; acceptor: aMembershipComment=nil):TMembershipComment;
var e: TMembershipComment;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_comment);
  while not Eof(fmembership_comment) do
  begin
    BlockRead(fmembership_comment, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fmembership_comment);
        exit;
      end;
    end;
  end;
  CloseFile(fmembership_comment);
end;
function TDAOsimv.findMembershipCommentByPK(pk:Pk):TMembershipComment;
var e: TMembershipComment;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_comment);
  while not Eof(fmembership_comment) do
  begin
    BlockRead(fmembership_comment, e, 1);
    if e.membershipComment = pk then
    begin
      result := e;
      CloseFile(fmembership_comment);
      exit;
    end;
  end;
  CloseFile(fmembership_comment);
end;
function TDAOsimv.updateTextOfMembershipComment(pk:Pk;text:String1to64):boolean;
var e: TMembershipComment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_comment);
  result := false;
  while not Eof(fmembership_comment) do
  begin
    BlockRead(fmembership_comment, e, 1);
    if e.membershipComment=pk then
    begin
      Seek(fmembership_comment, no);
      e.text := text;
      Write(fmembership_comment, e);
      CloseFile(fmembership_comment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_comment);
end;
function TDAOsimv.updateCreatedOfMembershipComment(pk:Pk;created:DateAndTime):boolean;
var e: TMembershipComment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_comment);
  result := false;
  while not Eof(fmembership_comment) do
  begin
    BlockRead(fmembership_comment, e, 1);
    if e.membershipComment=pk then
    begin
      Seek(fmembership_comment, no);
      e.created := created;
      Write(fmembership_comment, e);
      CloseFile(fmembership_comment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_comment);
end;
function TDAOsimv.updateMembershipMonthOfMembershipComment(pk:Pk;membershipMonth:Foreginkey):boolean;
var e: TMembershipComment;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_comment);
  result := false;
  while not Eof(fmembership_comment) do
  begin
    BlockRead(fmembership_comment, e, 1);
    if e.membershipComment=pk then
    begin
      Seek(fmembership_comment, no);
      e.membershipMonth := membershipMonth;
      Write(fmembership_comment, e);
      CloseFile(fmembership_comment);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_comment);
end;
function TDAOsimv.insertMembershipComment( text: String1to64; created: DateAndTime; membershipMonth: Foreginkey):Pk;
var n: TMembershipComment;
begin
  Result := countMembershipComment() + 1;
  ReSet(fmembership_comment);
  Seek(fmembership_comment, Result - 1); // index = number - 1
  n.membershipComment := Result;
  n.text := text;
  n.created := created;
  n.membershipMonth := membershipMonth;
  Write(fmembership_comment,n);
  CloseFile(fmembership_comment);
end;
function TDAOsimv.countMembershipCalculation(acceptor: aMembershipCalculation):Int64;
var e: TMembershipCalculation;
begin
  result := 0;
  Reset (fmembership_calculation);
  while not Eof(fmembership_calculation) do
  begin
    BlockRead(fmembership_calculation, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.getMembershipCalculation(i:Int64; acceptor: aMembershipCalculation=nil):TMembershipCalculation;
var e: TMembershipCalculation;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_calculation);
  while not Eof(fmembership_calculation) do
  begin
    BlockRead(fmembership_calculation, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fmembership_calculation);
        exit;
      end;
    end;
  end;
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.findMembershipCalculationByPK(pk:Pk):TMembershipCalculation;
var e: TMembershipCalculation;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_calculation);
  while not Eof(fmembership_calculation) do
  begin
    BlockRead(fmembership_calculation, e, 1);
    if e.membershipCalculation = pk then
    begin
      result := e;
      CloseFile(fmembership_calculation);
      exit;
    end;
  end;
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.updateNameOfMembershipCalculation(pk:Pk;name:String1to64):boolean;
var e: TMembershipCalculation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_calculation);
  result := false;
  while not Eof(fmembership_calculation) do
  begin
    BlockRead(fmembership_calculation, e, 1);
    if e.membershipCalculation=pk then
    begin
      Seek(fmembership_calculation, no);
      e.name := name;
      Write(fmembership_calculation, e);
      CloseFile(fmembership_calculation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.updateIntervalDayOfMembershipCalculation(pk:Pk;intervalDay:Number):boolean;
var e: TMembershipCalculation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_calculation);
  result := false;
  while not Eof(fmembership_calculation) do
  begin
    BlockRead(fmembership_calculation, e, 1);
    if e.membershipCalculation=pk then
    begin
      Seek(fmembership_calculation, no);
      e.intervalDay := intervalDay;
      Write(fmembership_calculation, e);
      CloseFile(fmembership_calculation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.updateCostsInCentOfMembershipCalculation(pk:Pk;costsInCent:Number):boolean;
var e: TMembershipCalculation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_calculation);
  result := false;
  while not Eof(fmembership_calculation) do
  begin
    BlockRead(fmembership_calculation, e, 1);
    if e.membershipCalculation=pk then
    begin
      Seek(fmembership_calculation, no);
      e.costsInCent := costsInCent;
      Write(fmembership_calculation, e);
      CloseFile(fmembership_calculation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.updateIntervalMonthOfMembershipCalculation(pk:Pk;intervalMonth:Number):boolean;
var e: TMembershipCalculation;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fmembership_calculation);
  result := false;
  while not Eof(fmembership_calculation) do
  begin
    BlockRead(fmembership_calculation, e, 1);
    if e.membershipCalculation=pk then
    begin
      Seek(fmembership_calculation, no);
      e.intervalMonth := intervalMonth;
      Write(fmembership_calculation, e);
      CloseFile(fmembership_calculation);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.insertMembershipCalculation( name: String1to64; intervalDay: Number; costsInCent: Number; intervalMonth: Number):Pk;
var n: TMembershipCalculation;
begin
  Result := countMembershipCalculation() + 1;
  ReSet(fmembership_calculation);
  Seek(fmembership_calculation, Result - 1); // index = number - 1
  n.membershipCalculation := Result;
  n.name := name;
  n.intervalDay := intervalDay;
  n.costsInCent := costsInCent;
  n.intervalMonth := intervalMonth;
  Write(fmembership_calculation,n);
  CloseFile(fmembership_calculation);
end;
function TDAOsimv.countExportentification(acceptor: aExportentification):Int64;
var e: TExportentification;
begin
  result := 0;
  Reset (fexport_identification);
  while not Eof(fexport_identification) do
  begin
    BlockRead(fexport_identification, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fexport_identification);
end;
function TDAOsimv.getExportentification(i:Int64; acceptor: aExportentification=nil):TExportentification;
var e: TExportentification;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_identification);
  while not Eof(fexport_identification) do
  begin
    BlockRead(fexport_identification, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fexport_identification);
        exit;
      end;
    end;
  end;
  CloseFile(fexport_identification);
end;
function TDAOsimv.findExportentificationByPK(pk:Pk):TExportentification;
var e: TExportentification;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_identification);
  while not Eof(fexport_identification) do
  begin
    BlockRead(fexport_identification, e, 1);
    if e.exportentificationId = pk then
    begin
      result := e;
      CloseFile(fexport_identification);
      exit;
    end;
  end;
  CloseFile(fexport_identification);
end;
function TDAOsimv.updateRecivientOfExportentification(pk:Pk;recivient:Foreginkey):boolean;
var e: TExportentification;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_identification);
  result := false;
  while not Eof(fexport_identification) do
  begin
    BlockRead(fexport_identification, e, 1);
    if e.exportentificationId=pk then
    begin
      Seek(fexport_identification, no);
      e.recivient := recivient;
      Write(fexport_identification, e);
      CloseFile(fexport_identification);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fexport_identification);
end;
function TDAOsimv.updateDateAndTimeOfExportentification(pk:Pk;dateAndTime:DateAndTime):boolean;
var e: TExportentification;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_identification);
  result := false;
  while not Eof(fexport_identification) do
  begin
    BlockRead(fexport_identification, e, 1);
    if e.exportentificationId=pk then
    begin
      Seek(fexport_identification, no);
      e.dateAndTime := dateAndTime;
      Write(fexport_identification, e);
      CloseFile(fexport_identification);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fexport_identification);
end;
function TDAOsimv.updateObfuscatorOfExportentification(pk:Pk;obfuscator:String1to64):boolean;
var e: TExportentification;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_identification);
  result := false;
  while not Eof(fexport_identification) do
  begin
    BlockRead(fexport_identification, e, 1);
    if e.exportentificationId=pk then
    begin
      Seek(fexport_identification, no);
      e.obfuscator := obfuscator;
      Write(fexport_identification, e);
      CloseFile(fexport_identification);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fexport_identification);
end;
function TDAOsimv.insertExportentification( recivient: Foreginkey; dateAndTime: DateAndTime; obfuscator: String1to64):Pk;
var n: TExportentification;
begin
  Result := countExportentification() + 1;
  ReSet(fexport_identification);
  Seek(fexport_identification, Result - 1); // index = number - 1
  n.exportentificationId := Result;
  n.recivient := recivient;
  n.dateAndTime := dateAndTime;
  n.obfuscator := obfuscator;
  Write(fexport_identification,n);
  CloseFile(fexport_identification);
end;
function TDAOsimv.countExportPersonentification(acceptor: aExportPersonentification):Int64;
var e: TExportPersonentification;
begin
  result := 0;
  Reset (fexport_person_identification);
  while not Eof(fexport_person_identification) do
  begin
    BlockRead(fexport_person_identification, e, 1);
    if (@acceptor = nil) or acceptor(@e) then inc(result);
  end;
  CloseFile(fexport_person_identification);
end;
function TDAOsimv.getExportPersonentification(i:Int64; acceptor: aExportPersonentification=nil):TExportPersonentification;
var e: TExportPersonentification;
    c: Int64;
begin
  c := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_person_identification);
  while not Eof(fexport_person_identification) do
  begin
    BlockRead(fexport_person_identification, e, 1);
    if (@acceptor = nil) or acceptor(@e) then
    begin
      inc(c);
      if c = i then
      begin
        result := e;
        CloseFile(fexport_person_identification);
        exit;
      end;
    end;
  end;
  CloseFile(fexport_person_identification);
end;
function TDAOsimv.findExportPersonentificationByPK(pk:Pk):TExportPersonentification;
var e: TExportPersonentification;
begin
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_person_identification);
  while not Eof(fexport_person_identification) do
  begin
    BlockRead(fexport_person_identification, e, 1);
    if e.exportPersonentificationId = pk then
    begin
      result := e;
      CloseFile(fexport_person_identification);
      exit;
    end;
  end;
  CloseFile(fexport_person_identification);
end;
function TDAOsimv.updateExportentificationIdOfExportPersonentification(pk:Pk;exportentificationId:Foreginkey):boolean;
var e: TExportPersonentification;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_person_identification);
  result := false;
  while not Eof(fexport_person_identification) do
  begin
    BlockRead(fexport_person_identification, e, 1);
    if e.exportPersonentificationId=pk then
    begin
      Seek(fexport_person_identification, no);
      e.exportentificationId := exportentificationId;
      Write(fexport_person_identification, e);
      CloseFile(fexport_person_identification);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fexport_person_identification);
end;
function TDAOsimv.updateInternalOfExportPersonentification(pk:Pk;internal:String1to64):boolean;
var e: TExportPersonentification;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_person_identification);
  result := false;
  while not Eof(fexport_person_identification) do
  begin
    BlockRead(fexport_person_identification, e, 1);
    if e.exportPersonentificationId=pk then
    begin
      Seek(fexport_person_identification, no);
      e.internal := internal;
      Write(fexport_person_identification, e);
      CloseFile(fexport_person_identification);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fexport_person_identification);
end;
function TDAOsimv.updatePersonOfExportPersonentification(pk:Pk;person:Foreginkey):boolean;
var e: TExportPersonentification;
    no:integer;
begin
  no := 0;
  FillChar(result, sizeOf(result), 0);
  Reset (fexport_person_identification);
  result := false;
  while not Eof(fexport_person_identification) do
  begin
    BlockRead(fexport_person_identification, e, 1);
    if e.exportPersonentificationId=pk then
    begin
      Seek(fexport_person_identification, no);
      e.person := person;
      Write(fexport_person_identification, e);
      CloseFile(fexport_person_identification);
      result := true;
      exit;
    end;
    Inc(no);
  end;
  CloseFile(fexport_person_identification);
end;
function TDAOsimv.insertExportPersonentification( exportentificationId: Foreginkey; internal: String1to64; person: Foreginkey):Pk;
var n: TExportPersonentification;
begin
  Result := countExportPersonentification() + 1;
  ReSet(fexport_person_identification);
  Seek(fexport_person_identification, Result - 1); // index = number - 1
  n.exportPersonentificationId := Result;
  n.exportentificationId := exportentificationId;
  n.internal := internal;
  n.person := person;
  Write(fexport_person_identification,n);
  CloseFile(fexport_person_identification);
end;
end.

