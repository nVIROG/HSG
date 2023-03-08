uses crt;
type
	arr = array[1..200007] of integer;

var
	n : longint;
	a : arr;

	fi, fo : text;

procedure nhap();
var
	i : longint;
begin
	readln(fi, n);

	for i := 1 to n-1 do read(fi, a[i]);
	readln(fi, a[n]);
end;


function process() : longint;
var
	i : longint;
	cnt : longint;

begin
	cnt := 0;
	for i := 2 to n-1 do 
	begin
		if (a[i] <> a[i-1]) and (a[i-1] = a[i+1]) then inc(cnt);
	end;

	if (cnt = 0) then exit(-1)
	else exit(cnt);
end;

begin
	clrscr;

	assign(fi, 'health.inp');
	assign(fo, 'health.out');
	reset(fi);
	rewrite(fo);


	nhap;
	writeln(fo, process);

	close(fi);
	close(fo);

end.