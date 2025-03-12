program ascii;
uses crt;
var idk,key:char;
begin
clrscr;
key:=readkey;
 repeat
 write('Nhap ki tu:');
  readln(idk);
 writeln('Ma ascii cua ki tu la:',ord(idk));
 until (key='0');
readln
end.
