uses crt;
type
	arr = array[0..15] of integer;
var
	t,s : ansistring;
	a,b,c : arr ;

procedure Xuat(f : arr);
var
	i : longint;
begin
	for i := 0 to 9 do write(f[i], ' ');
	writeln;
end;


procedure ChuanHoa(var f : arr ; x : ansistring);
var
	i : longint;
	tmp : integer;
	code : integer;


begin
	for i := 1 to length(x) do 
	begin
		val(x[i], tmp, code);
		if (tmp = 9) then inc(f[6])
		else
			if (tmp = 5) then inc(f[2])
			else inc( f[tmp] );
	end;
end;

function check(a,b : arr) : boolean;
var
	i : integer;
begin
	for i := 0 to 9 do 
	begin
		if (b[i] > a[i]) then exit(false);
	end;
	exit(true);
end;

procedure Giam(var fi, fo : arr; x : integer);
var
	i : integer;
begin
	for i := 0 to 9 do fo[i] := fi[i] div x;
end;

function Stickers() : longint;
var
	cnt : integer;
begin
	cnt := 1;
	Giam(a,c,1);
	repeat
		Giam(a,c,cnt);
		//write('Cnt: ',cnt,' ; ');
		xuat(c);
		inc(cnt);
	until check(c,b) = false;

	exit(cnt-2);
end;


begin
	clrscr;
	readln(t);
	readln(s);

	ChuanHoa(a,t);
	xuat(a);

	ChuanHoa(b,s);
	xuat(b);

	writeln(stickers);

	readln;
end.