uses crt;
type
	arr = array[1..1000000000] of boolean;
var
	a : arr;
	l,r : int64;

function sumdiv(l,r : int64) : int64;
var 
	i : int64;
	sum : int64;
begin
	i := 1;
	sum := 0;
	while i*i <= r do 
	begin
		if (r mod i) = 0 then 
		begin
			if (i = (r mod i)) then sum := sum + i
			else 
				begin
					sum := sum + i + (r div i);
					a[r div i] := true;
					write(r div i, ' ');
				end;
			writeln(i);
			a[i] := true;
		end;

		inc(i);
	end;

	exit(sum);
end;	



begin
	clrscr;
	read(l); readln(r);

	writeln(sumdiv(1,l));
	writeln(sumdiv(1,r));


	readln;
end.