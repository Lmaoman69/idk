program cau5;
uses crt;
var n,i,tong,count,nah:longint;
    darr,arr,idk:array[-1000..1000] of longint;
    fin,fout:text;
begin
clrscr;
 assign(fin,'DOANCON1.txt');
  reset(fin);
 assign(fout,'DOANCON2.txt');
  rewrite(fout);
 tong:=1;
 count:=1;
 for i:=1 to n do
  begin
   write(fin,arr[i]);
  end;
 for i:=1 to n do
  begin
   if (arr[i] + arr[i+1] = 15) or (arr[i+1] - arr[i] = 15) then
   begin
    inc(count);
   end;
  end;
 writeln(fout,count);
close(fin);
close(fout);
end.
