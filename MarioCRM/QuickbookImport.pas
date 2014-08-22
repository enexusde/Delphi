unit QuickbookImport;

interface
uses dialogs,sysutils,classes;

type header1=record  // ist 193 bytes groﬂ
    start: byte;
    puffer:array[1..192] of byte;
  end;

type unknown1=record  // ist 3717 bytes groﬂ
    start: byte;  // A
    puffer:array[1..3717] of byte;
  end;

function readQBW(filename:string):boolean;
function FirstPart(fileName : TFileName; index : Integer; name1,name2: string):integer;
implementation

function readQBW(filename:string):boolean;
var f: file of header1;
    f1: file of unknown1;
    h:header1;
    u1:unknown1;
    len: word;
begin
  result := false;

  len := FirstPart(fileName, 193,'head','unknown1');
  reset(f, filename + 'head');
  blockread(f,h,1);
  closefile(f);
  if h.start <> 255 then exit;

  reset(f1, filename + 'unknown1');
  blockread(f1,u1,1);
  closefile(f1);
  if u1.start <> 10 then exit;

  firstPart(fileName + 'unknown1',715,'body1','body2')
  showmessage(inttostr(u1));
  result := true;
end;

function FirstPart(fileName : TFileName; index : Integer; name1,name2: string):integer;
var
   fileSource, fileTarget1, fileTarget2: TFileStream;
   cnt : integer;
   fileName1,fileName2: String;
begin
  result := 0;
  fileSource := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite) ;
  try
    fileName1 := FileName + name1;
    fileName2 := FileName + name2;
    fileTarget1 := TFileStream.Create(fileName1, fmCreate or fmShareExclusive) ;
    fileTarget2 := TFileStream.Create(fileName2, fmCreate or fmShareExclusive) ;
    try
      fileTarget1.CopyFrom(fileSource, index);
      fileSource.Position := index;
      result := index;
      fileTarget2.CopyFrom(fileSource, fileSource.size - index);
    finally
      fileTarget1.Free;
      fileTarget2.Free;
    end;
  finally
    fileSource.Free;
  end;
end;

end.
