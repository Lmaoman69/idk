program enigma;
uses crt;
function ceasar(text:string;shift:integer):string;
var i:integer;
    c:char;
    lmao:string;
begin
 lmao:='';
  shift:=shift mod 26;
 for i:=1 to length(text) do
  begin
   c:=text[i];
   if c in ['A'..'Z'] then
    lmao:=lmao +chr(((ord(c) - ord('A') + shift) mod 26) + ord('A'))
   else if c in ['a'..'z'] then
    lmao:=lmao +chr(((ord(c) - ord('a') + shift) mod 26) + ord('a'))
   else
    lmao:=lmao + c;
  end;
 ceasar:=lmao;
end;
function ceasard(text:string;shift:integer):string;
begin
 ceasard:=ceasar(text, - shift);
end;
{-----------------------------------------------------------------------}
var text,idk:string;
    shift,matma:integer;
begin
clrscr;
 writeln('Chon mat ma ban muon su dung');
 write('1:ceasar   2:vigenere   3:atbash   4:playfair   5:rail fence   6:xor   7:base64   8:hexadecimal   10:morse   11:enigma');
  readln(matma);
 write('Nhap chuoi ki tu muon ma hoa:');
  readln(text);
 write('Nhap so buoc:');
  readln(shift);
  idk:=ceasar(text,shift);
  writeln('Chuoi ki tu sau khi ma hoa la:',idk);
  writeln('Chuoi ki tu sau khi giai ma la:',ceasard(idk,shift));
readln
end.
