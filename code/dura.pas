program doben;
uses crt;
 function dura(n:integer):integer;
  var dora:integer;
   begin
    dora:= 0;
    while n >= 10 do
     begin
      n:=(n div 10) * (n mod 10);
      dora:=dora+1;
     end;
    dura:=dora;
   end;
{------------------------------------------}
var idk:integer;
begin
clrscr;
 write('Nhap so ko muon kiem tra:');
 readln(idk);
 writeln(dura(idk));
readln
end.

