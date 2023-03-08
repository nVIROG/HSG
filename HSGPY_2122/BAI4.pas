uses crt;
type
	arr  = array[1..101,0..101] of integer;
var
	n : integer;
	a : arr;
	b : arr;
	ymax, xmax : integer;
	ans : array[0..101] of integer;

procedure nhap;
var
	i, j : Integer;
begin
	readln(n);

	for i := 1 to n do 
	begin
		for j := 1 to i-1 do read(a[i,j]);
		readln(a[i,i]);
	end;
end;

procedure duong;
var
	i : Integer;
	max : integer;
begin
	max := -1;
  	for i := 1 to n do 
  	begin
  		if (max < b[n,i]) then 
  		begin
  			max := b[n,i];
  			xmax := i;
			ymax := n;
		end;
  	end;
	writeln(max);
end;

function max(a,b  : integer): Integer;
begin
	if (a > b) then exit(a)
	else exit(b);
end;


procedure toiuu;
var
	i,j : integer;
begin
	b[1,1] := a[1,1];
	b[2,1] := a[1,1] * a[2,1];
	b[2,2] := a[1,1] * a[2,2];
	for i := 3 to n do 
	begin
		b[i,1] := a[i,1] * b[i-1,1];
		for j := 2 to i-1 do 
		begin
			b[i,j] := a[i,j] * max(b[i-1,j-1], b[i-1,j]);
		end;
		b[i,i] := a[i,j+1] * b[i-1,i-1];
	end;
end;





begin
	clrscr;
	nhap;
	toiuu;
	duong;
	readln;
end.