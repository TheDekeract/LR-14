var
  intext, out1text, out2text: file of integer;
  a: integer;

begin
  Assign(intext, '3.txt');
  Assign(out1text, '3.1.txt');
  Assign(out2text, '3.2.txt');
  Rewrite(intext);
  for var i := 1 to 20 do //ввод 20 рандомных чисел
  begin
    a := random(1, 100);
    write(intext, a);
  end;
  rewrite(out1text);
  rewrite(out2text);
  reset(intext);
  while not eof(intext) do
  begin
    read(intext, a);
    if a mod 2 = 1 then
      write(out1text, a)
    else
      write(out2text, a);
  end;
  reset(out1text);
  println('Нечетные числа из первого файла: ');
  while not eof(out1text) do
  begin
    read(out1text, a);
    print(a);
  end;
  reset(out2text);
  println();
  println('Четные числа из второго файла: ');
  while not eof(out2text) do
  begin
    read(out2text, a);
    print(a);
  end;
  close(intext);
  close(out1text);
  close(out2text);
end.
