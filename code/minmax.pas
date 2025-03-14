program chuoiso;
uses crt;
var min,max,n,i,idk:integer;
    lmao:string;
begin
clrscr;
min:=0;
max:=0;
 write('input string:');
  readln(lmao);
 for i:=1 to length(lmao) do
  if lmao[i] in ['0'..'9'] then
  begin
   val(lmao[i],idk);
   if idk < idk then
    min:=idk;
   if idk > idk then
    max:=idk;
  end;
 writeln('max:',max);
 writeln('min:',min);
readln
end.
