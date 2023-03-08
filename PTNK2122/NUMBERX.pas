uses crt;
var
	a,b : int64;

function n(a,b : int64) : int64;
var
	x : int64;
begin
	x := abs(a-b);
	while (((a+x) mod b) <> 0) or (((b+x) mod a) <> 0) do x := x+1;


	exit(x);
end;

begin
	clrscr;
	read(a); readln(b);

	writeln(n(a,b));

	readln;
end.