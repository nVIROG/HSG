uses crt;
type
	arr = array[1..1000007] of longint;

var	
	a : arr;
	n : integer;

	fi, fo : text;

procedure nhap();
var
	i : integer;
begin
	readln(fi, n);

	for i := 1 to n-1 do read(fi, a[i]);
	readln(fi, a[n]);
end;

function process() : longint;
var
	cnt : longint;
	i : longint;
	j : longint;

begin
	j := 1;
	cnt := 0;

	for i := 2 to n do
	begin
		cnt := cnt + ((a[i] div j) div 2);
		j := j * 2;
	end;

	exit(a[1] + cnt);
end;

begin
	clrscr;

	assign(fi, 'donbi.inp');
	assign(fo, 'donbi.out');

	reset(fi);
	rewrite(fo);

	nhap;
	writeln(fo, process);

	close(fi);
	close(fo);
end.