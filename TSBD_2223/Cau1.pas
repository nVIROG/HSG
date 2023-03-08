uses crt;
var
	k : longint;
	i : longint;
	tmp : longint;

function sumprime(x : longint) : longint;
var
	sp : longint;
	i : longint;
begin
	sp := 0;
	i := 2;
	while i*i <= x do
	begin
		if (x mod i) = 0 then sp := sp + i + (x div i);
		inc(i);
	end;

	exit(sp+1);
end;

begin
	clrscr;

	readln(k);

	for i := 1 to k do
	begin
		tmp := sumprime(i);
		if (sumprime(tmp) = i) and (tmp < i) then writeln(tmp, ' ', i);
	end;

	readln;
end.