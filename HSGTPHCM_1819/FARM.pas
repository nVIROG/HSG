uses crt;
type
	arr = array[-3..107,-3..107] of boolean;
var
	a : arr;
	m,n,k : integer;
	i,j : integer;
	cnt : integer;

procedure xuat();
var
	i,j : integer;
begin
	for i := 1 to n do 
	begin
		for j := 1 to m-1 do
		begin
			if (a[i,j] = true) then write('T  ')
			else write('F  ');

		end;
		if (a[i,m] = true) then writeln('T  ')
		else writeln('F  ')
	end;
end;


procedure danhdau(x,y : integer);
begin
	a[i,j] := true;

	a[i-1,j-1] := true;
	a[i,j-1] := true;
	a[i-1,j] := true;
	a[i+1,j+1] := true;
	a[i,j+1] := true;
	a[i+1,j] := true;
	a[i+1,j-1] := true;
	a[i-1,j+1] := true;

	a[i-2,j-2] := true;
	a[i-2,j-1] := true;
	a[i-2,j] := true;
	a[i-2,j+1] := true;
	a[i-2,j+2] := true;

	a[i-1,j-2] := true;
	a[i-1,j+2] := true;

	a[i,j+2] := true;
	a[i,j-2] := true;

	a[i+1,j-2] := true;
	a[i+1,j+2] := true;

	a[i+2,j-2] := true;
	a[i+2,j-1] := true;
	a[i+2,j] := true;
	a[i+2,j+1] := true;
	a[i+2,j+2] := true;



end;

procedure nhap();
var
	i : integer;
	x,y : integer;

begin
	read(m); readln(n);
	readln(k);

	for x := 1 to n do 
	begin
		for y := 1 to m do a[x,y] := false;
	end;

	for i := 1 to k do
	begin
		read(x); readln(y);
		danhdau(x,y);
	end;

	xuat();
end;



begin
	clrscr;

	xuat();
	nhap();

	cnt := 0;

	for i := 1 to n do 
	begin
		for j := 1 to m do 
		begin
			if (a[i,j] = true) then inc(cnt);
		end;
	end;

	write(cnt);

	readln;
end.