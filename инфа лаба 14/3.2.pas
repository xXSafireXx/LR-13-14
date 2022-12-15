uses crt;
var f,g,h: file of real;  
    i,v: integer; r: real;
 
procedure PrintFile (ff: file of real);
var rr: real;
begin
reset(ff);                              
while not (eof(ff)) do                
      begin
      read(ff,rr);                   
      write(rr:5:1);                 
      end;
writeln;
end;
 
begin                                
assign(f,'D:\инфа лаба 14/fileF');
assign(g,'D:\инфа лаба 14/fileA');
assign(h,'D:\инфа лаба 14/fileB');
rewrite(f);
for i:=1 to random(101)+10 do               
    begin
    r:=200*random-100;                      
    write(f,r);                            
    end;
v:=1; i:=0;                    
reset(f);                     
rewrite(g);                         
rewrite(h);
while not (eof(f)) do                  
      begin
      inc(i);                               
      read(f,r);                           
      if i mod 2=0 then write(g,r)         
         else write(h,r);                  
      end;
repeat                                   
writeln('0-завершение работы');
writeln('1-выбод исходного файла');
writeln('2-вывод файла с элементами с четных позиций');
writeln('3-вывод файла с элементами с нечетных позиций');
readln(v);                                
case v of                              
1: PrintFile (f);                   
2: PrintFile (g);                       
3: PrintFile (h);
else v:=0;
end;
until v=0;                              
close(f);
close(g);                             
readln;
end.