Var f,g:text;
    s,max,s1:string;
    i:byte;
Begin
    Assign(f,'in.txt');Reset(f);
    max:='';
    While not Eof(f) do
    Begin
      readln(f,s);
      if Length(s)>Length(max) then max:=s;
    End;
    Close(f);Reset(f);
    Assign(g,'out.txt');Rewrite(g);
    While not Eof(f) do
    Begin
      readln(f,s);
      if Length(s)=Length(max) then
      Begin
        s1:='';
        For i:=1 to Length(s) do
         s1:=s[i]+s1;
        writeln(g,s1);
      End;
    End;
    writeln('Результат в файле "out.txt"');
    Close(f);Close(g);
    readln;
End.