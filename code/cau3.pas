program cau3;
uses crt;
procedure bbs(var arr:array of longint;n:integer);
var i,j,temp:integer;
begin
 for i:=1 to n - 1 do
  for j:=1 to n - 1 do
   if arr[j] > arr[j+1] then
    begin
     temp:=arr[j];
     arr[j]:=arr[j+1];
     arr[j+1]:=temp;
    end;
end;
var n,i,j,k,count,tong:longint;
    fin,fout:text;
    arr:array[word] of longint;
    arrc:array[word] of longint;
begin
 assign(fin,'DAYSO1.txt');
  reset(fin);
 assign(fout,'DAYSO2.txt');
  rewrite(fout);
 readln(fin,n);
 tong:=0;
 k:=1;
 j:=1;
 count:=1;
  for i:=1 to n do
   begin
    read(fin,arr[i]);
    tong:=tong+arr[i];
   end;
 writeln(fout,tong);
 bbs(arr,n);
 while count < n do
  begin
   for i:=k to n do
    begin
     if arr[i] = arr[i+1] then
     begin
       j:=j+1;
       count:=count+1;
     end
     else
     begin
       writeln(fout,arr[i],':',j);
       j:=1;
       k:=i+1;
       count:=count+1;
     end;
    end;
   end;
 close(fin);
 close(fout);
end.