uses crt;
const 
	p = 123456789;
var
	n : int64;

function pow(a,b : int64) : int64;
begin
	if (b = 1) then exit(a);
	if (b mod 2) = 0 then exit((pow(a,b div 2) mod p * pow(a,b div 2) mod p) mod p)
	else exit((pow(a,b div 2) mod p * pow(a,b div 2) mod p * a) mod p);
end;


begin
	clrscr;

	readln(n);

	write(pow(2,n-1));

	readln;
end.