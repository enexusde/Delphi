unit IBANandBIC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, simv;

type
  TIBANandBICForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iban,bic:string;
    data:TDAOsimv;

  end;

var
  IBANandBICForm: TIBANandBICForm;

implementation

{$R *.dfm}

procedure TIBANandBICForm.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TIBANandBICForm.BitBtn2Click(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

procedure TIBANandBICForm.MaskEdit1Change(Sender: TObject);
begin
  iban := MaskEdit1.Text;
end;

procedure TIBANandBICForm.MaskEdit2Change(Sender: TObject);
begin
  bic := MaskEdit2.Text;
end;

procedure TIBANandBICForm.FormShow(Sender: TObject);
begin
  MaskEdit1.SetFocus;
end;

end.
