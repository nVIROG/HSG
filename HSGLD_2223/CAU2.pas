uses crt;
type
	arr = array[1..207] of int64;
var
	n : integer;
	a : arr;
	i : integer;

	fi, fo : text;

procedure nhap();
var
	i : integer;
begin
	readln(fi, n);

	for i := 1 to n do readln(fi, a[i]);
end;

function isprime(x : int64) : boolean;
var
	i : int64;
begin
	if (x < 2) then exit(false);

	i := 2;
	while i*i <= x do
	begin
		if (x mod i) = 0 then exit(false);
		inc(i);
	end;

	exit(true);
end;

procedure process(x : int64);
var
	i : int64;
begin
	i := x-1;
	while i > 1 do
	begin
		//writeln(i, ' ',x-i);
		if (isprime(i) = true) then
		begin
			if (isprime(x-i) = true) then
			begin
				writeln(fo, x-i,' ',i);
				exit;
			end;
		end;

		i := i-2;
	end;

	writeln(fo, 'NO');
end;

begin
	clrscr;

	assign(fi, 'CAU2.inp');
	assign(fo, 'CAU2.out');

	reset(fi);
	rewrite(fo);

	nhap();
	n:=200;
	for i := 1 to n do
	begin
		process(a[1]-8);
	end;

	close(fi);
	close(fo);
end.
