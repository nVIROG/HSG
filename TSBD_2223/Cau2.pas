uses crt;
var
	n, m : int64;
	tmp : int64;

function GCD(a,b : int64) : int64;
begin
	if (b = 0) then exit(a)
	else exit(gcd(b,a mod b));
end;


begin
	clrscr;

	read(n); readln(m);

	tmp := gcd(n,m);

	writeln(tmp);
	writeln(n div tmp,' ' , m div tmp;

	readln;
end.