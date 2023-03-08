uses crt;
type
	arr = array[1..40] of int64;
var
	k : integer;
	tmp1, tmp2 : int64;
	a : arr;
	i,j : integer;
	x : integer;
	cnt : integer;

procedure xuat();
var
	i : integer;
begin
	for i := 1 to 30 do writeln(a[i]);
end;

function isprime(x : int64) : boolean;
var
	i : int64;
begin
	if (x < 2) then exit(false);

	i := 2;
	while i*i <= x do 
	begin
		if (x mod i) = 0 then exit(false);
		inc(i);
	end;

	exit(true);
end;

function bien(k : integer) : int64;
var
	tmp : string;
	ans : int64;
	i : integer;
begin
	tmp := '';
	for i := 1 to 2*k+1 do tmp := tmp+'1';
	tmp[k+1] := '0';

	val(tmp,ans);
	exit(ans);
end;

function pow(a,b : integer) : int64;
var
	i : integer;
	ans : int64;

begin
	ans := 1;
	for i := 1 to b do ans := ans*a;
	exit(ans);
end;

begin
	clrscr;

	readln(k);

	tmp1 := bien(k);
	tmp2 := pow(10,k);

	x := 1;
	for i := 1 to 7 do
	begin
		if (i = 1) or (i = 3) or (i = 7) then 
		begin
			for j := 0 to 9 do
			begin
				a[x] := i*tmp1 + j*tmp2;
				inc(x);
			end;
		end;
	end;

	//xuat;

	cnt := 0;
	for x := 1 to 30 do
	begin
		if (isprime(a[x]) = true) then 
		begin
			write(a[x], ' ');
			inc(cnt);
		end;
	end;

	writeln(cnt);


	readln;
end.