uses crt;
type
	arr = array[0..100007] of  integer;
var
	a : arr;
	n : ansistring;
	fi, fo : text;

procedure nhap();
begin
	readln(fi, n);
end;

procedure suffix();
var
	i : integer;
begin
	for i := 1 to length(n) do
	begin
		a[i] := a[i-1] + (ord(n[i]) - 48);
	end;
end;


function process() : longint;
var
	i,j : integer;
	cnt : longint;

begin
	cnt := 0;
	if (a[length(n)] mod 3) = 0 then inc(cnt);

	for i := 1 to length(n) do
	begin
		for j := i to length(n) do
		begin
			if (( (a[length(n)] - (a[j] - a[i-1])) mod 3) = 0) and ((a[j] - a[i-1]) >= 0) then inc(cnt);
		end;
	end;

	exit(cnt-1);
end;

begin
	clrscr;

	assign(fi, 'CAU3.inp');
	assign(fo, 'CAU3.out');

	reset(fi);
	rewrite(fo);

	nhap();
	suffix();
	writeln(fo, process);

	close(fi);
	close(fo);

end.