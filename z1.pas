var
  a: array[1..200] of integer;
  i, n, b, max, min, z, k, p: integer;
  str, w: string;
begin
  write('Введите длину массива:');
  readln(b);
  writeln('Введите числа массива:');
  for i := 1 to b do
  begin
    read(n);
    a[i] := n;
  end;
  writeln();
  max := 1;
  min := 1;
  for i := 2 to b do
  begin
    if a[i] < a[min] then
      min := i;
    if a[i] > a[max] then
      max := i;
  end;
  z := abs(a[max]) - abs(a[min]);
  writeln('Два максимальных числа по разности ', a[min], ' и ', a[max], ' Разность: ', z);
end.