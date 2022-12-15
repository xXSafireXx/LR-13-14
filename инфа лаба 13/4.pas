var
 f,g:text;
 k,i:integer;
 s:string;
begin
 readln(k);
 inc(k);
 assign(f,'1.txt');reset(f);
 assign(g,'2.txt');rewrite(g);
 while not eof(f) do
  begin
   readln(f,s);
   inc(i);
   if i=k then writeln(g);
   writeln(g,s);
  end;
 close(f);close(g);
 deletefile('1.txt');
renamefile('2.txt','1.txt');
end.