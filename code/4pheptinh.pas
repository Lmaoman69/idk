program bonpheptinh;
uses crt;
var a,b,c,d,n,i:integer;
begin
clrscr;
 a:=0;
 b:=0;
 c:=1;
 d:=1;
 write('Nhap n:');
  readln(n);
 i:=1;
 repeat
  a:=a+i;
  b:=b-i;
  c:=c*i;
 if i>1 then
   d:=d div i;
 i:=i+1;
 until i>n;
writeln('Ket qua phep + la:',a);
writeln('Ket qua phep - la:',b);
writeln('Ket qua phep * la:',c);
writeln('Ket qua phep / la:',d);
readln
end.
