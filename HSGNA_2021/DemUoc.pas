uses crt;
var
	n : int64;
	
function Process() : longint;
var 
	cnt : longint;
	i : int64;
begin
	i := 1;
	cnt := 0;

	while i*i <= n do
	begin
		if ((n mod i) = 0) then
		begin
			if (i = (n div i)) then inc(cnt)
			else cnt := cnt + 2;
		end;

		inc(i);
	end;

	exit(cnt);
end;


begin
	clrscr;

	readln(n);
	writeln(process);


	readln;
end.