uses crt;
type
	arr = array[1..1000007] of integer;
var
	a,b : arr;
	n : longint;
	fi, fo : text;

procedure nhap();
var
	i : longint;
begin
	readln(fi, n);

	for i := 1 to n-1 do
	begin
		read(fi, a[i]);
		inc(b[a[i]]);
	end;

	readln(fi, a[n]);
	inc(b[a[n]]);

end;

function process() : longint;
var
	max : longint;
	i : longint;
begin
	max := -1;
	for i := 1 to n do
	begin
		if (b[i] > max) then max := b[i];
	end;

	exit(max);
end;

begin
	clrscr;

	assign(fi, 'CAU2.inp');
	assign(fo, 'CAU2.out');

	reset(fi);
	rewrite(fo);

	nhap();
	writeln(fo, process);


	close(fi);
	close(fo);

end.