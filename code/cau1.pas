program cau1;
uses crt;
var n,max,i,tong,count,temp:longint;
begin
clrscr;
 readln(n);
count:=0;
tong:=0;
temp:=n;
max:=0;
while temp <> 0 do
  begin
   tong:=tong + (temp mod 10);
   if (temp mod 10) > max then
     max:=(temp mod 10);
   temp:=temp div 10;
    inc(count);
  end;
 writeln(count);
 writeln(tong);
 writeln(max);
readln
end.
