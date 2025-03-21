program cau4;
uses crt;
function prime(n:integer):boolean;
var i:integer;
begin
 if n <= 1 then
  prime:=false
 else
  prime:=true;
  for i:=2 to trunc(sqrt(n)) do
   begin
    if n mod i = 0 then
     begin
      prime:=false;
      exit;
     end;
   end;
end;
var n,i,count:integer;
begin
clrscr;
count:=0;
 readln(n);
 for i:=1 to n do
  begin
   if n mod i = 0 then
    begin
     write(i,' ');
      if prime(i) then
        count:=count+1;
    end;
  end;
  writeln;
writeln(count);
readln
end.