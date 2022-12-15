var
    f: file of char;
    c: char;
    n: integer;
    x:integer;
begin
    assign (f, 'text7.txt');
    reset (f);
    write('введите длину строки в файле');
    readln(x);
    for var i:=1 to x do
      if i mod 2=1 then begin
    n:=i;
    seek(f,n);
    c:='!';
    write(f,c);
    end;
    close(f);
 end.