var
  s,s1,name: String;
  f,buf: Text;
BEGIN
Write('Введите полное имя файла: ');
Readln(name);
If FileExists(name) Then
begin
  Assign(f,name);
  Reset(f);
  Assign(buf,'buf.txt');
  Rewrite(buf);
  Write('Введите строку S: ');
  Readln(s);
  Writeln(buf,s);
  While not Eof(f) do
  begin
    Readln(f,s1);
    Writeln(buf,s1);
  end;
  Writeln(buf,s);
  Close(f);
  Close(buf);
  Erase(f);
  Rename(buf,name);
end
Else
Writeln('Файл не найден');
END.