program bangcuuchuong;
uses crt;
var nah:array[1..10,2..9] of integer;
    idk,lmao:integer;
begin
clrscr;
 write('input idk:');
  readln(idk);
 write('input lmao:');
  readln(lmao);
for idk:=1 to 10 do
 for lmao:=2 to 9 do nah[idk,lmao]:=idk*lmao;
  writeln('BCC');writeln;
   for idk:=1 to 10 do
    for lmao:=2 to 9 do
   write(idk:4,'x',lmao:2,'=',nah[idk,lmao]:2);
readln
end.

