  program File26;
var
 S:String;
 F_in,F_temp: File of Real;
 temp,maxEl,minEl:Real;
 i,maxI,minI:integer;

begin
  Write('File: ');
  Readln(S);
  Assign(F_in,S);
  Reset(F_in);

  i:=1;
  while (not eof(F_in)) do
   begin
    Read(F_in,temp);
    if (temp>maxEl) or (i=1) then
     begin
      maxEl:=temp;
      maxI:=i;
     end;;
    if (temp<minEl) or (i=1) then
     begin
      minEl:=temp;
      minI:=i;
     end;;

    inc(i);
   end;
  Close(F_in);
  Assign(F_in,S);
  Reset(F_in);
  Assign(F_temp,'~'+S);
  ReWrite(F_temp);

  i:=1;
  while (not eof(F_in)) do
   begin
    Read(F_in,temp);
    if i=maxI then Write(F_temp,minEl)
    else if i=minI then Write(F_temp,maxEl)
         else Write(F_temp,temp);
    inc(i);
   end;
  Close(F_in);
  Close(F_temp);
  Erase(F_in);
  Rename(F_temp,S);
end.