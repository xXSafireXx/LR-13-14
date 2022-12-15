uses crt;
var f:file of real;
    a,s:real;
   i:integer;
begin
clrscr;
assign(f,'fileG');
rewrite(f);
writeln('Введите в файл вещественные числа, окончание ввода 0:');
repeat
write('a=');
readln(a);
write(f,a);
until a=0;
clrscr;
writeln('Содержание исходного файла:');
reset(f);
s:=0;i:=0;
while not eof(f) do
 begin
  read(f,a);
  i:=i+1;
  if i mod 2=0 then s:=s+a;
  write(a:5:2,' ');
 end;
writeln;
close(f);
write('Сумма элементов с четными номерами=',s:0:2);
readln
end.