begin
  var inf,outf:text; var r,sum,k:integer;
  assign(inf,'D:\инфа лаба 13/z3.in.txt');
  assign(outf,'D:\инфа лаба 13/z3.out.txt');
  reset(inf);
  rewrite(outf);
  read(inf,r);
  close(inf);
  for var i:=1 to r do begin
    k:=0;
  for var j:=1 to i do if i mod j=0 then inc(k);
  if k=5 then sum+=i;
  end;
  print(outf,sum);
  close(outf);
end.