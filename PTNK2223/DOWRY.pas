uses crt;
type
	arr = array[0..1007, 0..1007] of integer;
var
	a,b : arr;
	n,m : integer;
	i,j : integer;

procedure Xuat(var f : arr; n,m : integer);
var
	i,j : integer;
begin
	for i := 1 to n do
	begin
		for j := 1 to m-1 do write(f[i,j], ' ');
		writeln(f[i,m]);
	end;
end;

procedure TongTienTo(var fi,fo : arr; n,m : integer);
var
	i,j : integer;
begin
	for i := 1 to n do 
	begin
		for j := 1 to m do 
		begin
			fo[i,j] := fi[i,j] + fo[i-1,j] + fo[i,j-1] - fo[i-1,j-1];
			writeln('i : ',i,' | j : ',j,' | fo[i,j] = ', fo[i,j]);
			//xuat(fo,n,m); 
		end;
	end;
end;




procedure nhap();
var
	i,j : integer;
begin	
	read(n); readln(m);

	for i := 1 to n do 
	begin
		for j := 1 to m-1 do read(a[i,j]);
		readln(a[i,m]);
	end;
end;


begin
	clrscr;

	nhap();

	TongTienTo(a,b,n,m);
	xuat(b,n,m);
	

	readln;
end.

	