program uclnbcnn;
uses crt;
var a,b,ucln,bcnn,i,c,d:integer;
begin
clrscr;
 write('Nhap so thu nhat:');
 readln(a);
 write('Nhap so thu hai:');
 readln(b);
 c:=a;
 d:=b;
 while b <> 0 do
  begin
   ucln:=b;
   b:=a mod b;
   a:=ucln;
  end;
 ucln:=a;
 bcnn:=(c*d) div ucln;
 writeln('ucln la:',ucln);
 writeln('bcnn la:',bcnn);
readln
end.
