var
  Tx: Text;
  a, b, max: integer;
  S: string;
 
begin
  Assign(Tx, 'Text.txt');
  Rewrite(Tx);
  
  for a := 1 to 10 do
  begin
    b := Random(10);
    Write(Tx, b);
  end;
  
  Close(Tx);
  
  Reset(Tx);
  Read(Tx, S);
  
  max := StrToInt(S[2]);
  
  for a := 2 to S.Length - 1 do
  begin
    if StrToInt(S[a]) > StrToInt(S[a - 1]) then
      if StrToInt(S[a]) > StrToInt(S[a + 1]) then
        max := StrToInt(S[a]);
  end;
  
  Writeln(max);
end.