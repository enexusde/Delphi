unit TinyLogWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TTinyLogForm = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Timer1: TTimer;
    BitBtn7: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stream : TFileStream;
    wlCount: Int64;
  end;

var
  TinyLogForm: TTinyLogForm;

implementation

{$R *.dfm}

procedure TTinyLogForm.FormShow(Sender: TObject);
var dlg:TOpenDialog;
begin
  wlCount := 0;
  if ParamCount <> 1 then
  begin
    dlg := TOpenDialog.Create(self);
    if not dlg.Execute then
      Application.Terminate;
    stream := TFileStream.Create(dlg.FileName, fmOpenRead or fmShareDenyRead);
    tinylogform.Caption := dlg.FileName;
    dlg.free;
  end
  else
  begin
    stream := TFileStream.Create(paramstr(0), fmOpenRead or fmShareDenyRead);
    tinylogform.Caption := paramstr(0);
  end;

  timer1.Enabled:=true;
end;

procedure TTinyLogForm.Timer1Timer(Sender: TObject);
var c:string;
    toRead:integer;
begin
  while wlCount < stream.Size do
  begin
    toRead := stream.size - wlCount;
    setLength(c,toRead);
    stream.read(c[1],toRead);
    Memo1.Lines.Add(c);
    inc(wlCount,toRead);
    SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
  end;

end;

procedure TTinyLogForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  timer1.Enabled:=false;
  stream.Free;
end;

procedure TTinyLogForm.BitBtn7Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TTinyLogForm.BitBtn1Click(Sender: TObject);
begin
  left := Screen.MonitorFromWindow(handle).Left;
  top:= Screen.MonitorFromWindow(handle).Top;
  width:= Screen.MonitorFromWindow(handle).Width div 3;
  height:=Screen.MonitorFromWindow(handle).Height;
  SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
end;

procedure TTinyLogForm.BitBtn2Click(Sender: TObject);
begin
  left := Screen.MonitorFromWindow(handle).Left + Screen.MonitorFromWindow(handle).Width div 3;
  top := Screen.MonitorFromWindow(handle).Top;
  height := Screen.MonitorFromWindow(handle).height;
  width := Screen.MonitorFromWindow(handle).Width div 3;
  SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
end;

procedure TTinyLogForm.BitBtn3Click(Sender: TObject);
begin
  left := Screen.MonitorFromWindow(handle).Left + Screen.MonitorFromWindow(handle).Width div 3 * 2;
  top:=Screen.MonitorFromWindow(handle).top;
  width:= Screen.MonitorFromWindow(handle).Width div 3;
  height := Screen.MonitorFromWindow(handle).Height;
  SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
end;

procedure TTinyLogForm.BitBtn4Click(Sender: TObject);
begin
  left := Screen.MonitorFromWindow(handle).Left;
  top := Screen.MonitorFromWindow(handle).top + (Screen.MonitorFromWindow(handle).height div 3 )* 2;
  width:= Screen.MonitorFromWindow(handle).Width;
  height := Screen.MonitorFromWindow(handle).Height div 3;
  SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
end;

procedure TTinyLogForm.BitBtn6Click(Sender: TObject);
begin
  top := Screen.MonitorFromWindow(handle).top + Screen.MonitorFromWindow(handle).Height div 3;
  left := Screen.MonitorFromWindow(handle).left;
  width := Screen.MonitorFromWindow(handle).Width;
  height := Screen.MonitorFromWindow(handle).Height div 3;
  SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
end;

procedure TTinyLogForm.BitBtn5Click(Sender: TObject);
begin
  top := Screen.MonitorFromWindow(handle).Top;
  left := Screen.MonitorFromWindow(handle).left;
  height:= Screen.MonitorFromWindow(handle).Height div 3;
  width:= Screen.MonitorFromWindow(handle).width;
  SendMessage(Memo1.Handle, EM_LINESCROLL, 0,Memo1.Lines.Count);
end;

end.
