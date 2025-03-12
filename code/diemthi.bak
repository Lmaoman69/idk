program diem;
uses crt;
type
   Mons = record
    Ten: string;
    Diemtx: array[1..4] of Real;
    Diemgk: Real;
    Diemck: Real;
  end;
var
  Mon: array[1..3] of Mons;
  i,bruh:integer;
  t,v,l,n,txt,txl,txv:real;
begin
clrscr;
    Mon[1].Ten:='Toan';
    writeln('Mon:',Mon[1].Ten);
    for bruh:=1 to 4 do
    begin
     Write('Nhap diem tx:');
      readln(Mon[1].Diemtx[bruh]);
      if Mon[1].Diemtx[bruh] > 10 then exit();
    end;
    write('Nhap diem toan giua ki:');
     readln(Mon[1].Diemgk);
     if Mon[1].Diemgk > 10 then exit();
    write('Nhap diem toan cuoi ki:');
     readln(Mon[1].Diemck);
     if Mon[1].Diemck > 10 then exit();
writeln('{--------------------------------------------}');
    Mon[2].Ten:='Van';
    writeln('Mon:',Mon[2].Ten);
    for bruh:=1 to 4 do
    begin
     Write('Nhap diem tx:');
      readln(Mon[2].Diemtx[bruh]);
      if Mon[2].Diemtx[bruh] > 10 then exit();
    end;
    write('Nhap diem van giua ki:');
     readln(Mon[2].Diemgk);
     if Mon[2].Diemgk > 10 then exit();
    write('Nhap diem toan cuoi ki:');
     readln(Mon[2].Diemck);
     if Mon[2].Diemck > 10 then exit();
writeln('{--------------------------------------------}');
    Mon[3].Ten:='Ly';
    writeln('Mon:',Mon[3].Ten);
    for bruh:=1 to 4 do
    begin
     Write('Nhap diem tx:');
      readln(Mon[3].Diemtx[bruh]);
      if Mon[3].Diemtx[bruh] > 10 then exit();
    end;
    write('Nhap diem Ly giua ki:');
     readln(Mon[3].Diemgk);
     if Mon[3].Diemgk > 10 then exit();
    write('Nhap diem ly cuoi ki:');
     readln(Mon[3].Diemck);
     if Mon[3].Diemck > 10 then exit();
{-----------------------------------------------------------}
writeln('Bang diem:');
    t := 0;
    for bruh := 1 to 4 do
      t := t + Mon[1].Diemtx[bruh];
    t := t / 4;
    t := t * 0.4 + Mon[1].Diemgk * 0.2 + Mon[1].Diemck * 0.4;
    {-----------------------------------------------------------------}
    v := 0;
    for bruh := 1 to 4 do
      v := v + Mon[2].Diemtx[bruh];
    v := v / 4;
    v := v * 0.4 + Mon[2].Diemgk * 0.2 + Mon[2].Diemck * 0.4;
    {-----------------------------------------------------------------}
    l := 0;
    for bruh := 1 to 4 do
      l := l + Mon[3].Diemtx[bruh];
    l := l / 4;
    l := l * 0.4 + Mon[3].Diemgk * 0.2 + Mon[3].Diemck * 0.4;
    begin
    txt:=txt + Mon[1].Diemtx[bruh];
    txv:=txv + Mon[2].Diemtx[bruh];
    txl:=txl + Mon[3].Diemtx[bruh];
    end;
    n:=(n+t+v+l)/3;
{----------------------------------------------------------------------}
clrscr;
writeln('|--------------------------------------Bang diem--------------------------------------------------|');
writeln('|Mon  |Diem kiem tra thuong xuyen |Diem kiem tra giua ki|Diem kiem tra cuoi ki|Diem trung binh mon|');
writeln('|Toan |',txt:0:2                ,'|',Mon[1].Diemgk:0:2,'|',Mon[1].Diemck:0:2,'|',t:0:2,'          |');
writeln('|Van  |',txv:0:2                ,'|',Mon[2].Diemgk:0:2,'|',Mon[2].Diemck:0:2,'|',v:0:2,'          |');
writeln('|Ly   |',txl:0:2                ,'|',Mon[3].Diemgk:0:2,'|',Mon[3].Diemck:0:2,'|',l:0:2,'          |');
writeln('|-------------------------------------------------------------------------------------------------|');
writeln('|Diem trung binh nam:',n:0:2,'                                                                    |');
readln
end.
