uses crt;
var
	n : integer;
	s : string[110];

	fi, fo : text;

procedure nhap();
begin
		readln(fi, n);
		readln(fi, s);
end;

function process() : string;
var
	i : integer;
	cnt : integer;
begin
	cnt := 0;
	for i := 1 to length(s) do
	begin
		if (s[i] = 'A') then inc(cnt);
	end;

	if ((length(s) - cnt) = cnt) then exit('=');
	if ((length(s) - cnt) > cnt) then exit('<');
	if ((length(s) - cnt) < cnt) then exit('>');

end;

begin
	clrscr;

	assign(fi, 'che.inp');
	assign(fo, 'che.out');

	reset(fi);
	rewrite(fo);

	nhap();
	writeln(fo, process());


	close(fi);
	close(fo);
end.