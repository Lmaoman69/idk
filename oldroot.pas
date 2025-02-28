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
function vigenere(text,key:string):string;
var shift,i,keylength:integer;
    c:char;
    lmao:string;
begin
 lmao:='';
 keylength:=length(key);
 for i:=1 to length(text) do
  begin
   c:=text[i];
   if c in ['A'..'Z'] then
    begin
    shift:=ord(key[(i-1) mod keylength + 1]) - ord('A');
    lmao:=lmao +chr(((ord(c) - ord('A') + shift) mod 26) + ord('A'));
    end
   else if c in ['a'..'z'] then
    begin
    shift:=ord(key[(i-1) mod keylength + 1]) - ord('a');
    lmao:=lmao +chr(((ord(c) - ord('a') + shift) mod 26) + ord('a'))
    end
   else
    lmao:=lmao + c;
  end;
 vigenere:=lmao;
end;
function vigenered(text,key:string):string;
var shift,i,keylength:integer;
    c:char;
    lmao:string;
begin
 lmao:='';
 keylength:=length(key);
 for i:=1 to length(text) do
  begin
   c:=text[i];
   if c in ['A'..'Z'] then
    begin
    shift:=ord(key[(i-1) mod keylength + 1]) - ord('A');
    lmao:=lmao +chr(((ord(c) - ord('A') - shift + 26) mod 26) + ord('A'));
    end
   else if c in ['a'..'z'] then
    begin
    shift:=ord(key[(i-1) mod keylength + 1]) - ord('a');
    lmao:=lmao +chr(((ord(c) - ord('a') - shift + 26) mod 26) + ord('a'))
    end
   else
    lmao:=lmao + c;
  end;
 vigenered:=lmao;
end;
{-----------------------------------------------------------------------}
function atbash(text:string):string;
var c:char;
    i,lmao:integer;
    idk:string;
begin
 idk:='';
  for i:=1 to length(text) do
   begin
   c:=text[i];
   begin
    if c in ['a'..'z'] then
     begin
      lmao:=ord(c) - ord('a');
      idk:=idk + chr(ord('z') - lmao);
     end
    else if c in ['A'..'Z'] then
     begin
      lmao:=ord(c) - ord('A');
      idk:=idk + chr(ord('Z') - lmao);
     end
    else
     idk:=idk + c;
   end;
  atbash:=idk;
end;
end;
{-----------------------------------------------------------------------}
var text,key:string;
    shift,matma,cach:integer;
begin
clrscr;
 writeln('Chon mat ma ban muon su dung');
 writeln('|=============|');
 writeln('|Bang mat ma  |');
 writeln('|1:ceasar     |');
 writeln('|2:vigenere   |');
 writeln('|3:atbash     |');
 writeln('|4:playfair   |');
 writeln('|5:rail fence |');
 writeln('|6:xor        |');
 writeln('|7:base64     |');
 writeln('|8:hexadecimal|');
 writeln('|9:morse      |');
 writeln('|10:enigma    |');
 writeln('|=============|');
 write('Nhap so:');
  readln(matma);
 if matma > 10 then exit;
 clrscr;
 writeln('Chon ma hoa hay giai ma:');
 writeln('>1:Ma hoa<');
 writeln('>2:Giai ma<');
 write('Ban chon:');
  readln(cach);
 if cach > 2 then exit;
{----------------------------------------------------------------------------------------------------------------------------------------------}
 if matma = 1 then
 begin
  clrscr;
  writeln('Mat ma Ceasar');
  write('Nhap chuoi ki tu:');
   readln(text);
  write('Nhap so buoc:');
   readln(shift);
  if cach = 1 then
  begin
   writeln('Chuoi ki tu sau khi ma hoa la:',ceasar(text,shift));
  end
  else
  begin
   writeln('Chuoi ki tu sau khi giai ma la:',ceasard(text,shift));
  end;
 end;
{------------------------------------------------------------------------------------}
 if matma = 2 then
 begin
  writeln('Mat ma Vigenere');
  write('Nhap chuoi ki tu:');
   readln(text);
  write('Nhap key:');
   readln(key);
  text:=upcase(text);
  key:=upcase(key);
  if cach = 1 then
   begin
    write('Chuoi ki tu sau khi ma hoa la:',vigenere(text,key));
   end
  else
   begin
    write('Chuoi ki tu sau khi giai ma la:',vigenered(text,key));
   end;
 end;
{-----------------------------------------------------------------------------------}
 if matma = 3 then
  begin
   clrscr;
   writeln('Mat ma Atbash');
   write('Nhap chuoi ki tu:');
    readln(text);
   if cach = 1 then
    begin
     write('Chuoi ki tu sau khi ma hoa la:',atbash(text));
    end
   else
    begin
     write('Chuoi ki tu sau khi giai ma la:',atbash(text));
    end;
  end;
readln
end.