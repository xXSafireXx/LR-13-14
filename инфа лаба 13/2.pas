uses crt;
 
var f:file of char;
i,j,n,k:integer;
s:string;
begin
   Write('Введите им файла: ');readln(s);
   assign(f,s);
   rewrite(f);
   Write('N = ');readln(n);
   Write('K = ');readln(k);
   For i:=1 to n do
     begin
     For j:=1 to k do
       write(f,'*');
     Write(f,#13,#10);
     end;
   close(f);
end.