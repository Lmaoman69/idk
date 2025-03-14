program hoandoi;
uses crt;
var a,b:integer;
begin
clrscr;
 write('input a:');
  readln(a);
 write('input b:');
  readln(b);
 a:=b-a;
 b:=b-a;
 a:=b+a;
writeln('a:=',a);
writeln('b:=',b);
readln
end.
