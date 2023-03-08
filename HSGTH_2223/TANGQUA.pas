uses crt;
type
	arr = array[1..100007] of longint;
	ar = array[1..1000000007] of integer;
var
	a : arr;
	b : ar;
	i : integer;
	n : integer;
	max : longint;

	fi, fo : text;

begin
	clrscr;

	assign(fi, 'TANGQUA.inp'); reset(fi);
	assign(fo, 'TANGQUA.out'); rewrite(fo);

	readln(fi, n);

	max := -1;

	for i := 1 to n-1 do
	begin
		read(fi, a[i]);
		if (a[i] > max) then max := a[i];
		inc(b[a[i]]);
	end;

	readln(fi, a[n]);
	if (a[n] > max) then max := a[n];
	inc(b[a[n]]);

	write(fo, b[max]);

	close(fi);
	close(fo);
end.