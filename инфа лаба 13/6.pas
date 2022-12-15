program Text16;
var
  F_in,F_out: Text;
  Name,line: string;
 
begin
 Write('File name: ');
 Readln(Name);
 
 Assign(F_in,Name);
 Assign(F_out,'~'+Name);
 
 Reset(F_in);
 Rewrite(F_out);
 
 While not eof(F_in) do
  begin
   Readln(F_in,line);
   if line<>'' then Writeln(F_out,line);
  end;
 
 Close(F_in);
 Close(F_out);
 Erase(F_in);
 Rename(F_out,Name);
end.

