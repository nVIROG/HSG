uses crt;
var
	x,y : longint;
	fi, fo : text;

procedure nhap();
begin
	read(fi, x); readln(fi, y);
end;

function gcd(x,y : longint) : longint;
begin
	if (y = 0) then exit(x)
	else exit(gcd(y,x mod y));
end;

function process(n : longint) : longint;
var
	i : longint;
	cnt : longint;
begin
	i := 1;
	cnt := 0;

	while i*i <= n do
	begin
		if (n mod i) = 0 then
		begin
			if (i = (n div i)) then inc(cnt)
			else cnt := cnt + 2;
		end;
		inc(i);
	end;

	exit(cnt);

end;

begin
	clrscr;

	assign(fi, 'CAU1.inp');
	assign(fo, 'CAU1.out');

	reset(fi);
	rewrite(fo);

	nhap();
	writeln(fo, process(gcd(x,y)));

	close(fi);
	close(fo);
end.