uses crt;
type
	arr = array[0..107,0..107] of integer;

var
	a : arr;
	n : integer;


procedure xuat(var f : arr);
var
	i : integer;
begin
	for i := 1 to n do 
	begin
		write(f[1,i], ' ');
		writeln(f[2,i]);
	end;
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
		for j := i+1 to r do
		begin
			if (a[2,i] < a[2,j]) then 
			begin
				swap(a[2,i], a[2,j]);
				swap(a[1,i], a[1,j]);
			end;

			if (a[2,i] = a[2,j]) then 
			begin
				if (a[1,i] < a[1,j]) then swap(a[1,i], a[1,j]);
			end;
		end;
	end;
end;

function lixi(var f : arr) : integer;
var
	a,b : integer;
	i : integer;

begin
	a := 0;
	b := 1;
	i := 1;

	while b > 0 do
	begin
		a := a + f[1,i];
		b := b + f[2,i];
		dec(b);
		inc(i);
	end;

	exit(a);
end;

procedure nhap();
var
	i : integer;
begin
	readln(n);

	for i := 1 to n do 
	begin
		read(a[1,i]);
		readln(a[2,i]);
	end;
end;

begin
	clrscr;

	nhap();
	
	sort(a,1,n);

	//xuat(a);

	write(lixi(a));

	readln;
end.