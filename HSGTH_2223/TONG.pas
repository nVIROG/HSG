uses crt;
type
	arr = array[1..100007] of integer;
var
	n : integer;
	a : arr;

	fi, fo : text;

procedure nhap();
var
	i : integer;
begin
	readln(fi, n);

	for i := 1 to n-1 do read(fi, a[i]);
	readln(fi, a[n]);
end;

function Process() : integer;
var
	i,j : integer;
	s : longint;
	cnt : integer;


begin
	cnt := 0;
	for i := 1 to n-1 do
	begin
		s := a[i];
		for j := i+1 to n do
		begin
			s := s + a[j];
			if (s = 0) then inc(cnt);
		end;
	end;

	exit(cnt);
end;


begin
	clrscr;

	assign(fi, 'TONG.inp'); reset(fi);
	assign(fo, 'TONG.out'); rewrite(fo);

	nhap();
	writeln(fo, process);

	close(fi);
	close(fo);
end.