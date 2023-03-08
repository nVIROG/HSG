uses crt;
type
	arr = array[1..1000007] of integer;

var
	a : arr;


function isprime(x : integer) : boolean;
var
	i : integer;
begin
	if (x  < 2) then exit(false);
	i := 2;
	while i*i <= x do
	begin
		if (x mod i) = 0 then exit(false);
		inc(i);
	end;

	exit(true);
end;

function sum_pri(x : integer) : integer;
var
	i : integer;
	cnt : integer;
begin
	cnt := 0;
	i := 1;
	while i*i <= x do
	begin
		if (x mod i) = 0 then
		begin
			if (i = (x div i)) then inc(cnt)
			else cnt := cnt + 2;
		end;
		inc(i);
	end;

	exit(cnt);
end;


procedure dem();
var
	i : longint;
begin
	a[2] := 1;
	a[3] := 2;

	i := 4;
	while i <= 1000 do
	begin
		a[i] := a[i-1];
	{	if ( round(sqrt(i)) * round(sqrt(i)) ) = i then a[i] := a[i-1]
			else 
				begin
					a[i] := a[i-1] + 1;
					writeln(i);
				end;}


	{if (isprime(sum_pri(i)) = true) then 
				begin	
					inc(a[i]);
					writeln(i);
				end;}

		if (isprime(i) = true) or  (( round(sqrt(i)) * round(sqrt(i)) ) = i)  then
			begin
				if (isprime(sum_pri(i)) = true) then 
				begin	
					inc(a[i]);
					writeln(i, ' ', sum_pri(i));
				end;
	
			end;
	

		inc(i);
	end;


end;


begin
	clrscr;

	dem();
	

	readln;
end.