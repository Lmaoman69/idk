program luyentapthi;
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
     exit();
    end;
  end;
end;
{==============================}
function dura(n:integer):integer;//độ bền//
var dora:integer;
begin
dora:=0;
 while n >= 10 do
  begin
   n:=(n mod 10) * (n div 10);
   dora:=dora+1;
  end;
 dura:=dora;
end;
{==============================}
function search(var arr:array of integer;n,k:integer):integer;//tìm kiếm//
var i:integer;
begin
search:=-1;
for i:=0 to n - 1 do
 if arr[i] = k then
  begin
   search:=i;
   exit;
  end;
end;  
{==============================}
procedure bbs(var arr:array of integer;n:integer);//sắp xếp//
var i,j,temp:integer;
begin
for i:=1 to n - 1 do
 for j:=1 to n - i do
  if arr[j] > arr[j+1] then
   begin
    temp:=arr[j];
    arr[j]:=arr[j+1];
    arr[j+1]:=temp;
   end;
end;
{==============================}
function fbnc(n:integer):integer;//số fibonacci//
var idk:integer;
begin
if n <= 1 then
 idk:=n
else
 begin
  idk:=fbnc(n-1) + fbnc(n-2);
 end;
fbnc:=idk; 
end; 
{==============================}
function gcd(a,b:integer):integer;//ucln//
var temp:integer;
begin
 while b <> 0 do
  begin
   temp:=b;
   b:=a mod b;
   a:=temp;
  end;
 gcd:=a;
end;
{==============================}
procedure pfnb(n:integer);//số hoàn hảo//
var i:integer;
begin
 while n mod 2 = 0 do
  begin
   write(2,' ');
   n:=n div 2;
  end;
 i:=3;
 while (i <= trunc(sqrt(n))) do
  begin
   while n mod i = 0 do
    begin
     write(i,' ');
     n:=n div i;
    end;
   i:=i+2;
  end; 
 if n > 2 then
  write(n,' ');
end; 
{==============================}
function tsnt(n:integer):boolean;//thừa số nguyên tố//
var i,idk:integer;
begin
 idk:=0;
 for i:=1 to n div 2 do
  if n mod i = 0 then
   idk:=idk+1;
  tsnt:=idk=n;
end;    
{==============================}
var a,b,c,n,i,pos,key,mode:integer;
    str:string;
    chr:char;
    arr:array[word] of integer;
begin
clrscr;
 writeln('|========|');
 writeln('|1:Normal|');
 writeln('|2:Array |');
 writeln('|3:String|');
 writeln('|========|');
 write('Choose mode:');
  readln(mode);
 if mode > 3 then
  exit();
 if mode < 0 then
  exit();
{=============================}
if mode = 1 then
 begin
 clrscr;
  write('Input a:');
   readln(a);
  write('Input b:');
   readln(b);
 end;
{==============================}
if mode = 2 then
 begin
 clrscr;
  write('Input number of Array:');
   readln(n);
  for i:=1 to n do
   begin
    write('Input arr[',i,']:');
     readln(arr[i]);
   end;
  bbs(arr,n);
   writeln('Array after sorting:');
  for i:=1 to n do
   writeln('arr[',i,']:=',arr[i]);
  write('Input key:');
   readln(key);
  pos:=search(arr,n,key);
   if key <> -1 then
    write('found ',key,' in arr[',pos,']')
   else
    write('not found ',key,'');
 end;   
{=============================}
if mode = 3 then
 begin
 clrscr;
  write('Input string:');
   readln(str);
  for i:=1 to length(str) do
 end; 
{=============================}
readln
end.