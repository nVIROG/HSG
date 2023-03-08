uses crt;
var
	l,r : int64;

function Check_CP(x : int64) : boolean;
begin
	if round(sqrt(x)) = x / sqrt(x) then exit(true)
	else exit(false);
end;

function GCD(a,b : int64) : int64;
begin
	if (b = 0) then exit(a)
	else exit(gcd(b, b mod a));
end;


function CP(r : int64) : int64;
var
	i,j : longint;
	cnt : int64;
	tmp : longint;
begin
	if (r = 1) then exit(0);
	cnt := 0;

	j := 2;
	while j*j < r do 
	begin
		tmp := 2;
		while j*j*tmp < r do 
		begin
			cnt := cnt + (j*j*tmp);
			inc(tmp);
		end;
		inc(j);
	end;


	for i := 2 to r-1 do 
	begin
		for j := i+1 to r do 
		begin
			if ((j mod i) = 0) or (Check_CP(i) = true) or  (Check_CP(j) = true) or (gcd(i,j ) > 2)  then 
			begin
				writeln(i, ' ',j );
				inc(cnt);
			end;


		end;
	end;

	exit(cnt);
end;

begin
	clrscr;
	read(l); readln(r);


	writeln(Check_cp(4));
	writeln(CP(l));
	writeln(CP(r));

	readln;
end.