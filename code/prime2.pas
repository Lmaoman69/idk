program prime;
uses crt;
function prime(n:integer):boolean;
var idk,i:integer;
begin
if n<=1 then
 prime:=false
else
 begin
 prime:=true;
 for i:=2 to n div 2 do
  begin
   if n mod i = 0 then
   begin
   prime:=false;
   end;
  end;
end;
end;
var lmao:integer;
begin
clrscr;
 write('input:');
  readln(lmao);
 if prime(lmao) then
  writeln('ok')
 else
  writeln('false');
readln
end.