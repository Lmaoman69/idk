program enigma;
uses crt;
function ceasar(text:string;shift:integer):string;
var i:integer;
    c:char;
    lmao:string;
begin
 for i:=1 to length(text) do
  begin
   lmao:='';
   c:=text[i];
   if c in ['A'..'Z'] then
    lmao:=lmao +chr(((ord(c) - ord('A') + shift) mod 26) + ord('A'))
   else if c in ['a'..'z'] then
    lmao:=lmao +chr(((ord(c) - ord('a') + shift) mod 26) + ord('a'))
   else
    lmao:=lmao + c;
  end;
end;
function ceasard(text:string;shift:integer):string;
begin
 ceasard:=ceasar(text,26 - shift);
end;
var text,idk:string;
begin
clrscr;
 write('Nhap chuoi ki tu muon ma hoa:');
  readln(text);
  idk:=ceasar(text,3);
  writeln('Chuoi ki tu sau khi ma hoa la:',idk);
  writeln('Chuoi ki tu sau khi giai ma la:',ceasard(idk,3));
readln
end.