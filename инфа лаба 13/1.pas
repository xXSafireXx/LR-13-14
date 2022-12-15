var
 i,p:integer;
 f:text;
begin
 assign(f, 'd:\text.txt');
 rewrite(f);
 i:=0;
 writeln('введите 10 чисел');
  while i<10 do
   begin
    inc(i);
    readln(p);
    writeln(f,p);
   end;
 close(f);
end.