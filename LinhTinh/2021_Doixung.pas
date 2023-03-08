uses crt;
var
	n : longint;
	cnt : integer;

function daonguoc(x : longint) : longint;
var
	tmp : longint;
	i : integer;
	duoi : integer;

begin
	tmp := 0;
	while x > 0 do 
	begin
		duoi := x mod 10;
		tmp := tmp*10 + duoi;
		//writeln(duoi);
		x := x div   10;
	end;

	exit(tmp);
end;

function 

begin
	clrscr;
	readln(n);

	cnt := 0;

	write(doixung(cnt,n));

	readln;
end.