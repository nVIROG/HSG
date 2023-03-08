uses crt;
type
	arr = array[1..50007] of integer;
var 
	i : longint;
	n : longint;
	a : arr;

function C3() : longint;
var
	i : longint;
	cnt : longint;

begin
	cnt := 0;
	for i := 2 to n-1 do
	begin
		if (a[i] >= a[i-1]) and (a[i] >= a[i+1]) then inc(cnt);
	end;

	exit(cnt);
end;

begin
	clrscr;

	readln(n);

	for i := 1 to n-1 do read(a[i]);
	readln(a[n]);


	writeln(c3);

	readln;
end.