program phuongtringbac2;
uses crt;
var a,b,c,delta:real;
begin
clrscr;
 write('Nhap a:');
  readln(a);
 write('Nhap b:');
  readln(b);
 write('Nhap c:');
  readln(c);
 delta:=sqr(b)-4*a*c;
 if delta < 0 then
  write('Phuong trinh vo nghiem');
 if delta = 0 then
  write('Phuong trinh co nghiem kep la:x1=x2=',-b/2*a);
 if delta > 0 then
  write('Phuong trinh co 2 nghiem phan biet:x1=',-b-sqrt(delta)/2*a:0:2,'x2=',-b+sqrt(delta)/2*a:0:2);
readln
end.
