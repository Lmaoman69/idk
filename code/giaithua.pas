program giaithua;
uses crt;
var n,i,gt:integer;
begin
clrscr;
gt:=1;
 write('input:');
  readln(n);
 for i:=1 to n do
  begin
   gt:=gt*i;
  end;
 write('Giai thua cua ',n,' la:',gt);
readln
end.