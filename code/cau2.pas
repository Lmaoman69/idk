program cau2;
uses crt;
var letter,str:string;
    n,i,tong,count:integer;
    fin,fout:text;
begin
 assign(fin,'XAU1.txt');
  reset(fin);
 assign(fout,'XAU2.txt');
  rewrite(fout);
 readln(fin,str);
 tong:=0;
 letter:='';
 count:=0;
 for i:=1 to length(str) do
  begin
   if str[i] in ['0'..'9'] then
    begin
     tong:=tong + (ord(str[i]) - ord('0'));
     inc(count);
    end;
   if str[i] in ['a'..'z','A'..'Z',' '] then
    begin
     letter:=letter + str[i];
    end;
  end;
 writeln(fout,count);
 writeln(fout,tong);
 writeln(fout,letter);
 close(fin);
 close(fout);
end.
