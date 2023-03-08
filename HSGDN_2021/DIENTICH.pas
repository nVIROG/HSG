uses crt;
var
	k : integer;
	a,b : int64;

function GCD(a,b : int64) : int64;
begin
	if (b = 0) then exit(a)
	else exit(gcd(b, a mod b));
end;

procedure Process();
begin
	a := round(sqrt(k));
	while (a*a > 0) and (a > 0) do
	begin
		b := round(sqrt(k));
		while (b*b > 0) and (b > 0) do
		begin
			//writeln(a,' ', b,' ',(a*a) + (b*b));
			if (gcd(a,b) = 1) and ((a*a) + (b*b) = k) then exit;
			b := b-1;
		end;
		a := a-2;
	end;

end;

begin
	clrscr;

	readln(k);
	
	if (k mod 2) = 1 then 
	begin
		Process;
		write( ( (a*a) - (b*b)) * (2*a*b) );
	end
	else write( (k*k) div 2 );


	readln;
end.