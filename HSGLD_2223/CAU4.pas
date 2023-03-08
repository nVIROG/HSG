uses crt;
type
	arr = array[1..3,1..107] of integer;
var
	a : arr;
	n,m : integer;

	fi, fo : text;

procedure nhap();
var
	i : integer;
begin
	read(fi, n); readln(fi, m);

	for i := 1 to m do
	begin
		read(fi, a[1,i]);
		read(fi, a[2,i]);
		readln(fi, a[3,i]);
	end;
end;

procedure xuat();
var	
	i : integer;
begin
	for i := 1 to m do writeln(a[1,i], ' ',a[2,i],' ',a[3,i]);

	writeln;
end;

procedure swap(var a,b : integer);
var
	tmp : integer;
begin
	tmp := a;
	a := b;
	b := tmp;
end;

procedure sort(var f : arr; l,r : integer);
var
	i,j : integer;
begin
	for i := l to r-1 do
	begin
		for j := i + 1 to r do
		begin
			if (a[1,i] > a[1,j]) then
			begin
				swap(a[1,i],a[1,j]);
				swap(a[2,i],a[2,j]);
				swap(a[3,i],a[3,j]);
			end;
		end;
	end;
end;

function process() : longint;
var
	cnt : longint;
	i,j : integer;
	fin_i, sta_i : integer;
	max : longint;

begin
	max := 10000000;
	i := 1;
	sta_i := a[1,i];
	cnt := a[3,i];
	fin_i := a[2,i];

	for j := 1 to m do 
	begin
		if (a[2,j] > fin_i) then
		begin
			cnt := cnt + a[3,j];
			fin_i := a[2,j];
		end; 
	end;
	//writeln;

	if (max > cnt) and (fin_i = n) and (sta_i = 0) then max := cnt;

	exit(max);
end;

begin
	clrscr;

	assign(fi, 'CAU4.inp');
	assign(fo, 'CAU4.out');

	reset(fi);
	rewrite(fo);

	nhap();

	writeln;
	sort(a,1,m);
	//xuat();

	writeln(fo, process);

	close(fi);
	close(fo);
end.