program prime;
uses crt;
function prime(n:integer):boolean;
 var i:integer;
  begin
   if n <= 1 then
    prime:=false
   else
   begin
    prime:=true;
    for i:= 2 to n div 2 do
     begin
      if n mod i = 0 then
       begin
        prime:=false;
        break;
       end;
     end;
    end;
   end;
{-------------------------------------}
procedure thuaso(n:integer);
var i:integer;
  begin
   i:=2;
   while n > 1 do
    begin
     while n mod i = 0 do
      begin
       write(i,' ');
       n:=n div i;
      end;
     i:=i+1;
    end;
  end;
  {---------------------------------------}
var idk:integer;
begin
clrscr;
write('Nhap so:');
readln(idk);
if prime(idk) = true then
  write('ok and ')
else
  write('not ok and ');
 thuaso(idk);
readln
end.
