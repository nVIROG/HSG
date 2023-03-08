uses crt;
type
	arr = array[1..300] of string;
var
	s,p : string;
	tmp : string;
	cnt : integer;
	a,b : arr;
	x : integer;
	i : integer;

procedure Xuat(f : arr);
var
	i : integer;
begin
	for i := 1 to 10 do write(f[i], ' ');
	writeln;
end;

procedure ChuanHoaS(s : string);
var
	i : integer;
	tmp : string;
begin
	tmp := '';
	x := 1;
	for i := 1 to length(s) do
	begin
		if (s[i] <> ' ') then tmp := tmp+s[i]
		else
			begin
				a[x] := tmp;
				tmp := '';
				inc(x);
			end;
	end;
	if (tmp <> '') then a[x] := tmp
	else dec(x);

end;

function check(a,b : string) : boolean;
var
	i : integer;
begin
	if (length(a) <> length(b)) then exit(false);

	for i := 1 to length(a) do
	begin
		if (b[i] = '?') then continue;
		if (a[i] <> b[i]) then exit(false);
	end;

	exit(true);
end;

begin
	clrscr;
	readln(s);
	readln(p);

	ChuanHoaS(s);a
	
	cnt := 0;
	for i := 1 to x do
	begin
		if (check(a[i],p) = true) then inc(cnt);
	end;
	write(cnt);
	readln;
end.