uses crt;
type
	arr = array[0..100007] of int64;
var
	n,q : integer;
	a: arr;
	i : integer;
	tmp : integer;

	fi, fo : text;


procedure nhap();
var
	i : integer;
begin
	for i := 1 to n-1 do read(fi, a[i]);
	readln(fi, a[n]);
end;

procedure case1();
var
	p,m,x : integer;
	i : integer;
begin
	read(fi, p); read(fi, m); readln(fi, x);

	for i := p to m do a[i] := a[i]+x;
end;

procedure case2();
var
	u,v : integer;
	s : int64;
	i : integer;
begin
	s := 0;
	read(fi, u); readln(fi, v);

	for i := u to v do s := s + a[i];
	writeln(fo, s);
end;

begin
	clrscr;

	assign(fi, 'CAU3.inp');
	assign(fo, 'CAU3.out');

	reset(fi);
	rewrite(fo);

	read(fi, n); readln(fi, q);

	nhap();

	for i := 1 to q do
	begin
		read(fi, tmp);

		if (tmp = 1) then case1();
		if (tmp = 2) then case2();

	end;

	close(fi);
	close(fo);

end.
	