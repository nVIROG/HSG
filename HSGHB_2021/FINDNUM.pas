uses crt;
var
	n : int64;
	x : int64;
	y : integer;

function GCD(a,b : int64) : int64;
begin
	if (b = 0) then exit(a)
	else exit(GCD(b, a mod b));
end;

function SumNum(x : int64) : integer;
var
	duoi : integer;
	x2 : int64;
	ans : integer;
begin
	x2 := x;
	ans := 0;
	while x2 > 0 do 
	begin
		duoi := x2 mod 10;
		ans := ans + duoi;
		x2 := x2 div 10;
	end;

	exit(ans);
end;

begin
	clrscr;
	readln(n);

	y := SumNum(n);
	x := n;
	repeat
		inc(x);
		y := SumNum(x);
	until gcd(x,y) = 1;

	writeln(x);

	readln;

end.