program matma;
uses crt;
function prime(n:integer):boolean;
var i:integer;
begin
if n <= 1 then
 prime:=false
else
 begin
 prime:=true;
 for i:=2 to n div 2 do;
  begin
   if n mod i = 0 then
    begin
     exit;
    end
  end;
 end;
end;
var idk:string[255];
    n,lmao,i:integer;
begin
clrscr;
 write('Nhap chuoi:');
  readln(idk);
 for i:=1 to length(idk) do
  begin
   val(idk[i],lmao);
  end;
 if prime(lmao) then
  begin
   n:=n+lmao;
  end;
 writeln(n);
readln
end.