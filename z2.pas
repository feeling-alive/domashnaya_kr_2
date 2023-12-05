var s,ps: string; poz,i,pp : integer; k : boolean;
begin
  readln(s);
  readln(ps);
  if Pos(ps,s) > 0 then begin
    poz := Pos(ps,s);
    writeln(poz);
  for i := poz to poz+length(ps) do begin
    if (k = True) and (s[i] = ' ') then delete(s,pp,i-pp);
    if s[i] = ' ' then begin k := True; pp := i; end;
  end;
  writeln(s);
  end
  else writeln('Такой подстроки не сущесвтует');
end.