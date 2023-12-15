var
  s, z, new_s: string;
  poz, i, j: integer;
  f, p: boolean;
  str: array of char;

begin
  readln(s);
  readln(z);

  for i := 1 to length(s) do begin
    f := False;
    if s[i] = z[1] then for j := 1 to length(z) do begin
      f := True;
      if s[i+j-1] <> z[j] then begin f := False; break; end;
    end;
    if f = True then begin poz := i; break; end;
  end;

  SetLength(str,length(s)+1);
  for i := 0 to length(s)-1 do str[i] := s[i+1];
  str[length(s)] := ' ';

  for i := 1 to poz-1 do new_s := new_s + str[i-1];

  for i := poz-1 to poz+length(z)-2 do begin
    if p = False then new_s := new_s + str[i];
    if (str[i] = ' ') and (p = True) then begin p := False; str[i] := '.' end;
    if (str[i] = ' ') and (p = False) then p := True;
  end;

  for i := poz+length(z)+1 to length(s) do new_s := new_s + str[i-1];

  writeln(new_s);
end.